-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 01, 2014 at 01:03 PM
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
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `test_case`
--

CREATE TABLE IF NOT EXISTS `test_case` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `test_case`
--

INSERT INTO `test_case` (`test_id`, `test_name`, `description`) VALUES
(1, 'OAT_8_Baseline_Order_Management', 'IORS order submission via IORS Feeder and verification of order fills in TradeDB.'),
(2, 'OAT_11_IORS_BSI_Failover_Cluster', 'Failure and recovery of IORS BSI Service. Order entry, via IORS Feeder, should only be temporarily impacted while BSI is recovered.'),
(3, 'OAT_13_IORS_RegularBSI_Adapter_Failure', 'This test stops the BSI adapter, via a Tibco message, verifies inability to connect to BSI, starts up the adapter and finally verifies order entry, via IORS Feeder.'),
(4, 'OAT_14_IORS_Svc_Bureau_BSI_Adapter_Failure', 'This test stops the Service Bureau BSI adapter, via a Tibco message, verifies inability to connect to BSI, starts up the service bureau adapter and finally verifies order entry, via IORS Feeder.'),
(5, 'OAT_22_Pope_Leader_to_Member_Failover', 'This test verifies that a Pope leader to member failover has minimal impact on order entry. Order entry should work as soon as member Pope is started.'),
(6, 'OAT_23_Trade_Manager_Leader_to_Member_Failover', 'This test verifies that a Trade Manager leader to member failover has no impact on order entry. Order entry should work as soon as member Trade Manager is started.'),
(7, 'ISE_186_IORS_Primary_IRC_Failure', 'This test verifies that if the primary IRC for IORS fails the secondary still functions and can provide the necessary data.'),
(8, 'OAT_81_RefData_ME_Failure', 'This test verifies that a Matcher Engine failure prevents complex instrument additions, product state changes and it verifies that events can still be created.'),
(9, 'OAT_82_RefData_Gateway_Failure', 'This test verifies that if a Gateway is down user logins will not be successful.'),
(10, 'another_test', 'Random troubleshooting test.'),
(11, 'fake_pat_test', 'Not a real test for testing PAT test handling by TAC.');

-- --------------------------------------------------------

--
-- Table structure for table `test_env`
--

CREATE TABLE IF NOT EXISTS `test_env` (
  `env_id` int(11) NOT NULL AUTO_INCREMENT,
  `env_name` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-available, 1-unavailable',
  PRIMARY KEY (`env_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `test_env`
--

INSERT INTO `test_env` (`env_id`, `env_name`, `status`) VALUES
(1, 'OAT', 0),
(2, 'PAT', 0);

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
(1, 2),
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 8),
(2, 9),
(3, 10),
(3, 11);

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
  `label` varchar(20) DEFAULT NULL,
  KEY `request_id` (`request_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `test_request`
--

INSERT INTO `test_request` (`request_id`, `process_id`, `status`, `test_id`, `start_timestamp`, `end_timestamp`, `request_timestamp`, `report`, `label`) VALUES
(1, 5824, 2, 10, '2014-02-28 17:41:56', '2014-02-28 17:42:16', '2014-02-28 17:41:56', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\Troubleshooting\\another_test_report_20140228_174213.html', NULL),
(2, 5684, 3, 11, '2014-02-28 17:41:57', '2014-02-28 17:42:16', '2014-02-28 17:41:56', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\Troubleshooting\\fake_pat_test_report_20140228_174213.html', NULL),
(3, 5232, 2, 10, '2014-02-28 17:43:52', '2014-02-28 17:44:14', '2014-02-28 17:43:52', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\Troubleshooting\\another_test_report_20140228_174409.html', NULL),
(4, 3372, 3, 11, '2014-02-28 17:43:52', '2014-02-28 17:44:12', '2014-02-28 17:43:52', 'J:\\cbautista\\SVN_TestAutomation_Trunk\\RobotFramework\\Tests\\Troubleshooting\\fake_pat_test_report_20140228_174409.html', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_suite`
--

CREATE TABLE IF NOT EXISTS `test_suite` (
  `suite_id` int(11) NOT NULL AUTO_INCREMENT,
  `suite_name` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  KEY `suite_id` (`suite_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `test_suite`
--

INSERT INTO `test_suite` (`suite_id`, `suite_name`, `description`) VALUES
(1, 'OAT_IORS', 'Collection of IORS regression tests for OAT.'),
(2, 'OAT_Core_Regression', 'Collection of OAT regression tests for testing the Core.'),
(3, 'TAC_Testing', 'This is for testing TAC');
