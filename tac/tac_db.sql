-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 12, 2014 at 10:13 AM
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
(2, 120);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`notification_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `tag`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 2, 2),
(5, 1, 3),
(6, 2, 3);

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
  PRIMARY KEY (`test_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=122 ;

--
-- Dumping data for table `test_case`
--

INSERT INTO `test_case` (`test_id`, `test_name`, `description`) VALUES
(1, 'Another Test', 'Troubleshooting Test'),
(2, 'Fake PAT Test', 'Troubleshooting PAT Test'),
(3, 'Another Test2', 'Another troubleshooting test'),
(4, '16 Adapter 20 TPS Mod Del', ''),
(5, '16 Adapter 40tps Prod Throttle', ''),
(6, '16 Adapter Rampup No Throttle 1000tps', ''),
(7, '16 Adapter Steady 40tps', ''),
(8, '16 IOC Adapter Rampup No Throttle 1000tps', ''),
(9, '18 Adapter 3 BSI Rampup No Throttle 1000tps', ''),
(10, '1 Adapter RampUp 1000tps', ''),
(11, '1 Adapter Rampup 100tps', ''),
(12, '8 Adapter Rampup No Throttle 1000tps', ''),
(13, 'GEMINI PT101', ''),
(14, 'GEMINI PT102', ''),
(15, 'GEMINI PT103', ''),
(16, 'GEMINI PT104', ''),
(17, 'GEMINI PT105', ''),
(18, 'GEMINI PT106', ''),
(19, 'GEMINI PT107', ''),
(20, 'GEMINI PT111', ''),
(21, 'GEMINI PT112', ''),
(22, 'GEMINI PT113', ''),
(23, 'GEMINI PT114', ''),
(24, 'GEMINI PT115', ''),
(25, 'GEMINI PT116', ''),
(26, 'GEMINI PT117', ''),
(27, 'ISE 186 IORS Primary IRC Failure', 'This test verifies that if the primary IRC for IORS fails the secondary still functions and can provide the necessary data.'),
(28, 'ISE AON ABBORampup', ''),
(29, 'ISE AON MEQS Crossed With IBBO', ''),
(30, 'ISE AON MEQS Crossed with MEQS', ''),
(31, 'ISE AON MEQS Not Crossed With IBBO', ''),
(32, 'ISE AON MEQs with IBBO and MEQ', ''),
(33, 'ISE PT101', ''),
(34, 'ISE PT102', ''),
(35, 'ISE PT103', ''),
(36, 'ISE PT104', ''),
(37, 'ISE PT105', ''),
(38, 'ISE PT106', ''),
(39, 'ISE PT107', ''),
(40, 'ISE PT111', ''),
(41, 'ISE PT112', ''),
(42, 'ISE PT113', ''),
(43, 'ISE PT114', ''),
(44, 'ISE PT115', ''),
(45, 'ISE PT116', ''),
(46, 'ISE PT117', ''),
(47, 'OAT 11 IORS BSI Failover Cluster', 'Failure and recovery of IORS BSI Service. Order entry, via IORS Feeder, should only be temporarily impacted while BSI is recovered.'),
(48, 'OAT 13 IORS RegularBSI Adapter Failure', 'This test stops the BSI adapter, via a Tibco message, verifies inability to connect to BSI, starts up the adapter and finally verifies order entry, via IORS Feeder.'),
(49, 'OAT 14 IORS Svc Bureau BSI Adapter Failure', 'This test stops the Service Bureau BSI adapter, via a Tibco message, verifies inability to connect to BSI, starts up the service bureau adapter and finally verifies order entry, via IORS Feeder.'),
(50, 'OAT 22 Pope Leader to Member Failover', 'This test verifies that a Pope leader to member failover has minimal impact on order entry. Order entry should work as soon as member Pope is started.'),
(51, 'OAT 23 Trade Manager Leader to Member Failover', 'This test verifies that a Trade Manager leader to member failover has no impact on order entry. Order entry should work as soon as member Trade Manager is started.'),
(52, 'OAT 81 RefData ME Failure', 'This test verifies that a Matcher Engine failure prevents complex instrument additions, product state changes and it verifies that events can still be created.'),
(53, 'OAT 82 RefData Gateway Failure', 'This test verifies that if a Gateway is down user logins will not be successful.'),
(54, 'OAT 8 Baseline Order Management', 'IORS order submission via IORS Feeder and verification of order fills in TradeDB.'),
(55, 'Rotate IORS No Throttle', ''),
(56, 'Rotate PAT', ''),
(57, 'RTP Ramp Up', ''),
(58, 'RTP Spike Test', ''),
(59, 'Core 431 Matcher Leader Failover', ''),
(60, 'Core 432 Pope Leader Failover', ''),
(61, 'Core 433 RIB Leader Failover', ''),
(62, 'Core 434 MDD Leader Failover', ''),
(63, 'Core 435 Audit Trail Leader Failover', ''),
(64, 'Core 436 TM Failover', ''),
(65, 'Core 438 System Monitor Failover', ''),
(66, 'Core 439 System Controller Failover', ''),
(67, 'Core 440 Session Manager Failover', ''),
(68, 'Core 457 Status Manager Failover', ''),
(69, 'Core 415 Change Product State Script', ''),
(70, 'Core 416 DB Cleanups', ''),
(71, 'Core 417 SetPartitionSync Wait and Release', ''),
(72, 'Core 418 Gateway Authentication', ''),
(73, 'Core 419 Scheduler Event Pause Resume', ''),
(74, 'Core 424 System Startup Shutdown', ''),
(75, 'Core 426 dbsync dbcheck Local DBs', ''),
(76, 'Core 427 uCheck Functionality', ''),
(77, 'Core 500 MG Session Manager Load Balancing', ''),
(78, 'ISE 186 IORS Primary IRC Failure', ''),
(79, 'ISE 222 LOR Primary LOR Failure', ''),
(80, 'ISE 224 OCCTR Failover', ''),
(81, 'ISE 225 LOR UME Failover', ''),
(82, 'ISE 226 LOR Startup Without UME', ''),
(83, 'ISE 227 LOR Startup Without Exegy', ''),
(84, 'ISE 228 LOR Intra Day Loss Of All UME', ''),
(85, 'ISE 230 LOR Gateway Failure', ''),
(86, 'ISE 232 LOR Loss Of Fix', ''),
(87, 'ISE 241 RTP Baseline', ''),
(88, 'ISE 257 LOR Baseline', ''),
(89, 'OAT 55 24h Cycle BC Trade Open Failure', ''),
(90, 'OAT 56 24h Cycle BC Order Open Failure', ''),
(91, 'OAT 57 24h Cycle Matcher Release Failure', ''),
(92, 'OAT 58 24h Cycle Trading Start of Day Failure', ''),
(93, 'OAT 62 24h Cycle Trading Open Failure', ''),
(94, 'OAT 63 24h Cycle Trading Open Failure', ''),
(95, 'OAT 68 24h Cycle Trading Post End of Day Failure', ''),
(96, 'OAT 77 24h Cycle System Monitor Failure', ''),
(97, 'OAT 79 24h Cycle Cross DBs Failure', ''),
(98, 'OAT 20 Gateway Failure', ''),
(99, 'OAT 21 ME Failover', ''),
(100, 'OAT 30 Mdd Failover', ''),
(101, 'OAT 33 MDS LVC Failover', ''),
(102, 'OAT 38 ME Failure', ''),
(103, 'OAT 39 Mdd Failure', ''),
(104, 'OAT 41 MDS LVC Failure', ''),
(105, 'OAT 2 Matcher Leader to Member Failover', ''),
(106, 'OAT 3 Precise BSI Failover', ''),
(107, 'OAT 6 Precise Ports Failover', ''),
(108, 'OAT 83 RefData Base Line', ''),
(109, 'OAT 84 RefData Pope Failure', ''),
(110, 'OAT 85 RefData RdaIB Failure', ''),
(111, 'OAT 86 RefData ActiveMQ Failure', ''),
(112, 'OAT 87 RefData Jboss Failure', ''),
(113, 'OAT 88 RefData RdaOB Failure', ''),
(114, 'OAT 89 RefData Rdd Failure', ''),
(115, 'OAT 93 eventCheck Functionality', ''),
(116, 'OAT 94 piCheck Functionality', ''),
(117, 'OAT Full Core Rotation', 'Shut down and restart of OAT''s Core.'),
(118, 'OAT Morning Rotation', 'Complete shut down and start up of OAT''s Core. Events are run, databases are cleaned, etc.'),
(119, 'OAT ISE Apps Rotate All', 'Complete shutdown and restart of all ISE Apps in OAT, including configuration services and ActiveMQ. All files in D:\\ise\\log are deleted. IISReset is performed on each server.'),
(120, '24 Adapter 3 BSI Rampup No Throttle 1000tps', 'Ramp-up to 1000 tps for 24 adapters spread across 3 BSIs');

-- --------------------------------------------------------

--
-- Table structure for table `test_env`
--

CREATE TABLE IF NOT EXISTS `test_env` (
  `env_id` int(11) NOT NULL AUTO_INCREMENT,
  `env_name` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-available, 1-unavailable',
  `reason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`env_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `test_env`
--

INSERT INTO `test_env` (`env_id`, `env_name`, `status`, `reason`) VALUES
(1, 'OAT', 1, 'ETC: 10:30AM; cbautista: Updating Server: Adding Send Email For Test Completions'),
(2, 'PAT', 1, 'ETC: 10:30AM; cbautista: Updating Server: Adding Send Email For Test Completions');

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
(5, 97),
(2, 120);

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
  KEY `request_id` (`request_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=119 ;

--
-- Dumping data for table `test_request`
--

INSERT INTO `test_request` (`request_id`, `process_id`, `status`, `test_id`, `start_timestamp`, `end_timestamp`, `request_timestamp`, `report`, `label`) VALUES
(1, 4456, 4, 37, '2014-03-05 11:35:19', '2014-03-05 11:36:09', '2014-03-05 11:35:19', 'None', 'PT105 Test 2'),
(2, 6584, 3, 37, '2014-03-05 11:37:49', '2014-03-05 11:48:07', '2014-03-05 11:37:49', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\ISE_PT105_report_20140305_113751.html', 'PT105 Test 3'),
(3, 5928, 3, 37, '2014-03-05 11:48:07', '2014-03-05 11:58:54', '2014-03-05 11:40:53', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\ISE_PT105_report_20140305_114809.html', 'PT105 in Queue'),
(4, 3780, 4, 37, '2014-03-05 12:03:29', '2014-03-05 12:05:46', '2014-03-05 12:03:29', 'None', 'PAT Test'),
(5, 7200, 2, 37, '2014-03-05 12:07:02', '2014-03-05 12:14:16', '2014-03-05 12:07:01', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\ISE_PT105_report_20140305_120704.html', 'pt105 local host tes'),
(6, 7680, 2, 56, '2014-03-05 12:18:50', '2014-03-05 12:27:30', '2014-03-05 12:18:50', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\Rotate_PAT_report_20140305_121852.html', 'Rotate PAT'),
(7, 7756, 2, 37, '2014-03-05 14:05:09', '2014-03-05 14:20:52', '2014-03-05 14:05:08', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\ISE_PT105_report_20140305_140510.html', 'PT105 Test'),
(8, 584, 3, 58, '2014-03-05 14:20:52', '2014-03-05 14:21:43', '2014-03-05 14:06:03', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\RTP\\RTP_Spike_Test_report_20140305_142054.html', 'RTP Spike Test'),
(9, 6628, 3, 17, '2014-03-05 14:22:50', '2014-03-05 14:41:04', '2014-03-05 14:22:50', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\GEMINI_PT105_report_20140305_142252.html', 'Test 1'),
(10, 0, 6, 37, '0000-00-00 00:00:00', '2014-03-05 14:23:45', '2014-03-05 14:22:50', 'None', 'Test 1'),
(11, 6584, 3, 13, '2014-03-05 14:43:59', '2014-03-05 15:12:40', '2014-03-05 14:35:48', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\GEMINI_PT101_report_20140305_144401.html', 'Test'),
(12, 8188, 2, 33, '2014-03-05 15:12:40', '2014-03-05 16:08:49', '2014-03-05 14:35:48', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\PAT\\Regression\\ISE_PT101_report_20140305_151242.html', 'Test'),
(13, 5524, 2, 53, '2014-03-05 15:13:03', '2014-03-05 15:23:46', '2014-03-05 15:13:02', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\OAT\\OAT_Revamp\\Reference_Data\\OAT_82_RefData_Gateway_Failure_report_20140305_151304.html', 'Mickael test run'),
(14, 0, 6, 108, '0000-00-00 00:00:00', '2014-03-05 15:13:49', '2014-03-05 15:13:43', 'None', 'blah'),
(51, 1604, 2, 37, '2014-03-07 10:37:41', '2014-03-07 10:55:08', '2014-03-07 10:37:41', 'ISE_PT105_report_20140307_103741.html', 'AT,4 threads Sock 0'),
(50, 3856, 2, 37, '2014-03-07 10:02:11', '2014-03-07 10:17:59', '2014-03-07 10:02:11', 'ISE_PT105_report_20140307_100211.html', 'Removed Spinloop POP'),
(49, 5520, 2, 37, '2014-03-07 09:33:52', '2014-03-07 09:49:40', '2014-03-07 09:33:52', 'ISE_PT105_report_20140307_093352.html', 'ME on Socket 1'),
(47, 756, 2, 37, '2014-03-06 17:03:46', '2014-03-06 18:31:24', '2014-03-06 17:03:46', 'ISE_PT105_report_20140306_170346.html', 'OBS que 5k'),
(48, 2796, 2, 37, '2014-03-07 08:56:48', '2014-03-07 09:15:37', '2014-03-07 08:56:48', 'ISE_PT105_report_20140307_085649.html', 'Pope Active Poll'),
(46, 1564, 2, 37, '2014-03-06 15:03:19', '2014-03-06 15:19:25', '2014-03-06 15:03:19', 'ISE_PT105_report_20140306_150319.html', 'AT 4 threads to avoi'),
(45, 5592, 2, 37, '2014-03-06 14:16:24', '2014-03-06 14:32:22', '2014-03-06 14:16:24', 'ISE_PT105_report_20140306_141625.html', 'Rerun of 5k Pope Buf'),
(44, 5252, 2, 37, '2014-03-06 13:31:31', '2014-03-06 13:47:33', '2014-03-06 13:31:31', 'ISE_PT105_report_20140306_133131.html', 'Pope WorkCount Limit'),
(27, 3204, 5, 118, '2014-03-06 08:56:23', '2014-03-06 08:56:23', '2014-03-06 08:56:23', 'None', 'OAT Morning Rotation'),
(28, 5940, 3, 118, '2014-03-06 09:01:38', '2014-03-06 09:34:19', '2014-03-06 09:01:38', 'D:\\SVN_RobotFramework\\Tests\\Rotater\\OAT_Morning_Rotation_report_20140306_090138.html', 'OAT Morning Rotation'),
(29, 6000, 5, 118, '2014-03-06 09:44:16', '0000-00-00 00:00:00', '2014-03-06 09:44:16', 'None', 'Rerun. Last one fail'),
(30, 5176, 5, 33, '2014-03-06 09:44:49', '2014-03-06 09:45:00', '2014-03-06 09:44:49', 'None', 'ASG.ISE.COM Test'),
(31, 1772, 2, 118, '2014-03-06 10:10:45', '2014-03-06 10:45:30', '2014-03-06 10:10:45', 'OAT_Morning_Rotation_report_20140306_101045.html', 'Rotation Rerun'),
(32, 248, 3, 33, '2014-03-06 10:11:18', '2014-03-06 10:11:22', '2014-03-06 10:11:18', 'D:\\SVN_RobotFramework\\Tests\\PAT\\Regression\\ISE_PT101_report_20140306_101118.html', 'null'),
(33, 3540, 2, 33, '2014-03-06 10:16:15', '2014-03-06 10:16:19', '2014-03-06 10:16:15', 'D:\\SVN_RobotFramework\\Tests\\PAT\\Regression\\ISE_PT101_report_20140306_101615.html', 'test'),
(34, 1792, 2, 33, '2014-03-06 10:25:43', '2014-03-06 10:26:15', '2014-03-06 10:25:43', 'D:\\SVN_RobotFramework\\Tests\\PAT\\Regression\\ISE_PT101_report_20140306_102543.html', 'test'),
(35, 1944, 2, 33, '2014-03-06 10:28:03', '2014-03-06 10:28:35', '2014-03-06 10:28:03', 'D:\\SVN_RobotFramework\\Tests\\PAT\\Regression\\ISE_PT101_report_20140306_102803.html', 'test'),
(36, 2772, 2, 37, '2014-03-06 11:39:09', '2014-03-06 11:55:39', '2014-03-06 11:39:09', 'ISE_PT105_report_20140306_113909.html', 'Andreas first test'),
(55, 784, 3, 10, '2014-03-07 13:16:36', '2014-03-07 13:20:20', '2014-03-07 13:16:36', '1_Adapter_RampUp_1000tps_report_20140307_131636.html', 'IORS 3.30.0.9 take 2'),
(56, 1424, 3, 11, '2014-03-07 13:20:20', '2014-03-07 13:24:03', '2014-03-07 13:16:36', '1_Adapter_Rampup_100tps_report_20140307_132020.html', 'IORS 3.30.0.9 take 2'),
(52, 1644, 2, 37, '2014-03-07 11:23:42', '2014-03-07 11:39:34', '2014-03-07 11:23:42', 'ISE_PT105_report_20140307_112343.html', 'pt105 baseline at4 w'),
(53, 4880, 3, 10, '2014-03-07 12:18:47', '2014-03-07 12:19:45', '2014-03-07 12:18:47', '1_Adapter_RampUp_1000tps_report_20140307_121847.html', 'IORS 3.30.0.9'),
(54, 5340, 3, 11, '2014-03-07 12:19:45', '2014-03-07 12:20:42', '2014-03-07 12:18:47', '1_Adapter_Rampup_100tps_report_20140307_121945.html', 'IORS 3.30.0.9'),
(43, 6044, 2, 117, '2014-03-06 12:26:24', '2014-03-06 12:44:21', '2014-03-06 12:26:24', 'OAT_Full_Core_Rotation_report_20140306_122624.html', 'Rotate OAT'),
(57, 5912, 3, 118, '2014-03-07 13:23:53', '2014-03-07 13:24:03', '2014-03-07 13:23:53', 'OAT_Morning_Rotation_report_20140307_132353.html', 'Carlos request'),
(58, 3684, 3, 11, '2014-03-07 13:25:06', '2014-03-07 13:28:49', '2014-03-07 13:25:06', '1_Adapter_Rampup_100tps_report_20140307_132507.html', 'iors take 3'),
(59, 1584, 3, 118, '2014-03-07 13:26:59', '2014-03-07 14:00:05', '2014-03-07 13:26:59', 'OAT_Morning_Rotation_report_20140307_132659.html', 'carlos'),
(60, 5376, 2, 117, '2014-03-07 14:09:10', '2014-03-07 14:33:39', '2014-03-07 14:09:10', 'OAT_Full_Core_Rotation_report_20140307_140910.html', 'Morning rotation failed. Running again.'),
(61, 1296, 2, 119, '2014-03-07 14:53:31', '2014-03-07 15:12:30', '2014-03-07 14:53:31', 'OAT_ISE_Apps_Rotate_All_report_20140307_145331.html', 'ISE Apps Rotation; Prep for IORS run'),
(62, 5416, 3, 11, '2014-03-07 15:14:42', '2014-03-07 15:20:47', '2014-03-07 15:14:42', '1_Adapter_Rampup_100tps_report_20140307_151443.html', '3.30.0.9 take 4'),
(63, 5860, 2, 54, '2014-03-07 15:15:40', '2014-03-07 15:25:32', '2014-03-07 15:15:40', 'OAT_8_Baseline_Order_Management_report_20140307_151540.html', 'IORS ORA 3.30.0.9 Regression'),
(64, 3400, 2, 51, '2014-03-07 15:25:32', '2014-03-07 15:44:01', '2014-03-07 15:15:40', 'OAT_23_Trade_Manager_Leader_to_Member_Failover_report_20140307_152532.html', 'IORS ORA 3.30.0.9 Regression'),
(65, 2192, 2, 50, '2014-03-07 15:44:01', '2014-03-07 15:58:37', '2014-03-07 15:15:40', 'OAT_22_Pope_Leader_to_Member_Failover_report_20140307_154401.html', 'IORS ORA 3.30.0.9 Regression'),
(66, 3240, 3, 49, '2014-03-07 15:58:37', '2014-03-07 16:17:32', '2014-03-07 15:15:40', 'OAT_14_IORS_Svc_Bureau_BSI_Adapter_Failure_report_20140307_155837.html', 'IORS ORA 3.30.0.9 Regression'),
(67, 5540, 3, 48, '2014-03-07 16:17:32', '2014-03-07 16:30:19', '2014-03-07 15:15:40', 'OAT_13_IORS_RegularBSI_Adapter_Failure_report_20140307_161732.html', 'IORS ORA 3.30.0.9 Regression'),
(68, 352, 2, 47, '2014-03-07 16:30:19', '2014-03-07 16:51:07', '2014-03-07 15:15:40', 'OAT_11_IORS_BSI_Failover_Cluster_report_20140307_163019.html', 'IORS ORA 3.30.0.9 Regression'),
(69, 5244, 2, 11, '2014-03-07 15:24:39', '2014-03-07 15:35:22', '2014-03-07 15:24:39', '1_Adapter_Rampup_100tps_report_20140307_152439.html', 'IORS 3.30.0.9 Take 5'),
(70, 5416, 2, 10, '2014-03-07 15:37:14', '2014-03-07 16:01:04', '2014-03-07 15:37:14', '1_Adapter_RampUp_1000tps_report_20140307_153714.html', 'IORS 3.30.0.9 Take 5'),
(71, 2640, 2, 48, '2014-03-07 17:35:11', '2014-03-07 17:51:47', '2014-03-07 17:35:11', 'OAT_13_IORS_RegularBSI_Adapter_Failure_report_20140307_173511.html', 'IORS 3.30.0.9 - Rerun for failed tests'),
(72, 1620, 2, 49, '2014-03-07 17:51:47', '2014-03-07 18:10:16', '2014-03-07 17:35:11', 'OAT_14_IORS_Svc_Bureau_BSI_Adapter_Failure_report_20140307_175148.html', 'IORS 3.30.0.9 - Rerun for failed tests'),
(73, 1860, 3, 118, '2014-03-10 08:06:41', '2014-03-10 08:40:36', '2014-03-10 08:06:41', 'OAT_Morning_Rotation_report_20140310_080643.html', 'OAT Morning Rotation'),
(74, 4796, 4, 117, '2014-03-10 10:21:37', '2014-03-10 10:23:57', '2014-03-10 10:21:37', 'None', 'OAT Rotation'),
(75, 2032, 4, 117, '2014-03-10 10:31:39', '2014-03-10 10:32:39', '2014-03-10 10:31:39', 'None', 'OAT Rotation'),
(76, 1724, 2, 117, '2014-03-10 11:22:08', '2014-03-10 11:38:24', '2014-03-10 11:22:08', 'OAT_Full_Core_Rotation_report_20140310_112208.html', 'OAT Rotation'),
(77, 2152, 2, 119, '2014-03-10 11:38:24', '2014-03-10 11:56:36', '2014-03-10 11:22:33', 'OAT_ISE_Apps_Rotate_All_report_20140310_113824.html', 'ISEApps Rotation'),
(78, 6068, 2, 52, '2014-03-10 12:38:31', '2014-03-10 13:29:37', '2014-03-10 12:38:31', 'OAT_81_RefData_ME_Failure_report_20140310_123831.html', 'OAT R8.001.210 Regression RefData'),
(79, 1812, 2, 53, '2014-03-10 13:29:37', '2014-03-10 13:36:49', '2014-03-10 12:38:31', 'OAT_82_RefData_Gateway_Failure_report_20140310_132937.html', 'OAT R8.001.210 Regression RefData'),
(80, 5940, 2, 108, '2014-03-10 13:36:49', '2014-03-10 13:44:24', '2014-03-10 12:38:31', 'OAT_83_RefData_Base_Line_report_20140310_133649.html', 'OAT R8.001.210 Regression RefData'),
(81, 5340, 3, 109, '2014-03-10 13:44:24', '2014-03-10 14:13:05', '2014-03-10 12:38:31', 'OAT_84_RefData_Pope_Failure_report_20140310_134424.html', 'OAT R8.001.210 Regression RefData'),
(82, 4888, 2, 110, '2014-03-10 14:13:05', '2014-03-10 14:35:32', '2014-03-10 12:38:31', 'OAT_85_RefData_RdaIB_Failure_report_20140310_141305.html', 'OAT R8.001.210 Regression RefData'),
(83, 5584, 3, 111, '2014-03-10 14:35:32', '2014-03-10 14:59:43', '2014-03-10 12:38:31', 'OAT_86_RefData_ActiveMQ_Failure_report_20140310_143532.html', 'OAT R8.001.210 Regression RefData'),
(84, 3040, 2, 112, '2014-03-10 14:59:43', '2014-03-10 15:29:50', '2014-03-10 12:38:31', 'OAT_87_RefData_Jboss_Failure_report_20140310_145943.html', 'OAT R8.001.210 Regression RefData'),
(85, 4156, 2, 113, '2014-03-10 15:29:50', '2014-03-10 16:02:53', '2014-03-10 12:38:31', 'OAT_88_RefData_RdaOB_Failure_report_20140310_152950.html', 'OAT R8.001.210 Regression RefData'),
(86, 1048, 2, 114, '2014-03-10 16:02:53', '2014-03-10 16:29:14', '2014-03-10 12:38:31', 'OAT_89_RefData_Rdd_Failure_report_20140310_160253.html', 'OAT R8.001.210 Regression RefData'),
(87, 5808, 3, 89, '2014-03-10 16:29:14', '2014-03-10 16:46:08', '2014-03-10 14:09:36', 'OAT_55_24h_Cycle_BC_Trade_Open_Failure_report_20140310_162914.html', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(88, 6044, 3, 90, '2014-03-10 16:46:08', '2014-03-10 17:02:30', '2014-03-10 14:09:36', 'OAT_56_24h_Cycle_BC_Order_Open_Failure_report_20140310_164608.html', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(89, 1916, 3, 91, '2014-03-10 17:02:30', '2014-03-10 17:19:19', '2014-03-10 14:09:36', 'OAT_57_24h_Cycle_Matcher_Release_Failure_report_20140310_170230.html', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(90, 3116, 3, 92, '2014-03-10 17:19:19', '2014-03-10 17:35:42', '2014-03-10 14:09:36', 'OAT_58_24h_Cycle_Trading_Start_of_Day_Failure_report_20140310_171919.html', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(91, 5496, 3, 93, '2014-03-10 17:35:42', '2014-03-10 17:55:18', '2014-03-10 14:09:36', 'OAT_62_24h_Cycle_Trading_Open_Failure_report_20140310_173542.html', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(92, 4256, 3, 94, '2014-03-10 17:55:18', '2014-03-10 18:12:46', '2014-03-10 14:09:36', 'OAT_63_24h_Cycle_Trading_Open_Failure_report_20140310_175519.html', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(93, 4708, 3, 95, '2014-03-10 18:12:46', '2014-03-10 18:29:12', '2014-03-10 14:09:36', 'OAT_68_24h_Cycle_Trading_Post_End_of_Day_Failure_report_20140310_181246.html', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(94, 1900, 3, 96, '2014-03-10 18:29:12', '2014-03-10 18:36:13', '2014-03-10 14:09:36', 'OAT_77_24h_Cycle_System_Monitor_Failure_report_20140310_182912.html', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(95, 1256, 3, 97, '2014-03-10 18:36:13', '2014-03-10 18:40:29', '2014-03-10 14:09:36', 'OAT_79_24h_Cycle_Cross_DBs_Failure_report_20140310_183613.html', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(96, 3116, 3, 118, '2014-03-11 08:11:51', '2014-03-11 08:44:18', '2014-03-11 08:11:51', 'OAT_Morning_Rotation_report_20140311_081152.html', 'OAT Morning Rotation'),
(97, 1488, 3, 37, '2014-03-11 08:45:20', '2014-03-11 08:57:19', '2014-03-11 08:45:20', 'ISE_PT105_report_20140311_084520.html', 'Baseline'),
(98, 4568, 2, 37, '2014-03-11 09:44:29', '2014-03-11 10:00:35', '2014-03-11 09:44:29', 'ISE_PT105_report_20140311_094430.html', 'Baseline - Re-run'),
(99, 2140, 3, 55, '2014-03-11 10:00:35', '2014-03-11 10:10:17', '2014-03-11 09:58:58', 'Rotate_IORS_No_Throttle_report_20140311_100036.html', 'Rotate IORS to Ready State'),
(100, 4844, 3, 117, '2014-03-11 10:25:52', '2014-03-11 10:49:25', '2014-03-11 10:25:52', 'OAT_Full_Core_Rotation_report_20140311_102552.html', 'OAT Rotation'),
(101, 4636, 3, 89, '2014-03-11 10:49:25', '2014-03-11 11:16:51', '2014-03-11 10:26:24', 'OAT_55_24h_Cycle_BC_Trade_Open_Failure_report_20140311_104925.html', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(102, 0, 6, 90, '0000-00-00 00:00:00', '2014-03-11 11:28:17', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(103, 0, 6, 91, '0000-00-00 00:00:00', '2014-03-11 11:28:19', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(104, 0, 6, 92, '0000-00-00 00:00:00', '2014-03-11 11:28:20', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(105, 0, 6, 93, '0000-00-00 00:00:00', '2014-03-11 11:28:21', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(106, 0, 6, 94, '0000-00-00 00:00:00', '2014-03-11 11:28:23', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(107, 0, 6, 95, '0000-00-00 00:00:00', '2014-03-11 11:28:25', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(108, 0, 6, 96, '0000-00-00 00:00:00', '2014-03-11 11:28:27', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(109, 0, 6, 97, '0000-00-00 00:00:00', '2014-03-11 11:28:30', '2014-03-11 10:26:24', 'None', 'OAT R8.001.210 Regression 24 Hr Cycle'),
(110, 4740, 4, 120, '2014-03-11 11:25:27', '2014-03-11 11:25:55', '2014-03-11 11:25:27', 'None', 'null'),
(111, 1936, 3, 120, '2014-03-11 11:26:16', '2014-03-11 11:50:29', '2014-03-11 11:26:16', '24_Adapter_3_BSI_Rampup_No_Throttle_1000tps_report_20140311_112616.html', 'ORA 3.31.0.0'),
(112, 5076, 3, 118, '2014-03-11 14:32:23', '2014-03-11 15:19:33', '2014-03-11 14:32:15', 'OAT_Morning_Rotation_report_20140311_143223.html', 'Hoping to recreate rotation issue'),
(113, 4684, 2, 120, '2014-03-11 15:06:21', '2014-03-11 15:41:21', '2014-03-11 14:54:58', '24_Adapter_3_BSI_Rampup_No_Throttle_1000tps_report_20140311_150621.html', 'ORA 3.31.0.0'),
(114, 0, 6, 10, '0000-00-00 00:00:00', '2014-03-11 15:13:24', '2014-03-11 15:06:39', 'None', 'Demo'),
(115, 0, 6, 11, '0000-00-00 00:00:00', '2014-03-11 15:17:07', '2014-03-11 15:06:39', 'None', 'Demo'),
(116, 0, 6, 10, '0000-00-00 00:00:00', '2014-03-11 15:17:09', '2014-03-11 15:09:48', 'None', 'ORA Test'),
(117, 2152, 3, 9, '2014-03-11 17:13:30', '2014-03-11 17:49:35', '2014-03-11 17:13:30', '18_Adapter_3_BSI_Rampup_No_Throttle_1000tps_report_20140311_171330.html', 'v3.31.0.2_dev'),
(118, 1536, 3, 118, '2014-03-12 07:45:54', '2014-03-12 08:17:55', '2014-03-12 07:45:54', 'OAT_Morning_Rotation_report_20140312_074555.html', 'OAT Morning Rotation (Expecting Failure)');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`) VALUES
(1, 'Han', 'hgu@ise.com'),
(2, 'Carlos', 'cbautista@ise.com'),
(3, 'Jason', 'jwasserzug@ise.com');
