-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2020 at 05:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsechacks`
--

-- --------------------------------------------------------

--
-- Table structure for table `form2`
--

CREATE TABLE `form2` (
  `email` varchar(100) NOT NULL,
  `club` char(20) NOT NULL,
  `expfrom` date NOT NULL,
  `expto` date NOT NULL,
  `message` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form2`
--

INSERT INTO `form2` (`email`, `club`, `expfrom`, `expto`, `message`) VALUES
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('', '', '0000-00-00', '0000-00-00', ''),
('simranjaveri10@gmail.com', 'public', '2020-02-06', '2020-02-01', 'woah'),
('simranjaveri10@gmail.com', 'code', '2020-02-19', '2020-02-08', 'hi');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
