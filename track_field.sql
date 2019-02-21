-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 30, 2018 at 05:31 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `track&field`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `AuserID` char(4) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `password` char(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phoneNo` varchar(10) NOT NULL,
  PRIMARY KEY (`AuserID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `allocated`
--

DROP TABLE IF EXISTS `allocated`;
CREATE TABLE IF NOT EXISTS `allocated` (
  `event` varchar(200) NOT NULL,
  `meet` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `njudges` int(11) DEFAULT NULL,
  `referee` varchar(200) DEFAULT NULL,
  `judgeUmpier` varchar(200) DEFAULT NULL,
  `timeKeeper` varchar(200) DEFAULT NULL,
  `startTeam` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`event`,`meet`,`gender`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allocated`
--

INSERT INTO `allocated` (`event`, `meet`, `gender`, `njudges`, `referee`, `judgeUmpier`, `timeKeeper`, `startTeam`) VALUES
('5000m', 'Annual', 'female', 5, 'Hemal', 'Nihal', 'L.P.Nadeeka', 'M.Perera'),
('200m', 'Freshers', 'male', 4, 'Hemal', 'K.Manul', 'K.Nimna ', 'C.L.K.Perera');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
CREATE TABLE IF NOT EXISTS `announcement` (
  `aID` int(11) NOT NULL,
  `EuserID` char(4) NOT NULL,
  `judgeID` int(11) NOT NULL,
  `CuserID` char(4) NOT NULL,
  `eid` char(4) NOT NULL,
  `SmeetID` char(4) NOT NULL,
  `ANuserID` char(4) NOT NULL,
  PRIMARY KEY (`aID`),
  KEY `EuserID` (`EuserID`),
  KEY `judgeID` (`judgeID`),
  KEY `CuserID` (`CuserID`),
  KEY `eid` (`eid`,`SmeetID`),
  KEY `ANuserID` (`ANuserID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `announcer`
--

DROP TABLE IF EXISTS `announcer`;
CREATE TABLE IF NOT EXISTS `announcer` (
  `ANuserID` char(4) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `password` char(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phoneNo` varchar(10) NOT NULL,
  PRIMARY KEY (`ANuserID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `annualfemale`
--

DROP TABLE IF EXISTS `annualfemale`;
CREATE TABLE IF NOT EXISTS `annualfemale` (
  `event` varchar(200) NOT NULL,
  `njudges` int(11) NOT NULL,
  `referee` varchar(200) NOT NULL,
  `judgeUmpier` varchar(200) NOT NULL,
  `timeKeeper` varchar(200) NOT NULL,
  `startTeam` varchar(200) NOT NULL,
  PRIMARY KEY (`event`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `annualfemale`
--

INSERT INTO `annualfemale` (`event`, `njudges`, `referee`, `judgeUmpier`, `timeKeeper`, `startTeam`) VALUES
('100m', 2, 'Hemal', 'B.Nugara', 'null', 'null'),
('400m', 5, 'M.G.Bhanuka', 'K.Manul', 'K.Nimna ', 'M.Perera');

-- --------------------------------------------------------

--
-- Table structure for table `annualmale`
--

DROP TABLE IF EXISTS `annualmale`;
CREATE TABLE IF NOT EXISTS `annualmale` (
  `event` varchar(200) NOT NULL,
  `njudges` int(11) NOT NULL,
  `referee` varchar(200) NOT NULL,
  `judgeUmpier` varchar(200) NOT NULL,
  `timeKeeper` varchar(200) NOT NULL,
  `startTeam` varchar(200) NOT NULL,
  PRIMARY KEY (`event`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `annualmale`
--

INSERT INTO `annualmale` (`event`, `njudges`, `referee`, `judgeUmpier`, `timeKeeper`, `startTeam`) VALUES
('10000m', 4, 'Hemal', 'B.Nugara', 'K.Nimna ', 'M.Perera');

-- --------------------------------------------------------

--
-- Table structure for table `bp`
--

DROP TABLE IF EXISTS `bp`;
CREATE TABLE IF NOT EXISTS `bp` (
  `sid` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `event` varchar(20) DEFAULT NULL,
  `performance` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `faculty` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bp`
--

INSERT INTO `bp` (`sid`, `name`, `event`, `performance`, `points`, `faculty`) VALUES
(123, 'Janadi Boteju', '800m', 61, 5, 'Faculty Of Medicine'),
(890, 'Kirul Baddeliyanage', '100mHurdles', 12, 5, 'Faculty Of Medicine'),
(124, 'Pradeepika pieris', '100m', 12, 5, 'arts');

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

DROP TABLE IF EXISTS `budget`;
CREATE TABLE IF NOT EXISTS `budget` (
  `fDate` date NOT NULL,
  `fAmount` float NOT NULL,
  `FID` char(4) NOT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `callroomjudge`
--

DROP TABLE IF EXISTS `callroomjudge`;
CREATE TABLE IF NOT EXISTS `callroomjudge` (
  `JuserID` char(4) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `password` varchar(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phoneNo` varchar(10) NOT NULL,
  PRIMARY KEY (`JuserID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
CREATE TABLE IF NOT EXISTS `color` (
  `cID` char(4) NOT NULL,
  `cGender` varchar(7) NOT NULL,
  `FCcolorPoint` float NOT NULL,
  `HCcolorPoint` float NOT NULL,
  `eid` char(4) NOT NULL,
  PRIMARY KEY (`cID`),
  KEY `eid` (`eid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crjshandles`
--

DROP TABLE IF EXISTS `crjshandles`;
CREATE TABLE IF NOT EXISTS `crjshandles` (
  `JuserID` char(4) NOT NULL,
  `SmeetID` char(4) NOT NULL,
  PRIMARY KEY (`JuserID`,`SmeetID`),
  KEY `SmeetID` (`SmeetID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `distribution`
--

DROP TABLE IF EXISTS `distribution`;
CREATE TABLE IF NOT EXISTS `distribution` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `stype` varchar(20) NOT NULL,
  `dtype` varchar(50) NOT NULL,
  `distributor` varchar(50) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distribution`
--

INSERT INTO `distribution` (`did`, `stype`, `dtype`, `distributor`) VALUES
(1, 'Annual', 'RelayChampionOverall', 'A.Perera'),
(2, 'freshers', 'RelayChampionOverall', 'I.Boteju'),
(3, 'Annual', 'OverallPlaces', 'K.liyanage'),
(4, 'Annual', 'Places', 'J.Abeywickrema'),
(5, 'freshers', 'OutstandingAthlete', 'X.Kalubowila'),
(6, 'freshers', 'Places', 'K.liyanage'),
(7, 'freshers', 'PlacesMen', 'L.Peiris'),
(8, 'freshers', 'OverallPlaces', 'K.liyanage'),
(12, 'Annual', 'OutstandingAthlete', 'L.Peiris'),
(13, 'freshers', 'BestPerformance', 'L.Peiris'),
(15, 'Annual', 'RecordHolders', 'I.Kusuma');

-- --------------------------------------------------------

--
-- Table structure for table `eihas`
--

DROP TABLE IF EXISTS `eihas`;
CREATE TABLE IF NOT EXISTS `eihas` (
  `eiID` int(255) NOT NULL AUTO_INCREMENT,
  `inventoryID` int(225) NOT NULL,
  `eId` char(5) NOT NULL,
  `itype` varchar(300) NOT NULL,
  `itemName` varchar(400) DEFAULT NULL,
  `EventName` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `qut` int(255) NOT NULL,
  `handOverDate` date NOT NULL,
  PRIMARY KEY (`eiID`,`inventoryID`,`eId`),
  KEY `inventoryID` (`inventoryID`),
  KEY `eId` (`eId`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eihas`
--

INSERT INTO `eihas` (`eiID`, `inventoryID`, `eId`, `itype`, `itemName`, `EventName`, `date`, `qut`, `handOverDate`) VALUES
(10, 8, 'e0001', 'Gates-and-Markers', 'Rotating Track Gates', '100m', '2018-09-05', 1, '2018-10-17'),
(6, 7, 'e0001', 'Stopwatches-and-Timing-Systems', 'Aluminum Block Cart', '100m', '2018-09-04', 3, '2018-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `eschedule`
--

DROP TABLE IF EXISTS `eschedule`;
CREATE TABLE IF NOT EXISTS `eschedule` (
  `sid` int(255) NOT NULL AUTO_INCREMENT,
  `eId` char(5) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `location` varchar(200) NOT NULL,
  `starttime` time NOT NULL,
  `duration` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `eId` (`eId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eschedule`
--

INSERT INTO `eschedule` (`sid`, `eId`, `start`, `end`, `location`, `starttime`, `duration`) VALUES
(5, '8', '2018-08-07', '2018-08-23', 'main hall', '12:45:00', '1 hour'),
(12, '1', '2018-08-17', '2018-08-18', 'Main Ground -Part A', '13:00:00', '56'),
(16, '2', '2018-09-30', '2018-09-30', 'track', '08:00:00', '45min'),
(19, '3', '2018-09-28', '2018-09-29', 'track', '13:00:00', '20min'),
(20, '4', '2018-09-28', '2018-09-28', 'road', '11:00:00', '50min');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `eId` char(5) NOT NULL,
  `eName` varchar(20) NOT NULL,
  `elmitation` int(11) NOT NULL,
  `eType` varchar(20) NOT NULL,
  `MuserID` char(5) NOT NULL,
  PRIMARY KEY (`eId`),
  KEY `MuserID` (`MuserID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eId`, `eName`, `elmitation`, `eType`, `MuserID`) VALUES
('ID001', '200m', 50, 'Male', 'MD001'),
('ID002', '200m', 10, 'Male', 'MD002'),
('ID003', '400M', 20, 'Male', 'MD00');

-- --------------------------------------------------------

--
-- Table structure for table `eventadd`
--

DROP TABLE IF EXISTS `eventadd`;
CREATE TABLE IF NOT EXISTS `eventadd` (
  `eId` int(11) NOT NULL AUTO_INCREMENT,
  `eName` varchar(20) NOT NULL,
  `meetType` varchar(20) NOT NULL,
  `gType` varchar(20) NOT NULL,
  `maxNo` int(11) NOT NULL,
  PRIMARY KEY (`eId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventadd`
--

INSERT INTO `eventadd` (`eId`, `eName`, `meetType`, `gType`, `maxNo`) VALUES
(1, 'Marathon', 'outdoor', 'male', 20);

-- --------------------------------------------------------

--
-- Table structure for table `eventmanager`
--

DROP TABLE IF EXISTS `eventmanager`;
CREATE TABLE IF NOT EXISTS `eventmanager` (
  `EuserID` char(4) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `password` varchar(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phoneNo` varchar(10) NOT NULL,
  PRIMARY KEY (`EuserID`),
  UNIQUE KEY `password` (`password`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `exid` varchar(4) NOT NULL,
  `description` varchar(30) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`exid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`exid`, `description`, `amount`, `date`) VALUES
('121', 'Hiring Tables', 30000, '2018-06-04'),
('122', 'Hiring Chairs', 2500, '2018-06-04'),
('123', 'Invitation Cards', 2000, '2018-05-03'),
('124', 'Ground Arrangement', 5000, '2018-04-03'),
('125', 'Preparing Program Sheet', 4000, '2018-04-02'),
('126', 'Hiring Tents', 4000, '2018-06-04'),
('128', 'Water Bottles', 9000, '2018-06-05'),
('129', 'Lunch for Officials', 48000, '2018-06-04'),
('130', 'Soft Drinks for Refreshment', 50000, '2018-06-04'),
('131', 'Eatable for Refreshment', 36000, '2018-06-04'),
('132', 'Transport Charges', 5000, '2018-06-03'),
('133', 'Preparing Participants Numbers', 40000, '2018-06-01'),
('356', 'foods', 5000, '2018-08-08'),
('423', 'cards', 2000, '2018-05-03'),
('587', 'fcfyfdr', 20000, '2018-08-28'),
('mko', 'mail', 20000, '2018-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `fID` char(4) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `SmeetID` char(4) NOT NULL,
  PRIMARY KEY (`fID`),
  KEY `SmeetID` (`SmeetID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE IF NOT EXISTS `grade` (
  `grade` int(11) NOT NULL,
  `AuserID` char(4) NOT NULL,
  PRIMARY KEY (`grade`),
  KEY `AuserID` (`AuserID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grading`
--

DROP TABLE IF EXISTS `grading`;
CREATE TABLE IF NOT EXISTS `grading` (
  `userid` char(5) NOT NULL,
  `nevents` int(11) NOT NULL,
  `grading` varchar(5) NOT NULL,
  `allowance` double DEFAULT NULL,
  PRIMARY KEY (`userid`,`nevents`,`grading`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ground`
--

DROP TABLE IF EXISTS `ground`;
CREATE TABLE IF NOT EXISTS `ground` (
  `nic` char(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `resdate` date NOT NULL,
  PRIMARY KEY (`nic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ground`
--

INSERT INTO `ground` (`nic`, `name`, `date`, `resdate`) VALUES
('448544454V', 'Shobi', '2018-09-01', '2018-10-05'),
('448554454V', 'Shobi', '2018-09-05', '2018-09-29'),
('955043517V', 'Roshani', '2018-03-03', '2108-03-05'),
('968563718V', 'G.visha', '2018-09-13', '2018-09-13'),
('978563718V', 'P.Perera', '2018-09-14', '2018-09-14');

-- --------------------------------------------------------

--
-- Table structure for table `gym`
--

DROP TABLE IF EXISTS `gym`;
CREATE TABLE IF NOT EXISTS `gym` (
  `NIC` varchar(12) NOT NULL,
  PRIMARY KEY (`NIC`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
CREATE TABLE IF NOT EXISTS `income` (
  `inid` varchar(4) NOT NULL,
  `incomeType` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`inid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`inid`, `incomeType`, `name`, `amount`, `date`) VALUES
('225', 'government', 'gavernment', 100000, '2018-05-05'),
('226', 'sponsor', 'roshni ', 20000, '2018-06-01'),
('227', 'sponsor', 'malshani githma', 25000, '2018-05-04'),
('228', 'sponsor', 'janadi botheju', 30000, '2018-05-04'),
('229', 'sponsor', 'jagath watawala', 20000, '2018-09-12'),
('281', 'sponsor', 'thamara watawala', 1000, '2018-09-05'),
('457', 'sponsor', 'malsha', 500000, '2018-08-21'),
('501', 'sponsor', 'chathurika ruwanthini', 20000, '2018-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
CREATE TABLE IF NOT EXISTS `inventory` (
  `inventoryID` int(255) NOT NULL AUTO_INCREMENT,
  `itype` varchar(300) NOT NULL,
  `iName` varchar(400) NOT NULL,
  `quantity` int(255) NOT NULL,
  `conditionStatement` varchar(100) NOT NULL,
  PRIMARY KEY (`inventoryID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventoryID`, `itype`, `iName`, `quantity`, `conditionStatement`) VALUES
(1, 'Hurdles', '90 Degree High Hurdle', 5, 'bad'),
(2, 'Hurdles', 'Economy Rocker Hurdle', 4, 'good'),
(3, 'Starting-Blocks', '\r\nAluminum Block Cart w/Lock', 4, 'bad'),
(4, 'Relay-Batons-Spikes', '\r\nAluminum Baton', 7, 'good'),
(5, 'Throwing-Equipment', 'High Jump Pit Equipment Package', 4, 'good'),
(6, 'Long-Jump-Equipment', 'Pit Form Systems with Sand Catchers', 2, 'bad'),
(7, 'Stopwatches-and-Timing-Systems', 'Aluminum Block Cart', 10, 'need to buy'),
(8, 'Gates-and-Markers', 'Rotating Track Gates', 10, 'good'),
(9, 'Long-Jump-Equipment', '\r\nVinyl Pit Cover', 7, 'good'),
(10, 'Equipment-Storage', '\r\nAluminum Discus Cart', 2, 'good');

-- --------------------------------------------------------

--
-- Table structure for table `inventorybooking`
--

DROP TABLE IF EXISTS `inventorybooking`;
CREATE TABLE IF NOT EXISTS `inventorybooking` (
  `eiID` int(255) NOT NULL AUTO_INCREMENT,
  `itype` varchar(300) NOT NULL,
  `itemName` varchar(400) DEFAULT NULL,
  `EventName` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `qut` int(255) NOT NULL,
  `handOverDate` date NOT NULL,
  PRIMARY KEY (`eiID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventorybooking`
--

INSERT INTO `inventorybooking` (`eiID`, `itype`, `itemName`, `EventName`, `date`, `qut`, `handOverDate`) VALUES
(1, 'Hurdles', '90 Degree High Hurdle', 'hurdles', '2018-09-06', 4, '2018-10-18'),
(2, 'Starting-Blocks', 'Aluminum Block Cart w/Lock', '100m', '2018-09-07', 1, '2018-09-21'),
(3, 'Relay-Batons-Spikes', 'Aluminum Baton', 'relay-100m', '2018-09-13', 5, '2018-10-11'),
(4, 'Throwing-Equipment', 'High Jump Pit Equipment Package', 'Disk', '2018-09-09', 5, '2018-02-27'),
(7, 'Hurdles', '90 Degree High Hurdle', '200m', '2018-09-26', 2, '2018-09-28'),
(5, 'Relay-Batons-Spikes', 'Aluminum Baton', 'relay-400m', '2018-09-12', 2, '2018-10-15'),
(6, 'Stopwatches-and-Timing-Systems', 'Aluminum Block Cart', '100m', '2018-09-04', 3, '2018-09-26'),
(8, 'Stopwatches-and-Timing-Systems', 'Aluminum Block Cart', '5000m', '2018-09-19', 5, '2018-10-10'),
(9, 'Equipment-Storage', 'Aluminum Discus Cart', 'Long Jump', '2018-09-11', 2, '2018-09-27'),
(10, 'Gates-and-Markers', 'Rotating Track Gates', '200m', '2018-09-05', 1, '2018-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
CREATE TABLE IF NOT EXISTS `invitation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meet` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invitation`
--

INSERT INTO `invitation` (`id`, `meet`, `date`, `time`, `location`) VALUES
(3, 'Freshers Sportsmeet', '2018-10-04', '12:30:00', 'Kooray ground'),
(4, 'Annual Sportsmeet', '2018-10-06', '13:30:00', 'Kooray ground');

-- --------------------------------------------------------

--
-- Table structure for table `jehas`
--

DROP TABLE IF EXISTS `jehas`;
CREATE TABLE IF NOT EXISTS `jehas` (
  `eid` char(4) NOT NULL,
  `judgeID` int(11) NOT NULL,
  PRIMARY KEY (`eid`,`judgeID`),
  KEY `judgeID` (`judgeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

DROP TABLE IF EXISTS `judges`;
CREATE TABLE IF NOT EXISTS `judges` (
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `work` varchar(200) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `charge` double NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `jEmail` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`name`, `address`, `phone`, `email`, `work`, `designation`, `position`, `charge`) VALUES
('M.D.Peris', 'Jaela', '0718106184', 'perera@gmail.com', 'school', 'teacher', 'Start Team', 15000),
('Hemal', 'Kurana', '774152633', 'hemal@gmail.com', 'university', 'lecturer', 'Referee', 35000),
('K.Manul', 'Ragama', '712554133', 'kmanul@gmail.com', 'gym', 'PT Instructor', 'Judges & Umpires', 12000),
('K.Nimna ', 'Wattala', '775994421', 'nimi@gmail.com', 'School', 'officer person', 'Time Keeper', 12000),
('L.P.Nadeeka', 'Colombo07', '713516275', 'nadeeka@yahoo.com', 'gym', 'PT Instructor', 'Time Keeper', 12000),
('M.Perera', 'Kandana', '718542266', 'mahen@yahoo.com', 'School', 'Teacher', 'Start Team', 14500),
('Nihal', 'Colombo10', '713452988', 'nsilva@gmail.com', 'School', 'PT Instructor', 'Judges & Umpires', 15000),
('Nicola', 'KANDY', '071554869', 'nico@gmail.com', 'University', 'lecturer', 'Judges & Umpires', 12500),
('H.G.Sumathipala', 'Kurana', '0713554485', 'sumathipala@gmail.com', 'University', 'lecturer', 'Chief Time Keeper', 15000),
('M.L.Peiris', 'Kandana', '0713554486', 'peiris@gmail.com', 'University', 'lecturer', 'Recorder', 10000),
('C.L.K.Perera', 'Negombo', '0713554499', 'lakshanP@gmail.com', 'gym', 'PT instructor', 'Start Team', 12000),
('K.P.Perera', 'Kurana', '0713554111', 'perera123@gmail.com', 'University', 'PT instructor', 'Chief Judge', 12000),
('R.L.L.Peiris', 'Wattala', '0721776655', 'randuLPeiris@gmail.com', 'School', 'teacher', 'Call Room Chief judge', 4500),
('V.H.L.Silva', 'Moratuwa', '0714163633', 'vimalH.Silva@rb.com', 'Heath Ministry', 'officer ', 'Start Coordinator', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `meet`
--

DROP TABLE IF EXISTS `meet`;
CREATE TABLE IF NOT EXISTS `meet` (
  `meetid` int(11) NOT NULL AUTO_INCREMENT,
  `totalIncome` double NOT NULL,
  `totalExpenses` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  PRIMARY KEY (`meetid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mm`
--

DROP TABLE IF EXISTS `mm`;
CREATE TABLE IF NOT EXISTS `mm` (
  `eId` char(5) NOT NULL,
  `userid` char(10) NOT NULL,
  PRIMARY KEY (`eId`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mm`
--

INSERT INTO `mm` (`eId`, `userid`) VALUES
('2', 'm001'),
('ID001', 'm001'),
('ID001', 'm006'),
('ID002', 'm001'),
('ID002', 'm005'),
('ID003', 'm005'),
('ID003', 'm006');

-- --------------------------------------------------------

--
-- Table structure for table `newevent`
--

DROP TABLE IF EXISTS `newevent`;
CREATE TABLE IF NOT EXISTS `newevent` (
  `eId` int(11) NOT NULL AUTO_INCREMENT,
  `eName` varchar(20) NOT NULL,
  `meetType` varchar(20) NOT NULL,
  `eType` varchar(20) NOT NULL,
  `maxNo` int(11) NOT NULL,
  PRIMARY KEY (`eId`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newevent`
--

INSERT INTO `newevent` (`eId`, `eName`, `meetType`, `eType`, `maxNo`) VALUES
(1, '200m', 'Annual Meet', 'Female', 7),
(2, '400M', 'Freshers Meet', 'Male', 8),
(3, '200m', 'Annual Meet', 'Female', 8),
(4, '2000m', 'Freshers Meet', 'Female', 14),
(5, 'Javelin', 'Annual Meet', 'Male', 20),
(6, '4004M', 'Freshers Meet', 'Female', 17),
(7, '4004M', 'Freshers Meet', 'Female', 17),
(8, '2000m', 'Freshers Meet', 'Male', 25),
(9, 'ErandiPissu', 'Annual Meet', 'Male', 5),
(10, 'ErandiPissu', 'Annual Meet', 'Male', 5),
(12, '400mRelay', 'Annual Meet', 'Female', 6);

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

DROP TABLE IF EXISTS `participant`;
CREATE TABLE IF NOT EXISTS `participant` (
  `StudentID` varchar(50) NOT NULL,
  `SportsID` varchar(50) NOT NULL,
  `PartName` varchar(200) NOT NULL,
  `Hundred` varchar(10) NOT NULL,
  `Twoh` varchar(10) NOT NULL,
  `Highj` varchar(10) NOT NULL,
  `Longj` varchar(10) NOT NULL,
  `Eight` varchar(10) NOT NULL,
  `Marathon` varchar(10) NOT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`StudentID`, `SportsID`, `PartName`, `Hundred`, `Twoh`, `Highj`, `Longj`, `Eight`, `Marathon`) VALUES
('st001', 'sp001', 'jana', 'false', 'true', 'true', 'true', 'true', 'true'),
('st007', 'sp007', 'visha', 'true', 'false', 'true', 'false', 'true', ''),
('st008', 'sp008', 'rika', 'false', 'true', 'true', 'true', 'true', ''),
('st010', 'sp456', 'mali', 'false', 'false', 'false', 'false', 'true', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `participate`
--

DROP TABLE IF EXISTS `participate`;
CREATE TABLE IF NOT EXISTS `participate` (
  `eid` char(4) NOT NULL,
  `SmeetID` char(4) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`eid`,`SmeetID`),
  KEY `SmeetID` (`SmeetID`),
  KEY `position` (`position`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `placeaf`
--

DROP TABLE IF EXISTS `placeaf`;
CREATE TABLE IF NOT EXISTS `placeaf` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `etype` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placeaf`
--

INSERT INTO `placeaf` (`eid`, `ename`, `type`, `etype`, `gender`, `date`) VALUES
(1, '4X100Relay', 'Annual', 'track', 'male', '2018-01-02'),
(2, '3000m', 'Annual', 'track', 'male', '2018-09-20'),
(3, 'TripleJump', 'Annual', 'field', 'female', '2018-09-19'),
(4, '100m', 'Annual', 'track', 'male', '2018-09-17'),
(33, 'HighJump', 'freshers', 'field', 'male', '2018-09-11'),
(34, '3000m', 'freshers', 'field', 'male', '2018-09-30'),
(35, '1500m', 'freshers', 'track', 'male', '2018-09-30'),
(37, 'Select', 'Select', 'field', 'male', '2018-09-27'),
(38, 'Select', 'Annual', 'Select', 'male', '2018-09-30'),
(39, '200m', 'Select', 'field', 'male', '2018-09-26');

-- --------------------------------------------------------

--
-- Table structure for table `placesaf`
--

DROP TABLE IF EXISTS `placesaf`;
CREATE TABLE IF NOT EXISTS `placesaf` (
  `eid` int(11) NOT NULL,
  `ename` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `etype` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `place` int(11) NOT NULL,
  `sid` varchar(20) NOT NULL,
  `sname` varchar(30) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `record` float NOT NULL,
  `unit` varchar(20) NOT NULL,
  `points` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placesaf`
--

INSERT INTO `placesaf` (`eid`, `ename`, `type`, `etype`, `gender`, `date`, `place`, `sid`, `sname`, `faculty`, `record`, `unit`, `points`) VALUES
(17, 'LongJump', 'Annual', 'field', 'male', '2018-09-20', 1, '981', 'Uditha', 'Faculty Of Engineering', 12.3, 'meters', 5),
(19, '4X400Relay', 'Annual', 'relay', 'male', '2018-09-20', 1, '443', 'imal', 'Faculty Of Management Studies And Commerce', 10, 'seconds', 5),
(20, 'LongJump', 'Annual', 'field', 'male', '2018-09-27', 2, '983', 'Himaya', 'Faculty Of Science', 12.5, 'meters', 3),
(29, '4X100Relay', 'Annual', 'track', 'male', '2018-09-27', 2, '187', 'janadi', 'Faculty Of Applied Science', 12.3, 'meters', 3),
(12, 'LongJump', 'Annual', 'field', 'female', '2018-09-27', 3, '448', 'janadi', 'Faculty Of Applied Science', 1, 'meters', 1),
(30, '3000m', 'Annual', 'track', 'male', '2018-09-20', 1, '187', 'janadi', 'Allied Health Science Unit', 12.9, 'minutes', 5),
(31, 'TripleJump', 'Annual', 'field', 'female', '2018-09-19', 1, '156', 'Hiruni', 'Faculty Of Applied Science', 4.5, 'meters', 5),
(32, '100m', 'Annual', 'track', 'male', '2018-09-17', 1, '447', 'janadi', 'Faculty Of Medicine', 10.8, 'seconds', 5),
(4, '100m', 'Annual', 'track', 'male', '2018-09-17', 3, '981', 'Uditha', 'Faculty Of Engineering', 10, 'seconds', 1),
(3, 'TripleJump', 'Annual', 'field', 'female', '2018-09-19', 3, '442', 'Vishaliney', 'Faculty Of Agriculture', 1.4, 'meters', 3);

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
CREATE TABLE IF NOT EXISTS `records` (
  `type` varchar(10) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `sname` varchar(20) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `ename` varchar(20) NOT NULL,
  `record` float NOT NULL,
  `unit` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`ename`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`type`, `sid`, `sname`, `faculty`, `ename`, `record`, `unit`, `date`) VALUES
('Annual', 981, 'Uditha', 'Faculty Of Engineering', '100m', 10, 'seconds', '2018-09-17'),
('freshers', 145, 'Kirul', 'Faculty Of Business Studies', '1500m', 11, 'seconds', '2018-09-20'),
('Annual', 443, 'Imal', 'Faculty Of Management Studies And Commerce', '4X400Relay', 10, 'seconds', '2018-09-20'),
('freshers', 786, 'Roshni', 'Faculty Of Art', 'HighJump', 2.3, 'meters', '2018-09-11'),
('Annual', 983, 'Himaya', 'Faculty Of Science', 'LongJump', 12.5, 'meters', '2018-09-27'),
('Annual', 442, 'Vishaliney', 'Faculty Of Agriculture', 'TripleJump', 1.4, 'meters', '2018-09-19');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE IF NOT EXISTS `schedule` (
  `sid` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `location` varchar(200) NOT NULL,
  `starttime` time NOT NULL,
  `duration` varchar(200) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`sid`, `title`, `start`, `end`, `location`, `starttime`, `duration`) VALUES
(14, 'event 02', '2018-08-07', '2018-08-23', 'main ground', '12:45:00', '1 hour'),
(17, 'event 3', '2018-08-06', '2018-08-06', 'main ground', '10:00:00', '30mins'),
(19, 'Long Jump', '2018-09-10', '2018-09-10', 'main ground', '11:00:00', '30mins'),
(20, '2000m', '2018-09-11', '2018-09-11', 'main ground', '08:00:00', '30min'),
(21, '1000m women', '2018-09-12', '2018-09-12', 'Main Ground _ part A', '11:00:00', '30min'),
(22, '10000m', '2018-09-19', '2018-09-19', 'main road', '06:00:00', '1 hour'),
(23, '10000m', '2018-10-01', '2018-10-01', 'main ground', '08:30:00', '30min');

-- --------------------------------------------------------

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
CREATE TABLE IF NOT EXISTS `sponsor` (
  `sid` varchar(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` int(10) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor`
--

INSERT INTO `sponsor` (`sid`, `name`, `address`, `email`, `phone`) VALUES
('332', 'roshni romeshika', 'Ariyawansa Rd,Rathmalana', 'roshni.romeshika@gmail.com', 772153685),
('333', 'malshani manamendra', '22/a,Moratuwa', 'malshanigithma@gmail.com', 715296314),
('334', 'pradeepika peris', 'temple Rd,ja ela', 'dilinipradeepika@gmail.com', 778563214),
('335', 'Erandi Wathsala', 'maha wewa rd,wellawatta', 'erandiwathsala@gmail.com', 725685421),
('336', 'vishalini ', 'main rd,jaffna', 'vishalini34@gmail.com', 785214963),
('337', 'kirul ', 'kelaniya', 'kirulpissu.1@gmail.com', 778569214);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `SmeetID` char(4) NOT NULL,
  `RegNo` varchar(15) NOT NULL,
  `sName` varchar(20) NOT NULL,
  `sGender` varchar(7) NOT NULL,
  `cID` char(4) NOT NULL,
  `RuserID` char(4) NOT NULL,
  `rid` int(11) NOT NULL,
  PRIMARY KEY (`SmeetID`),
  UNIQUE KEY `RegNo` (`RegNo`),
  KEY `cID` (`cID`),
  KEY `RuserID` (`RuserID`,`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE IF NOT EXISTS `userlogin` (
  `userid` char(5) NOT NULL,
  `username` char(10) NOT NULL,
  `password` char(10) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `type` char(20) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`userid`, `username`, `password`, `phone`, `email`, `type`) VALUES
('cj101', 'Malshani', '12345', 770798025, 'manii@gmail.com', 'meet manager'),
('cl009', 'kirul', '123456', 776545321, 'kirulbadde@gmail.com', 'admin'),
('cl010', 'Mani', '123456789', 770798025, 'asas@gmail.com', 'meet manager'),
('m001', 'janaa', 'janadi', 772143161, 'janaa@gmail.com', 'certificate writer'),
('m0045', 'chathu', 'chathu123', 772565423, 'chath@gmail.com', 'meet manager'),
('m005', 'nadeesha', 'nadee123', 772365489, 'nadee@gmail.com', 'meet manager'),
('m006', 'madu', 'maduu123', 775263976, 'madushika@gmail.com', 'meet manager'),
('mv112', 'vishali', '1124', 771122334, 'vishali@gmail.com', 'meet manager');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
