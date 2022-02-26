-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 26, 2022 at 05:23 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookera`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_client`
--

DROP TABLE IF EXISTS `book_client`;
CREATE TABLE IF NOT EXISTS `book_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(111) NOT NULL,
  `uname` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `mobile` double NOT NULL,
  `adhar` double NOT NULL,
  `dob` timestamp NOT NULL,
  `gender` enum('male','female') NOT NULL DEFAULT 'male',
  `address` varchar(111) NOT NULL,
  `password` blob NOT NULL,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `utype` enum('student','publisher','creator') NOT NULL DEFAULT 'student',
  `activation` enum('-1','0','1') NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_client`
--

INSERT INTO `book_client` (`id`, `nickname`, `uname`, `email`, `mobile`, `adhar`, `dob`, `gender`, `address`, `password`, `joined`, `status`, `utype`, `activation`) VALUES
(1, 'Akashf', 'Akash Fulari', 'johnsena123@gmail.com', 7887545823, 127172928918, '2022-03-01 18:30:00', 'female', 'asdasd', 0x565449774e574979536e565562586870596c5661516c5257556b706c5a7a3039, '2022-02-22 18:38:08', '2022-02-22 18:38:08', 'student', '-1'),
(2, 'Safa', 'Ksjkfjsd', 'johnsena123@gmail.com', 1232498759, 287342389283, '2022-03-09 18:30:00', 'female', 'asdasdad', 0x565449774e574979536e565562586870596c5661516c5257556b706c5a7a3039, '2022-02-25 13:55:26', '2022-02-25 13:55:26', 'publisher', '-1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
