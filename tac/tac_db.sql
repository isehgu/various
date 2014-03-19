-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 19, 2014 at 10:12 AM
-- Server version: 5.1.30
-- PHP Version: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tac_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `env_relation`
--

CREATE TABLE IF NOT EXISTS `env_relation` (
  `env_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `env_relation`
--

INSERT INTO `env_relation` (`env_id`, `test_id`) VALUES
(1, 1),
(2, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(1, 119),
(1, 27),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(2, 120),
(2, 121);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `tag`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 2, 2),
(5, 1, 3),
(6, 2, 3),
(7, 2, 4),
(8, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `stats_daily`
--

CREATE TABLE IF NOT EXISTS `stats_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `test_count` int(11) NOT NULL,
  `is_weekend_date` tinyint(1) NOT NULL,
  `email_count_savings` decimal(7,2) NOT NULL,
  `email_time_savings` decimal(7,2) NOT NULL,
  `lync_count_savings` decimal(7,2) NOT NULL,
  `lync_time_savings` decimal(7,2) NOT NULL,
  `total_minutes_saved` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `stats_daily`
--

INSERT INTO `stats_daily` (`id`, `date`, `test_count`, `is_weekend_date`, `email_count_savings`, `email_time_savings`, `lync_count_savings`, `lync_time_savings`, `total_minutes_saved`) VALUES
(1, '2014-03-05', 13, 0, 16.12, 14.69, 16.38, 4.03, 18.72),
(2, '2014-03-06', 15, 0, 18.60, 16.95, 18.90, 4.65, 21.60),
(3, '2014-03-07', 25, 0, 31.00, 28.25, 31.50, 7.75, 36.00),
(4, '2014-03-10', 23, 0, 28.52, 25.99, 28.98, 7.13, 33.12),
(5, '2014-03-11', 22, 0, 27.28, 24.86, 27.72, 6.82, 31.68),
(6, '2014-03-12', 5, 0, 6.20, 5.65, 6.30, 1.55, 7.20),
(7, '2014-03-13', 6, 0, 7.44, 6.78, 7.56, 1.86, 8.64),
(8, '2014-03-14', 22, 0, 27.28, 24.86, 27.72, 6.82, 31.68),
(9, '2014-03-15', 17, 1, 21.08, 19.21, 21.42, 5.27, 24.48),
(10, '2014-03-17', 30, 0, 37.20, 33.90, 37.80, 9.30, 43.20),
(11, '2014-03-18', 6, 0, 7.44, 6.78, 7.56, 1.86, 8.64);

-- --------------------------------------------------------

--
-- Table structure for table `stats_for_web`
--

CREATE TABLE IF NOT EXISTS `stats_for_web` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_tests_executed` int(11) NOT NULL,
  `busiest_count` int(11) NOT NULL,
  `busiest_date` date NOT NULL,
  `avg_daily_requests` decimal(4,2) NOT NULL,
  `total_coverage` int(11) NOT NULL,
  `pat_coverage` int(11) NOT NULL,
  `oat_coverage` int(11) NOT NULL,
  `email_time_multiplier` decimal(4,2) NOT NULL COMMENT 'Savings in email time per test case',
  `lync_time_multiplier` decimal(4,2) NOT NULL COMMENT 'Savings in Lync time per test case',
  `email_count_multiplier` decimal(4,2) NOT NULL COMMENT 'Savings in emails per test run',
  `lync_count_multiplier` decimal(4,2) NOT NULL COMMENT 'Savings in lyncs per test run',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stats_for_web`
--

INSERT INTO `stats_for_web` (`id`, `num_tests_executed`, `busiest_count`, `busiest_date`, `avg_daily_requests`, `total_coverage`, `pat_coverage`, `oat_coverage`, `email_time_multiplier`, `lync_time_multiplier`, `email_count_multiplier`, `lync_count_multiplier`) VALUES
(1, 0, 0, '0000-00-00', 0.00, 0, 0, 0, 1.13, 0.31, 1.24, 1.26),
(2, 187, 30, '2014-03-17', 16.73, 95, 100, 91, 1.13, 0.31, 1.24, 1.26);

-- --------------------------------------------------------

--
-- Table structure for table `stats_weekly`
--

CREATE TABLE IF NOT EXISTS `stats_weekly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `test_count` int(11) NOT NULL,
  `email_count_savings` decimal(7,2) NOT NULL,
  `email_time_savings` decimal(7,2) NOT NULL,
  `lync_count_savings` decimal(7,2) NOT NULL,
  `lync_time_savings` decimal(7,2) NOT NULL,
  `total_minutes_saved` decimal(7,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stats_weekly`
--

INSERT INTO `stats_weekly` (`id`, `start_date`, `end_date`, `test_count`, `email_count_savings`, `email_time_savings`, `lync_count_savings`, `lync_time_savings`, `total_minutes_saved`) VALUES
(1, '2014-03-03', '2014-03-09', 53, 65.72, 59.89, 66.78, 16.43, 76.32),
(2, '2014-03-10', '2014-03-16', 95, 117.80, 107.35, 119.70, 29.45, 136.80);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(20) NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `tag_name`) VALUES
(1, 'OAT'),
(2, 'PAT');

-- --------------------------------------------------------

--
-- Table structure for table `test_case`
--

CREATE TABLE IF NOT EXISTS `test_case` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `avg_duration` time DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=122 ;

--
-- Dumping data for table `test_case`
--

INSERT INTO `test_case` (`test_id`, `test_name`, `description`, `avg_duration`) VALUES
(1, 'Another Test', 'Troubleshooting Test', '00:00:11'),
(2, 'Fake PAT Test', 'Troubleshooting PAT Test', '00:00:01'),
(3, 'Another Test2', 'Another troubleshooting test', '00:00:31'),
(4, '16 Adapter 20 TPS Mod Del', 'This test will feed a mix of Order deletions/Modifications as well as New Order Singles for 16 adapters on 1 BSI at 25 TPS', NULL),
(5, '16 Adapter 40tps Prod Throttle', 'This test will feed New Order Singles for 16 adapters on 1 BSI at a rate of 40 TPS with Production Gateway Throttling.', NULL),
(6, '16 Adapter Rampup No Throttle 1000tps', 'This test will feed New Order Singles on 16 adapter for 1 BSI at a rate of 25 tps ramping up every 20 seconds until 1000 tps is reached. ', '00:37:00'),
(7, '16 Adapter Steady 40tps', 'This test will feed New Order Singles for 16 Adapters on 1 BSI at a rate of 40 TPS with No Gateway Throttling.', NULL),
(8, '16 IOC Adapter Rampup No Throttle 1000tps', 'This test will feed IOC Orders on 16 adapter for 1 BSI at a rate of 25 tps ramping up every 20 seconds until 1000 tps is reached.', NULL),
(9, '18 Adapter 3 BSI Rampup No Throttle 1000tps', 'This test will feed New Order Singles on 18 adapter for 3 BSI at a rate of 25 tps ramping up every 20 seconds until 1000 tps is reached.', NULL),
(10, '1 Adapter RampUp 1000tps', 'This test will feed New Order Singles on 1 adapter for 1 BSI at a rate of 25 tps ramping up every 20 seconds until 1000 tps is reached. ', '00:36:00'),
(11, '1 Adapter Rampup 100tps', 'This test will feed New Order Singles on 1 adapter for 1 BSI at a rate of 25 tps ramping up every 20 seconds until 100 tps is reached.', NULL),
(12, '8 Adapter Rampup No Throttle 1000tps', 'This test will feed New Order Singles on 8 adapters for 1 BSI at a rate of 25 tps ramping up every 20 seconds until 1000 tps is reached.', NULL),
(13, 'GEMINI PT101', '', NULL),
(14, 'GEMINI PT102', '', NULL),
(15, 'GEMINI PT103', '', NULL),
(16, 'GEMINI PT104', '', NULL),
(17, 'GEMINI PT105', '', NULL),
(18, 'GEMINI PT106', '', NULL),
(19, 'GEMINI PT107', '', NULL),
(20, 'GEMINI PT111', '', NULL),
(21, 'GEMINI PT112', '', NULL),
(22, 'GEMINI PT113', '', NULL),
(23, 'GEMINI PT114', '', NULL),
(24, 'GEMINI PT115', '', NULL),
(25, 'GEMINI PT116', '', NULL),
(26, 'GEMINI PT117', '', NULL),
(27, 'ISE 186 IORS Primary IRC Failure', 'This test verifies that if the primary IRC for IORS fails the secondary still functions and can provide the necessary data.', NULL),
(28, 'ISE AON ABBORampup', '', NULL),
(29, 'ISE AON MEQS Crossed With IBBO', '', NULL),
(30, 'ISE AON MEQS Crossed with MEQS', '', NULL),
(31, 'ISE AON MEQS Not Crossed With IBBO', '', NULL),
(32, 'ISE AON MEQs with IBBO and MEQ', '', NULL),
(33, 'ISE PT101', '', NULL),
(34, 'ISE PT102', '', NULL),
(35, 'ISE PT103', '', NULL),
(36, 'ISE PT104', '', NULL),
(37, 'ISE PT105', '', NULL),
(38, 'ISE PT106', '', NULL),
(39, 'ISE PT107', '', NULL),
(40, 'ISE PT111', '', NULL),
(41, 'ISE PT112', '', NULL),
(42, 'ISE PT113', '', NULL),
(43, 'ISE PT114', '', NULL),
(44, 'ISE PT115', '', NULL),
(45, 'ISE PT116', '', NULL),
(46, 'ISE PT117', '', NULL),
(47, 'OAT 11 IORS BSI Failover Cluster', 'Failure and recovery of IORS BSI Service. Order entry, via IORS Feeder, should only be temporarily impacted while BSI is recovered.', NULL),
(48, 'OAT 13 IORS RegularBSI Adapter Failure', 'This test stops the BSI adapter, via a Tibco message, verifies inability to connect to BSI, starts up the adapter and finally verifies order entry, via IORS Feeder.', NULL),
(49, 'OAT 14 IORS Svc Bureau BSI Adapter Failure', 'This test stops the Service Bureau BSI adapter, via a Tibco message, verifies inability to connect to BSI, starts up the service bureau adapter and finally verifies order entry, via IORS Feeder.', NULL),
(50, 'OAT 22 Pope Leader to Member Failover', 'This test verifies that a Pope leader to member failover has minimal impact on order entry. Order entry should work as soon as member Pope is started.', NULL),
(51, 'OAT 23 Trade Manager Leader to Member Failover', 'This test verifies that a Trade Manager leader to member failover has no impact on order entry. Order entry should work as soon as member Trade Manager is started.', NULL),
(52, 'OAT 81 RefData ME Failure', 'This test verifies that a Matcher Engine failure prevents complex instrument additions, product state changes and it verifies that events can still be created.', '01:03:03'),
(53, 'OAT 82 RefData Gateway Failure', 'This test verifies that if a Gateway is down user logins will not be successful.', '00:08:29'),
(54, 'OAT 8 Baseline Order Management', 'IORS order submission via IORS Feeder and verification of order fills in TradeDB.', NULL),
(55, 'Rotate IORS No Throttle', '', NULL),
(56, 'Rotate PAT', '', NULL),
(57, 'RTP Ramp Up', '', NULL),
(58, 'RTP Spike Test', '', NULL),
(59, 'Core 431 Matcher Leader Failover', '', '00:50:17'),
(60, 'Core 432 Pope Leader Failover', '', '00:25:12'),
(61, 'Core 433 RIB Leader Failover', '', '00:28:05'),
(62, 'Core 434 MDD Leader Failover', '', '00:22:27'),
(63, 'Core 435 Audit Trail Leader Failover', '', '00:29:27'),
(64, 'Core 436 TM Failover', '', '00:13:46'),
(65, 'Core 438 System Monitor Failover', '', '00:05:18'),
(66, 'Core 439 System Controller Failover', '', '00:02:25'),
(67, 'Core 440 Session Manager Failover', '', '00:04:33'),
(68, 'Core 457 Status Manager Failover', '', '00:06:51'),
(69, 'Core 415 Change Product State Script', '', '00:20:25'),
(70, 'Core 416 DB Cleanups', '', '00:12:04'),
(71, 'Core 417 SetPartitionSync Wait and Release', '', '00:24:03'),
(72, 'Core 418 Gateway Authentication', '', '00:00:22'),
(73, 'Core 419 Scheduler Event Pause Resume', '', '00:06:59'),
(74, 'Core 424 System Startup Shutdown', '', '00:24:18'),
(75, 'Core 426 dbsync dbcheck Local DBs', '', '00:33:40'),
(76, 'Core 427 uCheck Functionality', '', '00:01:14'),
(77, 'Core 500 MG Session Manager Load Balancing', '', '00:00:46'),
(78, 'ISE 186 IORS Primary IRC Failure', '', NULL),
(79, 'ISE 222 LOR Primary LOR Failure', '', NULL),
(80, 'ISE 224 OCCTR Failover', '', NULL),
(81, 'ISE 225 LOR UME Failover', '', NULL),
(82, 'ISE 226 LOR Startup Without UME', '', NULL),
(83, 'ISE 227 LOR Startup Without Exegy', '', NULL),
(84, 'ISE 228 LOR Intra Day Loss Of All UME', '', NULL),
(85, 'ISE 230 LOR Gateway Failure', '', NULL),
(86, 'ISE 232 LOR Loss Of Fix', '', NULL),
(87, 'ISE 241 RTP Baseline', '', '00:28:09'),
(88, 'ISE 257 LOR Baseline', '', NULL),
(89, 'OAT 55 24h Cycle BC Trade Open Failure', '', '00:23:41'),
(90, 'OAT 56 24h Cycle BC Order Open Failure', '', '00:22:23'),
(91, 'OAT 57 24h Cycle Matcher Release Failure', '', '00:26:22'),
(92, 'OAT 58 24h Cycle Trading Start of Day Failure', '', '00:24:26'),
(93, 'OAT 62 24h Cycle Trading Open Failure', '', '00:24:21'),
(94, 'OAT 63 24h Cycle Trading Open Failure', '', '00:26:15'),
(95, 'OAT 68 24h Cycle Trading Post End of Day Failure', '', '00:22:13'),
(96, 'OAT 77 24h Cycle System Monitor Failure', '', '00:15:23'),
(97, 'OAT 79 24h Cycle Cross DBs Failure', '', '00:08:28'),
(98, 'OAT 20 Gateway Failure', '', '00:10:25'),
(99, 'OAT 21 ME Failover', '', '00:41:26'),
(100, 'OAT 30 Mdd Failover', '', '00:34:47'),
(101, 'OAT 33 MDS LVC Failover', '', '00:27:27'),
(102, 'OAT 38 ME Failure', '', '00:44:50'),
(103, 'OAT 39 Mdd Failure', '', '00:35:42'),
(104, 'OAT 41 MDS LVC Failure', '', '00:28:03'),
(105, 'OAT 2 Matcher Leader to Member Failover', '', NULL),
(106, 'OAT 3 Precise BSI Failover', '', NULL),
(107, 'OAT 6 Precise Ports Failover', '', '00:02:18'),
(108, 'OAT 83 RefData Base Line', '', '00:09:19'),
(109, 'OAT 84 RefData Pope Failure', '', '00:30:16'),
(110, 'OAT 85 RefData RdaIB Failure', '', '00:24:43'),
(111, 'OAT 86 RefData ActiveMQ Failure', '', '00:25:13'),
(112, 'OAT 87 RefData Jboss Failure', '', '00:31:28'),
(113, 'OAT 88 RefData RdaOB Failure', '', '00:31:50'),
(114, 'OAT 89 RefData Rdd Failure', '', '00:26:11'),
(115, 'OAT 93 eventCheck Functionality', '', '00:01:30'),
(116, 'OAT 94 piCheck Functionality', '', '00:01:31'),
(117, 'OAT Full Core Rotation', 'Shut down and restart of OAT''s Core.', '00:40:01'),
(118, 'OAT Morning Rotation', 'Complete shut down and start up of OAT''s Core. Events are run, databases are cleaned, etc.', '00:50:48'),
(119, 'OAT ISE Apps Rotate All', 'Complete shutdown and restart of all ISE Apps in OAT, including configuration services and ActiveMQ. All files in D:\\ise\\log are deleted. IISReset is performed on each server.', '00:18:54'),
(120, '24 Adapter 3 BSI Rampup No Throttle 1000tps', 'Ramp-up to 1000 tps for 24 adapters spread across 3 BSIs', '00:35:00'),
(121, '24 Adapter 3 BSI Steady No Throttle 40tps', 'Runs a steady feed of Order Adds for 24 Adapters across 3 BSI at a rate of 40 tps per adapter', '00:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `test_env`
--

CREATE TABLE IF NOT EXISTS `test_env` (
  `env_id` int(11) NOT NULL AUTO_INCREMENT,
  `env_name` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-available, 1-unavailable',
  `reason` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`env_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `test_env`
--

INSERT INTO `test_env` (`env_id`, `env_name`, `status`, `reason`, `user_id`) VALUES
(1, 'OAT', 0, '', 0),
(2, 'PAT', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `test_relation`
--

CREATE TABLE IF NOT EXISTS `test_relation` (
  `suite_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_relation`
--

INSERT INTO `test_relation` (`suite_id`, `test_id`) VALUES
(3, 1),
(3, 2),
(3, 3),
(1, 54),
(1, 51),
(1, 50),
(1, 49),
(1, 48),
(1, 47),
(2, 52),
(2, 53),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 74),
(2, 75),
(2, 76),
(2, 77),
(2, 89),
(2, 90),
(2, 91),
(2, 92),
(2, 93),
(2, 94),
(2, 95),
(2, 96),
(2, 97),
(2, 98),
(2, 99),
(2, 100),
(2, 101),
(2, 102),
(2, 103),
(2, 104),
(2, 108),
(2, 109),
(2, 110),
(2, 111),
(2, 112),
(2, 113),
(2, 114),
(2, 115),
(2, 116),
(4, 52),
(4, 53),
(4, 108),
(4, 109),
(4, 110),
(4, 111),
(4, 112),
(4, 113),
(4, 114),
(5, 89),
(5, 90),
(5, 91),
(5, 92),
(5, 93),
(5, 94),
(5, 95),
(5, 96),
(5, 97);

-- --------------------------------------------------------

--
-- Table structure for table `test_request`
--

CREATE TABLE IF NOT EXISTS `test_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `process_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-queued,1-running,2-completed-pass,3-completed-fail,4-killed,5-sys error, 6-test cancelled',
  `test_id` int(11) NOT NULL,
  `start_timestamp` datetime NOT NULL,
  `end_timestamp` datetime NOT NULL,
  `request_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `report` varchar(200) NOT NULL,
  `label` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `lock_env_with_launch` tinyint(1) DEFAULT NULL,
  `lock_env_with_launch_reason` varchar(100) DEFAULT NULL,
  KEY `request_id` (`request_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=255 ;

--
-- Dumping data for table `test_request`
--

INSERT INTO `test_request` (`request_id`, `process_id`, `status`, `test_id`, `start_timestamp`, `end_timestamp`, `request_timestamp`, `report`, `label`, `user_id`, `lock_env_with_launch`, `lock_env_with_launch_reason`) VALUES
(2, 6584, 3, 37, '2014-03-05 11:37:49', '2014-03-05 11:48:07', '2014-03-05 11:37:49', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\ISE_PT105_report_20140305_113751.html', 'PT105 Test 3', 0, NULL, NULL),
(3, 5928, 3, 37, '2014-03-05 11:48:07', '2014-03-05 11:58:54', '2014-03-05 11:40:53', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\ISE_PT105_report_20140305_114809.html', 'PT105 in Queue', 0, NULL, NULL),
(4, 3780, 4, 37, '2014-03-05 12:03:29', '2014-03-05 12:05:46', '2014-03-05 12:03:29', 'None', 'PAT Test', 0, NULL, NULL),
(5, 7200, 2, 37, '2014-03-05 12:07:02', '2014-03-05 12:14:16', '2014-03-05 12:07:01', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\ISE_PT105_report_20140305_120704.html', 'pt105 local host tes', 0, NULL, NULL),
(6, 7680, 2, 56, '2014-03-05 12:18:50', '2014-03-05 12:27:30', '2014-03-05 12:18:50', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\Rotate_PAT_report_20140305_121852.html', 'Rotate PAT', 0, NULL, NULL),
(7, 7756, 2, 37, '2014-03-05 14:05:09', '2014-03-05 14:20:52', '2014-03-05 14:05:08', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\ISE_PT105_report_20140305_140510.html', 'PT105 Test', 0, NULL, NULL),
(8, 584, 3, 58, '2014-03-05 14:20:52', '2014-03-05 14:21:43', '2014-03-05 14:06:03', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\RTP\\RTP_Spike_Test_report_20140305_142054.html', 'RTP Spike Test', 0, NULL, NULL),
(9, 6628, 3, 17, '2014-03-05 14:22:50', '2014-03-05 14:41:04', '2014-03-05 14:22:50', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\GEMINI_PT105_report_20140305_142252.html', 'Test 1', 0, NULL, NULL),
(10, 0, 6, 37, '0000-00-00 00:00:00', '2014-03-05 14:23:45', '2014-03-05 14:22:50', 'None', 'Test 1', 0, NULL, NULL),
(11, 6584, 3, 13, '2014-03-05 14:43:59', '2014-03-05 15:12:40', '2014-03-05 14:35:48', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\GEMINI_PT101_report_20140305_144401.html', 'Test', 0, NULL, NULL),
(12, 8188, 2, 33, '2014-03-05 15:12:40', '2014-03-05 16:08:49', '2014-03-05 14:35:48', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\ISE_PT101_report_20140305_151242.html', 'Test', 0, NULL, NULL),
(13, 5524, 2, 53, '2014-03-05 15:13:03', '2014-03-05 15:23:46', '2014-03-05 15:13:02', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\OAT\\OAT_Revamp\\Reference_Data\\OAT_82_RefData_Gateway_Failure_report_20140305_151304.html', 'Mickael test run', 0, NULL, NULL),
(14, 0, 6, 108, '0000-00-00 00:00:00', '2014-03-05 15:13:49', '2014-03-05 15:13:43', 'None', 'blah', 0, NULL, NULL),
(51, 1604, 2, 37, '2014-03-07 10:37:41', '2014-03-07 10:55:08', '2014-03-07 10:37:41', 'ISE_PT105_report_20140307_103741.html', 'AT,4 threads Sock 0', 0, NULL, NULL),
(50, 3856, 2, 37, '2014-03-07 10:02:11', '2014-03-07 10:17:59', '2014-03-07 10:02:11', 'ISE_PT105_report_20140307_100211.html', 'Removed Spinloop POP', 0, NULL, NULL),
(49, 5520, 2, 37, '2014-03-07 09:33:52', '2014-03-07 09:49:40', '2014-03-07 09:33:52', 'ISE_PT105_report_20140307_093352.html', 'ME on Socket 1', 0, NULL, NULL),
(47, 756, 2, 37, '2014-03-06 17:03:46', '2014-03-06 18:31:24', '2014-03-06 17:03:46', 'ISE_PT105_report_20140306_170346.html', 'OBS que 5k', 0, NULL, NULL),
(48, 2796, 2, 37, '2014-03-07 08:56:48', '2014-03-07 09:15:37', '2014-03-07 08:56:48', 'ISE_PT105_report_20140307_085649.html', 'Pope Active Poll', 0, NULL, NULL),
(46, 1564, 2, 37, '2014-03-06 15:03:19', '2014-03-06 15:19:25', '2014-03-06 15:03:19', 'ISE_PT105_report_20140306_150319.html', 'AT 4 threads to avoi', 0, NULL, NULL),
(45, 5592, 2, 37, '2014-03-06 14:16:24', '2014-03-06 14:32:22', '2014-03-06 14:16:24', 'ISE_PT105_report_20140306_141625.html', 'Rerun of 5k Pope Buf', 0, NULL, NULL),
(44, 5252, 2, 37, '2014-03-06 13:31:31', '2014-03-06 13:47:33', '2014-03-06 13:31:31', 'ISE_PT105_report_20140306_133131.html', 'Pope WorkCount Limit', 0, NULL, NULL),
(27, 3204, 5, 118, '2014-03-06 08:56:23', '2014-03-06 08:56:23', '2014-03-06 08:56:23', 'None', 'OAT Morning Rotation', 0, NULL, NULL),
(28, 5940, 3, 118, '2014-03-06 09:01:38', '2014-03-06 09:34:19', '2014-03-06 09:01:38', 'D:\\SVN_RobotFramework\\Tests\\Rotater\\OAT_Morning_Rotation_report_20140306_090138.html', 'OAT Morning Rotation', 0, NULL, NULL),
(29, 6000, 5, 118, '2014-03-06 09:44:16', '0000-00-00 00:00:00', '2014-03-06 09:44:16', 'None', 'Rerun. Last one fail', 0, NULL, NULL),
(30, 5176, 5, 33, '2014-03-06 09:44:49', '2014-03-06 09:45:00', '2014-03-06 09:44:49', 'None', 'ASG.ISE.COM Test', 0, NULL, NULL),
(31, 1772, 2, 118, '2014-03-06 10:10:45', '2014-03-06 10:45:30', '2014-03-06 10:10:45', 'OAT_Morning_Rotation_report_20140306_101045.html', 'Rotation Rerun', 0, NULL, NULL),
(32, 248, 3, 33, '2014-03-06 10:11:18', '2014-03-06 10:11:22', '2014-03-06 10:11:18', 'D:\\SVN_RobotFramework\\Tests\\PAT\\Regression\\ISE_PT101_report_20140306_101118.html', 'null', 0, NULL, NULL),
(33, 3540, 2, 33, '2014-03-06 10:16:15', '2014-03-06 10:16:19', '2014-03-06 10:16:15', 'D:\\SVN_RobotFramework\\Tests\\PAT\\Regression\\ISE_PT101_report_20140306_101615.html', 'test', 0, NULL, NULL),
(34, 1792, 2, 33, '2014-03-06 10:25:43', '2014-03-06 10:26:15', '2014-03-06 10:25:43', 'D:\\SVN_RobotFramework\\Tests\\PAT\\Regression\\ISE_PT101_report_20140306_102543.html', 'test', 0, NULL, NULL),
(35, 1944, 2, 33, '2014-03-06 10:28:03', '2014-03-06 10:28:35', '2014-03-06 10:28:03', 'D:\\SVN_RobotFramework\\Tests\\PAT\\Regression\\ISE_PT101_report_20140306_102803.html', 'test', 0, NULL, NULL),
(36, 2772, 2, 37, '2014-03-06 11:39:09', '2014-03-06 11:55:39', '2014-03-06 11:39:09', 'ISE_PT105_report_20140306_113909.html', 'Andreas first test', 0, NULL, NULL),
(55, 784, 3, 10, '2014-03-07 13:16:36', '2014-03-07 13:20:20', '2014-03-07 13:16:36', '1_Adapter_RampUp_1000tps_report_20140307_131636.html', 'IORS 3.30.0.9 take 2', 0, NULL, NULL),
(56, 1424, 3, 11, '2014-03-07 13:20:20', '2014-03-07 13:24:03', '2014-03-07 13:16:36', '1_Adapter_Rampup_100tps_report_20140307_132020.html', 'IORS 3.30.0.9 take 2', 0, NULL, NULL),
(52, 1644, 2, 37, '2014-03-07 11:23:42', '2014-03-07 11:39:34', '2014-03-07 11:23:42', 'ISE_PT105_report_20140307_112343.html', 'pt105 baseline at4 w', 0, NULL, NULL),
(53, 4880, 3, 10, '2014-03-07 12:18:47', '2014-03-07 12:19:45', '2014-03-07 12:18:47', '1_Adapter_RampUp_1000tps_report_20140307_121847.html', 'IORS 3.30.0.9', 0, NULL, NULL),
(54, 5340, 3, 11, '2014-03-07 12:19:45', '2014-03-07 12:20:42', '2014-03-07 12:18:47', '1_Adapter_Rampup_100tps_report_20140307_121945.html', 'IORS 3.30.0.9', 0, NULL, NULL),
(43, 6044, 2, 117, '2014-03-06 12:26:24', '2014-03-06 12:44:21', '2014-03-06 12:26:24', 'OAT_Full_Core_Rotation_report_20140306_122624.html', 'Rotate OAT', 0, NULL, NULL),
(57, 5912, 3, 118, '2014-03-07 13:23:53', '2014-03-07 13:24:03', '2014-03-07 13:23:53', 'OAT_Morning_Rotation_report_20140307_132353.html', 'Carlos request', 0, NULL, NULL),
(58, 3684, 3, 11, '2014-03-07 13:25:06', '2014-03-07 13:28:49', '2014-03-07 13:25:06', '1_Adapter_Rampup_100tps_report_20140307_132507.html', 'iors take 3', 0, NULL, NULL),
(59, 1584, 3, 118, '2014-03-07 13:26:59', '2014-03-07 14:00:05', '2014-03-07 13:26:59', 'OAT_Morning_Rotation_report_20140307_132659.html', 'carlos', 0, NULL, NULL),
(60, 5376, 2, 117, '2014-03-07 14:09:10', '2014-03-07 14:33:39', '2014-03-07 14:09:10', 'OAT_Full_Core_Rotation_report_20140307_140910.html', 'Morning rotation failed. Running again.', 0, NULL, NULL),
(61, 1296, 2, 119, '2014-03-07 14:53:31', '2014-03-07 15:12:30', '2014-03-07 14:53:31', 'OAT_ISE_Apps_Rotate_All_report_20140307_145331.html', 'ISE Apps Rotation; Prep for IORS run', 0, NULL, NULL),
(62, 5416, 3, 11, '2014-03-07 15:14:42', '2014-03-07 15:20:47', '2014-03-07 15:14:42', '1_Adapter_Rampup_100tps_report_20140307_151443.html', '3.30.0.9 take 4', 0, NULL, NULL),
(63, 5860, 2, 54, '2014-03-07 15:15:40', '2014-03-07 15:25:32', '2014-03-07 15:15:40', 'OAT_8_Baseline_Order_Management_report_20140307_151540.html', 'IORS ORA 3.30.0.9 Regression', 0, NULL, NULL),
(64, 3400, 2, 51, '2014-03-07 15:25:32', '2014-03-07 15:44:01', '2014-03-07 15:15:40', 'OAT_23_Trade_Manager_Leader_to_Member_Failover_report_20140307_152532.html', 'IORS ORA 3.30.0.9 Regression', 0, NULL, NULL),
(65, 2192, 2, 50, '2014-03-07 15:44:01', '2014-03-07 15:58:37', '2014-03-07 15:15:40', 'OAT_22_Pope_Leader_to_Member_Failover_report_20140307_154401.html', 'IORS ORA 3.30.0.9 Regression', 0, NULL, NULL),
(66, 3240, 3, 49, '2014-03-07 15:58:37', '2014-03-07 16:17:32', '2014-03-07 15:15:40', 'OAT_14_IORS_Svc_Bureau_BSI_Adapter_Failure_report_20140307_155837.html', 'IORS ORA 3.30.0.9 Regression', 0, NULL, NULL),
(67, 5540, 3, 48, '2014-03-07 16:17:32', '2014-03-07 16:30:19', '2014-03-07 15:15:40', 'OAT_13_IORS_RegularBSI_Adapter_Failure_report_20140307_161732.html', 'IORS ORA 3.30.0.9 Regression', 0, NULL, NULL),
(68, 352, 2, 47, '2014-03-07 16:30:19', '2014-03-07 16:51:07', '2014-03-07 15:15:40', 'OAT_11_IORS_BSI_Failover_Cluster_report_20140307_163019.html', 'IORS ORA 3.30.0.9 Regression', 0, NULL, NULL),
(69, 5244, 2, 11, '2014-03-07 15:24:39', '2014-03-07 15:35:22', '2014-03-07 15:24:39', '1_Adapter_Rampup_100tps_report_20140307_152439.html', 'IORS 3.30.0.9 Take 5', 0, NULL, NULL),
(70, 5416, 2, 10, '2014-03-07 15:37:14', '2014-03-07 16:01:04', '2014-03-07 15:37:14', '1_Adapter_RampUp_1000tps_report_20140307_153714.html', 'IORS 3.30.0.9 Take 5', 0, NULL, NULL),
(71, 2640, 2, 48, '2014-03-07 17:35:11', '2014-03-07 17:51:47', '2014-03-07 17:35:11', 'OAT_13_IORS_RegularBSI_Adapter_Failure_report_20140307_173511.html', 'IORS 3.30.0.9 - Rerun for failed tests', 0, NULL, NULL),
(72, 1620, 2, 49, '2014-03-07 17:51:47', '2014-03-07 18:10:16', '2014-03-07 17:35:11', 'OAT_14_IORS_Svc_Bureau_BSI_Adapter_Failure_report_20140307_175148.html', 'IORS 3.30.0.9 - Rerun for failed tests', 0, NULL, NULL),
(73, 1860, 3, 118, '2014-03-10 08:06:41', '2014-03-10 08:40:36', '2014-03-10 08:06:41', 'OAT_Morning_Rotation_report_20140310_080643.html', 'OAT Morning Rotation', 0, NULL, NULL),
(74, 4796, 4, 117, '2014-03-10 10:21:37', '2014-03-10 10:23:57', '2014-03-10 10:21:37', 'None', 'OAT Rotation', 0, NULL, NULL),
(75, 2032, 4, 117, '2014-03-10 10:31:39', '2014-03-10 10:32:39', '2014-03-10 10:31:39', 'None', 'OAT Rotation', 0, NULL, NULL),
(76, 1724, 2, 117, '2014-03-10 11:22:08', '2014-03-10 11:38:24', '2014-03-10 11:22:08', 'OAT_Full_Core_Rotation_report_20140310_112208.html', 'OAT Rotation', 0, NULL, NULL),
(77, 2152, 2, 119, '2014-03-10 11:38:24', '2014-03-10 11:56:36', '2014-03-10 11:22:33', 'OAT_ISE_Apps_Rotate_All_report_20140310_113824.html', 'ISEApps Rotation', 0, NULL, NULL),
(78, 6068, 2, 52, '2014-03-10 12:38:31', '2014-03-10 13:29:37', '2014-03-10 12:38:31', 'OAT_81_RefData_ME_Failure_report_20140310_123831.html', 'OAT R8.001.210 Regression RefData', 0, NULL, NULL),
(79, 1812, 2, 53, '2014-03-10 13:29:37', '2014-03-10 13:36:49', '2014-03-10 12:38:31', 'OAT_82_RefData_Gateway_Failure_report_20140310_132937.html', 'OAT R8.001.210 Regression RefData', 0, NULL, NULL),
(80, 5940, 2, 108, '2014-03-10 13:36:49', '2014-03-10 13:44:24', '2014-03-10 12:38:31', 'OAT_83_RefData_Base_Line_report_20140310_133649.html', 'OAT R8.001.210 Regression RefData', 0, NULL, NULL),
(81, 5340, 3, 109, '2014-03-10 13:44:24', '2014-03-10 14:13:05', '2014-03-10 12:38:31', 'OAT_84_RefData_Pope_Failure_report_20140310_134424.html', 'OAT R8.001.210 Regression RefData', 0, NULL, NULL),
(82, 4888, 2, 110, '2014-03-10 14:13:05', '2014-03-10 14:35:32', '2014-03-10 12:38:31', 'OAT_85_RefData_RdaIB_Failure_report_20140310_141305.html', 'OAT R8.001.210 Regression RefData', 0, NULL, NULL),
(83, 5584, 3, 111, '2014-03-10 14:35:32', '2014-03-10 14:59:43', '2014-03-10 12:38:31', 'OAT_86_RefData_ActiveMQ_Failure_report_20140310_143532.html', 'OAT R8.001.210 Regression RefData', 0, NULL, NULL),
(84, 3040, 2, 112, '2014-03-10 14:59:43', '2014-03-10 15:29:50', '2014-03-10 12:38:31', 'OAT_87_RefData_Jboss_Failure_report_20140310_145943.html', 'OAT R8.001.210 Regression RefData', 0, NULL, NULL),
(85, 4156, 2, 113, '2014-03-10 15:29:50', '2014-03-10 16:02:53', '2014-03-10 12:38:31', 'OAT_88_RefData_RdaOB_Failure_report_20140310_152950.html', 'OAT R8.001.210 Regression RefData', 0, NULL, NULL),
(86, 1048, 2, 114, '2014-03-10 16:02:53', '2014-03-10 16:29:14', '2014-03-10 12:38:31', 'OAT_89_RefData_Rdd_Failure_report_20140310_160253.html', 'OAT R8.001.210 Regression RefData', 0, NULL, NULL),
(87, 5808, 3, 89, '2014-03-10 16:29:14', '2014-03-10 16:46:08', '2014-03-10 14:09:36', 'OAT_55_24h_Cycle_BC_Trade_Open_Failure_report_20140310_162914.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(88, 6044, 3, 90, '2014-03-10 16:46:08', '2014-03-10 17:02:30', '2014-03-10 14:09:36', 'OAT_56_24h_Cycle_BC_Order_Open_Failure_report_20140310_164608.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(89, 1916, 3, 91, '2014-03-10 17:02:30', '2014-03-10 17:19:19', '2014-03-10 14:09:36', 'OAT_57_24h_Cycle_Matcher_Release_Failure_report_20140310_170230.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(90, 3116, 3, 92, '2014-03-10 17:19:19', '2014-03-10 17:35:42', '2014-03-10 14:09:36', 'OAT_58_24h_Cycle_Trading_Start_of_Day_Failure_report_20140310_171919.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(91, 5496, 3, 93, '2014-03-10 17:35:42', '2014-03-10 17:55:18', '2014-03-10 14:09:36', 'OAT_62_24h_Cycle_Trading_Open_Failure_report_20140310_173542.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(92, 4256, 3, 94, '2014-03-10 17:55:18', '2014-03-10 18:12:46', '2014-03-10 14:09:36', 'OAT_63_24h_Cycle_Trading_Open_Failure_report_20140310_175519.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(93, 4708, 3, 95, '2014-03-10 18:12:46', '2014-03-10 18:29:12', '2014-03-10 14:09:36', 'OAT_68_24h_Cycle_Trading_Post_End_of_Day_Failure_report_20140310_181246.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(94, 1900, 3, 96, '2014-03-10 18:29:12', '2014-03-10 18:36:13', '2014-03-10 14:09:36', 'OAT_77_24h_Cycle_System_Monitor_Failure_report_20140310_182912.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(95, 1256, 3, 97, '2014-03-10 18:36:13', '2014-03-10 18:40:29', '2014-03-10 14:09:36', 'OAT_79_24h_Cycle_Cross_DBs_Failure_report_20140310_183613.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(96, 3116, 3, 118, '2014-03-11 08:11:51', '2014-03-11 08:44:18', '2014-03-11 08:11:51', 'OAT_Morning_Rotation_report_20140311_081152.html', 'OAT Morning Rotation', 0, NULL, NULL),
(97, 1488, 3, 37, '2014-03-11 08:45:20', '2014-03-11 08:57:19', '2014-03-11 08:45:20', 'ISE_PT105_report_20140311_084520.html', 'Baseline', 0, NULL, NULL),
(98, 4568, 2, 37, '2014-03-11 09:44:29', '2014-03-11 10:00:35', '2014-03-11 09:44:29', 'ISE_PT105_report_20140311_094430.html', 'Baseline - Re-run', 0, NULL, NULL),
(99, 2140, 3, 55, '2014-03-11 10:00:35', '2014-03-11 10:10:17', '2014-03-11 09:58:58', 'Rotate_IORS_No_Throttle_report_20140311_100036.html', 'Rotate IORS to Ready State', 0, NULL, NULL),
(100, 4844, 3, 117, '2014-03-11 10:25:52', '2014-03-11 10:49:25', '2014-03-11 10:25:52', 'OAT_Full_Core_Rotation_report_20140311_102552.html', 'OAT Rotation', 0, NULL, NULL),
(101, 4636, 3, 89, '2014-03-11 10:49:25', '2014-03-11 11:16:51', '2014-03-11 10:26:24', 'OAT_55_24h_Cycle_BC_Trade_Open_Failure_report_20140311_104925.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(102, 0, 6, 90, '0000-00-00 00:00:00', '2014-03-11 11:28:17', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(103, 0, 6, 91, '0000-00-00 00:00:00', '2014-03-11 11:28:19', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(104, 0, 6, 92, '0000-00-00 00:00:00', '2014-03-11 11:28:20', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(105, 0, 6, 93, '0000-00-00 00:00:00', '2014-03-11 11:28:21', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(106, 0, 6, 94, '0000-00-00 00:00:00', '2014-03-11 11:28:23', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(107, 0, 6, 95, '0000-00-00 00:00:00', '2014-03-11 11:28:25', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(108, 0, 6, 96, '0000-00-00 00:00:00', '2014-03-11 11:28:27', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(109, 0, 6, 97, '0000-00-00 00:00:00', '2014-03-11 11:28:30', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 0, NULL, NULL),
(110, 4740, 4, 120, '2014-03-11 11:25:27', '2014-03-11 11:25:55', '2014-03-11 11:25:27', 'None', 'null', 0, NULL, NULL),
(111, 1936, 3, 120, '2014-03-11 11:26:16', '2014-03-11 11:50:29', '2014-03-11 11:26:16', '24_Adapter_3_BSI_Rampup_No_Throttle_1000tps_report_20140311_112616.html', 'ORA 3.31.0.0', 0, NULL, NULL),
(112, 5076, 3, 118, '2014-03-11 14:32:23', '2014-03-11 15:19:33', '2014-03-11 14:32:15', 'OAT_Morning_Rotation_report_20140311_143223.html', 'Hoping to recreate rotation issue', 0, NULL, NULL),
(113, 4684, 2, 120, '2014-03-11 15:06:21', '2014-03-11 15:41:21', '2014-03-11 14:54:58', '24_Adapter_3_BSI_Rampup_No_Throttle_1000tps_report_20140311_150621.html', 'ORA 3.31.0.0', 0, NULL, NULL),
(114, 0, 6, 10, '0000-00-00 00:00:00', '2014-03-11 15:13:24', '2014-03-11 15:06:39', 'None', 'Demo', 0, NULL, NULL),
(115, 0, 6, 11, '0000-00-00 00:00:00', '2014-03-11 15:17:07', '2014-03-11 15:06:39', 'None', 'Demo', 0, NULL, NULL),
(116, 0, 6, 10, '0000-00-00 00:00:00', '2014-03-11 15:17:09', '2014-03-11 15:09:48', 'None', 'ORA Test', 0, NULL, NULL),
(117, 2152, 3, 9, '2014-03-11 17:13:30', '2014-03-11 17:49:35', '2014-03-11 17:13:30', '18_Adapter_3_BSI_Rampup_No_Throttle_1000tps_report_20140311_171330.html', 'v3.31.0.2_dev', 0, NULL, NULL),
(118, 1536, 3, 118, '2014-03-12 07:45:54', '2014-03-12 08:17:55', '2014-03-12 07:45:54', 'OAT_Morning_Rotation_report_20140312_074555.html', 'OAT Morning Rotation (Expecting Failure)', 0, NULL, NULL),
(124, 6044, 2, 117, '2014-03-12 11:18:31', '2014-03-12 11:58:32', '2014-03-12 11:18:31', 'OAT_Full_Core_Rotation_report_20140312_111831.html', 'OAT Rotation', 0, NULL, NULL),
(132, 1632, 4, 89, '2014-03-12 17:21:18', '2014-03-13 08:22:35', '2014-03-12 17:21:18', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(133, 0, 6, 90, '0000-00-00 00:00:00', '2014-03-13 08:22:25', '2014-03-12 17:21:18', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(134, 0, 6, 91, '0000-00-00 00:00:00', '2014-03-13 08:22:29', '2014-03-12 17:21:18', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(135, 1904, 2, 118, '2014-03-13 09:13:06', '2014-03-13 10:03:53', '2014-03-13 09:13:06', 'OAT_Morning_Rotation_report_20140313_091307.html', 'Morning Rotation', 2, NULL, NULL),
(153, 1268, 2, 97, '2014-03-14 09:24:47', '2014-03-14 09:31:53', '2014-03-14 09:06:44', 'OAT_79_24h_Cycle_Cross_DBs_Failure_report_20140314_092447.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(151, 2112, 2, 95, '2014-03-14 09:31:53', '2014-03-14 10:39:22', '2014-03-14 09:06:44', 'OAT_68_24h_Cycle_Trading_Post_End_of_Day_Failure_report_20140314_093153.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(152, 5448, 2, 96, '2014-03-14 10:39:22', '2014-03-14 10:52:31', '2014-03-14 09:06:44', 'OAT_77_24h_Cycle_System_Monitor_Failure_report_20140314_103922.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(150, 6108, 5, 94, '2014-03-14 10:52:31', '0000-00-00 00:00:00', '2014-03-14 09:06:44', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(148, 0, 6, 92, '0000-00-00 00:00:00', '2014-03-14 11:01:03', '2014-03-14 09:06:44', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(149, 0, 6, 93, '0000-00-00 00:00:00', '2014-03-14 11:01:05', '2014-03-14 09:06:44', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(147, 3708, 2, 119, '2014-03-14 09:05:52', '2014-03-14 09:24:47', '2014-03-14 09:05:52', 'OAT_ISE_Apps_Rotate_All_report_20140314_090552.html', 'OAT ISE Apps Rotation', 2, NULL, NULL),
(141, 1576, 2, 89, '2014-03-13 17:02:33', '2014-03-13 18:11:25', '2014-03-13 17:02:33', 'OAT_55_24h_Cycle_BC_Trade_Open_Failure_report_20140313_170233.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(142, 5720, 2, 90, '2014-03-13 18:11:25', '2014-03-13 18:48:56', '2014-03-13 17:02:33', 'OAT_56_24h_Cycle_BC_Order_Open_Failure_report_20140313_181125.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(143, 1924, 2, 91, '2014-03-13 18:48:56', '2014-03-13 19:48:53', '2014-03-13 17:02:33', 'OAT_57_24h_Cycle_Matcher_Release_Failure_report_20140313_184856.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, NULL, NULL),
(144, 284, 3, 37, '2014-03-13 17:03:40', '2014-03-13 17:03:52', '2014-03-13 17:03:33', 'ISE_PT105_report_20140313_170340.html', '8.1.210 PT105', 3, NULL, NULL),
(145, 2000, 2, 37, '2014-03-13 17:04:54', '2014-03-13 17:20:46', '2014-03-13 17:04:54', 'ISE_PT105_report_20140313_170454.html', '8.1.210 PT105', 3, NULL, NULL),
(146, 5076, 2, 118, '2014-03-14 07:49:41', '2014-03-14 08:40:33', '2014-03-14 07:49:41', 'OAT_Morning_Rotation_report_20140314_074943.html', 'OAT Morning Rotation', 2, NULL, NULL),
(156, 4252, 3, 10, '2014-03-14 11:08:09', '2014-03-14 11:44:41', '2014-03-14 11:08:09', '1_Adapter_RampUp_1000tps_report_20140314_110809.html', 'ORA 3.31.0.2 - 1 Adapter Rampup', 3, 0, ''),
(192, 3508, 3, 120, '2014-03-14 16:37:56', '2014-03-14 17:11:49', '2014-03-14 16:37:56', '24_Adapter_3_BSI_Rampup_No_Throttle_1000tps_report_20140314_163757.html', 'IORS gtsapi mapped drive', 3, 0, 'None'),
(191, 0, 6, 120, '0000-00-00 00:00:00', '2014-03-14 16:37:19', '2014-03-14 16:09:02', 'None', 'IORS gtsapi mapped drive', 3, 0, 'None'),
(190, 784, 3, 120, '2014-03-14 16:08:48', '2014-03-14 16:31:05', '2014-03-14 16:08:48', '24_Adapter_3_BSI_Rampup_No_Throttle_1000tps_report_20140314_160848.html', 'null', 3, 0, 'None'),
(233, 284, 2, 77, '2014-03-17 10:49:10', '2014-03-17 10:49:56', '2014-03-17 10:06:34', 'Core_500_MG_Session_Manager_Load_Balancing_report_20140317_104911.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(232, 2512, 2, 76, '2014-03-17 10:49:56', '2014-03-17 10:51:03', '2014-03-17 10:06:34', 'Core_427_uCheck_Functionality_report_20140317_104956.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(230, 5396, 3, 74, '2014-03-17 10:51:03', '2014-03-17 11:15:55', '2014-03-17 10:06:34', 'Core_424_System_Startup_Shutdown_report_20140317_105103.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(231, 1676, 2, 75, '2014-03-17 11:15:55', '2014-03-17 11:48:59', '2014-03-17 10:06:34', 'Core_426_dbsync_dbcheck_Local_DBs_report_20140317_111555.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(228, 1600, 2, 72, '2014-03-17 11:48:59', '2014-03-17 11:49:19', '2014-03-17 10:06:34', 'Core_418_Gateway_Authentication_report_20140317_114859.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(229, 388, 3, 73, '2014-03-17 11:49:19', '2014-03-17 11:50:37', '2014-03-17 10:06:34', 'Core_419_Scheduler_Event_Pause_Resume_report_20140317_114919.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(183, 0, 6, 10, '0000-00-00 00:00:00', '2014-03-14 16:08:28', '2014-03-14 14:06:00', 'None', 'IORS gtsapi mapped drive', 1, 0, 'None'),
(182, 0, 6, 121, '0000-00-00 00:00:00', '2014-03-14 14:00:09', '2014-03-14 13:59:50', 'None', 'IORS gtsapi mapped drive', 1, 0, 'None'),
(181, 0, 6, 121, '0000-00-00 00:00:00', '2014-03-14 16:08:26', '2014-03-14 13:57:26', 'None', 'IORS gtsapi mapped drive', 3, 0, 'None'),
(180, 0, 6, 94, '0000-00-00 00:00:00', '2014-03-14 15:08:31', '2014-03-14 13:54:23', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, 0, 'None'),
(179, 0, 6, 93, '0000-00-00 00:00:00', '2014-03-14 15:08:29', '2014-03-14 13:54:23', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, 0, 'None'),
(178, 3848, 2, 92, '2014-03-14 13:54:23', '2014-03-14 15:00:28', '2014-03-14 13:54:23', 'OAT_58_24h_Cycle_Trading_Start_of_Day_Failure_report_20140314_135423.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, 0, 'None'),
(176, 2320, 4, 10, '2014-03-14 13:42:47', '2014-03-14 14:04:28', '2014-03-14 13:42:47', 'None', 'IORS gtsapi mapped drive', 1, 0, 'None'),
(177, 0, 6, 120, '0000-00-00 00:00:00', '2014-03-14 16:08:24', '2014-03-14 13:42:47', 'None', 'IORS gtsapi mapped drive', 1, 0, 'None'),
(193, 3200, 2, 121, '2014-03-14 17:24:42', '2014-03-14 17:52:33', '2014-03-14 17:24:42', '24_Adapter_3_BSI_Steady_No_Throttle_40tps_report_20140314_172442.html', 'IORS gtsapi mapped drive', 3, 0, 'None'),
(194, 3856, 2, 10, '2014-03-14 18:15:09', '2014-03-14 18:51:01', '2014-03-14 18:15:09', '1_Adapter_RampUp_1000tps_report_20140314_181509.html', 'null', 9, 0, 'None'),
(227, 3852, 3, 71, '2014-03-17 11:50:37', '2014-03-17 12:13:20', '2014-03-17 10:06:34', 'Core_417_SetPartitionSync_Wait_and_Release_report_20140317_115037.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(225, 5336, 2, 69, '2014-03-17 12:13:20', '2014-03-17 12:36:16', '2014-03-17 10:06:34', 'Core_415_Change_Product_State_Script_report_20140317_121320.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(226, 1540, 2, 70, '2014-03-17 12:36:16', '2014-03-17 12:48:05', '2014-03-17 10:06:34', 'Core_416_DB_Cleanups_report_20140317_123616.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(224, 1992, 2, 102, '2014-03-17 12:48:05', '2014-03-17 13:38:41', '2014-03-17 10:03:35', 'OAT_38_ME_Failure_report_20140317_124805.html', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(223, 1932, 2, 99, '2014-03-17 10:03:35', '2014-03-17 10:49:10', '2014-03-17 10:03:35', 'OAT_21_ME_Failover_report_20140317_100336.html', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(199, 1860, 4, 118, '2014-03-15 11:24:05', '2014-03-15 11:26:56', '2014-03-15 11:24:05', 'None', 'OAT Morning Rotation', 2, 0, 'None'),
(200, 0, 6, 93, '0000-00-00 00:00:00', '2014-03-15 11:27:10', '2014-03-15 11:24:25', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, 0, 'None'),
(201, 0, 6, 94, '0000-00-00 00:00:00', '2014-03-15 11:27:12', '2014-03-15 11:24:25', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, 0, 'None'),
(202, 1992, 2, 118, '2014-03-15 12:54:08', '2014-03-15 13:43:39', '2014-03-15 12:54:01', 'OAT_Morning_Rotation_report_20140315_125408.html', 'OAT Morning Rotation', 2, 0, 'None'),
(203, 1892, 2, 119, '2014-03-15 13:43:39', '2014-03-15 14:02:08', '2014-03-15 12:54:59', 'OAT_ISE_Apps_Rotate_All_report_20140315_134339.html', 'ISE Apps Rotation', 2, 0, 'None'),
(204, 1488, 2, 93, '2014-03-15 14:02:08', '2014-03-15 14:43:05', '2014-03-15 12:55:22', 'OAT_62_24h_Cycle_Trading_Open_Failure_report_20140315_140208.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, 0, 'None'),
(205, 956, 2, 94, '2014-03-15 14:43:05', '2014-03-15 15:25:04', '2014-03-15 12:55:22', 'OAT_63_24h_Cycle_Trading_Open_Failure_report_20140315_144305.html', 'OAT R8.001.210 Regression 24 Hr Cycle', 2, 0, 'None'),
(206, 1336, 2, 109, '2014-03-15 15:25:04', '2014-03-15 16:27:12', '2014-03-15 12:56:37', 'OAT_84_RefData_Pope_Failure_report_20140315_152504.html', 'OAT R8.001.210 Regression RefData', 2, 0, 'None'),
(207, 5288, 2, 115, '2014-03-15 16:27:12', '2014-03-15 16:28:40', '2014-03-15 12:58:45', 'OAT_93_eventCheck_Functionality_report_20140315_162713.html', 'OAT R8.001.210 Regression StandardOps', 2, 0, 'None'),
(208, 3600, 2, 116, '2014-03-15 16:28:40', '2014-03-15 16:30:09', '2014-03-15 12:58:45', 'OAT_94_piCheck_Functionality_report_20140315_162841.html', 'OAT R8.001.210 Regression StandardOps', 2, 0, 'None'),
(209, 3784, 3, 98, '2014-03-15 16:30:09', '2014-03-15 16:33:38', '2014-03-15 13:00:22', 'OAT_20_Gateway_Failure_report_20140315_163009.html', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(210, 2528, 3, 99, '2014-03-15 16:33:38', '2014-03-15 17:07:44', '2014-03-15 13:00:22', 'OAT_21_ME_Failover_report_20140315_163339.html', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(211, 5792, 2, 100, '2014-03-15 17:07:44', '2014-03-15 19:05:48', '2014-03-15 13:00:22', 'OAT_30_Mdd_Failover_report_20140315_170744.html', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(212, 2308, 3, 101, '2014-03-15 19:05:48', '2014-03-15 20:24:36', '2014-03-15 13:00:22', 'OAT_33_MDS_LVC_Failover_report_20140315_190548.html', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(213, 5524, 3, 102, '2014-03-15 20:24:36', '2014-03-15 20:58:39', '2014-03-15 13:00:22', 'OAT_38_ME_Failure_report_20140315_202436.html', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(214, 1920, 2, 103, '2014-03-15 20:58:39', '2014-03-15 22:58:48', '2014-03-15 13:00:22', 'OAT_39_Mdd_Failure_report_20140315_205839.html', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(215, 5076, 3, 104, '2014-03-15 22:58:48', '2014-03-16 00:37:43', '2014-03-15 13:00:22', 'OAT_41_MDS_LVC_Failure_report_20140315_225849.html', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(216, 5028, 2, 118, '2014-03-17 08:27:35', '2014-03-17 09:19:39', '2014-03-17 08:27:35', 'OAT_Morning_Rotation_report_20140317_082737.html', 'OAT Morning Rotation', 2, 0, 'None'),
(217, 5496, 2, 119, '2014-03-17 09:19:39', '2014-03-17 09:38:28', '2014-03-17 08:27:54', 'OAT_ISE_Apps_Rotate_All_report_20140317_091940.html', 'OAT ISE Apps Rotation', 2, 0, 'None'),
(218, 3156, 2, 98, '2014-03-17 09:38:28', '2014-03-17 09:48:01', '2014-03-17 08:28:10', 'OAT_20_Gateway_Failure_report_20140317_093828.html', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(219, 0, 6, 99, '0000-00-00 00:00:00', '2014-03-17 09:46:45', '2014-03-17 08:28:10', 'None', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(220, 0, 6, 102, '0000-00-00 00:00:00', '2014-03-17 09:46:47', '2014-03-17 08:28:10', 'None', 'OAT R8.001.210 Regression MarketData', 2, 0, 'None'),
(221, 3968, 3, 37, '2014-03-17 09:33:36', '2014-03-17 09:33:49', '2014-03-17 09:33:36', 'ISE_PT105_report_20140317_093337.html', 'AT2 threads (default)', 4, 0, 'None'),
(222, 1280, 2, 37, '2014-03-17 09:41:20', '2014-03-17 10:01:37', '2014-03-17 09:41:20', 'ISE_PT105_report_20140317_094120.html', 'AT2 threads (default) - Re-run', 3, 0, 'None'),
(234, 380, 2, 59, '2014-03-17 13:38:41', '2014-03-17 14:30:12', '2014-03-17 10:07:38', 'Core_431_Matcher_Leader_Failover_report_20140317_133841.html', 'OAT R8.001.210 Regression Core FailureAndRecovery', 2, 0, 'None'),
(235, 5148, 2, 60, '2014-03-17 14:30:12', '2014-03-17 14:55:27', '2014-03-17 10:07:38', 'Core_432_Pope_Leader_Failover_report_20140317_143012.html', 'OAT R8.001.210 Regression Core FailureAndRecovery', 2, 0, 'None'),
(236, 1632, 2, 61, '2014-03-17 14:55:27', '2014-03-17 15:23:56', '2014-03-17 10:07:38', 'Core_433_RIB_Leader_Failover_report_20140317_145527.html', 'OAT R8.001.210 Regression Core FailureAndRecovery', 2, 0, 'None'),
(237, 172, 2, 62, '2014-03-17 15:23:56', '2014-03-17 15:46:35', '2014-03-17 10:07:38', 'Core_434_MDD_Leader_Failover_report_20140317_152356.html', 'OAT R8.001.210 Regression Core FailureAndRecovery', 2, 0, 'None'),
(238, 1960, 2, 63, '2014-03-17 15:46:35', '2014-03-17 16:16:33', '2014-03-17 10:07:38', 'Core_435_Audit_Trail_Leader_Failover_report_20140317_154635.html', 'OAT R8.001.210 Regression Core FailureAndRecovery', 2, 0, 'None'),
(239, 5840, 2, 64, '2014-03-17 16:16:33', '2014-03-17 16:31:54', '2014-03-17 10:07:38', 'Core_436_TM_Failover_report_20140317_161633.html', 'OAT R8.001.210 Regression Core FailureAndRecovery', 2, 0, 'None'),
(240, 5864, 2, 65, '2014-03-17 16:31:54', '2014-03-17 16:39:24', '2014-03-17 10:07:38', 'Core_438_System_Monitor_Failover_report_20140317_163154.html', 'OAT R8.001.210 Regression Core FailureAndRecovery', 2, 0, 'None'),
(241, 5696, 3, 66, '2014-03-17 16:39:24', '2014-03-17 16:41:47', '2014-03-17 10:07:38', 'Core_439_System_Controller_Failover_report_20140317_163924.html', 'OAT R8.001.210 Regression Core FailureAndRecovery', 2, 0, 'None'),
(242, 2172, 2, 67, '2014-03-17 16:41:47', '2014-03-17 16:48:34', '2014-03-17 10:07:38', 'Core_440_Session_Manager_Failover_report_20140317_164147.html', 'OAT R8.001.210 Regression Core FailureAndRecovery', 2, 0, 'None'),
(243, 368, 2, 68, '2014-03-17 16:48:34', '2014-03-17 16:57:33', '2014-03-17 10:07:38', 'Core_457_Status_Manager_Failover_report_20140317_164834.html', 'OAT R8.001.210 Regression Core FailureAndRecovery', 2, 0, 'None'),
(244, 3508, 2, 37, '2014-03-17 11:01:34', '2014-03-17 11:17:31', '2014-03-17 11:01:34', 'ISE_PT105_report_20140317_110134.html', 'Re-run for verification', 4, 0, 'None'),
(245, 6084, 2, 71, '2014-03-17 16:59:57', '2014-03-17 17:26:14', '2014-03-17 16:59:57', 'Core_417_SetPartitionSync_Wait_and_Release_report_20140317_165957.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(246, 5236, 4, 73, '2014-03-18 10:28:08', '2014-03-18 10:28:15', '2014-03-18 10:28:08', 'None', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(247, 5412, 2, 118, '2014-03-18 10:30:30', '2014-03-18 11:06:07', '2014-03-18 10:30:30', 'OAT_Morning_Rotation_report_20140318_103030.html', 'OAT Morning Rotation', 2, 0, 'None'),
(248, 3136, 3, 73, '2014-03-18 11:06:07', '2014-03-18 11:07:19', '2014-03-18 10:30:43', 'Core_419_Scheduler_Event_Pause_Resume_report_20140318_110607.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(249, 5364, 2, 73, '2014-03-18 11:10:04', '2014-03-18 11:17:16', '2014-03-18 11:10:04', 'Core_419_Scheduler_Event_Pause_Resume_report_20140318_111004.html', 'OAT R8.001.210 Regression Core StandardOps', 2, 0, 'None'),
(250, 6012, 2, 119, '2014-03-18 11:17:16', '2014-03-18 11:35:41', '2014-03-18 11:10:16', 'OAT_ISE_Apps_Rotate_All_report_20140318_111716.html', 'ISE Apps Rotate All', 2, 0, 'None'),
(251, 2332, 2, 56, '2014-03-18 14:32:09', '2014-03-18 14:41:47', '2014-03-18 14:32:09', 'Rotate_PAT_report_20140318_143210.html', 'Prepare PAT Env', 3, 0, 'None'),
(252, 5776, 3, 118, '2014-03-19 08:40:23', '2014-03-19 08:40:37', '2014-03-19 08:40:23', 'OAT_Morning_Rotation_report_20140319_084024.html', 'OAT Morning Rotation', 2, 0, 'None'),
(253, 5404, 2, 118, '2014-03-19 08:41:36', '2014-03-19 09:15:45', '2014-03-19 08:41:36', 'OAT_Morning_Rotation_report_20140319_084136.html', 'OAT Morning Rotation', 2, 0, 'None'),
(254, 1316, 2, 119, '2014-03-19 09:15:45', '2014-03-19 09:33:56', '2014-03-19 08:41:49', 'OAT_ISE_Apps_Rotate_All_report_20140319_091545.html', 'OAT ISE Apps Rotate All', 2, 0, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `test_suite`
--

CREATE TABLE IF NOT EXISTS `test_suite` (
  `suite_id` int(11) NOT NULL AUTO_INCREMENT,
  `suite_name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  KEY `suite_id` (`suite_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `test_suite`
--

INSERT INTO `test_suite` (`suite_id`, `suite_name`, `description`) VALUES
(1, 'OAT IORS', 'Collection of IORS regression tests for OAT: OAT 8/11/13/14/22/23'),
(2, 'OAT Core Regression', 'Collection of OAT regression tests for testing the Core.'),
(3, 'TAC Testing', 'This is for testing TAC'),
(4, 'OAT Revamp RefData Regression', 'Collection of RefData tests from OAT Revamp Regression'),
(5, 'OAT Revamp 24 Hour Cycle Regression', 'Collection of 24 Hour Cycle Regression tests from OAT Revamp');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) NOT NULL,
  `user_email` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`) VALUES
(1, 'Han', 'hgu@ise.com'),
(2, 'Carlos', 'cbautista@ise.com'),
(3, 'Jason', 'jwasserzug@ise.com'),
(4, 'Andreas', 'akanon@ise.com'),
(5, 'Qiaoqi', 'qzhou@ise.com'),
(6, 'Sanjukta', 'sghosh@ise.com'),
(7, 'Daniel', 'dsapienza@ise.com'),
(8, 'Girish', 'gganeshan@ise.com'),
(9, 'Andy', 'alin@ise.com');
