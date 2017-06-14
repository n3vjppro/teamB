-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 13, 2017 at 11:39 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Software Engineer Management`
--
CREATE DATABASE IF NOT EXISTS `Software Engineer Management` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `Software Engineer Management`;

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

CREATE TABLE `Account` (
  `username` varchar(20) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Engineer`
--

CREATE TABLE `Engineer` (
  `idEngineer` varchar(10) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `nameEngineer` varchar(50) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `techSkill` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `experience` varchar(50) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Project`
--

CREATE TABLE `Project` (
  `idProject` varchar(10) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `nameProject` varchar(50) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `techSkill` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `dateOfBegin` date NOT NULL,
  `dateOfEnd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Team`
--

CREATE TABLE `Team` (
  `idTeam` varchar(10) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `teamName` varchar(50) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `techSkill` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Account`
--
ALTER TABLE `Account`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Engineer`
--
ALTER TABLE `Engineer`
  ADD PRIMARY KEY (`idEngineer`);

--
-- Indexes for table `Project`
--
ALTER TABLE `Project`
  ADD PRIMARY KEY (`idProject`);

--
-- Indexes for table `Team`
--
ALTER TABLE `Team`
  ADD PRIMARY KEY (`idTeam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
