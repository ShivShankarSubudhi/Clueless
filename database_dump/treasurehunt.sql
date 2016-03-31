-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 25, 2013 at 02:59 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `treasurehunt`
--

-- --------------------------------------------------------

--
-- Table structure for table `accesslogs`
--

CREATE TABLE IF NOT EXISTS `accesslogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `val` varchar(2000) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=162 ;

--
-- Dumping data for table `accesslogs`
--

INSERT INTO `accesslogs` (`id`, `ip`, `user`, `val`, `time`) VALUES
(1, '::1', 'sksk', 'Tried login in with wrong username and password was sslls', '2012-12-26 10:03:22'),
(2, '::1', 'somu', 'Has logged in correctly', '2012-12-26 10:42:58'),
(3, '::1', 'somu', 'Has logged in correctly', '2012-12-26 10:44:36'),
(4, '::1', 'somu', 'Has logged in correctly', '2012-12-26 10:54:12'),
(5, '::1', 'xzxzz', 'Tried login in with wrong username and password was xzxxz', '2012-12-26 10:55:10'),
(6, '::1', 'somu', 'Has logged in correctly', '2012-12-26 10:55:45'),
(7, '::1', '', 'Tried login in with wrong username and password was ', '2012-12-26 11:16:07'),
(8, '::1', 'somu', 'Has logged in correctly', '2012-12-26 11:22:08'),
(9, '::1', 'player', 'Has logged in correctly', '2012-12-26 11:30:19'),
(10, '::1', 'player', 'Has logged in correctly', '2012-12-26 11:44:00'),
(11, '::1', 'somu', 'Has logged in correctly', '2012-12-26 11:45:21'),
(12, '::1', 'somu', 'Has logged in correctly', '2012-12-26 11:49:51'),
(13, '::1', 'kaka', 'Tried login in with wrong username and password was sa', '2012-12-26 11:56:11'),
(14, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-26 11:56:34'),
(15, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-26 12:02:44'),
(16, '::1', 'somu', 'Has entered the wrong password ie sommu', '2012-12-26 12:08:22'),
(17, '::1', 'somu', 'Has logged in correctly', '2012-12-26 12:08:40'),
(18, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-26 12:18:05'),
(19, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-26 12:24:13'),
(20, '::1', 'somu', 'Has logged in correctly', '2012-12-26 12:57:37'),
(21, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-26 12:58:05'),
(22, '::1', 'somu', 'Has logged in correctly', '2012-12-26 13:04:23'),
(23, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-26 13:11:21'),
(24, '::1', 'somu', 'Has logged in correctly', '2012-12-26 13:17:18'),
(25, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-26 13:27:48'),
(26, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-26 13:28:13'),
(27, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-26 13:34:46'),
(28, '::1', 'Shiv Shankar Subudhi', 'Tried login in with wrong username and password was ', '2012-12-26 18:56:46'),
(29, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-26 18:57:01'),
(30, '::1', 'somu', 'Has logged in correctly', '2012-12-26 19:01:08'),
(31, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-26 19:03:09'),
(32, '::1', 'somu', 'Has logged in correctly', '2012-12-27 06:47:04'),
(33, '::1', 'somu', 'Has logged in correctly', '2012-12-30 18:06:54'),
(34, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-30 18:07:35'),
(35, '::1', 'somu', 'Has logged in correctly', '2012-12-30 18:14:56'),
(36, '::1', '', 'Tried login in with wrong username and password was ', '2012-12-30 18:27:40'),
(37, '::1', 'vssutgam', 'Has logged in correctly', '2012-12-30 18:31:03'),
(38, '::1', 'test', 'Has logged in correctly', '2012-12-30 18:44:37'),
(39, '::1', 'player', 'Has logged in correctly', '2012-12-30 18:54:01'),
(40, '::1', 'somu', 'Has logged in correctly', '2012-12-30 18:55:25'),
(41, '::1', 'ss', 'Has logged in correctly', '2012-12-30 19:04:36'),
(42, '::1', 'somu', 'Has logged in correctly', '2012-12-30 19:05:34'),
(43, '::1', 'somu', 'Has logged in correctly', '2012-12-30 19:05:55'),
(44, '::1', 'somu', 'Has logged in correctly', '2012-12-30 19:06:50'),
(45, '::1', 'ss', 'Has logged in correctly', '2012-12-30 19:18:39'),
(46, '::1', 'somu', 'Has logged in correctly', '2012-12-31 18:48:25'),
(47, '::1', 'somu', 'Has logged in correctly', '2012-12-31 18:48:43'),
(48, '::1', 'somu', 'Has logged in correctly', '2012-12-31 18:49:31'),
(49, '::1', 'hh', 'Has logged in correctly', '2012-12-31 19:30:32'),
(50, '::1', 'hh', 'Has logged in correctly', '2012-12-31 19:33:06'),
(51, '::1', 'hh', 'Has logged in correctly', '2012-12-31 19:35:04'),
(52, '::1', 'hh', 'Has logged in correctly', '2012-12-31 19:43:31'),
(53, '::1', 'hh', 'Has logged in correctly', '2012-12-31 19:52:59'),
(54, '::1', 'hh', 'Has logged in correctly', '2012-12-31 19:53:50'),
(55, '::1', 'satish', 'Has logged in correctly', '2013-01-02 01:34:42'),
(56, '::1', 'somu', 'Has logged in correctly', '2013-01-02 01:36:06'),
(57, '::1', 'somu', 'Has logged in correctly', '2013-01-02 14:06:41'),
(58, '::1', 'asfs', 'Has entered the wrong password ie as', '2013-01-02 14:09:56'),
(59, '::1', 'asfs', 'Has entered the wrong password ie as', '2013-01-02 14:10:03'),
(60, '::1', 'asds', 'Has logged in correctly', '2013-01-02 14:10:43'),
(61, '::1', 'vssutgam', 'Has logged in correctly', '2013-01-02 19:58:39'),
(62, '::1', 'vssutgam', 'Has logged in correctly', '2013-01-02 20:01:04'),
(63, '::1', 'vssutgam', 'Has logged in correctly', '2013-01-02 20:18:26'),
(64, '::1', 'somu', 'Has logged in correctly', '2013-01-02 20:18:43'),
(65, '::1', 'somu', 'Has logged in correctly', '2013-01-02 20:19:14'),
(66, '::1', 'vssutgam', 'Has logged in correctly', '2013-01-02 20:19:48'),
(67, '::1', 'vssutgam', 'Has logged in correctly', '2013-01-02 20:20:06'),
(68, '::1', 'saugandh', 'Has logged in correctly', '2013-01-03 08:15:19'),
(69, '::1', 'somu', 'Has logged in correctly', '2013-01-03 08:17:51'),
(70, '::1', 'manas', 'Has logged in correctly', '2013-01-04 16:49:51'),
(71, '::1', 'aneemesh', 'Has logged in correctly', '2013-01-04 16:52:29'),
(72, '::1', 'somu', 'Has logged in correctly', '2013-01-04 17:00:53'),
(73, '::1', 'somu', 'Has logged in correctly', '2013-01-06 06:00:29'),
(74, '::1', 'Visitor', 'Tried login in with wrong username and password was jlj', '2013-01-06 06:07:13'),
(75, '::1', 'somu', 'Has logged in correctly', '2013-01-06 06:13:05'),
(76, '::1', 'somu', 'Has logged in correctly', '2013-01-06 06:29:35'),
(77, '::1', 'pritam', 'Has logged in correctly', '2013-01-06 09:15:25'),
(78, '::1', 'kishore', 'Has logged in correctly', '2013-01-11 09:10:31'),
(79, '::1', 'somu', 'Has logged in correctly', '2013-01-11 09:13:31'),
(80, '::1', 'angsu', 'Has logged in correctly', '2013-01-18 14:15:18'),
(81, '::1', 'somu', 'Has logged in correctly', '2013-01-18 14:18:22'),
(82, '::1', 'somu', 'Has logged in correctly', '2013-01-20 08:24:06'),
(83, '::1', 'sss', 'Has logged in correctly', '2013-02-09 16:43:02'),
(84, '::1', 'somu', 'Has logged in correctly', '2013-02-09 16:43:56'),
(85, '::1', 'somu', 'Has logged in correctly', '2013-02-09 16:47:11'),
(86, '::1', 'ashu', 'Has entered the wrong password ie as', '2013-02-10 13:55:15'),
(87, '::1', 'ag', 'Has logged in correctly', '2013-02-10 13:57:08'),
(88, '::1', 'ag', 'Has logged in correctly', '2013-02-10 14:04:12'),
(89, '::1', 'somu', 'Has logged in correctly', '2013-02-10 14:06:28'),
(90, '::1', 'asdf', 'Has logged in correctly', '2013-02-10 14:11:13'),
(91, '::1', 'ag', 'Has logged in correctly', '2013-02-10 18:01:09'),
(92, '::1', 'gh', 'Has logged in correctly', '2013-02-10 18:01:43'),
(93, '::1', 'mm', 'Has logged in correctly', '2013-02-10 18:08:03'),
(94, '::1', 'rtrt', 'Has logged in correctly', '2013-02-10 18:32:42'),
(95, '::1', 'somu', 'Has logged in correctly', '2013-02-12 15:20:15'),
(96, '::1', 'somu', 'Has logged in correctly', '2013-02-12 16:57:57'),
(97, '::1', 'somu', 'Has logged in correctly', '2013-02-12 17:08:30'),
(98, '::1', 'somu', 'Has logged in correctly', '2013-02-12 17:14:11'),
(99, '::1', 'somu', 'Has logged in correctly', '2013-02-12 17:25:07'),
(100, '::1', 'somu', 'Has logged in correctly', '2013-02-12 17:25:10'),
(101, '::1', 'KH', 'Tried login in with wrong username and password was KH', '2013-02-12 18:00:12'),
(102, '::1', 'mn', 'Tried login in with wrong username and password was mn', '2013-02-12 18:00:31'),
(103, '::1', 'somu', 'Has logged in correctly', '2013-02-12 18:00:47'),
(104, '::1', 'somu', 'Has logged in correctly', '2013-02-12 18:05:20'),
(105, '::1', 'km', 'Has logged in correctly', '2013-02-13 07:15:39'),
(106, '::1', 'km', 'Has logged in correctly', '2013-02-13 07:16:02'),
(107, '::1', '', 'Tried login in with wrong username and password was ', '2013-02-13 14:17:07'),
(108, '::1', 'somu', 'Has logged in correctly', '2013-02-13 14:17:12'),
(109, '::1', 'somu', 'Has logged in correctly', '2013-02-13 17:53:09'),
(110, '::1', 'somu', 'Has logged in correctly', '2013-02-13 18:32:00'),
(111, '::1', 'somu', 'Has logged in correctly', '2013-02-13 18:44:31'),
(112, '::1', 'vb', 'Has logged in correctly', '2013-02-13 18:46:21'),
(113, '::1', 'somu', 'Has logged in correctly', '2013-02-13 18:47:48'),
(114, '::1', 'bv', 'Tried login in with wrong username and password was bv', '2013-02-13 19:05:44'),
(115, '::1', 'vb', 'Has logged in correctly', '2013-02-13 19:06:05'),
(116, '::1', 'somu', 'Has logged in correctly', '2013-02-13 19:06:26'),
(117, '::1', 'somu', 'Has logged in correctly', '2013-02-13 19:10:20'),
(118, '::1', 'lp', 'Has logged in correctly', '2013-02-13 19:12:44'),
(119, '::1', 'somu', 'Has logged in correctly', '2013-02-13 19:16:11'),
(120, '::1', 'somu', 'Has logged in correctly', '2013-02-13 19:17:15'),
(121, '::1', 'somu', 'Has logged in correctly', '2013-02-13 19:20:06'),
(122, '::1', 'somu', 'Has logged in correctly', '2013-02-13 19:20:26'),
(123, '::1', 'somu', 'Has logged in correctly', '2013-02-13 19:20:52'),
(124, '::1', 'somu', 'Has logged in correctly', '2013-02-13 19:22:44'),
(125, '::1', 'lp', 'Has logged in correctly', '2013-02-13 19:23:09'),
(126, '::1', 'somu', 'Has logged in correctly', '2013-02-15 07:56:54'),
(127, '::1', 'somu', 'Has logged in correctly', '2013-02-15 12:32:19'),
(128, '::1', 'somu', 'Has logged in correctly', '2013-02-15 12:55:58'),
(129, '::1', 'lp', 'Has logged in correctly', '2013-02-15 12:56:52'),
(130, '::1', 'somu', 'Has logged in correctly', '2013-02-15 13:28:04'),
(131, '::1', 'somu', 'Has logged in correctly', '2013-02-15 13:29:06'),
(132, '::1', 'kh', 'Has logged in correctly', '2013-02-15 13:32:22'),
(133, '::1', 'somu', 'Has logged in correctly', '2013-02-15 14:34:33'),
(134, '::1', 'lp', 'Has logged in correctly', '2013-02-15 14:39:35'),
(135, '::1', 'lp', 'Has logged in correctly', '2013-02-15 14:53:49'),
(136, '::1', 'somu', 'Has logged in correctly', '2013-02-15 14:55:16'),
(137, '::1', 'shivshankar.somu', 'Tried login in with wrong username and password was sheetal', '2013-02-15 15:02:44'),
(138, '::1', 'shivshankar.somu', 'Tried login in with wrong username and password was sheetal', '2013-02-15 15:04:40'),
(139, '::1', 'lp', 'Has entered the wrong password ie ', '2013-02-15 15:07:16'),
(140, '::1', 'lp', 'Has logged in correctly', '2013-02-15 15:07:24'),
(141, '::1', 'somu', 'Has logged in correctly', '2013-02-15 15:14:56'),
(142, '::1', 'lp', 'Has logged in correctly', '2013-02-15 15:15:57'),
(143, '::1', 'lp', 'Has logged in correctly', '2013-02-15 15:44:16'),
(144, '::1', 'somu', 'Has logged in correctly', '2013-02-15 15:47:05'),
(145, '::1', 'lp', 'Has logged in correctly', '2013-02-15 15:47:50'),
(146, '::1', 'somu', 'Has entered the wrong password ie ', '2013-02-15 15:51:41'),
(147, '::1', 'somu', 'Has logged in correctly', '2013-02-15 15:51:48'),
(148, '::1', 'lp', 'Has entered the wrong password ie ', '2013-02-15 15:52:21'),
(149, '::1', 'lp', 'Has logged in correctly', '2013-02-15 15:52:26'),
(150, '::1', 'lp', 'Has logged in correctly', '2013-02-15 20:18:58'),
(151, '::1', 'somu', 'Has logged in correctly', '2013-02-15 20:19:23'),
(152, '::1', 'lp', 'Has logged in correctly', '2013-02-15 20:21:32'),
(153, '::1', 'lp', 'Has logged in correctly', '2013-02-15 21:20:17'),
(154, '::1', 'somu', 'Has logged in correctly', '2013-02-15 21:20:37'),
(155, '::1', 'lp', 'Has logged in correctly', '2013-02-15 21:21:16'),
(156, '::1', 'somu', 'Has logged in correctly', '2013-02-15 21:22:21'),
(157, '::1', 'somu', 'Has logged in correctly', '2013-02-15 21:23:26'),
(158, '::1', 'somu', 'Has logged in correctly', '2013-02-15 21:25:25'),
(159, '::1', 'somu', 'Has logged in correctly', '2013-02-15 21:26:35'),
(160, '127.0.0.1', 'somu', 'Has entered the wrong password ie shiv', '2013-12-11 16:17:28'),
(161, '127.0.0.1', 'bk', 'Has logged in correctly', '2013-12-11 16:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `fame`
--

CREATE TABLE IF NOT EXISTS `fame` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `college` varchar(200) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fame`
--

INSERT INTO `fame` (`id`, `user`, `time`, `status`, `college`) VALUES
(1, 'player', '2012-12-26 11:13:46', 1, 'VSSUT');

-- --------------------------------------------------------

--
-- Table structure for table `forum`
--

CREATE TABLE IF NOT EXISTS `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `val` varchar(2000) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `als` varchar(200) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `contents` varchar(1000) DEFAULT NULL,
  `answer` varchar(1000) DEFAULT NULL,
  `cookie` varchar(1000) DEFAULT NULL,
  `javascript` varchar(1000) DEFAULT NULL,
  `stat` int(11) DEFAULT NULL,
  `misc` varchar(200) DEFAULT NULL,
  `final_round` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `als`, `title`, `contents`, `answer`, `cookie`, `javascript`, `stat`, `misc`, `final_round`) VALUES
(1, 'Level-1', NULL, 'Level-1', '<img src="img/level1.jpg">', 'Bill Gates', 'HINT- A friend in need is a friend indeed.', 'HINT- A friend in need is a friend indeed.', 0, NULL, 0),
(2, 'sas', NULL, 'xsxs', '<div style="text-align:center; width:354px; margin-left:auto; margin-right:auto;">\n<img src="img/1948.png" usemap="#Image-Maps_7201302150749155" border="0" width="354" height="502" alt="" />\n<map id="_Image-Maps_7201302150749155" name="Image-Maps_7201302150749155">\n<area shape="poly" coords="124,443,126,449,128,456,126,460,124,461,122,456,122,452,122,448," target=_blank href="img/last.php"/>\n<area shape="poly" coords="" target_blank href="<img src="img/last.php">"/>\n<area shape="poly" coords="124,444,127,451,127,458,125,461,123,460,122,457,122,454,122,451,122,449," target_blank href="<img src="img/last.jpg">"/>\n\n</map>\n\n</div>\n            ', 'ganga', 'jssklj', 'sklklsa', 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) DEFAULT NULL,
  `val` varchar(2000) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user`, `val`, `level`, `time`) VALUES
(1, 'player', 'hi', 0, '2012-12-26 11:35:34'),
(2, 'player', 'hi', 1, '2012-12-26 11:35:43'),
(3, 'player', 'rituparna', 0, '2012-12-26 11:44:40'),
(4, 'player', 'hi', 0, '2012-12-26 11:44:48'),
(5, 'player', 'rituparna', 1, '2012-12-26 11:47:50'),
(6, 'player', 'SRT', 1, '2012-12-26 11:48:00'),
(7, 'vssutgam', 'hi', 0, '2012-12-26 11:56:44'),
(8, 'vssutgam', 'SRT', 1, '2012-12-26 19:03:21'),
(9, 'vssutgam', 'SRT', 2, '2012-12-26 19:03:30'),
(10, 'vssutgam', 'final', 2, '2012-12-30 18:40:31'),
(11, 'vssutgam', 'avc', 3, '2012-12-30 18:43:41'),
(12, 'test', 'hi', 0, '2012-12-30 18:44:52'),
(13, 'test', 'hi', 1, '2012-12-30 18:47:16'),
(14, 'test', 'SRT', 1, '2012-12-30 18:47:40'),
(15, 'test', 'final', 2, '2012-12-30 18:47:51'),
(16, 'test', 'Avc', 3, '2012-12-30 18:47:59'),
(17, 'test', 'avc', 3, '2012-12-30 18:48:06'),
(18, 'player', 'Final', 2, '2012-12-30 18:54:19'),
(19, 'player', 'acf', 3, '2012-12-30 18:54:27'),
(20, 'player', 'avc', 3, '2012-12-30 18:54:37'),
(21, 'player', 'avc', 4, '2012-12-30 18:54:38'),
(22, 'ss', 'hi', 0, '2012-12-30 19:04:41'),
(23, 'ss', 'SRT', 1, '2012-12-30 19:17:41'),
(24, 'ss', 'SRT', 1, '2012-12-30 19:19:12'),
(25, 'somu', 'hi', 0, '2012-12-30 19:25:47'),
(26, 'hh', 'hi', 0, '2012-12-31 19:30:40'),
(27, 'hh', 'hi', 0, '2012-12-31 19:33:11'),
(28, 'hh', 'hi', 1, '2012-12-31 19:34:35'),
(29, 'hh', 'hi', 1, '2012-12-31 19:34:55'),
(30, 'hh', 'hi', 0, '2012-12-31 19:35:09'),
(31, 'hh', 'SRT', 1, '2012-12-31 19:35:30'),
(32, 'hh', 'hi', 0, '2012-12-31 19:44:45'),
(33, 'satish', 'hi', 0, '2013-01-02 01:34:54'),
(34, 'satish', 'SRT', 1, '2013-01-02 01:35:14'),
(35, 'satish', 'avc', 2, '2013-01-02 01:35:50'),
(36, 'asds', 'hi', 0, '2013-01-02 14:10:56'),
(37, 'asds', 'SRT', 1, '2013-01-02 14:11:41'),
(38, 'asds', 'avc', 2, '2013-01-02 14:12:01'),
(39, 'saugandh', 'hi', 0, '2013-01-03 08:15:33'),
(40, 'saugandh', 'SRT', 1, '2013-01-03 08:16:14'),
(41, 'manas', 'hi', 0, '2013-01-04 16:50:16'),
(42, 'manas', 'SRT', 1, '2013-01-04 16:50:36'),
(43, 'manas', 'hgshgs', 2, '2013-01-04 16:51:18'),
(44, 'manas', 'avc', 2, '2013-01-04 16:51:26'),
(45, 'aneemesh', 'hi', 0, '2013-01-04 16:52:36'),
(46, 'pritam', 'hi', 0, '2013-01-06 09:15:36'),
(47, 'pritam', 'SRT', 1, '2013-01-06 09:15:58'),
(48, 'kishore', 'hi', 0, '2013-01-11 09:10:42'),
(49, 'kishore', 'SRT', 1, '2013-01-11 09:12:07'),
(50, 'angsu', 'hi', 0, '2013-01-18 14:15:30'),
(51, 'angsu', 'SRT', 1, '2013-01-18 14:17:04'),
(52, 'angsu', 'avc', 2, '2013-01-18 14:17:43'),
(53, 'sss', 'hi', 0, '2013-02-09 16:43:10'),
(54, 'sss', 'SRT', 1, '2013-02-09 16:43:25'),
(55, 'sss', 'avc', 2, '2013-02-09 16:43:32'),
(56, 'ag', 'hi', 0, '2013-02-10 13:57:20'),
(57, 'ag', 'SRT', 1, '2013-02-10 13:58:57'),
(58, 'ag', 'avc', 2, '2013-02-10 13:59:17'),
(59, 'ag', 'SRT', 2, '2013-02-10 13:59:30'),
(60, 'ag', 'srt', 2, '2013-02-10 13:59:39'),
(61, 'ag', 'final', 2, '2013-02-10 14:05:14'),
(62, 'ag', 'final', 3, '2013-02-10 14:05:27'),
(63, 'ag', 'final', 3, '2013-02-10 14:05:42'),
(64, 'ag', 'final', 3, '2013-02-10 14:05:55'),
(65, 'ag', 'avc', 3, '2013-02-10 14:06:05'),
(66, 'asdf', 'hi', 0, '2013-02-10 14:11:34'),
(67, 'asdf', 'SRT', 1, '2013-02-10 14:12:26'),
(68, 'asdf', 'SRT', 2, '2013-02-10 17:34:28'),
(69, 'gh', 'h i', 0, '2013-02-10 18:01:54'),
(70, 'gh', 'HI', 0, '2013-02-10 18:02:10'),
(71, 'gh', 'SRT', 1, '2013-02-10 18:02:20'),
(72, 'gh', 'f-inal', 2, '2013-02-10 18:02:43'),
(73, 'gh', 'final', 2, '2013-02-10 18:02:54'),
(74, 'gh', 'avc', 3, '2013-02-10 18:03:41'),
(75, 'rtrt', 'hi', 0, '2013-02-10 18:32:54'),
(76, 'rtrt', 'SRT', 1, '2013-02-10 18:33:56'),
(77, 'rtrt', 'hi', 2, '2013-02-10 18:35:37'),
(78, 'somu', 'SRT', 1, '2013-02-13 18:31:21'),
(79, 'somu', 'final', 2, '2013-02-13 18:31:48'),
(80, 'somu', 'avc', 3, '2013-02-13 18:32:27'),
(81, 'somu', '', 4, '2013-02-13 18:32:39'),
(82, 'lp', 'Bill Gates', 0, '2013-02-15 14:44:17'),
(83, 'lp', 'ganga', 1, '2013-02-15 14:44:31'),
(84, 'lp', 'ganga', 2, '2013-02-15 14:50:55'),
(85, 'lp', 'ganga', 2, '2013-02-15 14:51:35'),
(86, 'lp', 'ganga', 2, '2013-02-15 14:52:56'),
(87, 'lp', 'ganga', 2, '2013-02-15 14:53:10'),
(88, 'lp', 'ganga', 2, '2013-02-15 14:53:20'),
(89, 'lp', 'ganga', 1, '2013-02-15 15:08:52'),
(90, 'lp', 'ganga', 2, '2013-02-15 15:14:38'),
(91, 'lp', 'ganga', 1, '2013-02-15 15:45:22'),
(92, 'lp', 'Bill Gates', 0, '2013-02-15 15:48:02'),
(93, 'lp', 'ganga', 1, '2013-02-15 15:49:04'),
(94, 'lp', 'Bill Gates', 0, '2013-02-15 15:52:42'),
(95, 'lp', 'ganga', 1, '2013-02-15 15:53:17'),
(96, 'lp', 'ganga', 1, '2013-02-15 20:22:02'),
(97, 'lp', 'bill gates', 0, '2013-02-15 21:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `passtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mob` varchar(20) DEFAULT NULL,
  `college` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `validation` varchar(200) DEFAULT NULL,
  `validated` int(11) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `level`, `passtime`, `mob`, `college`, `email`, `role`, `fname`, `validation`, `validated`) VALUES
(1, 'somu', '50e129efe77d58a6ffc67d3ae94e7fd8555f3c80', 0, '2013-02-13 19:23:44', NULL, NULL, NULL, 10, NULL, NULL, NULL),
(2, 'lp', 'd44294dabb5559d834f8f8d1c5d4fd75c165770e', 1, '2013-02-15 21:21:50', '+918763347319', 'VSSUT', 'soumyamohanty@in.com', 1, 'lp', NULL, NULL),
(3, 'kh', 'e26bcf26236dfb41bb52085a647fa2460d83ee2a', 0, '2013-02-15 13:28:56', '+918763347319', 'kh', 'soumyamohanty@in.com', 1, 'kh', NULL, NULL),
(4, 'bk', '4452d71687b6bc2c9389c3349fdc17fbd73b833b', 0, '2013-12-11 16:18:16', '9437045751', 'sd', 'asutosh.subudhi@gmail.com', 1, 'sd', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
