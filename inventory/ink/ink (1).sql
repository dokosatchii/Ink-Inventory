-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2013 at 05:54 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ink`
--

-- --------------------------------------------------------

--
-- Table structure for table `hp`
--

CREATE TABLE IF NOT EXISTS `hp` (
  `ID` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `printer` char(25) NOT NULL,
  `toner_name` char(50) NOT NULL,
  `color` char(50) NOT NULL,
  `quantity` tinyint(3) unsigned NOT NULL,
  `printer_amount` tinyint(3) unsigned NOT NULL,
  `alternative` char(25) NOT NULL,
  `alt_printer` char(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `hp`
--

INSERT INTO `hp` (`ID`, `printer`, `toner_name`, `color`, `quantity`, `printer_amount`, `alternative`, `alt_printer`) VALUES
(1, 'Business Inkjet 1100', 'HP10', 'Black', 3, 1, 'HPC4800A/HPC4844A', ''),
(2, 'Business Inkjet 1100', 'HP11', 'Magenta', 1, 1, 'HPC4812A', ''),
(3, 'Business Inkjet 1100', 'HP11', 'Yellow', 1, 1, 'HPC4813A', ''),
(4, 'Business Inkjet 1100', 'HP11', 'Cyan', 1, 1, 'HPC4811A', ''),
(5, 'Officejet 7110', 'HP14', 'Black', 5, 2, 'C5011DN', ''),
(6, 'Officejet 7110', 'HP14', 'Tricolor', 7, 2, 'C5010DN', ''),
(7, 'Deskjet D1341', 'HP21', 'Black', 1, 1, 'HPC9351AN', ''),
(8, 'Deskjet D1341', 'HP22', 'Tricolor', 2, 1, 'HPC9352AN', ''),
(9, 'Deskjet 895C', 'HP23', 'Tricolor', 1, 1, 'HPC1823D', ''),
(10, 'Fax 1240', 'HP27', 'Black', 3, 1, 'HPC8727AN', ''),
(11, 'Fax 1240', 'HP28', 'Tricolor', 6, 1, 'HPC8728AN', ''),
(12, 'Deskjet 6122', 'HP45', 'Black', 5, 7, 'HP51645A', 'Deskjet 895C'),
(13, 'Deskjet 5550', 'HP56', 'Black', 4, 2, 'HPC6656AN', 'Deskjet 5150'),
(14, 'Deskjet 5550', 'HP57', 'Tricolor', 3, 2, 'HPC6657AN', 'Deskjet 5150'),
(15, 'Deskjet 1000', 'HP61XL', 'Black', 0, 3, 'HPCH563WN', 'Deskjet 3000'),
(16, 'Deskjet 1000', 'HP61XL', 'Tricolor', 1, 3, 'HPCH564WN', 'Deskjet 3000'),
(17, '', 'HP74', 'Black', 3, 1, '', ''),
(18, '', 'HP75', 'Tricolor', 1, 1, '', ''),
(19, 'Deskjet 6122', 'HP78', 'Tricolor', 5, 6, 'HPC6578DN', ''),
(20, 'LaserJet 3200', 'C4092A', 'Black', 1, 1, 'HP92A', ''),
(21, 'Officejet 6210', 'HP94', 'Black', 1, 1, 'HPC8765WN', 'Officejet 7310'),
(22, '', 'HP950XL', 'Black', 2, 1, '', ''),
(23, 'Deskjet 6940', 'HP96', 'Black', 0, 3, 'HPC8767WN', ''),
(24, 'Deskjet 6940', 'HP97', 'Tricolor', 3, 4, 'HPC9363WN', 'Officejet 7310'),
(25, 'LaserJet 2100M', 'HPC4096A', 'Black', 6, 1, 'HP92A', ''),
(26, 'Officejet Pro L7780', 'HP88', 'Black', 3, 1, 'HPC9396AN', ''),
(27, 'LaserJet P1006', 'HPCB435A', 'Black', 1, 1, 'HP35', ''),
(28, 'LaserJet CP2025x', 'HPCC530A', 'Black', 0, 2, 'HP304A', ''),
(29, 'LaserJet CP2025x', 'HPCC531A', 'Cyan', 0, 2, 'HP304A', ''),
(30, 'LaserJet CP2025x', 'HPCC532A', 'Yellow', 5, 2, 'HP304A', ''),
(31, 'LaserJet CP2025x', 'HPCC533A', 'Magenta', 3, 2, 'HP304A', ''),
(32, 'LaserJet CP3525n', 'HPCE250A', 'Black', 5, 1, 'HP504A', ''),
(33, 'LaserJet Pro M1536DNF', 'HPCE278A', 'Black', 3, 1, 'HP78A', ''),
(34, 'LaserJet P1102W', 'HPCE285A', 'Black', 2, 1, 'HP85A', ''),
(35, 'LaserJet Pro CP1025NW', 'HPCE310A', 'Black', 1, 3, 'HP126A', ''),
(36, 'LaserJet Pro CP1025NW', 'HPCE311A', 'Cyan', 2, 3, 'HP126A', ''),
(37, 'LaserJet Pro CP1025NW', 'HPCE312A', 'Yellow', 3, 3, 'HP126A', ''),
(38, 'LaserJet Pro CP1025NW', 'HPCE313A', 'Magenta', 2, 3, 'HP126A', ''),
(39, 'LaserJet Pro 400 M451DN', 'HPCE410A', 'Black', 5, 3, 'HP305', ''),
(40, 'LaserJet Pro 400 M451DN', 'HPCE411A', 'Cyan', 1, 3, 'HP305', ''),
(41, 'LaserJet Pro 400 M451DN', 'HPCE412A', 'Yellow', 2, 3, 'HP305', ''),
(42, 'LaserJet Pro 400 M451DN', 'HPCE413A', 'Magenta', 1, 3, 'HP305', ''),
(43, 'LaserJet P2055DN', 'HPCE505X', 'Black', 3, 4, 'HP05X', ''),
(44, 'LaserJet Pro 400 M401N', 'HPCF280', 'Black', 4, 7, 'HP80', ''),
(45, 'LaserJet CP3525N', 'HPPRMHT251A', 'Cyan', 2, 1, 'HPCE251A', ''),
(46, 'LaserJet CP3525N', 'HPPRMHT252A', 'Yellow', 2, 1, 'HPCE252A', ''),
(47, 'LaserJet CP3525N', 'HPPRMHT253A', 'Magenta', 2, 1, 'HPCE253A', ''),
(48, 'LaserJet 1012', 'HPQ2612A', 'Black', 2, 4, 'HP12A', 'LaserJet 1020'),
(49, 'LaserJet 1320', 'HPQ5949', 'Black', 2, 3, 'HP49', ''),
(50, 'LaserJet 2605', 'HPQ6000A', 'Black', 0, 3, 'HP124A', 'LaserJet 1600'),
(51, 'LaserJet 2605', 'HPQ6001A', 'Cyan', 3, 3, 'HP124A', 'LaserJet 1600'),
(52, 'LaserJet 2605', 'HP Q6002A', 'Yellow', 3, 3, 'HP124A', 'LaserJet 1600'),
(53, 'LaserJet 2605', 'HP Q6003A', 'Magenta', 4, 3, 'HP124A', 'LaserJet 1600'),
(54, 'LaserJet 2420', 'HPQ6511A', 'Black', 2, 1, 'HP11A', '');

-- --------------------------------------------------------

--
-- Table structure for table `ricoh`
--

CREATE TABLE IF NOT EXISTS `ricoh` (
  `ID` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `color` char(50) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `toner_name` char(10) NOT NULL,
  `alternative` char(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `ricoh`
--

INSERT INTO `ricoh` (`ID`, `name`, `color`, `quantity`, `toner_name`, `alternative`) VALUES
(1, 'MP171', 'Black', 1, '885531', ''),
(2, 'MP2851', 'Black', 11, '841337', ''),
(3, 'MP4001', 'Black', 2, '841346', 'MP5001'),
(4, 'MPC2800', 'Black', 0, '841276', 'MPC3300'),
(5, 'MPC2800', 'Yellow', 4, '841277', 'MPC3300'),
(6, 'MPC2800', 'Magenta', 5, '841278', 'MPC3300'),
(7, 'MPC2800', 'Cyan', 5, '841279', 'MPC3300'),
(8, 'MPC3501', 'Black', 0, '841578', ''),
(9, 'MPC3501', 'Yellow', 6, '841421', ''),
(10, 'MPC3501', 'Magenta', 6, '841422', ''),
(11, 'MPC3501', 'Cyan', 3, '841423', ''),
(12, 'MPC5000', 'Black', 1, '841284', ''),
(13, 'MPC5000', 'Yellow', 3, '841285', ''),
(14, 'MPC5000', 'Magenta', 3, '841286', ''),
(15, 'MPC5000', 'Cyan', 4, '841287', ''),
(16, 'PROC550EX', 'Black', 4, '828088', ''),
(17, 'PROC550EX', 'Cyan', 1, '828089', ''),
(18, 'PROC550EX', 'Magenta', 1, '828090', ''),
(19, 'PROC550EX', 'Yellow', 1, '828091', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
