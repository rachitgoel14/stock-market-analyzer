-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2014 at 05:49 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stock_market`
--

-- --------------------------------------------------------

--
-- Table structure for table `adbe`
--

CREATE TABLE IF NOT EXISTS `adbe` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `open` float DEFAULT NULL,
  `high` float DEFAULT NULL,
  `low` float DEFAULT NULL,
  `close` float DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `amount_change` float DEFAULT NULL,
  `percent_change` float DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adbe`
--

INSERT INTO `adbe` (`date`, `open`, `high`, `low`, `close`, `volume`, `amount_change`, `percent_change`) VALUES
('2014-03-27', 63.6, 65.16, 63.05, 64.53, 65, 0.93, 1.46226),
('2014-03-28', 64.71, 65.61, 64.15, 64.88, 65, 0.17, 0.262711),
('2014-03-31', 64.87, 65.95, 64.62, 65.74, 66, 0.87, 1.34114),
('2014-04-01', 65.9, 66.22, 65.44, 65.93, 66, 0.03, 0.0455235),
('2014-04-02', 66.07, 66.31, 65.12, 65.48, 65, -0.59, -0.892992),
('2014-04-03', 65.5, 65.5, 62.17, 62.45, 62, -3.05, -4.65649),
('2014-04-04', 62.92, 62.92, 61.1, 61.32, 61, -1.6, -2.54291),
('2014-04-07', 61.2, 61.2, 59.63, 60.47, 60, -0.73, -1.19281),
('2014-04-08', 60.53, 62.25, 60.11, 61.82, 62, 1.29, 2.13117),
('2014-04-09', 62, 63.69, 61.56, 63.46, 63, 1.46, 2.35484),
('2014-04-10', 63.05, 63.45, 61.27, 61.49, 61, -1.56, -2.47423),
('2014-04-11', 60.89, 61.75, 60.02, 60.5, 61, -0.39, -0.640499),
('2014-04-14', 61.18, 61.66, 60.55, 61.39, 61, 0.21, 0.343249),
('2014-04-15', 61.5, 62.29, 60.5, 62.11, 62, 0.61, 0.99187),
('2014-04-16', 62.27, 63.14, 62.25, 63.04, 63, 0.77, 1.23655),
('2014-04-17', 62.96, 64.23, 62.53, 64.04, 64, 1.08, 1.71537),
('2014-04-21', 64, 64.46, 63.56, 64.3, 64, 0.3, 0.46875),
('2014-04-22', 64.06, 64.74, 63.76, 64.48, 64, 0.42, 0.655635),
('2014-04-23', 64.23, 64.58, 63.78, 64.39, 64, 0.16, 0.249105),
('2014-04-24', 64.89, 65, 62.93, 63.22, 63, -1.67, -2.57359),
('2014-04-25', 62.92, 63.03, 61.56, 61.61, 62, -1.31, -2.08201),
('2014-04-28', 61.84, 62.17, 59.62, 60.4, 60, -1.44, -2.32859),
('2014-04-29', 60.57, 60.93, 59.91, 60.91, 61, 0.34, 0.561334),
('2014-04-30', 60.87, 61.8, 60.63, 61.69, 62, 0.82, 1.34713),
('2014-05-01', 61.69, 63.1, 61.31, 62.59, 63, 0.9, 1.45891),
('2014-05-02', 62.86, 62.97, 61.53, 61.56, 62, -1.3, -2.06809),
('2014-05-05', 61.2, 61.98, 60.88, 61.44, 61, 0.24, 0.392157),
('2014-05-06', 61.15, 61.35, 59.34, 59.44, 59, -1.71, -2.7964),
('2014-05-07', 59.56, 59.68, 57.15, 58.63, 59, -0.93, -1.56145),
('2014-05-08', 58.34, 60.61, 57.9, 59.08, 59, 0.74, 1.26843),
('2014-05-09', 59.14, 59.61, 58.17, 59.59, 60, 0.45, 0.760906),
('2014-05-12', 59.77, 61.05, 59.74, 60.7, 61, 0.93, 1.55596),
('2014-05-13', 60.81, 60.97, 60.14, 60.81, 61, 0, 0),
('2014-05-14', 59.95, 61.35, 59.95, 60.88, 61, 0.93, 1.55129);

-- --------------------------------------------------------

--
-- Table structure for table `analysisa`
--

CREATE TABLE IF NOT EXISTS `analysisa` (
  `ticker` varchar(8) NOT NULL,
  `daysInc` int(11) NOT NULL,
  `pctOfDaysInc` float NOT NULL,
  `avgIncPct` float NOT NULL,
  `daysDec` int(11) NOT NULL,
  `pctOfDaysDec` float NOT NULL,
  `avgDecPct` float NOT NULL,
  `buckysBuyValue` float NOT NULL,
  `buckysSellValue` float NOT NULL,
  PRIMARY KEY (`ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analysisa`
--

INSERT INTO `analysisa` (`ticker`, `daysInc`, `pctOfDaysInc`, `avgIncPct`, `daysDec`, `pctOfDaysDec`, `avgDecPct`, `buckysBuyValue`, `buckysSellValue`) VALUES
('ADBE', 5, 41.6667, 0.939268, 7, 58.3333, -2.14354, 39.1362, -125.04),
('F', 5, 33.3333, 0.786932, 10, 66.6667, -0.919579, 26.2311, -61.3052),
('GE', 7, 43.75, 0.489726, 9, 56.25, -0.488635, 21.4255, -27.4857),
('NFLX', 5, 26.3158, 2.04992, 14, 73.6842, -1.89747, 53.9452, -139.813),
('YHOO', 8, 44.4444, 1.3269, 10, 55.5556, -2.50748, 58.9735, -139.304);

-- --------------------------------------------------------

--
-- Table structure for table `f`
--

CREATE TABLE IF NOT EXISTS `f` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `open` float DEFAULT NULL,
  `high` float DEFAULT NULL,
  `low` float DEFAULT NULL,
  `close` float DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `amount_change` float DEFAULT NULL,
  `percent_change` float DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f`
--

INSERT INTO `f` (`date`, `open`, `high`, `low`, `close`, `volume`, `amount_change`, `percent_change`) VALUES
('2014-03-27', 15.25, 15.38, 15.17, 15.25, 15, 0, 0),
('2014-03-28', 15.32, 15.58, 15.31, 15.45, 15, 0.13, 0.848564),
('2014-03-31', 15.6, 15.63, 15.48, 15.6, 15, 0, 0),
('2014-04-01', 15.67, 16.45, 15.67, 16.32, 16, 0.65, 4.14805),
('2014-04-02', 16.25, 16.49, 16.15, 16.46, 16, 0.21, 1.29231),
('2014-04-03', 16.46, 16.49, 16.34, 16.39, 16, -0.07, -0.425273),
('2014-04-04', 16.49, 16.49, 16.11, 16.13, 16, -0.36, -2.18314),
('2014-04-07', 16.08, 16.17, 15.86, 15.94, 16, -0.14, -0.870647),
('2014-04-08', 15.99, 16.16, 15.92, 16.1, 16, 0.11, 0.68793),
('2014-04-09', 16, 16.09, 15.75, 15.84, 16, -0.16, -1),
('2014-04-10', 15.9, 15.91, 15.59, 15.63, 16, -0.27, -1.69811),
('2014-04-11', 15.8, 15.93, 15.6, 15.63, 16, -0.17, -1.07595),
('2014-04-14', 15.73, 15.77, 15.53, 15.7, 16, -0.03, -0.190718),
('2014-04-15', 15.77, 15.88, 15.66, 15.84, 16, 0.07, 0.443881),
('2014-04-16', 15.94, 16.07, 15.9, 16.07, 16, 0.13, 0.815558),
('2014-04-17', 15.99, 16.1, 15.99, 16, 16, 0.01, 0.0625391),
('2014-04-21', 16.01, 16.08, 15.9, 15.98, 16, -0.03, -0.187383),
('2014-04-22', 15.96, 16.18, 15.93, 16.1, 16, 0.14, 0.877193),
('2014-04-23', 16.08, 16.32, 16.08, 16.23, 16, 0.15, 0.932836),
('2014-04-24', 16.41, 16.44, 16.2, 16.32, 16, -0.09, -0.548446),
('2014-04-25', 15.81, 15.9, 15.71, 15.78, 16, -0.03, -0.189753),
('2014-04-28', 15.94, 16.05, 15.75, 15.97, 16, 0.03, 0.188206),
('2014-04-29', 16, 16.15, 15.91, 16.12, 16, 0.12, 0.75),
('2014-04-30', 16.03, 16.18, 15.92, 16.15, 16, 0.12, 0.748596),
('2014-05-01', 16.15, 16.2, 15.85, 15.91, 16, -0.24, -1.48607),
('2014-05-02', 15.95, 15.98, 15.8, 15.9, 16, -0.05, -0.31348),
('2014-05-05', 15.81, 15.87, 15.71, 15.74, 16, -0.07, -0.442758),
('2014-05-06', 15.74, 15.76, 15.53, 15.56, 16, -0.18, -1.14358),
('2014-05-07', 15.63, 15.63, 15.43, 15.46, 15, -0.17, -1.08765),
('2014-05-08', 15.54, 15.95, 15.51, 15.81, 16, 0.27, 1.73745),
('2014-05-09', 15.73, 15.9, 15.73, 15.77, 16, 0.04, 0.254291),
('2014-05-12', 15.81, 15.9, 15.78, 15.84, 16, 0.03, 0.189753),
('2014-05-13', 15.85, 15.9, 15.75, 15.86, 16, 0.01, 0.0630915),
('2014-05-14', 15.85, 15.89, 15.75, 15.75, 16, -0.1, -0.630915);

-- --------------------------------------------------------

--
-- Table structure for table `ge`
--

CREATE TABLE IF NOT EXISTS `ge` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `open` float DEFAULT NULL,
  `high` float DEFAULT NULL,
  `low` float DEFAULT NULL,
  `close` float DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `amount_change` float DEFAULT NULL,
  `percent_change` float DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ge`
--

INSERT INTO `ge` (`date`, `open`, `high`, `low`, `close`, `volume`, `amount_change`, `percent_change`) VALUES
('2014-03-27', 25.58, 25.85, 25.51, 25.81, 26, 0.23, 0.89914),
('2014-03-28', 25.9, 26.02, 25.78, 25.88, 26, -0.02, -0.0772201),
('2014-03-31', 26.02, 26.08, 25.81, 25.89, 26, -0.13, -0.499616),
('2014-04-01', 25.83, 25.99, 25.75, 25.87, 26, 0.04, 0.154859),
('2014-04-02', 25.92, 26.06, 25.87, 26.04, 26, 0.12, 0.462963),
('2014-04-03', 26.15, 26.26, 26.05, 26.23, 26, 0.08, 0.305927),
('2014-04-04', 26.37, 26.4, 25.99, 26.02, 26, -0.35, -1.32727),
('2014-04-07', 25.95, 26.04, 25.74, 25.85, 26, -0.1, -0.385356),
('2014-04-08', 25.76, 25.92, 25.67, 25.75, 26, -0.01, -0.0388199),
('2014-04-09', 25.86, 25.96, 25.59, 25.95, 26, 0.09, 0.348028),
('2014-04-10', 26.09, 26.11, 25.57, 25.58, 26, -0.51, -1.95477),
('2014-04-11', 25.51, 25.76, 25.43, 25.43, 25, -0.08, -0.313603),
('2014-04-14', 25.58, 25.75, 25.43, 25.71, 26, 0.13, 0.50821),
('2014-04-15', 25.67, 25.89, 25.58, 25.82, 26, 0.15, 0.58434),
('2014-04-16', 26.01, 26.2, 25.89, 26.12, 26, 0.11, 0.422914),
('2014-04-17', 26.47, 26.76, 26.45, 26.56, 27, 0.09, 0.340008),
('2014-04-21', 26.63, 26.71, 26.56, 26.59, 27, -0.04, -0.150207),
('2014-04-22', 26.7, 26.77, 26.57, 26.58, 27, -0.12, -0.449438),
('2014-04-23', 26.57, 26.66, 26.39, 26.42, 26, -0.15, -0.564546),
('2014-04-24', 26.44, 26.64, 26.23, 26.46, 26, 0.02, 0.075643),
('2014-04-25', 26.57, 26.8, 26.55, 26.6, 27, 0.03, 0.112909),
('2014-04-28', 26.72, 26.85, 26.53, 26.78, 27, 0.06, 0.224551),
('2014-04-29', 26.83, 26.88, 26.59, 26.76, 27, -0.07, -0.260902),
('2014-04-30', 26.8, 26.9, 26.65, 26.89, 27, 0.09, 0.335821),
('2014-05-01', 26.73, 26.83, 26.64, 26.77, 27, 0.04, 0.149645),
('2014-05-02', 26.77, 26.87, 26.66, 26.68, 27, -0.09, -0.336197),
('2014-05-05', 26.69, 26.69, 26.5, 26.58, 27, -0.11, -0.412139),
('2014-05-06', 26.51, 26.53, 26.19, 26.19, 26, -0.32, -1.20709),
('2014-05-07', 26.27, 26.53, 26.27, 26.53, 27, 0.26, 0.989722),
('2014-05-08', 26.48, 26.6, 26.3, 26.44, 26, -0.04, -0.151057),
('2014-05-09', 26.56, 26.57, 26.31, 26.42, 26, -0.14, -0.527108),
('2014-05-12', 26.58, 26.86, 26.51, 26.85, 27, 0.27, 1.0158),
('2014-05-13', 26.89, 26.95, 26.77, 26.92, 27, 0.03, 0.111566),
('2014-05-14', 26.91, 26.96, 26.67, 26.76, 27, -0.15, -0.557414);

-- --------------------------------------------------------

--
-- Table structure for table `nflx`
--

CREATE TABLE IF NOT EXISTS `nflx` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `open` float DEFAULT NULL,
  `high` float DEFAULT NULL,
  `low` float DEFAULT NULL,
  `close` float DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `amount_change` float DEFAULT NULL,
  `percent_change` float DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nflx`
--

INSERT INTO `nflx` (`date`, `open`, `high`, `low`, `close`, `volume`, `amount_change`, `percent_change`) VALUES
('2014-03-27', 371.01, 377.83, 361.53, 364.18, 364, -6.83, -1.84092),
('2014-03-28', 360.22, 369, 355.75, 358.87, 359, -1.35, -0.374771),
('2014-03-31', 361.51, 366.86, 349.88, 352.03, 352, -9.48, -2.62233),
('2014-04-01', 351.75, 365.25, 351.74, 364.69, 365, 12.94, 3.67875),
('2014-04-02', 365.66, 371.05, 358.3, 362.88, 363, -2.78, -0.760269),
('2014-04-03', 361.33, 365.1, 350.1, 354.69, 355, -6.64, -1.83766),
('2014-04-04', 355.45, 356, 335.88, 337.31, 337, -18.14, -5.10339),
('2014-04-07', 340.51, 348.19, 331.11, 338, 338, -2.51, -0.73713),
('2014-04-08', 340.05, 350.79, 338.39, 348.89, 349, 8.84, 2.59962),
('2014-04-09', 351.03, 353.9, 343.15, 353.03, 353, 2, 0.569752),
('2014-04-10', 354.48, 357.48, 334.01, 334.73, 335, -19.75, -5.57154),
('2014-04-11', 330.8, 334.82, 323.61, 326.71, 327, -4.09, -1.2364),
('2014-04-14', 332.89, 335, 325.54, 331.58, 332, -1.31, -0.393523),
('2014-04-15', 329.08, 331.57, 312.1, 326.27, 326, -2.81, -0.853896),
('2014-04-16', 331.05, 333.97, 323.36, 331.41, 331, 0.36, 0.108745),
('2014-04-17', 336.76, 349.73, 332.5, 345.74, 346, 8.98, 2.66659),
('2014-04-21', 349.3, 349.4, 338.3, 348.49, 348, -0.81, -0.231892),
('2014-04-22', 376.63, 380.88, 364.83, 372.9, 373, -3.73, -0.990362),
('2014-04-23', 362.73, 367.5, 353, 353.5, 354, -9.23, -2.54459),
('2014-04-24', 352.5, 355.9, 334.8, 344.07, 344, -8.43, -2.39149),
('2014-04-25', 337.46, 341.41, 322, 322.08, 322, -15.38, -4.55758),
('2014-04-28', 318.05, 320.9, 299.5, 314.21, 314, -3.84, -1.20736),
('2014-04-29', 312.24, 324.63, 312.03, 319.87, 320, 7.63, 2.44363),
('2014-04-30', 317.92, 322.4, 310.25, 322.04, 322, 4.12, 1.29592),
('2014-05-01', 324.05, 345.69, 323.05, 336.52, 337, 12.47, 3.84817),
('2014-05-02', 337.51, 343.9, 334.05, 340.65, 341, 3.14, 0.930343),
('2014-05-05', 338.07, 345.48, 336.1, 344.38, 344, 6.31, 1.86648),
('2014-05-06', 343.72, 347.72, 325.64, 326.19, 326, -17.53, -5.10008),
('2014-05-07', 326.13, 327.84, 315.21, 320.54, 321, -5.59, -1.71404),
('2014-05-08', 317.16, 331.72, 314.36, 321.66, 322, 4.5, 1.41884),
('2014-05-09', 322.08, 329.94, 317.35, 328.55, 329, 6.47, 2.00882),
('2014-05-12', 330.86, 345.53, 330.52, 345.45, 345, 14.59, 4.40972),
('2014-05-13', 344.45, 354.27, 340.74, 347.14, 347, 2.69, 0.780955),
('2014-05-14', 347.05, 354.4, 346.06, 351.88, 352, 4.83, 1.39173);

-- --------------------------------------------------------

--
-- Table structure for table `yhoo`
--

CREATE TABLE IF NOT EXISTS `yhoo` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `open` float DEFAULT NULL,
  `high` float DEFAULT NULL,
  `low` float DEFAULT NULL,
  `close` float DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `amount_change` float DEFAULT NULL,
  `percent_change` float DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yhoo`
--

INSERT INTO `yhoo` (`date`, `open`, `high`, `low`, `close`, `volume`, `amount_change`, `percent_change`) VALUES
('2014-03-27', 35.5, 36.15, 35.05, 35.59, 36, 0.09, 0.253521),
('2014-03-28', 35.77, 36.73, 35.53, 35.9, 36, 0.13, 0.363433),
('2014-03-31', 36.46, 36.58, 35.73, 35.9, 36, -0.56, -1.53593),
('2014-04-01', 36.16, 36.86, 36.15, 36.49, 36, 0.33, 0.912611),
('2014-04-02', 36.68, 36.86, 36.56, 36.64, 37, -0.04, -0.109051),
('2014-04-03', 36.66, 36.79, 35.51, 35.76, 36, -0.9, -2.45499),
('2014-04-04', 36.01, 36.05, 33.83, 34.26, 34, -1.75, -4.85976),
('2014-04-07', 34.11, 34.37, 32.53, 33.07, 33, -1.04, -3.04896),
('2014-04-08', 33.1, 34.43, 33.02, 33.83, 34, 0.73, 2.20544),
('2014-04-09', 34.19, 35, 33.95, 34.87, 35, 0.68, 1.98889),
('2014-04-10', 34.88, 34.98, 33.09, 33.4, 33, -1.48, -4.24312),
('2014-04-11', 32.64, 33.48, 32.15, 32.87, 33, 0.23, 0.704657),
('2014-04-14', 33.55, 34.04, 33.04, 33.45, 33, -0.1, -0.298063),
('2014-04-15', 33.93, 34.28, 32.64, 34.21, 34, 0.28, 0.825228),
('2014-04-16', 36.98, 37.3, 35.81, 36.35, 36, -0.63, -1.70362),
('2014-04-17', 36.29, 36.6, 35.55, 36.38, 36, 0.09, 0.248002),
('2014-04-21', 36.6, 36.65, 35.89, 36.4, 36, -0.2, -0.546448),
('2014-04-22', 36.71, 36.85, 36.11, 36.14, 36, -0.57, -1.55271),
('2014-04-23', 36.08, 36.19, 35.4, 35.44, 35, -0.64, -1.77384),
('2014-04-24', 35.82, 35.82, 34.77, 35.24, 35, -0.58, -1.61921),
('2014-04-25', 35.03, 35.1, 34.29, 34.48, 34, -0.55, -1.57008),
('2014-04-28', 34.67, 35, 33.65, 33.99, 34, -0.68, -1.96135),
('2014-04-29', 34.37, 35.89, 34.12, 35.83, 36, 1.46, 4.24789),
('2014-04-30', 35.89, 36.44, 35.25, 35.95, 36, 0.06, 0.167177),
('2014-05-01', 36.26, 36.69, 36, 36.51, 37, 0.25, 0.689465),
('2014-05-02', 36.59, 37.12, 36.21, 36.87, 37, 0.28, 0.765236),
('2014-05-05', 36.68, 37.05, 36.3, 36.91, 37, 0.23, 0.627045),
('2014-05-06', 36.94, 37.17, 36.48, 36.49, 36, -0.45, -1.21819),
('2014-05-07', 35.99, 35.99, 33.67, 34.07, 34, -1.92, -5.33482),
('2014-05-08', 33.88, 34.57, 33.61, 33.92, 34, 0.04, 0.118064),
('2014-05-09', 34.01, 34.1, 33.41, 33.76, 34, -0.25, -0.735078),
('2014-05-12', 33.99, 34.6, 33.87, 34.45, 34, 0.46, 1.35334),
('2014-05-13', 34.43, 34.69, 34.17, 34.4, 34, -0.03, -0.0871333),
('2014-05-14', 34.48, 34.65, 33.98, 34.17, 34, -0.31, -0.899072);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
