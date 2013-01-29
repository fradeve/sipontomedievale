-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2013 at 06:50 PM
-- Server version: 5.5.28
-- PHP Version: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ark`
--

-- --------------------------------------------------------

--
-- Table structure for table `abk_lut_abktype`
--

CREATE TABLE IF NOT EXISTS `abk_lut_abktype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abktype` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `abk_lut_abktype`
--

INSERT INTO `abk_lut_abktype` (`id`, `abktype`, `cre_by`, `cre_on`) VALUES
(1, 'people', 4, '2007-05-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `abk_tbl_abk`
--

CREATE TABLE IF NOT EXISTS `abk_tbl_abk` (
  `abk_cd` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `abk_no` int(10) NOT NULL DEFAULT '0',
  `ste_cd` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `abktype` int(3) NOT NULL,
  `cre_by` int(4) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`abk_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `abk_tbl_abk`
--

INSERT INTO `abk_tbl_abk` (`abk_cd`, `abk_no`, `ste_cd`, `abktype`, `cre_by`, `cre_on`) VALUES
('ARK_1', 1, 'ARK', 1, 1, '2011-07-16 20:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `ael_tbl_ael`
--

CREATE TABLE IF NOT EXISTS `ael_tbl_ael` (
  `ael_cd` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ael_no` int(10) NOT NULL DEFAULT '0',
  `ste_cd` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cre_by` int(4) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ael_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cns_tbl_cns`
--

CREATE TABLE IF NOT EXISTS `cns_tbl_cns` (
  `cns_cd` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `cns_no` int(10) NOT NULL DEFAULT '0',
  `ste_cd` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cre_by` int(4) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`cns_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_actiontype`
--

CREATE TABLE IF NOT EXISTS `cor_lut_actiontype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actiontype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Lookup table supplies types of actions' AUTO_INCREMENT=15 ;

--
-- Dumping data for table `cor_lut_actiontype`
--

INSERT INTO `cor_lut_actiontype` (`id`, `actiontype`, `module`, `cre_by`, `cre_on`) VALUES
(1, 'issuedto', 'cor', 1, '2011-07-22 00:00:00'),
(2, 'compiledby', 'cor', 1, '2011-07-22 00:00:00'),
(3, 'checkedby', 'cor', 1, '2011-07-22 00:00:00'),
(4, 'directedby', 'cor', 1, '2011-07-22 00:00:00'),
(5, 'supervisedby', 'cor', 1, '2011-07-22 00:00:00'),
(8, 'takenby', 'gph', 1, '2011-07-22 00:00:00'),
(6, 'drawnby', 'pln', 1, '2011-07-22 00:00:00'),
(7, 'scannedby', 'pln', 1, '2011-07-22 00:00:00'),
(9, 'interpretedby', 'cor', 1, '2011-07-22 00:00:00'),
(10, 'notedby', 'ael', 1, '2011-07-22 00:00:00'),
(11, 'restoredby', 'ael', 1, '2011-07-22 00:00:00'),
(12, 'registeredby', 'ael', 1, '2011-07-22 00:00:00'),
(14, 'recordedby', 'fld', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_aliastype`
--

CREATE TABLE IF NOT EXISTS `cor_lut_aliastype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aliastype` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cor_lut_aliastype`
--

INSERT INTO `cor_lut_aliastype` (`id`, `aliastype`, `cre_by`, `cre_on`) VALUES
(1, 'normal', 1, '2006-08-31 00:00:00'),
(2, 'against', 1, '2006-08-31 00:00:00'),
(3, 'from', 4, '0000-00-00 00:00:00'),
(4, 'to', 4, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_attribute`
--

CREATE TABLE IF NOT EXISTS `cor_lut_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `attributetype` int(11) NOT NULL DEFAULT '0',
  `module` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'cxt',
  `cre_by` int(11) NOT NULL DEFAULT '4',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This lookup table supplys different types of text to be link' AUTO_INCREMENT=162 ;

--
-- Dumping data for table `cor_lut_attribute`
--

INSERT INTO `cor_lut_attribute` (`id`, `attribute`, `attributetype`, `module`, `cre_by`, `cre_on`) VALUES
(1, 'datcmp', 1, 'cor', 1, '2011-07-22 00:00:00'),
(2, 'chkd', 1, 'cor', 1, '2011-07-22 00:00:00'),
(3, 'not_exc', 1, 'cor', 1, '2011-07-22 00:00:00'),
(4, 'part_exc', 1, 'cor', 1, '2011-07-22 00:00:00'),
(5, 'exc', 1, 'cor', 1, '2011-07-22 00:00:00'),
(10, 'irs', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(9, 'thnwalled', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(8, 'blkglaze', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(11, 'sgrs', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(12, 'ars', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(13, 'cwares', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(14, 'acwares', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(15, 'cwares', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(16, 'ramph', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(17, 'rlamps', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(18, 'rother', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(19, 'rpaint', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(20, 'forware', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(21, 'sprsglazed', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(22, 'leadglazed', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(23, 'tinglazed', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(24, 'sgraffito', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(25, 'mcwares', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(26, 'mtesti', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(27, 'mlamps', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(28, 'medother', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(29, 'moderncer', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(42, 'mcws', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(44, 'medanf', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(45, 'dolium', 3, 'cxt', 1, '2011-07-22 00:00:00'),
(46, 'major', 4, 'spf', 1, '2011-07-22 00:00:00'),
(47, 'minor', 4, 'spf', 1, '2011-07-22 00:00:00'),
(48, 'surface', 4, 'spf', 1, '2011-07-22 00:00:00'),
(49, 'chemical', 4, 'spf', 1, '2011-07-22 00:00:00'),
(50, 'biological', 4, 'spf', 1, '2011-07-22 00:00:00'),
(51, 'repair', 4, 'spf', 1, '2011-07-22 00:00:00'),
(52, 'accretions', 4, 'spf', 1, '2011-07-22 00:00:00'),
(53, 'good', 5, 'spf', 1, '2011-07-22 00:00:00'),
(54, 'fair', 5, 'spf', 1, '2011-07-22 00:00:00'),
(55, 'poor', 5, 'spf', 1, '2011-07-22 00:00:00'),
(56, 'unacceptable', 5, 'spf', 1, '2011-07-22 00:00:00'),
(57, 'none', 6, 'spf', 1, '2011-07-22 00:00:00'),
(58, 'clean', 6, 'spf', 1, '2011-07-22 00:00:00'),
(59, 'mount', 6, 'spf', 1, '2011-07-22 00:00:00'),
(60, 'conserve', 6, 'spf', 1, '2011-07-22 00:00:00'),
(61, '1', 7, 'spf', 1, '2011-07-22 00:00:00'),
(62, '2', 7, 'spf', 1, '2011-07-22 00:00:00'),
(63, '3', 7, 'spf', 1, '2011-07-22 00:00:00'),
(64, '4', 7, 'spf', 1, '2011-07-22 00:00:00'),
(65, '5', 7, 'spf', 1, '2011-07-22 00:00:00'),
(66, 'male', 8, 'cxt', 1, '2011-07-22 00:00:00'),
(67, 'female', 8, 'cxt', 1, '2011-07-22 00:00:00'),
(68, 'indeterminate', 8, 'cxt', 1, '2011-07-22 00:00:00'),
(69, 'undeterminable', 8, 'cxt', 1, '2011-07-22 00:00:00'),
(70, 'infant', 9, 'cxt', 1, '2011-07-22 00:00:00'),
(71, 'child', 9, 'cxt', 1, '2011-07-22 00:00:00'),
(72, 'juvenile', 9, 'cxt', 1, '2011-07-22 00:00:00'),
(73, 'adult', 9, 'cxt', 1, '2011-07-22 00:00:00'),
(74, 'primary', 10, 'cxt', 1, '2011-07-22 00:00:00'),
(75, 'secondary', 10, 'cxt', 1, '2011-07-22 00:00:00'),
(76, 'disturbed', 10, 'cxt', 1, '2011-07-22 00:00:00'),
(77, 'reduction', 10, 'cxt', 1, '2011-07-22 00:00:00'),
(78, 'supine', 11, 'cxt', 1, '2011-07-22 00:00:00'),
(79, 'prone', 11, 'cxt', 1, '2011-07-22 00:00:00'),
(80, 'lateralsn', 11, 'cxt', 1, '2011-07-22 00:00:00'),
(81, 'lateraldx', 11, 'cxt', 1, '2011-07-22 00:00:00'),
(82, 'other', 11, 'cxt', 1, '2011-07-22 00:00:00'),
(83, 'temporoconn', 12, 'cxt', 1, '2011-07-22 00:00:00'),
(84, 'temporodisc', 12, 'cxt', 1, '2011-07-22 00:00:00'),
(85, 'temporoabs', 12, 'cxt', 1, '2011-07-22 00:00:00'),
(86, 'cranioconn', 13, 'cxt', 1, '2011-07-22 00:00:00'),
(87, 'craniodisc', 13, 'cxt', 1, '2011-07-22 00:00:00'),
(88, 'cranioabs', 13, 'cxt', 1, '2011-07-22 00:00:00'),
(89, 'atlanteconn', 14, 'cxt', 1, '2011-07-22 00:00:00'),
(90, 'atlantedisc', 14, 'cxt', 1, '2011-07-22 00:00:00'),
(91, 'atlanteabs', 14, 'cxt', 1, '2011-07-22 00:00:00'),
(92, 'epistoconn', 15, 'cxt', 1, '2011-07-22 00:00:00'),
(93, 'epistodisc', 15, 'cxt', 1, '2011-07-22 00:00:00'),
(94, 'epistoabs', 15, 'cxt', 1, '2011-07-22 00:00:00'),
(95, 'thorax', 16, 'cxt', 1, '2011-07-22 00:00:00'),
(96, 'sternum', 16, 'cxt', 1, '2011-07-22 00:00:00'),
(97, 'pelvis', 16, 'cxt', 1, '2011-07-22 00:00:00'),
(98, 'knee', 16, 'cxt', 1, '2011-07-22 00:00:00'),
(99, 'ankle', 16, 'cxt', 1, '2011-07-22 00:00:00'),
(100, 'clavicle', 16, 'cxt', 1, '2011-07-22 00:00:00'),
(101, 'scapula', 16, 'cxt', 1, '2011-07-22 00:00:00'),
(102, 'humerus', 16, 'cxt', 1, '2011-07-22 00:00:00'),
(103, 'femur', 16, 'cxt', 1, '2011-07-22 00:00:00'),
(104, 'emptyspace', 17, 'cxt', 1, '2011-07-22 00:00:00'),
(105, 'fullspace', 17, 'cxt', 1, '2011-07-22 00:00:00'),
(106, 'other', 17, 'cxt', 1, '2011-07-22 00:00:00'),
(107, 'conn', 18, 'cxt', 1, '2011-07-22 00:00:00'),
(108, 'disconn', 18, 'cxt', 1, '2011-07-22 00:00:00'),
(109, 'abs', 18, 'cxt', 1, '2011-07-22 00:00:00'),
(110, 'conn', 19, 'cxt', 1, '2011-07-22 00:00:00'),
(111, 'disconn', 19, 'cxt', 1, '2011-07-22 00:00:00'),
(112, 'abs', 19, 'cxt', 1, '2011-07-22 00:00:00'),
(113, 'conn', 20, 'cxt', 1, '2011-07-22 00:00:00'),
(114, 'disconn', 20, 'cxt', 1, '2011-07-22 00:00:00'),
(115, 'abs', 20, 'cxt', 1, '2011-07-22 00:00:00'),
(116, 'conn', 21, 'cxt', 1, '2011-07-22 00:00:00'),
(117, 'disconn', 21, 'cxt', 1, '2011-07-22 00:00:00'),
(118, 'abs', 21, 'cxt', 1, '2011-07-22 00:00:00'),
(119, 'conn', 22, 'cxt', 1, '2011-07-22 00:00:00'),
(120, 'disconn', 22, 'cxt', 1, '2011-07-22 00:00:00'),
(121, 'abs', 22, 'cxt', 1, '2011-07-22 00:00:00'),
(122, 'conn', 23, 'cxt', 1, '2011-07-22 00:00:00'),
(123, 'disconn', 23, 'cxt', 1, '2011-07-22 00:00:00'),
(124, 'abs', 23, 'cxt', 1, '2011-07-22 00:00:00'),
(125, 'conn', 24, 'cxt', 1, '2011-07-22 00:00:00'),
(126, 'disconn', 24, 'cxt', 1, '2011-07-22 00:00:00'),
(127, 'abs', 24, 'cxt', 1, '2011-07-22 00:00:00'),
(128, 'conn', 25, 'cxt', 1, '2011-07-22 00:00:00'),
(129, 'disconn', 25, 'cxt', 1, '2011-07-22 00:00:00'),
(130, 'abs', 25, 'cxt', 1, '2011-07-22 00:00:00'),
(131, 'conn', 26, 'cxt', 1, '2011-07-22 00:00:00'),
(132, 'disconn', 26, 'cxt', 1, '2011-07-22 00:00:00'),
(133, 'abs', 26, 'cxt', 1, '2011-07-22 00:00:00'),
(134, 'conn', 27, 'cxt', 1, '2011-07-22 00:00:00'),
(135, 'disconn', 27, 'cxt', 1, '2011-07-22 00:00:00'),
(136, 'abs', 27, 'cxt', 1, '2011-07-22 00:00:00'),
(137, 'conn', 28, 'cxt', 1, '2011-07-22 00:00:00'),
(138, 'disconn', 28, 'cxt', 1, '2011-07-22 00:00:00'),
(139, 'abs', 28, 'cxt', 1, '2011-07-22 00:00:00'),
(140, 'conn', 29, 'cxt', 1, '2011-07-22 00:00:00'),
(141, 'disconn', 29, 'cxt', 1, '2011-07-22 00:00:00'),
(142, 'abs', 29, 'cxt', 1, '2011-07-22 00:00:00'),
(143, 'conn', 30, 'cxt', 1, '2011-07-22 00:00:00'),
(144, 'disconn', 30, 'cxt', 1, '2011-07-22 00:00:00'),
(145, 'abs', 30, 'cxt', 1, '2011-07-22 00:00:00'),
(146, 'conn', 31, 'cxt', 1, '2011-07-22 00:00:00'),
(147, 'disconn', 31, 'cxt', 1, '2011-07-22 00:00:00'),
(148, 'abs', 31, 'cxt', 1, '2011-07-22 00:00:00'),
(149, 'conn', 32, 'cxt', 1, '2011-07-22 00:00:00'),
(150, 'disconn', 32, 'cxt', 1, '2011-07-22 00:00:00'),
(151, 'abs', 32, 'cxt', 1, '2011-07-22 00:00:00'),
(152, 'conn', 33, 'cxt', 1, '2011-07-22 00:00:00'),
(153, 'disconn', 33, 'cxt', 1, '2011-07-22 00:00:00'),
(154, 'abs', 33, 'cxt', 1, '2011-07-22 00:00:00'),
(155, 'conn', 34, 'cxt', 1, '2011-07-22 00:00:00'),
(156, 'disconn', 34, 'cxt', 1, '2011-07-22 00:00:00'),
(157, 'abs', 34, 'cxt', 1, '2011-07-22 00:00:00'),
(158, 'conn', 35, 'cxt', 1, '2011-07-22 00:00:00'),
(159, 'disconn', 35, 'cxt', 1, '2011-07-22 00:00:00'),
(160, 'abs', 35, 'cxt', 1, '2011-07-22 00:00:00'),
(161, 'romanglaze', 3, 'cxt', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_attributetype`
--

CREATE TABLE IF NOT EXISTS `cor_lut_attributetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attributetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This lookup table supplys different types of text to be link' AUTO_INCREMENT=36 ;

--
-- Dumping data for table `cor_lut_attributetype`
--

INSERT INTO `cor_lut_attributetype` (`id`, `attributetype`, `module`, `cre_by`, `cre_on`) VALUES
(1, 'recflag', 'cor', 1, '2011-07-22 00:00:00'),
(3, 'certype', 'cxt', 1, '2011-07-22 00:00:00'),
(4, 'damage', 'spf', 1, '2011-07-22 00:00:00'),
(5, 'condition', 'spf', 1, '2011-07-22 00:00:00'),
(6, 'work', 'spf', 1, '2011-07-22 00:00:00'),
(7, 'priority', 'spf', 1, '2011-07-22 00:00:00'),
(8, 'hrusex', 'cxt', 1, '2011-07-22 00:00:00'),
(9, 'hruage', 'cxt', 1, '2011-07-22 00:00:00'),
(10, 'hrudeposition', 'cxt', 1, '2011-07-22 00:00:00'),
(11, 'hruposition', 'cxt', 1, '2011-07-22 00:00:00'),
(12, 'temporo', 'cxt', 1, '2011-07-22 00:00:00'),
(13, 'cranio', 'cxt', 1, '2011-07-22 00:00:00'),
(14, 'atlante', 'cxt', 1, '2011-07-22 00:00:00'),
(15, 'epistrofeo', 'cxt', 1, '2011-07-22 00:00:00'),
(16, 'effectsdecomp', 'cxt', 1, '2011-07-22 00:00:00'),
(17, 'decomposition', 'cxt', 1, '2011-07-22 00:00:00'),
(18, 'cervical', 'cxt', 1, '2011-07-22 00:00:00'),
(19, 'dishandsx', 'cxt', 1, '2011-07-22 00:00:00'),
(20, 'dishanddx', 'cxt', 1, '2011-07-22 00:00:00'),
(21, 'disfootsx', 'cxt', 1, '2011-07-22 00:00:00'),
(22, 'disfootdx', 'cxt', 1, '2011-07-22 00:00:00'),
(23, 'scapulasx', 'cxt', 1, '2011-07-22 00:00:00'),
(24, 'scapuladx', 'cxt', 1, '2011-07-22 00:00:00'),
(25, 'atlanto', 'cxt', 1, '2011-07-22 00:00:00'),
(26, 'lumbar', 'cxt', 1, '2011-07-22 00:00:00'),
(27, 'lumsacrum', 'cxt', 1, '2011-07-22 00:00:00'),
(28, 'sacrumsx', 'cxt', 1, '2011-07-22 00:00:00'),
(29, 'sacrumdx', 'cxt', 1, '2011-07-22 00:00:00'),
(30, 'kneesx', 'cxt', 1, '2011-07-22 00:00:00'),
(31, 'kneedx', 'cxt', 1, '2011-07-22 00:00:00'),
(32, 'anklesx', 'cxt', 1, '2011-07-22 00:00:00'),
(33, 'ankledx', 'cxt', 1, '2011-07-22 00:00:00'),
(34, 'tarsalsx', 'cxt', 1, '2011-07-22 00:00:00'),
(35, 'tarsaldx', 'cxt', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_datetype`
--

CREATE TABLE IF NOT EXISTS `cor_lut_datetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This lookup table supplys different types of text to be link' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `cor_lut_datetype`
--

INSERT INTO `cor_lut_datetype` (`id`, `datetype`, `module`, `cre_by`, `cre_on`) VALUES
(1, 'issuedon', 'cor', 1, '2011-07-22 00:00:00'),
(2, 'compiledon', 'cor', 1, '2011-07-22 00:00:00'),
(3, 'excavatedon', 'cor', 1, '2011-07-22 00:00:00'),
(4, 'takenon', 'gph', 1, '2011-07-22 00:00:00'),
(5, 'drawnon', 'pln', 1, '2011-07-22 00:00:00'),
(6, 'interpretedon', 'cor', 1, '2011-07-22 00:00:00'),
(7, 'notedon', 'ael', 1, '2011-07-22 00:00:00'),
(8, 'registeredon', 'ael', 1, '2011-07-22 00:00:00'),
(9, 'recordedon', 'fld', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_file`
--

CREATE TABLE IF NOT EXISTS `cor_lut_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uri` text COLLATE utf8_unicode_ci,
  `filetype` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_filetype`
--

CREATE TABLE IF NOT EXISTS `cor_lut_filetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filetype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cre_by` int(11) NOT NULL,
  `cre_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cor_lut_filetype`
--

INSERT INTO `cor_lut_filetype` (`id`, `filetype`, `cre_by`, `cre_on`) VALUES
(1, 'images', 1, '2011-02-03 13:47:41');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_language`
--

CREATE TABLE IF NOT EXISTS `cor_lut_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cor_lut_language`
--

INSERT INTO `cor_lut_language` (`id`, `language`, `cre_by`, `cre_on`) VALUES
(1, 'en', 1, '2006-08-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_numbertype`
--

CREATE TABLE IF NOT EXISTS `cor_lut_numbertype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numbertype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qualifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This lookup table supplys different types of text to be link' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `cor_lut_numbertype`
--

INSERT INTO `cor_lut_numbertype` (`id`, `numbertype`, `module`, `qualifier`, `cre_by`, `cre_on`) VALUES
(5, 'total', 'cxt', 'unit', 1, '2011-07-22 00:00:00'),
(6, 'clavicle', 'cxt', 'unit', 1, '2011-07-22 00:00:00'),
(7, 'humerus', 'cxt', 'unit', 1, '2011-07-22 00:00:00'),
(8, 'radius', 'cxt', 'unit', 1, '2011-07-22 00:00:00'),
(9, 'tibia', 'cxt', 'unit', 1, '2011-07-22 00:00:00'),
(10, 'femur', 'cxt', 'unit', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_spanlabel`
--

CREATE TABLE IF NOT EXISTS `cor_lut_spanlabel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spantype` int(3) NOT NULL DEFAULT '0',
  `typemod` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `spanlabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This lookup table supplys different types of text to be link' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cor_lut_spanlabel`
--

INSERT INTO `cor_lut_spanlabel` (`id`, `spantype`, `typemod`, `spanlabel`, `cre_by`, `cre_on`) VALUES
(1, 1, 'cor', 'cut', 1, '2011-07-22 00:00:00'),
(2, 1, 'cor', 'cover', 1, '2011-07-22 00:00:00'),
(3, 1, 'cor', 'abutt', 1, '2011-07-22 00:00:00'),
(4, 1, 'cor', 'fill', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_spantype`
--

CREATE TABLE IF NOT EXISTS `cor_lut_spantype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spantype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `meta` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `evaluation` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This lookup table supplys different types of text to be link' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cor_lut_spantype`
--

INSERT INTO `cor_lut_spantype` (`id`, `spantype`, `meta`, `evaluation`, `cre_by`, `cre_on`) VALUES
(1, 'tvector', '', '', 1, '2011-07-22 00:00:00'),
(2, 'sameas', '', '', 1, '2011-07-22 00:00:00'),
(3, 'relatedto', '', '', 1, '2011-07-22 00:00:00'),
(4, 'comparanda', '', '', 1, '2011-07-22 00:00:00'),
(5, 'aelcomparanda', 'For ael comparanda', '', 1, '2011-07-22 00:00:00'),
(6, 'daterange', 'For date range for SUs', '', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lut_txttype`
--

CREATE TABLE IF NOT EXISTS `cor_lut_txttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txttype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `cre_by` int(11) NOT NULL DEFAULT '4',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This lookup table supplys different types of text to be link' AUTO_INCREMENT=127 ;

--
-- Dumping data for table `cor_lut_txttype`
--

INSERT INTO `cor_lut_txttype` (`id`, `txttype`, `module`, `cre_by`, `cre_on`) VALUES
(67, 'name', 'abk', 4, '2007-05-15 00:00:00'),
(68, 'initials', 'abk', 4, '2007-05-17 00:00:00'),
(1, 'interp', 'cor', 1, '2011-07-22 00:00:00'),
(2, 'short_desc', 'cor', 1, '2011-07-22 00:00:00'),
(4, 'compac', 'cxt', 1, '2011-07-22 00:00:00'),
(5, 'colour', 'cxt', 1, '2011-07-22 00:00:00'),
(6, 'compo', 'cxt', 1, '2011-07-22 00:00:00'),
(8, 'dims', 'cxt', 1, '2011-07-22 00:00:00'),
(17, 'orient', 'cxt', 1, '2011-07-22 00:00:00'),
(28, 'definition', 'cxt', 1, '2011-07-22 00:00:00'),
(29, 'critofdistinction', 'cxt', 1, '2011-07-22 00:00:00'),
(30, 'formation', 'cxt', 1, '2011-07-22 00:00:00'),
(31, 'geocomponents', 'cxt', 1, '2011-07-22 00:00:00'),
(32, 'orgcomponents', 'cxt', 1, '2011-07-22 00:00:00'),
(33, 'artcomponents', 'cxt', 1, '2011-07-22 00:00:00'),
(34, 'desc', 'cxt', 1, '2011-07-22 00:00:00'),
(35, 'observ', 'cxt', 1, '2011-07-22 00:00:00'),
(36, 'excavtech', 'cxt', 1, '2011-07-22 00:00:00'),
(37, 'conservation', 'cxt', 1, '2011-07-22 00:00:00'),
(38, 'static', 'cxt', 1, '2011-07-22 00:00:00'),
(39, 'tech', 'cxt', 1, '2011-07-22 00:00:00'),
(40, 'finition', 'cxt', 1, '2011-07-22 00:00:00'),
(41, 'reuse', 'cxt', 1, '2011-07-22 00:00:00'),
(42, 'miseenoeuvre', 'cxt', 1, '2011-07-22 00:00:00'),
(43, 'chronoelem', 'cxt', 1, '2011-07-22 00:00:00'),
(44, 'interp_date', 'cxt', 1, '2011-07-22 00:00:00'),
(45, 'interp_period', 'cxt', 1, '2011-07-22 00:00:00'),
(46, 'phase', 'cxt', 1, '2011-07-22 00:00:00'),
(47, 'strat_reliability', 'cxt', 1, '2011-07-22 00:00:00'),
(48, 'num_courses', 'cxt', 1, '2011-07-22 00:00:00'),
(49, 'mortar', 'cxt', 1, '2011-07-22 00:00:00'),
(50, 'bricks', 'cxt', 1, '2011-07-22 00:00:00'),
(51, 'h_mortar', 'cxt', 1, '2011-07-22 00:00:00'),
(52, 'cons_mortar', 'cxt', 1, '2011-07-22 00:00:00'),
(53, 'h_courses', 'cxt', 1, '2011-07-22 00:00:00'),
(54, 'col_ssu', 'cxt', 1, '2011-07-22 00:00:00'),
(55, 'h_5courses', 'cxt', 1, '2011-07-22 00:00:00'),
(56, 'aggregates', 'cxt', 1, '2011-07-22 00:00:00'),
(57, 'inclusions', 'cxt', 1, '2011-07-22 00:00:00'),
(58, 'totlength', 'cxt', 1, '2011-07-22 00:00:00'),
(59, 'wshould', 'cxt', 1, '2011-07-22 00:00:00'),
(60, 'lspine', 'cxt', 1, '2011-07-22 00:00:00'),
(61, 'wpelvis', 'cxt', 1, '2011-07-22 00:00:00'),
(62, 'condition', 'cxt', 1, '2011-07-22 00:00:00'),
(63, 'posn_cranium', 'cxt', 1, '2011-07-22 00:00:00'),
(64, 'posn_arm', 'cxt', 1, '2011-07-22 00:00:00'),
(65, 'posn_leg', 'cxt', 1, '2011-07-22 00:00:00'),
(66, 'pospelvis', 'cxt', 1, '2011-07-22 00:00:00'),
(69, 'sutype', 'cxt', 1, '2011-07-22 00:00:00'),
(70, 'material', 'ael', 1, '2011-07-22 00:00:00'),
(71, 'cons_int', 'ael', 1, '2011-07-22 00:00:00'),
(72, 'note', 'ael', 1, '2011-07-22 00:00:00'),
(73, 'stone', 'cxt', 1, '2011-07-22 00:00:00'),
(74, 'sex', 'cxt', 1, '2011-07-22 00:00:00'),
(75, 'age', 'cxt', 1, '2011-07-22 00:00:00'),
(76, 'denomination', 'cns', 1, '2011-07-22 00:00:00'),
(77, 'obverse', 'cns', 1, '2011-07-22 00:00:00'),
(78, 'reverse', 'cns', 1, '2011-07-22 00:00:00'),
(79, 'diameter', 'cns', 1, '2011-07-22 00:00:00'),
(80, 'weight', 'cns', 1, '2011-07-22 00:00:00'),
(81, 'metal', 'cns', 1, '2011-07-22 00:00:00'),
(82, 'date', 'cns', 1, '2011-07-22 00:00:00'),
(83, 'amount', 'ael', 1, '2011-07-22 00:00:00'),
(84, 'length', 'ael', 1, '2011-07-22 00:00:00'),
(85, 'height', 'ael', 1, '2011-07-22 00:00:00'),
(86, 'width', 'ael', 1, '2011-07-22 00:00:00'),
(87, 'depth', 'ael', 1, '2011-07-22 00:00:00'),
(88, 'slength', 'ael', 1, '2011-07-22 00:00:00'),
(89, 'thick', 'ael', 1, '2011-07-22 00:00:00'),
(90, 'storage', 'spf', 1, '2011-07-22 00:00:00'),
(91, 'gravetype', 'cxt', 1, '2011-07-22 00:00:00'),
(92, 'gravecover', 'cxt', 1, '2011-07-22 00:00:00'),
(93, 'sexdiagnostic', 'cxt', 1, '2011-07-22 00:00:00'),
(94, 'agediagnostic', 'cxt', 1, '2011-07-22 00:00:00'),
(95, 'deposnature', 'cxt', 1, '2011-07-22 00:00:00'),
(96, 'assocfinds', 'cxt', 1, '2011-07-22 00:00:00'),
(97, 'posn_observations', 'cxt', 1, '2011-07-22 00:00:00'),
(99, 'uppersx', 'cxt', 1, '2011-07-22 00:00:00'),
(100, 'handsx', 'cxt', 1, '2011-07-22 00:00:00'),
(101, 'upperdx', 'cxt', 1, '2011-07-22 00:00:00'),
(102, 'handdx', 'cxt', 1, '2011-07-22 00:00:00'),
(103, 'lowersx', 'cxt', 1, '2011-07-22 00:00:00'),
(104, 'lowerdx', 'cxt', 1, '2011-07-22 00:00:00'),
(105, 'deposprocesses', 'cxt', 1, '2011-07-22 00:00:00'),
(106, 'causecompression', 'cxt', 1, '2011-07-22 00:00:00'),
(107, 'thorax', 'cxt', 1, '2011-07-22 00:00:00'),
(108, 'sunkensternum', 'cxt', 1, '2011-07-22 00:00:00'),
(109, 'pelvis', 'cxt', 1, '2011-07-22 00:00:00'),
(110, 'kneedecomp', 'cxt', 1, '2011-07-22 00:00:00'),
(111, 'ankledecomp', 'cxt', 1, '2011-07-22 00:00:00'),
(112, 'vertclavicle', 'cxt', 1, '2011-07-22 00:00:00'),
(113, 'obscapula', 'cxt', 1, '2011-07-22 00:00:00'),
(114, 'medhumerus', 'cxt', 1, '2011-07-22 00:00:00'),
(115, 'latfemur', 'cxt', 1, '2011-07-22 00:00:00'),
(116, 'reference', 'cns', 1, '2011-07-22 00:00:00'),
(117, 'd13c', 'cxt', 1, '2011-07-22 00:00:00'),
(118, 'd15n', 'cxt', 1, '2011-07-22 00:00:00'),
(119, 'yield', 'cxt', 1, '2011-07-22 00:00:00'),
(120, 'cnratio', 'cxt', 1, '2011-07-22 00:00:00'),
(121, 'radiocarbon', 'cxt', 1, '2011-07-22 00:00:00'),
(122, 'potterynotes', 'cxt', 1, '2011-07-22 00:00:00'),
(123, 'mint', 'cns', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_applications`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_applications` (
  `application_id` int(11) DEFAULT '0',
  `application_define_name` varchar(32) DEFAULT NULL,
  UNIQUE KEY `application_id_idx` (`application_id`),
  UNIQUE KEY `define_name_i_idx` (`application_define_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cor_lvu_applications`
--

INSERT INTO `cor_lvu_applications` (`application_id`, `application_define_name`) VALUES
(1, 'ARK');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_applications_seq`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_applications_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_areas`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_areas` (
  `area_id` int(11) DEFAULT '0',
  `application_id` int(11) DEFAULT '0',
  `area_define_name` varchar(32) DEFAULT NULL,
  UNIQUE KEY `area_id_idx` (`area_id`),
  UNIQUE KEY `define_name_i_idx` (`application_id`,`area_define_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cor_lvu_areas`
--

INSERT INTO `cor_lvu_areas` (`area_id`, `application_id`, `area_define_name`) VALUES
(1, 1, 'USER_ADMIN'),
(2, 1, 'DATA_ENTRY'),
(3, 1, 'DATA_VIEW'),
(4, 1, 'MICRO_VIEW'),
(5, 1, 'MAP_VIEW'),
(6, 1, 'IMPORT'),
(7, 1, 'USER_HOME');

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_areas_seq`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_areas_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_area_admin_areas`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_area_admin_areas` (
  `area_id` int(11) DEFAULT '0',
  `perm_user_id` int(11) DEFAULT '0',
  UNIQUE KEY `id_i_idx` (`area_id`,`perm_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_grouprights`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_grouprights` (
  `group_id` int(11) DEFAULT '0',
  `right_id` int(11) DEFAULT '0',
  `right_level` int(11) DEFAULT '0',
  UNIQUE KEY `id_i_idx` (`group_id`,`right_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cor_lvu_grouprights`
--

INSERT INTO `cor_lvu_grouprights` (`group_id`, `right_id`, `right_level`) VALUES
(1, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_groups`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_groups` (
  `group_id` int(11) DEFAULT '0',
  `group_type` int(11) DEFAULT '0',
  `group_define_name` varchar(32) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `owner_user_id` int(11) DEFAULT '0',
  `owner_group_id` int(11) DEFAULT '0',
  UNIQUE KEY `group_id_idx` (`group_id`),
  UNIQUE KEY `define_name_i_idx` (`group_define_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cor_lvu_groups`
--

INSERT INTO `cor_lvu_groups` (`group_id`, `group_type`, `group_define_name`, `is_active`, `owner_user_id`, `owner_group_id`) VALUES
(1, 1, 'USERS', 1, 1, 1),
(2, 1, 'ADMINS', 1, 1, 1),
(3, 1, 'PUBLIC', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_groups_seq`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_groups_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_groupusers`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_groupusers` (
  `perm_user_id` int(11) DEFAULT '0',
  `group_id` int(11) DEFAULT '0',
  UNIQUE KEY `id_i_idx` (`perm_user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cor_lvu_groupusers`
--

INSERT INTO `cor_lvu_groupusers` (`perm_user_id`, `group_id`) VALUES
(11, 1),
(11, 2),
(13, 2),
(14, 3),
(15, 2),
(16, 2),
(17, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 2),
(28, 2),
(30, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(38, 1),
(40, 1),
(41, 2),
(42, 2),
(43, 1),
(44, 1),
(44, 2),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 3),
(109, 3),
(110, 1),
(111, 1),
(112, 1),
(112, 3),
(113, 1),
(114, 1),
(115, 1),
(115, 2),
(115, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_group_subgroups`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_group_subgroups` (
  `group_id` int(11) DEFAULT '0',
  `subgroup_id` int(11) DEFAULT '0',
  UNIQUE KEY `id_i_idx` (`group_id`,`subgroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cor_lvu_group_subgroups`
--

INSERT INTO `cor_lvu_group_subgroups` (`group_id`, `subgroup_id`) VALUES
(1, 3),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_perm_users`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_perm_users` (
  `perm_user_id` int(11) DEFAULT '0',
  `auth_user_id` varchar(32) DEFAULT NULL,
  `auth_container_name` varchar(32) DEFAULT NULL,
  `perm_type` int(11) DEFAULT '0',
  UNIQUE KEY `perm_user_id_idx` (`perm_user_id`),
  UNIQUE KEY `auth_id_i_idx` (`auth_user_id`,`auth_container_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cor_lvu_perm_users`
--

INSERT INTO `cor_lvu_perm_users` (`perm_user_id`, `auth_user_id`, `auth_container_name`, `perm_type`) VALUES
(1, '29214857b12575501c5c731353c7217e', 'DB', 0),
(2, '02ec099f2d602cc4968c5267970be132', 'DB', 0),
(11, '2', 'ARK_USERS', 1),
(13, '18', 'ARK_USERS', 1),
(14, '19', 'ARK_USERS', 1),
(15, '21', 'ARK_USERS', 1),
(16, '22', 'ARK_USERS', 1),
(17, '23', 'ARK_USERS', 1),
(18, '24', 'ARK_USERS', 1),
(19, '25', 'ARK_USERS', 1),
(20, '26', 'ARK_USERS', 1),
(21, '27', 'ARK_USERS', 1),
(22, '28', 'ARK_USERS', 1),
(23, '29', 'ARK_USERS', 1),
(24, '30', 'ARK_USERS', 1),
(25, '31', 'ARK_USERS', 1),
(26, '32', 'ARK_USERS', 1),
(27, '33', 'ARK_USERS', 1),
(28, '34', 'ARK_USERS', 1),
(29, '35', 'ARK_USERS', 1),
(30, '36', 'ARK_USERS', 1),
(31, '37', 'ARK_USERS', 1),
(32, '38', 'ARK_USERS', 1),
(33, '39', 'ARK_USERS', 1),
(34, '40', 'ARK_USERS', 1),
(35, '41', 'ARK_USERS', 1),
(36, '42', 'ARK_USERS', 1),
(37, '43', 'ARK_USERS', 1),
(38, '44', 'ARK_USERS', 1),
(39, '45', 'ARK_USERS', 1),
(40, '46', 'ARK_USERS', 1),
(41, '4', 'ARK_USERS', 1),
(42, '1', 'ARK_USERS', 1),
(43, '47', 'ARK_USERS', 1),
(44, '48', 'ARK_USERS', 1),
(45, '49', 'ARK_USERS', 1),
(46, '50', 'ARK_USERS', 1),
(47, '51', 'ARK_USERS', 1),
(48, '52', 'ARK_USERS', 1),
(49, '53', 'ARK_USERS', 1),
(50, '54', 'ARK_USERS', 1),
(51, '55', 'ARK_USERS', 1),
(52, '56', 'ARK_USERS', 1),
(53, '57', 'ARK_USERS', 1),
(54, '58', 'ARK_USERS', 1),
(55, '59', 'ARK_USERS', 1),
(56, '60', 'ARK_USERS', 1),
(57, '61', 'ARK_USERS', 1),
(58, '62', 'ARK_USERS', 1),
(59, '63', 'ARK_USERS', 1),
(60, '64', 'ARK_USERS', 1),
(61, '65', 'ARK_USERS', 1),
(62, '66', 'ARK_USERS', 1),
(63, '67', 'ARK_USERS', 1),
(64, '68', 'ARK_USERS', 1),
(65, '69', 'ARK_USERS', 1),
(66, '70', 'ARK_USERS', 1),
(67, '71', 'ARK_USERS', 1),
(68, '72', 'ARK_USERS', 1),
(69, '73', 'ARK_USERS', 1),
(70, '74', 'ARK_USERS', 1),
(71, '75', 'ARK_USERS', 1),
(72, '76', 'ARK_USERS', 1),
(73, '77', 'ARK_USERS', 1),
(74, '78', 'ARK_USERS', 1),
(75, '79', 'ARK_USERS', 1),
(76, '80', 'ARK_USERS', 1),
(77, '81', 'ARK_USERS', 1),
(78, '82', 'ARK_USERS', 1),
(79, '83', 'ARK_USERS', 1),
(80, '84', 'ARK_USERS', 1),
(81, '85', 'ARK_USERS', 1),
(82, '86', 'ARK_USERS', 1),
(83, '87', 'ARK_USERS', 1),
(84, '88', 'ARK_USERS', 1),
(85, '89', 'ARK_USERS', 1),
(86, '90', 'ARK_USERS', 1),
(87, '91', 'ARK_USERS', 1),
(88, '92', 'ARK_USERS', 1),
(89, '93', 'ARK_USERS', 1),
(90, '94', 'ARK_USERS', 1),
(91, '95', 'ARK_USERS', 1),
(92, '96', 'ARK_USERS', 1),
(93, '97', 'ARK_USERS', 1),
(94, '98', 'ARK_USERS', 1),
(95, '99', 'ARK_USERS', 1),
(96, '100', 'ARK_USERS', 1),
(97, '101', 'ARK_USERS', 1),
(98, '102', 'ARK_USERS', 1),
(99, '103', 'ARK_USERS', 1),
(100, '104', 'ARK_USERS', 1),
(101, '105', 'ARK_USERS', 1),
(102, '106', 'ARK_USERS', 1),
(103, '107', 'ARK_USERS', 1),
(104, '108', 'ARK_USERS', 1),
(105, '109', 'ARK_USERS', 1),
(106, '110', 'ARK_USERS', 1),
(107, '111', 'ARK_USERS', 1),
(108, '112', 'ARK_USERS', 1),
(109, '113', 'ARK_USERS', 1),
(110, '114', 'ARK_USERS', 1),
(111, '115', 'ARK_USERS', 1),
(112, '116', 'ARK_USERS', 1),
(113, '117', 'ARK_USERS', 1),
(114, '118', 'ARK_USERS', 1),
(115, '119', 'ARK_USERS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_perm_users_seq`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_perm_users_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=116 ;

--
-- Dumping data for table `cor_lvu_perm_users_seq`
--

INSERT INTO `cor_lvu_perm_users_seq` (`sequence`) VALUES
(115);

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_rights`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_rights` (
  `right_id` int(11) DEFAULT '0',
  `area_id` int(11) DEFAULT '0',
  `right_define_name` varchar(32) DEFAULT NULL,
  `has_implied` tinyint(1) DEFAULT '1',
  UNIQUE KEY `right_id_idx` (`right_id`),
  UNIQUE KEY `define_name_i_idx` (`area_id`,`right_define_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cor_lvu_rights`
--

INSERT INTO `cor_lvu_rights` (`right_id`, `area_id`, `right_define_name`, `has_implied`) VALUES
(1, 1, 'VIEW', 0),
(2, 1, 'EDIT', 0),
(11, 6, 'IMPORT_VIEW', 0),
(12, 6, 'IMPORT_EDIT', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_rights_seq`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_rights_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_right_implied`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_right_implied` (
  `right_id` int(11) DEFAULT '0',
  `implied_right_id` int(11) DEFAULT '0',
  UNIQUE KEY `id_i_idx` (`right_id`,`implied_right_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_translations`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_translations` (
  `translation_id` int(11) DEFAULT '0',
  `section_id` int(11) DEFAULT '0',
  `section_type` int(11) DEFAULT '0',
  `language_id` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` varchar(32) DEFAULT NULL,
  UNIQUE KEY `translation_id_idx` (`translation_id`),
  UNIQUE KEY `translation_i_idx` (`section_id`,`section_type`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_translations_seq`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_translations_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_userrights`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_userrights` (
  `perm_user_id` int(11) DEFAULT '0',
  `right_id` int(11) DEFAULT '0',
  `right_level` int(11) DEFAULT '0',
  UNIQUE KEY `id_i_idx` (`perm_user_id`,`right_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cor_lvu_userrights`
--

INSERT INTO `cor_lvu_userrights` (`perm_user_id`, `right_id`, `right_level`) VALUES
(1, 1, 1),
(1, 2, 1),
(2, 2, 1),
(1, 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_users`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_users` (
  `auth_user_id` varchar(32) DEFAULT NULL,
  `handle` varchar(32) DEFAULT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `owner_user_id` int(11) DEFAULT '0',
  `owner_group_id` int(11) DEFAULT '0',
  `lastlogin` datetime DEFAULT '1970-01-01 00:00:00',
  `is_active` tinyint(1) DEFAULT '1',
  UNIQUE KEY `auth_user_id_idx` (`auth_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cor_lvu_users`
--

INSERT INTO `cor_lvu_users` (`auth_user_id`, `handle`, `passwd`, `owner_user_id`, `owner_group_id`, `lastlogin`, `is_active`) VALUES
('29214857b12575501c5c731353c7217e', 'johndoe', '6579e96f76baa00787a28653876c6127', 2003, 0, '2007-04-16 16:50:01', 1),
('02ec099f2d602cc4968c5267970be132', 'guest', '084e0343a0486ff05530df6c705c8bb4', 2003, 0, '2007-04-12 13:30:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cor_lvu_users_seq`
--

CREATE TABLE IF NOT EXISTS `cor_lvu_users_seq` (
  `sequence` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`sequence`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `cor_lvu_users_seq`
--

INSERT INTO `cor_lvu_users_seq` (`sequence`) VALUES
(42);

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_action`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actiontype` int(11) NOT NULL DEFAULT '0',
  `itemkey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `itemvalue` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `actor_itemkey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `actor_itemvalue` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table allows extensible text values to be added to cont' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_alias`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_alias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `aliastype` int(11) NOT NULL DEFAULT '1',
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemkey` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'cor_lut_txttype',
  `itemvalue` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '4',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `alias` (`alias`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1117 ;

--
-- Dumping data for table `cor_tbl_alias`
--

INSERT INTO `cor_tbl_alias` (`id`, `alias`, `aliastype`, `language`, `itemkey`, `itemvalue`, `cre_by`, `cre_on`) VALUES
(141, 'Name', 1, 'en', 'cor_lut_txttype', '67', 4, '2007-05-15 00:00:00'),
(142, 'Initials', 1, 'en', 'cor_lut_txttype', '68', 4, '2007-05-17 00:00:00'),
(782, 'Address Book Type', 1, 'en', 'cor_tbl_col', '1', 1, '0000-00-00 00:00:00'),
(781, 'People', 1, 'en', 'abk_lut_abktype', '1', 1, '0000-00-00 00:00:00'),
(780, 'Address Book', 1, 'en', 'cor_tbl_module', '1', 1, '0000-00-00 00:00:00'),
(779, 'Public', 1, 'en', 'cor_tbl_sgrp', '3', 1, '0000-00-00 00:00:00'),
(778, 'Administrators', 1, 'en', 'cor_tbl_sgrp', '2', 1, '0000-00-00 00:00:00'),
(777, 'Users', 1, 'en', 'cor_tbl_sgrp', '1', 1, '0000-00-00 00:00:00'),
(783, 'English', 1, 'en', 'cor_lut_language', '1', 1, '0000-00-00 00:00:00'),
(784, 'Issued to', 1, 'en', 'cor_lut_actiontype', '1', 1, '2011-07-22 00:00:00'),
(785, 'Compiled by', 1, 'en', 'cor_lut_actiontype', '2', 1, '2011-07-22 00:00:00'),
(786, 'Checked by', 1, 'en', 'cor_lut_actiontype', '3', 1, '2011-07-22 00:00:00'),
(787, 'Director', 1, 'en', 'cor_lut_actiontype', '4', 1, '2011-07-22 00:00:00'),
(788, 'Supervisor', 1, 'en', 'cor_lut_actiontype', '5', 1, '2011-07-22 00:00:00'),
(789, 'Taken By', 1, 'en', 'cor_lut_actiontype', '8', 1, '2011-07-22 00:00:00'),
(790, 'Drawn By', 1, 'en', 'cor_lut_actiontype', '6', 1, '2011-07-22 00:00:00'),
(791, 'Interpreted by', 1, 'en', 'cor_lut_actiontype', '9', 1, '2011-07-22 00:00:00'),
(792, 'Data Entry Complete', 1, 'en', 'cor_lut_attribute', '1', 1, '2011-07-22 00:00:00'),
(793, 'Record Checked', 1, 'en', 'cor_lut_attribute', '2', 1, '2011-07-22 00:00:00'),
(794, 'Not Excavated', 1, 'en', 'cor_lut_attribute', '3', 1, '2011-07-22 00:00:00'),
(795, 'Partially Excavated', 1, 'en', 'cor_lut_attribute', '4', 1, '2011-07-22 00:00:00'),
(796, 'Excavated', 1, 'en', 'cor_lut_attribute', '5', 1, '2011-07-22 00:00:00'),
(797, 'Roman- Italian Red Slip', 1, 'en', 'cor_lut_attribute', '10', 1, '2011-07-22 00:00:00'),
(798, 'Roman- Thin Walled', 1, 'en', 'cor_lut_attribute', '9', 1, '2011-07-22 00:00:00'),
(799, 'Roman- Black Glaze', 1, 'en', 'cor_lut_attribute', '8', 1, '2011-07-22 00:00:00'),
(800, 'Roman- South Gaul Red Slip', 1, 'en', 'cor_lut_attribute', '11', 1, '2011-07-22 00:00:00'),
(801, 'Roman- African Red Slip', 1, 'en', 'cor_lut_attribute', '12', 1, '2011-07-22 00:00:00'),
(802, 'Roman- Coarse Wares', 1, 'en', 'cor_lut_attribute', '13', 1, '2011-07-22 00:00:00'),
(803, 'Roman- African Cooking Wares', 1, 'en', 'cor_lut_attribute', '14', 1, '2011-07-22 00:00:00'),
(804, 'Roman- Cooking Wares', 1, 'en', 'cor_lut_attribute', '15', 1, '2011-07-22 00:00:00'),
(805, 'Roman- Amphorae', 1, 'en', 'cor_lut_attribute', '16', 1, '2011-07-22 00:00:00'),
(806, 'Roman- Lamps', 1, 'en', 'cor_lut_attribute', '17', 1, '2011-07-22 00:00:00'),
(807, 'Roman- Other', 1, 'en', 'cor_lut_attribute', '18', 1, '2011-07-22 00:00:00'),
(808, 'Medieval- Red Painted', 1, 'en', 'cor_lut_attribute', '19', 1, '2011-07-22 00:00:00'),
(809, 'Medieval- Forum Ware', 1, 'en', 'cor_lut_attribute', '20', 1, '2011-07-22 00:00:00'),
(810, 'Medieval- Sparse Glazed', 1, 'en', 'cor_lut_attribute', '21', 1, '2011-07-22 00:00:00'),
(811, 'Medieval- Lead-based Glazed', 1, 'en', 'cor_lut_attribute', '22', 1, '2011-07-22 00:00:00'),
(812, 'Medieval- Tin-based Glazed', 1, 'en', 'cor_lut_attribute', '23', 1, '2011-07-22 00:00:00'),
(813, 'Medieval- Sgraffito Tirennico', 1, 'en', 'cor_lut_attribute', '24', 1, '2011-07-22 00:00:00'),
(814, 'Medieval- Cooking Wares', 1, 'en', 'cor_lut_attribute', '25', 1, '2011-07-22 00:00:00'),
(815, 'Medieval- Testi', 1, 'en', 'cor_lut_attribute', '26', 1, '2011-07-22 00:00:00'),
(816, 'Medieval- Lamps', 1, 'en', 'cor_lut_attribute', '27', 1, '2011-07-22 00:00:00'),
(817, 'Medieval- Other', 1, 'en', 'cor_lut_attribute', '28', 1, '2011-07-22 00:00:00'),
(818, 'Modern Ceramics', 1, 'en', 'cor_lut_attribute', '29', 1, '2011-07-22 00:00:00'),
(819, 'Medieval- Coarse Ware', 1, 'en', 'cor_lut_attribute', '42', 1, '2011-07-22 00:00:00'),
(820, 'Record Status', 1, 'en', 'cor_lut_attributetype', '1', 1, '2011-07-22 00:00:00'),
(821, 'Issued on', 1, 'en', 'cor_lut_datetype', '1', 1, '2011-07-22 00:00:00'),
(822, 'Compiled on', 1, 'en', 'cor_lut_datetype', '2', 1, '2011-07-22 00:00:00'),
(823, 'Date of Excavation', 1, 'en', 'cor_lut_datetype', '3', 1, '2011-07-22 00:00:00'),
(824, 'Taken On', 1, 'en', 'cor_lut_datetype', '4', 1, '2011-07-22 00:00:00'),
(825, 'Drawn On', 1, 'en', 'cor_lut_datetype', '5', 1, '2011-07-22 00:00:00'),
(826, 'Interpreted on', 1, 'en', 'cor_lut_datetype', '6', 1, '2011-07-22 00:00:00'),
(827, 'Total', 1, 'en', 'cor_lut_numbertype', '5', 1, '2011-07-22 00:00:00'),
(828, 'Cuts', 1, 'en', 'cor_lut_spanlabel', '1', 1, '2011-07-22 00:00:00'),
(829, 'Covers', 1, 'en', 'cor_lut_spanlabel', '2', 1, '2011-07-22 00:00:00'),
(830, 'Abuts', 1, 'en', 'cor_lut_spanlabel', '3', 1, '2011-07-22 00:00:00'),
(831, 'Fills', 1, 'en', 'cor_lut_spanlabel', '4', 1, '2011-07-22 00:00:00'),
(832, 'Cut By', 2, 'en', 'cor_lut_spanlabel', '1', 1, '2011-07-22 00:00:00'),
(833, 'Is Covered By', 2, 'en', 'cor_lut_spanlabel', '2', 1, '2011-07-22 00:00:00'),
(834, 'Is Abutted By', 2, 'en', 'cor_lut_spanlabel', '3', 1, '2011-07-22 00:00:00'),
(835, 'Filled By', 2, 'en', 'cor_lut_spanlabel', '4', 1, '2011-07-22 00:00:00'),
(836, 'Temporal Vector', 1, 'en', 'cor_lut_spantype', '1', 1, '2011-07-22 00:00:00'),
(837, 'Equal To', 1, 'en', 'cor_lut_spantype', '2', 1, '2011-07-22 00:00:00'),
(838, 'Bonds With', 1, 'en', 'cor_lut_spantype', '3', 1, '2011-07-22 00:00:00'),
(839, 'Interpretation', 1, 'en', 'cor_lut_txttype', '1', 1, '2011-07-22 00:00:00'),
(840, 'Short Description', 1, 'en', 'cor_lut_txttype', '2', 1, '2011-07-22 00:00:00'),
(841, 'Compaction', 1, 'en', 'cor_lut_txttype', '4', 1, '2011-07-22 00:00:00'),
(842, 'Colour', 1, 'en', 'cor_lut_txttype', '5', 1, '2011-07-22 00:00:00'),
(843, 'Composition', 1, 'en', 'cor_lut_txttype', '6', 1, '2011-07-22 00:00:00'),
(844, 'Dimensions', 1, 'en', 'cor_lut_txttype', '8', 1, '2011-07-22 00:00:00'),
(845, 'Orientation', 1, 'en', 'cor_lut_txttype', '17', 1, '2011-07-22 00:00:00'),
(846, 'Definition', 1, 'en', 'cor_lut_txttype', '28', 1, '2011-07-22 00:00:00'),
(847, 'Criteria of Distinction', 1, 'en', 'cor_lut_txttype', '29', 1, '2011-07-22 00:00:00'),
(848, 'Formation', 1, 'en', 'cor_lut_txttype', '30', 1, '2011-07-22 00:00:00'),
(849, 'Geological Components', 1, 'en', 'cor_lut_txttype', '31', 1, '2011-07-22 00:00:00'),
(850, 'Organic Components', 1, 'en', 'cor_lut_txttype', '32', 1, '2011-07-22 00:00:00'),
(851, 'Artificial Components', 1, 'en', 'cor_lut_txttype', '33', 1, '2011-07-22 00:00:00'),
(852, 'Description', 1, 'en', 'cor_lut_txttype', '34', 1, '2011-07-22 00:00:00'),
(853, 'Observations', 1, 'en', 'cor_lut_txttype', '35', 1, '2011-07-22 00:00:00'),
(854, 'Excavation Technique', 1, 'en', 'cor_lut_txttype', '36', 1, '2011-07-22 00:00:00'),
(855, 'State of Conservation', 1, 'en', 'cor_lut_txttype', '37', 1, '2011-07-22 00:00:00'),
(856, 'Static Function', 1, 'en', 'cor_lut_txttype', '38', 1, '2011-07-22 00:00:00'),
(857, 'Technique', 1, 'en', 'cor_lut_txttype', '39', 1, '2011-07-22 00:00:00'),
(858, 'Finish', 1, 'en', 'cor_lut_txttype', '40', 1, '2011-07-22 00:00:00'),
(859, 'Reuse', 1, 'en', 'cor_lut_txttype', '41', 1, '2011-07-22 00:00:00'),
(860, 'Mise en Oeuvre', 1, 'en', 'cor_lut_txttype', '42', 1, '2011-07-22 00:00:00'),
(861, 'Chronological Elements', 1, 'en', 'cor_lut_txttype', '43', 1, '2011-07-22 00:00:00'),
(862, 'Date', 1, 'en', 'cor_lut_txttype', '44', 1, '2011-07-22 00:00:00'),
(863, 'Period', 1, 'en', 'cor_lut_txttype', '45', 1, '2011-07-22 00:00:00'),
(864, 'Phase', 1, 'en', 'cor_lut_txttype', '46', 1, '2011-07-22 00:00:00'),
(865, 'Stratigraphic Reliability', 1, 'en', 'cor_lut_txttype', '47', 1, '2011-07-22 00:00:00'),
(866, 'Number of Courses', 1, 'en', 'cor_lut_txttype', '48', 1, '2011-07-22 00:00:00'),
(867, 'Type of Mortar', 1, 'en', 'cor_lut_txttype', '49', 1, '2011-07-22 00:00:00'),
(868, 'Description of Brick/Tile', 1, 'en', 'cor_lut_txttype', '50', 1, '2011-07-22 00:00:00'),
(869, 'Height of Mortar Beds (cm)', 1, 'en', 'cor_lut_txttype', '51', 1, '2011-07-22 00:00:00'),
(870, 'Consistency and Colour of Mortar', 1, 'en', 'cor_lut_txttype', '52', 1, '2011-07-22 00:00:00'),
(871, 'Height of Courses (cm)', 1, 'en', 'cor_lut_txttype', '53', 1, '2011-07-22 00:00:00'),
(872, 'Colour of SSU', 1, 'en', 'cor_lut_txttype', '54', 1, '2011-07-22 00:00:00'),
(873, 'Height of 5 Courses (cm)', 1, 'en', 'cor_lut_txttype', '55', 1, '2011-07-22 00:00:00'),
(874, 'Aggregates', 1, 'en', 'cor_lut_txttype', '56', 1, '2011-07-22 00:00:00'),
(875, 'Inclusions', 1, 'en', 'cor_lut_txttype', '57', 1, '2011-07-22 00:00:00'),
(876, 'Length of skeleton', 1, 'en', 'cor_lut_txttype', '58', 1, '2011-07-22 00:00:00'),
(877, 'Width of Shoulders', 1, 'en', 'cor_lut_txttype', '59', 1, '2011-07-22 00:00:00'),
(878, 'Length of Spine', 1, 'en', 'cor_lut_txttype', '60', 1, '2011-07-22 00:00:00'),
(879, 'Width of Pelvis', 1, 'en', 'cor_lut_txttype', '61', 1, '2011-07-22 00:00:00'),
(880, 'Condition of Bones', 1, 'en', 'cor_lut_txttype', '62', 1, '2011-07-22 00:00:00'),
(881, 'Position of Cranium', 1, 'en', 'cor_lut_txttype', '63', 1, '2011-07-22 00:00:00'),
(882, 'Position of Arms', 1, 'en', 'cor_lut_txttype', '64', 1, '2011-07-22 00:00:00'),
(883, 'Position of Legs', 1, 'en', 'cor_lut_txttype', '65', 1, '2011-07-22 00:00:00'),
(884, 'Position of Pelvis', 1, 'en', 'cor_lut_txttype', '66', 1, '2011-07-22 00:00:00'),
(885, 'Context', 1, 'en', 'cor_tbl_module', '3', 1, '2011-07-22 00:00:00'),
(886, 'Site Photo', 1, 'en', 'cor_tbl_module', '4', 1, '2011-07-22 00:00:00'),
(887, 'Plan', 1, 'en', 'cor_tbl_module', '5', 1, '2011-07-22 00:00:00'),
(888, 'Geophoto', 1, 'en', 'cor_tbl_module', '6', 1, '2011-07-22 00:00:00'),
(889, 'HRU', 1, 'en', 'cxt_lut_cxttype', '3', 1, '2011-07-22 00:00:00'),
(890, 'SU', 1, 'en', 'cxt_lut_cxttype', '1', 1, '2011-07-22 00:00:00'),
(891, 'SSU', 1, 'en', 'cxt_lut_cxttype', '2', 1, '2011-07-22 00:00:00'),
(892, 'Context Type', 1, 'en', 'cor_tbl_col', '2', 1, '2011-07-22 00:00:00'),
(893, 'SU Type', 1, 'en', 'cor_lut_txttype', '69', 1, '2011-07-22 00:00:00'),
(894, 'Arch. Element', 1, 'en', 'cor_tbl_module', '7', 1, '2011-07-22 00:00:00'),
(895, 'Registered By', 1, 'en', 'cor_lut_actiontype', '12', 1, '2011-07-22 00:00:00'),
(896, 'Registered On', 1, 'en', 'cor_lut_datetype', '8', 1, '2011-07-22 00:00:00'),
(897, 'Restorer', 1, 'en', 'cor_lut_actiontype', '11', 1, '2011-07-22 00:00:00'),
(898, 'Noted By', 1, 'en', 'cor_lut_actiontype', '10', 1, '2011-07-22 00:00:00'),
(899, 'Material', 1, 'en', 'cor_lut_txttype', '70', 1, '2011-07-22 00:00:00'),
(900, 'Conservation Interventions', 1, 'en', 'cor_lut_txttype', '71', 1, '2011-07-22 00:00:00'),
(901, 'Notes', 1, 'en', 'cor_lut_txttype', '72', 1, '2011-07-22 00:00:00'),
(902, 'Object', 1, 'en', 'cor_tbl_module', '8', 1, '2011-07-22 00:00:00'),
(903, 'Noted On', 1, 'en', 'cor_lut_datetype', '7', 1, '2011-07-22 00:00:00'),
(904, 'Description of Stone', 1, 'en', 'cor_lut_txttype', '73', 1, '2011-07-22 00:00:00'),
(905, 'Sex', 1, 'en', 'cor_lut_txttype', '74', 1, '2011-07-22 00:00:00'),
(906, 'Age', 1, 'en', 'cor_lut_txttype', '75', 1, '2011-07-22 00:00:00'),
(907, 'Medieval- Amphorae', 1, 'en', 'cor_lut_attribute', '44', 1, '2011-07-22 00:00:00'),
(908, 'Roman- Dolium', 1, 'en', 'cor_lut_attribute', '45', 1, '2011-07-22 00:00:00'),
(909, 'Denomination', 1, 'en', 'cor_lut_txttype', '76', 1, '2011-07-22 00:00:00'),
(910, 'Obverse', 1, 'en', 'cor_lut_txttype', '77', 1, '2011-07-22 00:00:00'),
(911, 'Reverse', 1, 'en', 'cor_lut_txttype', '78', 1, '2011-07-22 00:00:00'),
(912, 'Diameter', 1, 'en', 'cor_lut_txttype', '79', 1, '2011-07-22 00:00:00'),
(913, 'Weight', 1, 'en', 'cor_lut_txttype', '80', 1, '2011-07-22 00:00:00'),
(914, 'Metal', 1, 'en', 'cor_lut_txttype', '81', 1, '2011-07-22 00:00:00'),
(915, 'Coin', 1, 'en', 'cor_tbl_module', '9', 1, '2011-07-22 00:00:00'),
(916, 'Date', 1, 'en', 'cor_lut_txttype', '82', 1, '2011-07-22 00:00:00'),
(917, 'English', 1, 'en', 'cor_lut_language', '1', 1, '2011-07-22 00:00:00'),
(918, '', 1, 'en', 'cor_lut_spantype', '4', 1, '2011-07-22 00:00:00'),
(919, 'Amount', 1, 'en', 'cor_lut_txttype', '83', 1, '2011-07-22 00:00:00'),
(920, 'Length', 1, 'en', 'cor_lut_txttype', '84', 1, '2011-07-22 00:00:00'),
(921, 'Height', 1, 'en', 'cor_lut_txttype', '85', 1, '2011-07-22 00:00:00'),
(922, 'Width', 1, 'en', 'cor_lut_txttype', '86', 1, '2011-07-22 00:00:00'),
(923, 'Depth', 1, 'en', 'cor_lut_txttype', '87', 1, '2011-07-22 00:00:00'),
(924, 'Side Length (Triangle)', 1, 'en', 'cor_lut_txttype', '88', 1, '2011-07-22 00:00:00'),
(925, 'Thickness', 1, 'en', 'cor_lut_txttype', '89', 1, '2011-07-22 00:00:00'),
(926, 'Storage Requirement', 1, 'en', 'cor_lut_txttype', '90', 1, '2011-07-22 00:00:00'),
(927, 'Major structural damage', 1, 'en', 'cor_lut_attribute', '46', 1, '2011-07-22 00:00:00'),
(928, 'Minor structural damage', 1, 'en', 'cor_lut_attribute', '47', 1, '2011-07-22 00:00:00'),
(929, 'Surface damage', 1, 'en', 'cor_lut_attribute', '48', 1, '2011-07-22 00:00:00'),
(930, 'Chemical detioration', 1, 'en', 'cor_lut_attribute', '49', 1, '2011-07-22 00:00:00'),
(931, 'Biological infestation', 1, 'en', 'cor_lut_attribute', '50', 1, '2011-07-22 00:00:00'),
(932, 'Old/sub-standard repair', 1, 'en', 'cor_lut_attribute', '51', 1, '2011-07-22 00:00:00'),
(933, 'Accretions', 1, 'en', 'cor_lut_attribute', '52', 1, '2011-07-22 00:00:00'),
(934, 'Damage', 1, 'en', 'cor_lut_attributetype', '4', 1, '2011-07-22 00:00:00'),
(935, 'Good', 1, 'en', 'cor_lut_attribute', '53', 1, '2011-07-22 00:00:00'),
(936, 'Fair', 1, 'en', 'cor_lut_attribute', '54', 1, '2011-07-22 00:00:00'),
(937, 'Poor', 1, 'en', 'cor_lut_attribute', '55', 1, '2011-07-22 00:00:00'),
(938, 'Unacceptable', 1, 'en', 'cor_lut_attribute', '56', 1, '2011-07-22 00:00:00'),
(939, 'Overall Condition Assessment', 1, 'en', 'cor_lut_attributetype', '5', 1, '2011-07-22 00:00:00'),
(940, 'None', 1, 'en', 'cor_lut_attribute', '57', 1, '2011-07-22 00:00:00'),
(941, 'Clean', 1, 'en', 'cor_lut_attribute', '58', 1, '2011-07-22 00:00:00'),
(942, 'Mount', 1, 'en', 'cor_lut_attribute', '59', 1, '2011-07-22 00:00:00'),
(943, 'Treat/Conserve', 1, 'en', 'cor_lut_attribute', '60', 1, '2011-07-22 00:00:00'),
(944, 'Further Conservation Work Required', 1, 'en', 'cor_lut_attributetype', '6', 1, '2011-07-22 00:00:00'),
(945, 'Priority', 1, 'en', 'cor_lut_attributetype', '7', 1, '2011-07-22 00:00:00'),
(946, 'Ceramic Type', 1, 'en', 'cor_lut_attributetype', '3', 1, '2011-07-22 00:00:00'),
(947, '1', 1, 'en', 'cor_lut_attribute', '61', 1, '2011-07-22 00:00:00'),
(948, '2', 1, 'en', 'cor_lut_attribute', '62', 1, '2011-07-22 00:00:00'),
(949, '3', 1, 'en', 'cor_lut_attribute', '63', 1, '2011-07-22 00:00:00'),
(950, '4', 1, 'en', 'cor_lut_attribute', '64', 1, '2011-07-22 00:00:00'),
(951, '5', 1, 'en', 'cor_lut_attribute', '65', 1, '2011-07-22 00:00:00'),
(952, ' ', 1, 'en', 'cor_lut_spantype', '5', 1, '2011-07-22 00:00:00'),
(953, 'Type of Grave', 1, 'en', 'cor_lut_txttype', '91', 1, '2011-07-22 00:00:00'),
(954, 'Type of Grave Cover', 1, 'en', 'cor_lut_txttype', '92', 1, '2011-07-22 00:00:00'),
(955, 'Sex- Diagnostic Criteria', 1, 'en', 'cor_lut_txttype', '93', 1, '2011-07-22 00:00:00'),
(956, 'Age- Diagnostic Criteria', 1, 'en', 'cor_lut_txttype', '94', 1, '2011-07-22 00:00:00'),
(957, 'Nature of disturbance', 1, 'en', 'cor_lut_txttype', '95', 1, '2011-07-22 00:00:00'),
(958, 'Sex', 1, 'en', 'cor_lut_attributetype', '8', 1, '2011-07-22 00:00:00'),
(959, 'Age', 1, 'en', 'cor_lut_attributetype', '9', 1, '2011-07-22 00:00:00'),
(960, 'Male', 1, 'en', 'cor_lut_attribute', '66', 1, '2011-07-22 00:00:00'),
(961, 'Female', 1, 'en', 'cor_lut_attribute', '67', 1, '2011-07-22 00:00:00'),
(962, 'Indeterminate', 1, 'en', 'cor_lut_attribute', '68', 1, '2011-07-22 00:00:00'),
(963, 'Undeterminable', 1, 'en', 'cor_lut_attribute', '69', 1, '2011-07-22 00:00:00'),
(964, 'Infant (0-2 years)', 1, 'en', 'cor_lut_attribute', '70', 1, '2011-07-22 00:00:00'),
(965, 'Child (3-10 years)', 1, 'en', 'cor_lut_attribute', '71', 1, '2011-07-22 00:00:00'),
(966, 'Juvenile (10-18 years)', 1, 'en', 'cor_lut_attribute', '72', 1, '2011-07-22 00:00:00'),
(967, 'Adult', 1, 'en', 'cor_lut_attribute', '73', 1, '2011-07-22 00:00:00'),
(968, 'Deposition Type', 1, 'en', 'cor_lut_attributetype', '10', 1, '2011-07-22 00:00:00'),
(969, 'Primary', 1, 'en', 'cor_lut_attribute', '74', 1, '2011-07-22 00:00:00'),
(970, 'Secondary', 1, 'en', 'cor_lut_attribute', '75', 1, '2011-07-22 00:00:00'),
(971, 'Disturbed Primary', 1, 'en', 'cor_lut_attribute', '76', 1, '2011-07-22 00:00:00'),
(972, 'Reduction', 1, 'en', 'cor_lut_attribute', '77', 1, '2011-07-22 00:00:00'),
(973, 'Associated Finds', 1, 'en', 'cor_lut_txttype', '96', 1, '2011-07-22 00:00:00'),
(974, 'Observations', 1, 'en', 'cor_lut_txttype', '97', 1, '2011-07-22 00:00:00'),
(975, 'Supine', 1, 'en', 'cor_lut_attribute', '78', 1, '2011-07-22 00:00:00'),
(976, 'Prone', 1, 'en', 'cor_lut_attribute', '79', 1, '2011-07-22 00:00:00'),
(977, 'Lateral sn', 1, 'en', 'cor_lut_attribute', '80', 1, '2011-07-22 00:00:00'),
(978, 'Lateral dx', 1, 'en', 'cor_lut_attribute', '81', 1, '2011-07-22 00:00:00'),
(979, 'Other', 1, 'en', 'cor_lut_attribute', '82', 1, '2011-07-22 00:00:00'),
(980, 'connected', 1, 'en', 'cor_lut_attribute', '83', 1, '2011-07-22 00:00:00'),
(981, 'disconnected', 1, 'en', 'cor_lut_attribute', '84', 1, '2011-07-22 00:00:00'),
(982, 'absent', 1, 'en', 'cor_lut_attribute', '85', 1, '2011-07-22 00:00:00'),
(983, 'connected', 1, 'en', 'cor_lut_attribute', '86', 1, '2011-07-22 00:00:00'),
(984, 'disconnected', 1, 'en', 'cor_lut_attribute', '87', 1, '2011-07-22 00:00:00'),
(985, 'absent', 1, 'en', 'cor_lut_attribute', '88', 1, '2011-07-22 00:00:00'),
(986, 'connected', 1, 'en', 'cor_lut_attribute', '89', 1, '2011-07-22 00:00:00'),
(987, 'disconnected', 1, 'en', 'cor_lut_attribute', '90', 1, '2011-07-22 00:00:00'),
(988, 'absent', 1, 'en', 'cor_lut_attribute', '91', 1, '2011-07-22 00:00:00'),
(989, 'connected', 1, 'en', 'cor_lut_attribute', '92', 1, '2011-07-22 00:00:00'),
(990, 'disconnected', 1, 'en', 'cor_lut_attribute', '93', 1, '2011-07-22 00:00:00'),
(991, 'absent', 1, 'en', 'cor_lut_attribute', '94', 1, '2011-07-22 00:00:00'),
(992, 'Ligaments: Temporo-Mandibolare', 1, 'en', 'cor_lut_attributetype', '12', 1, '2011-07-22 00:00:00'),
(993, 'Ligaments: Cranio-Atlante', 1, 'en', 'cor_lut_attributetype', '13', 1, '2011-07-22 00:00:00'),
(994, 'Ligaments: Atlante-Epistrofeo', 1, 'en', 'cor_lut_attributetype', '14', 1, '2011-07-22 00:00:00'),
(995, 'Ligaments: Epistrofeo-C3', 1, 'en', 'cor_lut_attributetype', '15', 1, '2011-07-22 00:00:00'),
(996, 'Position of skeleton', 1, 'en', 'cor_lut_attributetype', '11', 1, '2011-07-22 00:00:00'),
(997, 'Limbs: Upper (sx)', 1, 'en', 'cor_lut_txttype', '99', 1, '2011-07-22 00:00:00'),
(998, 'Limbs: Hand (sx)', 1, 'en', 'cor_lut_txttype', '100', 1, '2011-07-22 00:00:00'),
(999, 'Limbs: Upper (dx)', 1, 'en', 'cor_lut_txttype', '101', 1, '2011-07-22 00:00:00'),
(1000, 'Limbs: Hand (dx)', 1, 'en', 'cor_lut_txttype', '102', 1, '2011-07-22 00:00:00'),
(1001, 'Limbs: Lower (sx)', 1, 'en', 'cor_lut_txttype', '103', 1, '2011-07-22 00:00:00'),
(1002, 'Limbs: Lower (dx)', 1, 'en', 'cor_lut_txttype', '104', 1, '2011-07-22 00:00:00'),
(1003, 'Effects of decomposition or compression', 1, 'en', 'cor_lut_attributetype', '16', 1, '2011-07-22 00:00:00'),
(1004, 'Decomposition', 1, 'en', 'cor_lut_attributetype', '17', 1, '2011-07-22 00:00:00'),
(1005, 'Opening of the thorax', 1, 'en', 'cor_lut_attribute', '95', 1, '2011-07-22 00:00:00'),
(1006, 'Sunken sternum', 1, 'en', 'cor_lut_attribute', '96', 1, '2011-07-22 00:00:00'),
(1007, 'Pelvis', 1, 'en', 'cor_lut_attribute', '97', 1, '2011-07-22 00:00:00'),
(1008, 'Knee-caps', 1, 'en', 'cor_lut_attribute', '98', 1, '2011-07-22 00:00:00'),
(1009, 'Anklebones', 1, 'en', 'cor_lut_attribute', '99', 1, '2011-07-22 00:00:00'),
(1010, 'Verticalization of clavicle', 1, 'en', 'cor_lut_attribute', '100', 1, '2011-07-22 00:00:00'),
(1011, 'Oblique scapula', 1, 'en', 'cor_lut_attribute', '101', 1, '2011-07-22 00:00:00'),
(1012, 'Medial rotation of humerus', 1, 'en', 'cor_lut_attribute', '102', 1, '2011-07-22 00:00:00'),
(1013, 'Lateral rotation of femur', 1, 'en', 'cor_lut_attribute', '103', 1, '2011-07-22 00:00:00'),
(1014, 'In empty space', 1, 'en', 'cor_lut_attribute', '104', 1, '2011-07-22 00:00:00'),
(1015, 'In full space', 1, 'en', 'cor_lut_attribute', '105', 1, '2011-07-22 00:00:00'),
(1016, 'Other', 1, 'en', 'cor_lut_attribute', '106', 1, '2011-07-22 00:00:00'),
(1017, 'Bones significantly disturbed by depositional processes', 1, 'en', 'cor_lut_txttype', '105', 1, '2011-07-22 00:00:00'),
(1018, 'Cause of compression', 1, 'en', 'cor_lut_txttype', '106', 1, '2011-07-22 00:00:00'),
(1019, 'Clavicle (cm)', 1, 'en', 'cor_lut_numbertype', '6', 1, '2011-07-22 00:00:00'),
(1020, 'Humerus (cm)', 1, 'en', 'cor_lut_numbertype', '7', 1, '2011-07-22 00:00:00'),
(1021, 'Radius (cm)', 1, 'en', 'cor_lut_numbertype', '8', 1, '2011-07-22 00:00:00'),
(1022, 'Tibia (cm)', 1, 'en', 'cor_lut_numbertype', '9', 1, '2011-07-22 00:00:00'),
(1023, 'Femur (cm)', 1, 'en', 'cor_lut_numbertype', '10', 1, '2011-07-22 00:00:00'),
(1024, 'connected', 1, 'en', 'cor_lut_attribute', '122', 1, '2011-07-22 00:00:00'),
(1025, 'connected', 1, 'en', 'cor_lut_attribute', '107', 1, '2011-07-22 00:00:00'),
(1026, 'disconnected', 1, 'en', 'cor_lut_attribute', '108', 1, '2011-07-22 00:00:00'),
(1027, 'absent', 1, 'en', 'cor_lut_attribute', '109', 1, '2011-07-22 00:00:00'),
(1028, 'connected', 1, 'en', 'cor_lut_attribute', '110', 1, '2011-07-22 00:00:00'),
(1029, 'disconnected', 1, 'en', 'cor_lut_attribute', '111', 1, '2011-07-22 00:00:00'),
(1030, 'absent', 1, 'en', 'cor_lut_attribute', '112', 1, '2011-07-22 00:00:00'),
(1031, 'connected', 1, 'en', 'cor_lut_attribute', '113', 1, '2011-07-22 00:00:00'),
(1032, 'disconnected', 1, 'en', 'cor_lut_attribute', '114', 1, '2011-07-22 00:00:00'),
(1033, 'absent', 1, 'en', 'cor_lut_attribute', '115', 1, '2011-07-22 00:00:00'),
(1034, 'connected', 1, 'en', 'cor_lut_attribute', '116', 1, '2011-07-22 00:00:00'),
(1035, 'disconnected', 1, 'en', 'cor_lut_attribute', '117', 1, '2011-07-22 00:00:00'),
(1036, 'absent', 1, 'en', 'cor_lut_attribute', '118', 1, '2011-07-22 00:00:00'),
(1037, 'connected', 1, 'en', 'cor_lut_attribute', '119', 1, '2011-07-22 00:00:00'),
(1038, 'disconnected', 1, 'en', 'cor_lut_attribute', '120', 1, '2011-07-22 00:00:00'),
(1039, 'absent', 1, 'en', 'cor_lut_attribute', '121', 1, '2011-07-22 00:00:00'),
(1040, 'disconnected', 1, 'en', 'cor_lut_attribute', '123', 1, '2011-07-22 00:00:00'),
(1041, 'absent', 1, 'en', 'cor_lut_attribute', '124', 1, '2011-07-22 00:00:00'),
(1042, 'connected', 1, 'en', 'cor_lut_attribute', '125', 1, '2011-07-22 00:00:00'),
(1043, 'disconnected', 1, 'en', 'cor_lut_attribute', '126', 1, '2011-07-22 00:00:00'),
(1044, 'absent', 1, 'en', 'cor_lut_attribute', '127', 1, '2011-07-22 00:00:00'),
(1045, 'connected', 1, 'en', 'cor_lut_attribute', '128', 1, '2011-07-22 00:00:00'),
(1046, 'disconnected', 1, 'en', 'cor_lut_attribute', '129', 1, '2011-07-22 00:00:00'),
(1047, 'absent', 1, 'en', 'cor_lut_attribute', '130', 1, '2011-07-22 00:00:00'),
(1048, 'connected', 1, 'en', 'cor_lut_attribute', '131', 1, '2011-07-22 00:00:00'),
(1049, 'disconnected', 1, 'en', 'cor_lut_attribute', '132', 1, '2011-07-22 00:00:00'),
(1050, 'absent', 1, 'en', 'cor_lut_attribute', '133', 1, '2011-07-22 00:00:00'),
(1051, 'connected', 1, 'en', 'cor_lut_attribute', '134', 1, '2011-07-22 00:00:00'),
(1052, 'disconnected', 1, 'en', 'cor_lut_attribute', '135', 1, '2011-07-22 00:00:00'),
(1053, 'absent', 1, 'en', 'cor_lut_attribute', '136', 1, '2011-07-22 00:00:00'),
(1054, 'connected', 1, 'en', 'cor_lut_attribute', '137', 1, '2011-07-22 00:00:00'),
(1055, 'disconnected', 1, 'en', 'cor_lut_attribute', '138', 1, '2011-07-22 00:00:00'),
(1056, 'absent', 1, 'en', 'cor_lut_attribute', '139', 1, '2011-07-22 00:00:00'),
(1057, 'connected', 1, 'en', 'cor_lut_attribute', '140', 1, '2011-07-22 00:00:00'),
(1058, 'disconnected', 1, 'en', 'cor_lut_attribute', '141', 1, '2011-07-22 00:00:00'),
(1059, 'absent', 1, 'en', 'cor_lut_attribute', '142', 1, '2011-07-22 00:00:00'),
(1060, 'connected', 1, 'en', 'cor_lut_attribute', '143', 1, '2011-07-22 00:00:00'),
(1061, 'disconnected', 1, 'en', 'cor_lut_attribute', '144', 1, '2011-07-22 00:00:00'),
(1062, 'absent', 1, 'en', 'cor_lut_attribute', '145', 1, '2011-07-22 00:00:00'),
(1063, 'connected', 1, 'en', 'cor_lut_attribute', '146', 1, '2011-07-22 00:00:00'),
(1064, 'disconnected', 1, 'en', 'cor_lut_attribute', '147', 1, '2011-07-22 00:00:00'),
(1065, 'absent', 1, 'en', 'cor_lut_attribute', '148', 1, '2011-07-22 00:00:00'),
(1066, 'connected', 1, 'en', 'cor_lut_attribute', '149', 1, '2011-07-22 00:00:00'),
(1067, 'disconnected', 1, 'en', 'cor_lut_attribute', '150', 1, '2011-07-22 00:00:00'),
(1068, 'absent', 1, 'en', 'cor_lut_attribute', '151', 1, '2011-07-22 00:00:00'),
(1069, 'connected', 1, 'en', 'cor_lut_attribute', '152', 1, '2011-07-22 00:00:00'),
(1070, 'disconnected', 1, 'en', 'cor_lut_attribute', '153', 1, '2011-07-22 00:00:00'),
(1071, 'absent', 1, 'en', 'cor_lut_attribute', '154', 1, '2011-07-22 00:00:00'),
(1072, 'connected', 1, 'en', 'cor_lut_attribute', '155', 1, '2011-07-22 00:00:00'),
(1073, 'disconnected', 1, 'en', 'cor_lut_attribute', '156', 1, '2011-07-22 00:00:00'),
(1074, 'absent', 1, 'en', 'cor_lut_attribute', '157', 1, '2011-07-22 00:00:00'),
(1075, 'connected', 1, 'en', 'cor_lut_attribute', '158', 1, '2011-07-22 00:00:00'),
(1076, 'disconnected', 1, 'en', 'cor_lut_attribute', '159', 1, '2011-07-22 00:00:00'),
(1077, 'absent', 1, 'en', 'cor_lut_attribute', '160', 1, '2011-07-22 00:00:00'),
(1078, 'Cervical column', 1, 'en', 'cor_lut_attributetype', '18', 1, '2011-07-22 00:00:00'),
(1079, 'Distal part of the hand (sx)', 1, 'en', 'cor_lut_attributetype', '19', 1, '2011-07-22 00:00:00'),
(1080, 'Distal part of the hand (dx)', 1, 'en', 'cor_lut_attributetype', '20', 1, '2011-07-22 00:00:00'),
(1081, 'Distal part of the foot (sx)', 1, 'en', 'cor_lut_attributetype', '21', 1, '2011-07-22 00:00:00'),
(1082, 'Distal part of the foot (dx)', 1, 'en', 'cor_lut_attributetype', '22', 1, '2011-07-22 00:00:00'),
(1083, 'Scapula-humerus joint (sx)', 1, 'en', 'cor_lut_attributetype', '23', 1, '2011-07-22 00:00:00'),
(1084, 'Scapula-humerus joint (dx)', 1, 'en', 'cor_lut_attributetype', '24', 1, '2011-07-22 00:00:00'),
(1085, 'Atlanto-occipital', 1, 'en', 'cor_lut_attributetype', '25', 1, '2011-07-22 00:00:00'),
(1086, 'Lumbar column', 1, 'en', 'cor_lut_attributetype', '26', 1, '2011-07-22 00:00:00'),
(1087, 'Lumbar-sacrum', 1, 'en', 'cor_lut_attributetype', '27', 1, '2011-07-22 00:00:00'),
(1088, 'Sacrum-iliac (sx)', 1, 'en', 'cor_lut_attributetype', '28', 1, '2011-07-22 00:00:00'),
(1089, 'Sacrum-iliac (dx)', 1, 'en', 'cor_lut_attributetype', '29', 1, '2011-07-22 00:00:00'),
(1090, 'Knee-cap (sx)', 1, 'en', 'cor_lut_attributetype', '30', 1, '2011-07-22 00:00:00'),
(1091, 'Knee-cap (dx)', 1, 'en', 'cor_lut_attributetype', '31', 1, '2011-07-22 00:00:00'),
(1092, 'Anklebones (sx)', 1, 'en', 'cor_lut_attributetype', '32', 1, '2011-07-22 00:00:00'),
(1093, 'Anklebones (dx)', 1, 'en', 'cor_lut_attributetype', '33', 1, '2011-07-22 00:00:00'),
(1094, 'Tarsals (sx)', 1, 'en', 'cor_lut_attributetype', '34', 1, '2011-07-22 00:00:00'),
(1095, 'Tarsals (dx)', 1, 'en', 'cor_lut_attributetype', '35', 1, '2011-07-22 00:00:00'),
(1096, 'Opening of the thorax', 1, 'en', 'cor_lut_txttype', '107', 1, '2011-07-22 00:00:00'),
(1097, 'Sunken sternum', 1, 'en', 'cor_lut_txttype', '108', 1, '2011-07-22 00:00:00'),
(1098, 'Pelvis', 1, 'en', 'cor_lut_txttype', '109', 1, '2011-07-22 00:00:00'),
(1099, 'Knee-caps', 1, 'en', 'cor_lut_txttype', '110', 1, '2011-07-22 00:00:00'),
(1100, 'Anklebones', 1, 'en', 'cor_lut_txttype', '111', 1, '2011-07-22 00:00:00'),
(1101, 'Verticalization of clavicle', 1, 'en', 'cor_lut_txttype', '112', 1, '2011-07-22 00:00:00'),
(1102, 'Oblique scapula', 1, 'en', 'cor_lut_txttype', '113', 1, '2011-07-22 00:00:00'),
(1103, 'Medial rotation of humerus', 1, 'en', 'cor_lut_txttype', '114', 1, '2011-07-22 00:00:00'),
(1104, 'Lateral rotation of femur', 1, 'en', 'cor_lut_txttype', '115', 1, '2011-07-22 00:00:00'),
(1105, 'Reference', 1, 'en', 'cor_lut_txttype', '116', 1, '2011-07-22 00:00:00'),
(1106, 'Group', 1, 'en', 'cor_tbl_module', '12', 1, '2011-07-22 00:00:00'),
(1107, 'Pottery Date Range', 1, 'en', 'cor_lut_spantype', '6', 1, '2011-07-22 00:00:00'),
(1108, 'Roman- Glaze', 1, 'en', 'cor_lut_attribute', '161', 1, '2011-07-22 00:00:00'),
(1109, 'From', 4, 'en', 'cor_lut_spantype', '6', 1, '2011-07-22 00:00:00'),
(1110, 'To', 3, 'en', 'cor_lut_spantype', '6', 1, '2011-07-22 00:00:00'),
(1111, 'Spot-dating Notes', 1, 'en', 'cor_lut_txttype', '122', 1, '2011-07-22 00:00:00'),
(1112, 'Mint', 1, 'en', 'cor_lut_txttype', '123', 1, '2011-07-22 00:00:00'),
(1113, 'Site', 1, 'en', 'cor_tbl_module', '13', 1, '2011-07-22 00:00:00'),
(1114, 'Recorded by', 1, 'en', 'cor_lut_actiontype', '14', 1, '2011-07-22 00:00:00'),
(1115, 'Recorded on', 1, 'en', 'cor_lut_datetype', '9', 1, '2011-07-22 00:00:00'),
(1116, 'Images', 1, 'en', 'cor_lut_filetype', '1', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_attribute`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute` int(11) NOT NULL DEFAULT '0',
  `itemkey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `itemvalue` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `boolean` tinyint(4) NOT NULL DEFAULT '1',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table allows extensible text values to be added to cont' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_cmap`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_cmap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nname` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourcedb` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stecd` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `import_cre_by` int(11) NOT NULL DEFAULT '0',
  `import_cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_cmap_data`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_cmap_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmap` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourcedata` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourcelocation` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mapto_tbl` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mapto_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_cmap_structure`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_cmap_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmap` int(11) NOT NULL DEFAULT '0',
  `tbl` varchar(255) NOT NULL DEFAULT '',
  `col` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(50) NOT NULL DEFAULT '',
  `uid_col` varchar(255) NOT NULL DEFAULT '',
  `itemkey` varchar(50) NOT NULL DEFAULT '',
  `raw_itemval_tbl` varchar(255) NOT NULL DEFAULT 'FALSE',
  `raw_itemval_col` varchar(255) NOT NULL DEFAULT '',
  `raw_itemval_join_col` varchar(255) NOT NULL DEFAULT 'FALSE',
  `raw_stecd_col` varchar(255) NOT NULL,
  `raw_stecd_join_col` varchar(255) NOT NULL,
  `raw_stecd_tbl` varchar(255) NOT NULL,
  `tbl_itemval_join_col` varchar(255) NOT NULL DEFAULT 'FALSE',
  `tbl_stecd_join_col` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `true` varchar(255) NOT NULL DEFAULT '',
  `false` varchar(255) NOT NULL DEFAULT '',
  `notset` varchar(255) NOT NULL DEFAULT '',
  `lut_tbl` varchar(255) NOT NULL DEFAULT '',
  `lut_idcol` varchar(255) NOT NULL DEFAULT '',
  `lut_valcol` varchar(255) NOT NULL DEFAULT '',
  `end_source_col` varchar(255) NOT NULL DEFAULT '',
  `xmi_itemkey` varchar(10) NOT NULL DEFAULT '',
  `xmi_itemval_col` varchar(100) NOT NULL DEFAULT '',
  `ark_mod` char(3) NOT NULL DEFAULT '',
  `log` char(3) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_col`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_col` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbname` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '1',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cor_tbl_col`
--

INSERT INTO `cor_tbl_col` (`id`, `dbname`, `description`, `cre_by`, `cre_on`) VALUES
(1, 'abktype', 'The column holding the context type', 1, '0000-00-00 00:00:00'),
(2, 'cxttype', 'The column holding the context type', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_date`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetype` int(11) NOT NULL DEFAULT '0',
  `itemkey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `itemvalue` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table allows extensible text values to be added to cont' AUTO_INCREMENT=17219 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_file`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemkey` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemvalue` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `txt` (`file`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Allows frags of class file to be linked' AUTO_INCREMENT=4970 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_filter`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_filter` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `filter` text CHARACTER SET utf8 NOT NULL,
  `type` varchar(6) CHARACTER SET utf8 NOT NULL,
  `nname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sgrp` int(3) NOT NULL,
  `cre_by` varchar(3) NOT NULL,
  `cre_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cor_tbl_filter`
--

INSERT INTO `cor_tbl_filter` (`id`, `filter`, `type`, `nname`, `sgrp`, `cre_by`, `cre_on`) VALUES
(1, 'a:2:{s:10:"sort_order";b:0;i:0;a:4:{s:5:"ftype";s:3:"key";s:12:"set_operator";s:9:"intersect";s:3:"key";s:1:"1";s:5:"ktype";s:3:"all";}}', 'set', 'All Address Book', 0, '1', '2011-07-16 20:23:37'),
(3, 'a:9:{s:10:"sort_order";a:2:{s:9:"sort_type";s:3:"asc";s:10:"sort_field";s:18:"conf_field_itemkey";}i:0;a:4:{s:5:"ftype";s:3:"key";s:12:"set_operator";s:9:"intersect";s:3:"key";s:1:"1";s:5:"ktype";s:3:"all";}s:5:"nname";s:16:"All Address Book";s:6:"cre_by";s:1:"1";s:9:"feed_mode";s:3:"rss";s:5:"limit";s:1:"5";s:9:"feedtitle";s:27:"Latest Address Book Entries";s:8:"feeddesc";s:48:"The 5 latest entries to the address book module.";s:13:"feeddisp_mode";s:5:"table";}', 'feed', 'Latest Address Book Entries', 0, '1', '2011-07-17 10:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_log`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `refid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `vars` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='A table to log different types of event' AUTO_INCREMENT=19235 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_markup`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_markup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nname` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `markup` text COLLATE utf8_unicode_ci NOT NULL,
  `mod_short` text COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '4',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=517 ;

--
-- Dumping data for table `cor_tbl_markup`
--

INSERT INTO `cor_tbl_markup` (`id`, `nname`, `markup`, `mod_short`, `language`, `description`, `cre_by`, `cre_on`) VALUES
(378, 'aliasadminoptions', 'Alias Administration', 'cor', 'en', 'For the left panel header of the alias admin home.', 4, '2011-06-09 15:32:17'),
(2, 'save', 'save', 'cor', 'en', 'The word save which may be used for buttons', 2, '2006-05-08 17:30:12'),
(3, 'savedesc', 'Save description', 'cor', 'en', 'A lable for description forms', 2, '2006-05-08 17:32:12'),
(4, 'add', 'add', 'cor', 'en', 'The word add which may be used for buttons', 2, '2006-05-08 17:30:12'),
(5, 'err_nocxtno', 'The value "context number" was not set', 'cor', 'en', 'Error message to use when no cxt_no value was set', 2, '2006-05-08 17:30:12'),
(6, 'err_notxt', 'The value "txt" was not set', 'cor', 'en', 'Error message to use when no txt value was set', 2, '2006-05-08 17:30:12'),
(7, 'err_nocxttype', 'The value "context type" was not set', 'cor', 'en', 'Error message to use when no context type value was set', 2, '2006-05-08 17:30:12'),
(8, 'err_noorigby', 'The value "record author" was not set', 'cor', 'en', 'Error message to use when no author has been set', 2, '2006-05-08 17:30:12'),
(9, 'err_dategen', 'There was an error getting the date', 'cor', 'en', 'Error message to use with dates', 2, '2006-05-08 05:30:12'),
(10, 'err_notxtid', 'The text id was not set', 'cor', 'en', 'Error message useful when handling attributes of a text', 2, '2006-05-08 05:30:12'),
(11, 'err_tvectbeg', 'There is an error with the beginning of the matrix relationship you tried to enter (the later value). This must be set, it may only be numbers and it must be a valid context in this site code.', 'cor', 'en', 'Error message for tvector beginning', 2, '2006-05-11 00:00:00'),
(12, 'err_tvectend', 'There is an error with the end of the matrix relationship you tried to enter (the earlier value). This must be set, it may only be numbers and it must be a valid context in this site code.', 'cor', 'en', 'Error message for tvector beginning', 2, '2006-05-11 00:00:00'),
(13, 'err_tvectbeginvalid', 'There is an error with the beginning of the matrix relationship you tried to enter (the later value). This must be a valid context number in this site code. Check that context has been issued.', 'cor', 'en', 'Error message for tvector beginning', 2, '2006-05-11 00:00:00'),
(14, 'err_tvectendinvalid', 'There is an error with the end of the matrix relationship you tried to enter (the earlier value). This must be a valid context number in this site code. Check that context has been issued.', 'cor', 'en', 'Error message for tvector beginning', 2, '2006-05-11 00:00:00'),
(15, 'err_tvectlab', 'There is an error with the label you are trying to add to this matrix relationship. This must be a number and it must be entered in the label list.', 'cor', 'en', 'Error message for tvector beginning', 2, '2006-05-11 00:00:00'),
(16, 'err_spnlablinvalid', 'The relationship type you selected is not possible to the contexts you selected.', 'cor', 'en', 'Testing', 2, '2006-05-12 00:00:00'),
(17, 'finds', 'Finds', 'cor', 'en', 'A label to display in forms for finds', 2, '2006-05-15 00:00:00'),
(18, 'err_nofindtype', 'Either no find type was selected or the findtype selected is not valid.', 'cor', 'en', 'An error message for handling finds', 2, '2006-05-15 00:00:00'),
(384, 'totalpages', 'Total Pages: ', 'cor', 'en', 'For the total number of results pages', 4, '2011-06-09 15:41:58'),
(20, 'err_nospanid', 'No span id number has been specified.', 'cor', 'en', 'An error message for handling tvectors', 2, '2006-05-15 00:00:00'),
(21, 'frm_confirm_lutadd', 'To confirm the addition of ''$mkv_item'' to the lookup table click "$mkv_submit_label" or to use an existing value click "$mkv_reset".<br />\r\n<form action="$mkv_action">\r\n$mkv_hidden\r\n<input type="submit" value="$mkv_submit_label" class="clean_but" />\r\n</form>\r\n<form action="$mkv_action">\r\n$mkv_reset_hidden\r\n<input type="submit" value="$mkv_reset" class="clean_but" />\r\n</form>', 'cor', 'en', 'A confirmation form for adding to luts', 2, '2006-05-15 00:00:00'),
(22, 'lut_duplicate', 'The following list of possible duplicate entries exist in this lookup table. Please be careful not to add duplicate entries.\r\n\r\n$mkv_dup_str\r\n\r\n', 'cor', 'en', 'Warning message about duplicates with a list of possible duplicates', 2, '2006-05-16 00:00:00'),
(23, 'reset', 'reset', 'cor', 'en', 'The word reset which may be used for buttons', 2, '2006-05-08 17:30:12'),
(24, 'go', 'go', 'cor', 'en', 'The word go which may be used for buttons', 2, '2006-05-08 17:30:12'),
(26, 'desc', 'Description', 'cor', 'en', 'A label to express the idea of text based description', 2, '2006-05-15 00:00:00'),
(27, 'err_noactorid', 'No actor (team member) id has been specified.', 'cor', 'en', 'An error message for handling actors', 2, '2006-05-15 00:00:00'),
(28, 'err_noactiontypeid', 'No action has been specified.', 'cor', 'en', 'An error message for actions', 2, '2006-05-15 00:00:00'),
(29, 'err_noactionid', 'No specific action id has been specified.', 'cor', 'en', 'An error message for actions', 2, '2006-05-15 00:00:00'),
(30, 'err_nodateid', 'No specific date type has been specified.', 'cor', 'en', 'An error message for date types', 2, '2006-05-15 00:00:00'),
(31, 'forms', 'Data Entry', 'cor', 'en', 'A label for a list of forms', 2, '0000-00-00 00:00:00'),
(32, 'notdigitised', 'This item has no spatial data attached at the moment ', 'cor', 'en', 'A message to show if theres is no spatial data', 1, '2006-05-23 14:25:00'),
(33, 'datatoolbox', 'Data Toolbox', 'cor', 'en', 'A header for the data toolbox area', 2, '2006-05-23 00:00:00'),
(34, 'err_noflagid', 'No status flag id is set', 'cor', 'en', 'Error for handling record status flags', 2, '2006-05-23 00:00:00'),
(374, 'help', 'Help', 'cor', 'en', 'For the help navigation.', 4, '2011-06-09 15:30:52'),
(36, 'err_nouname', 'No username was set.', 'cor', 'en', 'An error for handling User Admin errors', 2, '2006-05-30 00:00:00'),
(37, 'err_dupuname', 'That username already exists.', 'cor', 'en', 'An error for handling User Admin errors', 2, '2006-05-30 00:00:00'),
(38, 'err_nofname', 'No first name was set.', 'cor', 'en', 'An error for handling User Admin errors', 2, '2006-05-30 00:00:00'),
(39, 'err_nolname', 'No last name was set.', 'cor', 'en', 'An error for handling User Admin errors', 2, '2006-05-30 00:00:00'),
(40, 'err_noinit', 'No ''intials'' were set.', 'cor', 'en', 'An error for handling User Admin errors', 2, '2006-05-30 00:00:00'),
(41, 'err_dupinit', 'Those initials already exist', 'cor', 'en', 'An error for handling User Admin errors', 2, '2006-05-30 00:00:00'),
(42, 'err_noemail', 'No email was set.', 'cor', 'en', 'An error for handling User Admin errors', 2, '2006-05-30 00:00:00'),
(43, 'create_user', 'Create User', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-30 00:00:00'),
(44, 'addusr_instructions', 'All fields must be filled in. Please check to make sure that you are not accidentally creating a duplicate user.\r\n\r\n\r\nThe new user account will be created disabled. In order to activate the account, the account must be edited by a system administrator.', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-30 00:00:00'),
(45, 'adusrl_instructions', 'All fields must be filled in.\r\n\r\n\r\nThe new user account will be created enabled.', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-30 00:00:00'),
(46, 'addusr_sucs', 'The new user was successfuly created. To activate the account please contact a system administrator.', 'cor', 'en', 'A message for handling User Admin', 1, '0000-00-00 00:00:00'),
(47, 'data_view_forms', 'Search', 'cor', 'en', 'Data viewing forms', 1, '2006-05-31 00:00:00'),
(48, 'addusr_newid', 'The new user account has been successfuly created. Make a note of the new username. The new username is:', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(49, 'err_nopw', 'No password was set.', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(50, 'err_nocpw', 'No confirmation password was set', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(51, 'err_pwmatch', 'The password and confirmation password do NOT match.', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(52, 'change_pw', 'Change Password', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(53, 'edt_sgrps', 'Edit ''S-Groups''', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(54, 'edt_user', 'Edit User', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-30 00:00:00'),
(55, 'uname', 'Username', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(56, 'fname', 'First name', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(57, 'lname', 'Last name', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(58, 'init', 'Initials', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(59, 'email', 'eMail', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(60, 'pw', 'Password', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(61, 'cpw', 'Confirm password', 'cor', 'en', 'A message for handling User Admin', 2, '2006-05-31 00:00:00'),
(62, 'err_nosgrp', 'No security group has been set.', 'cor', 'en', 'A message for handling User Admin', 2, '2006-06-01 00:00:00'),
(63, 'err_nouid', 'No user id has been set.', 'cor', 'en', 'A message for handling User Admin', 2, '2006-06-01 00:00:00'),
(64, 'err_duprel', 'That is a duplicate relationship, it can''t be added.', 'cor', 'en', 'A generic error message', 2, '2006-06-01 00:00:00'),
(65, 'enable', 'Enable / Disable user account', 'cor', 'en', 'A message for handling User Admin', 2, '2006-06-01 00:00:00'),
(66, 'accena', 'Account enabled', 'cor', 'en', 'A message for handling User Admin', 2, '2006-06-01 00:00:00'),
(67, 'accdis', 'Account disabled', 'cor', 'en', 'A message for handling User Admin', 2, '2006-06-01 00:00:00'),
(70, 'detfrm', 'Form', 'cor', 'en', 'Alias of the detailed data entry form', 2, '2006-06-03 00:00:00'),
(71, 'regist', 'Register', 'cor', 'en', 'Alias of the register entry from', 2, '2006-06-03 00:00:00'),
(72, 'view_regist', 'Register Viewer', 'cor', 'en', 'Alias of the register viewer', 2, '2006-06-03 00:00:00'),
(73, 'nextrec', 'Next Record', 'cor', 'en', 'A lable for the next record', 2, '2006-06-03 00:00:00'),
(75, 'search', 'Search', 'cor', 'en', 'Search', 4, '2007-01-15 00:00:00'),
(76, 'expcsv', 'Export as CSV', 'cor', 'en', 'Exports the results as comma separated values', 4, '2007-01-15 00:00:00'),
(77, 'expxml', 'Export as XML', 'cor', 'en', 'To export data as XML', 4, '2007-01-15 00:00:00'),
(78, 'vwtbl', 'View as Table', 'cor', 'en', 'To view results as a table', 4, '2007-01-15 00:00:00'),
(79, 'vwcht', 'View as Chat', 'cor', 'en', 'Used to give options for results view', 4, '2007-01-15 00:00:00'),
(80, 'vwmap', 'View as Map', 'cor', 'en', 'Used to give options for results view', 4, '2007-01-15 00:00:00'),
(85, 'options', 'Options', 'cor', 'en', 'Label for the options column of a table', 1, '0000-00-00 00:00:00'),
(84, 'viewmsg', 'View Record', 'cor', 'en', 'Message for linking out to the record view option', 2, '2006-12-08 00:00:00'),
(83, 'score', 'Relevancy score', 'cor', 'en', 'MArkup for hte relevancy score', 2, '2006-12-08 00:00:00'),
(82, 'norec', 'Your search did not return any results', 'cor', 'en', 'A message to display when the result set is empty', 2, '2006-12-08 00:00:00'),
(81, 'nofilters', 'No search filters are set, please add a new search filter', 'cor', 'en', 'A message to say that no filters are set', 2, '2006-12-08 00:00:00'),
(86, 'notinauthitems', 'Not in Auth Items', 'cor', 'en', 'Displayed when field is not in auth items.', 4, '2007-05-17 00:00:00'),
(87, 'space', '&nbsp;', 'cor', 'en', 'A non-breaking space when no markup is required', 4, '2007-05-17 00:00:00'),
(90, 'home', 'Home', 'cor', 'en', 'Markup for the home page of various sections', 4, '2007-05-17 00:00:00'),
(95, 'spat_data', 'Spatial Data', 'cor', 'en', 'Markup identifying the spatial data panel in the micro view', 4, '2007-05-21 00:00:00'),
(96, 'no_interps', 'No Interpretations', 'cor', 'en', 'Markup for indicating there are no interpretations available', 4, '2007-06-06 00:00:00'),
(100, 'note', 'Notes', 'cor', 'en', 'Notes for objects and architectural elements', 4, '2007-06-15 00:00:00'),
(102, 'noxmi', 'No Linked Records', 'cor', 'en', 'Markup for items missing an xmi link', 4, '2008-05-27 00:00:00'),
(107, 'micro_view_forms', 'Record View', 'cor', 'en', 'Heading of micro viewing forms', 4, '2008-06-03 00:00:00'),
(377, 'edtalias', 'Edit Alias', 'cor', 'en', 'For the alias admin options', 4, '2011-06-09 15:31:59'),
(112, 'save', 'Salva', 'cor', 'it', 'The word save which may be used for buttons', 4, '0000-00-00 00:00:00'),
(113, 'savedesc', 'Salva Descrizione', 'cor', 'it', 'A lable for description forms', 4, '0000-00-00 00:00:00'),
(114, 'add', 'Aggungi', 'cor', 'it', 'The word add which may be used for buttons', 4, '0000-00-00 00:00:00'),
(115, 'err_nocxtno', 'Il valore ''context number'' non e'' stato dato', 'cor', 'it', 'Error message to use when no cxt_no value was set', 4, '0000-00-00 00:00:00'),
(116, 'err_notxt', 'Il valore ''txt'' non e'' stato dato', 'cor', 'it', 'Error message to use when no txt value was set', 4, '0000-00-00 00:00:00'),
(117, 'err_nocxttype', 'Il valore ''context type'' non e'' stato dato', 'cor', 'it', 'Error message to use when no context type value was set', 4, '0000-00-00 00:00:00'),
(118, 'err_noorigby', 'Il valore ''record author'' non e'' stato dato', 'cor', 'it', 'Error message to use when no author has been set', 4, '0000-00-00 00:00:00'),
(119, 'err_dategen', 'C''e'' stato un errore nell''acquisire il dato', 'cor', 'it', 'Error message to use with dates', 4, '0000-00-00 00:00:00'),
(120, 'err_notxtid', 'Il text id non e'' stato dato', 'cor', 'it', 'Error message useful when handling attributes of a text', 4, '0000-00-00 00:00:00'),
(121, 'err_tvectbeg', 'C''e'' stato un errore con l''inizio della relazione del matrix che hai cercato di inserire (il valore successivo).  Questo deve essere inserito.  Esso puo'' essere soltanto numerico e deve essere un context valido nel codice del sito.', 'cor', 'it', 'Error message for tvector beginning', 4, '0000-00-00 00:00:00'),
(122, 'err_tvectend', 'C''e'' stato un errore con la fine della relazione del matrix che hai cercato di inserire (il valore precedente).  Questo deve essere inserito.  Esso puo'' essere soltanto numerico e deve essere un context valido nel codice del sito.', 'cor', 'it', 'Error message for tvector beginning', 4, '0000-00-00 00:00:00'),
(123, 'err_tvectbeginvalid', 'C''e'' stato un errore con l''inizio della relazione del matrix che hai cercato di inserire (il valore successivo).  Questo deve essere un context valido nel codice del sito.  Controlla che questo context e stato assegnato.', 'cor', 'it', 'Error message for tvector beginning', 4, '0000-00-00 00:00:00'),
(124, 'err_tvectendinvalid', 'C''e'' stato un errore con la fine della relazione del matrix che hai cercato di inserire (il valore precedente).  Questo deve essere un context valido nel codice del sito.  Controlla che questo context e stato assegnato.', 'cor', 'it', 'Error message for tvector beginning', 4, '0000-00-00 00:00:00'),
(125, 'err_tvectlab', 'C''e'' stato un errore con il label che hai cercato di aggiungere al matrix.  Questo deve essere un numero e deve essere inserito nell'' elenco label. ', 'cor', 'it', 'Error message for tvector beginning', 4, '0000-00-00 00:00:00'),
(126, 'err_spnlablinvalid', 'La relazione che hai selezionato non e'' possibile per il context selezionato.', 'cor', 'it', 'Testing', 4, '0000-00-00 00:00:00'),
(127, 'finds', 'Reperti', 'cor', 'it', 'A label to display in forms for finds', 4, '0000-00-00 00:00:00'),
(128, 'err_nofindtype', 'O nessun tipo di reperto e'' stato selezionato o il tipo selezionato non e'' valido.', 'cor', 'it', 'An error message for handling finds', 4, '0000-00-00 00:00:00'),
(382, 'dvlp_filters', 'Make a New Search', 'cor', 'en', 'For the filter building subform.', 4, '2011-06-09 15:37:16'),
(130, 'err_nospanid', 'Nessun span id number e'' stato specificato.', 'cor', 'it', 'An error message for handling tvectors', 4, '0000-00-00 00:00:00'),
(131, 'frm_confirm_lutadd', '', 'cor', 'it', 'A confirmation form for adding to luts', 4, '0000-00-00 00:00:00'),
(132, 'lut_duplicate', '', 'cor', 'it', 'Warning message about duplicates with a list of possible duplicates', 4, '0000-00-00 00:00:00'),
(133, 'reset', 'reset', 'cor', 'it', 'The word reset which may be used for buttons', 4, '0000-00-00 00:00:00'),
(134, 'go', 'go', 'cor', 'it', 'The word go which may be used for buttons', 4, '0000-00-00 00:00:00'),
(135, 'cxtmeta', 'Dettagli del Record', 'cor', 'it', 'A label to express the idea of cxt meta info', 4, '0000-00-00 00:00:00'),
(136, 'desc', 'Descrizione', 'cor', 'it', 'A label to express the idea of text based description', 4, '0000-00-00 00:00:00'),
(137, 'err_noactorid', 'Nessun actor id (membro della squadra) e'' stato specificato.', 'cor', 'it', 'An error message for handling actors', 4, '0000-00-00 00:00:00'),
(138, 'err_noactiontypeid', 'Nessuna azione e'' stata specificata.', 'cor', 'it', 'An error message for actions', 4, '0000-00-00 00:00:00'),
(139, 'err_noactionid', 'Nessun specific action id e'' stato specificato.', 'cor', 'it', 'An error message for actions', 4, '0000-00-00 00:00:00'),
(140, 'err_nodateid', 'Nessun specific date type e'' stato specificato.', 'cor', 'it', 'An error message for date types', 4, '0000-00-00 00:00:00'),
(141, 'forms', 'Data Entry', 'cor', 'it', 'A label for a list of forms', 4, '0000-00-00 00:00:00'),
(142, 'notdigitised', 'Questo oggetto non ha nessun spatial data attaccato in questo momento.', 'cor', 'it', 'A message to show if theres is no spatial data', 4, '0000-00-00 00:00:00'),
(143, 'datatoolbox', 'Data Toolbox', 'cor', 'it', 'A header for the data toolbox area', 4, '0000-00-00 00:00:00'),
(144, 'err_noflagid', 'Nessun status flag id e'' stato dato.', 'cor', 'it', 'Error for handling record status flags', 4, '0000-00-00 00:00:00'),
(145, 'useradminoptions', 'User Administration', 'cor', 'it', 'A message for the User Admin page', 4, '0000-00-00 00:00:00'),
(146, 'err_nouname', 'Nessun username e'' stato dato.', 'cor', 'it', 'An error for handling User Admin errors', 4, '0000-00-00 00:00:00'),
(147, 'err_dupuname', 'Questo username esite gia''.', 'cor', 'it', 'An error for handling User Admin errors', 4, '0000-00-00 00:00:00'),
(148, 'err_nofname', 'Nessun nome e'' stato dato.', 'cor', 'it', 'An error for handling User Admin errors', 4, '0000-00-00 00:00:00'),
(149, 'err_nolname', 'Nessun cognome e'' stato dato.', 'cor', 'it', 'An error for handling User Admin errors', 4, '0000-00-00 00:00:00'),
(150, 'err_noinit', 'Nessune iniziali sono state date.', 'cor', 'it', 'An error for handling User Admin errors', 4, '0000-00-00 00:00:00'),
(151, 'err_dupinit', 'Queli iniziali esistono gia''.', 'cor', 'it', 'An error for handling User Admin errors', 4, '0000-00-00 00:00:00'),
(152, 'err_noemail', 'Nessun email e'' stata data.', 'cor', 'it', 'An error for handling User Admin errors', 4, '0000-00-00 00:00:00'),
(153, 'create_user', 'Creare Utente', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(154, 'addusr_instructions', 'Tutti i campi devono essere riempiti. Per favore controlla per essere sicura di non aver accidentalmente creato un duplicato utente. Il nuovo account utente sara'' creato disattivato. Per attivare l''account, l''account  deve essere editato dall''amministratore del sistema.', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(155, 'adusrl_instructions', 'Tutti i campi devono essere riempiti. Il nuovo user account sara'' creato funzionante.', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(156, 'addusr_sucs', 'Il nuovo user account e'' stato creato riuscito. Per attivare l''account per favore contatta l''amministratore del sistema.', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(157, 'data_view_forms', 'Cerca', 'cor', 'it', 'Data viewing forms', 4, '0000-00-00 00:00:00'),
(158, 'addusr_newid', 'Il nuovo user account e'' stato creato riuscito. Scrivi una nota dell''username. L''username e'':', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(159, 'err_nopw', 'Nessuna password e'' stata data.', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(160, 'err_nocpw', 'Nessuna password di conferma e'' stata data', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(161, 'err_pwmatch', 'La password and la password di conferma NON sono gli stessi.', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(162, 'change_pw', 'Cambia la password', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(163, 'edt_sgrps', 'Edita gli ''S-Groups''', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(164, 'edt_user', 'Edita utente', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(165, 'uname', 'Nome di utente', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(166, 'fname', 'Nome', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(167, 'lname', 'Cognome', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(168, 'init', 'Iniziali', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(169, 'email', 'Email', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(170, 'pw', 'Password', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(171, 'cpw', 'Conferma la password', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(172, 'err_nosgrp', 'Nessun gruppo di sicurezza e'' stata specificata.', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(173, 'err_nouid', 'Nessun user id e'' stato specificato.', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(174, 'err_duprel', 'Questa e'' una relazione duplicata, non puo essere aggiunta.', 'cor', 'it', 'A generic error message', 4, '0000-00-00 00:00:00'),
(175, 'enable', 'Attivare/Disattivare user account', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(176, 'accena', 'Account attivato', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(177, 'accdis', 'Account disattivato', 'cor', 'it', 'A message for handling User Admin', 4, '0000-00-00 00:00:00'),
(180, 'detfrm', 'Form', 'cor', 'it', 'Alias of the detailed data entry form', 4, '0000-00-00 00:00:00'),
(181, 'regist', 'Register', 'cor', 'it', 'Alias of the register entry from', 4, '0000-00-00 00:00:00'),
(182, 'view_regist', 'Register Viewer', 'cor', 'it', 'Alias of the register viewer', 4, '0000-00-00 00:00:00'),
(183, 'nextrec', 'Record Succesivo', 'cor', 'it', 'A lable for the next record', 4, '0000-00-00 00:00:00'),
(185, 'search', 'Cerca', 'cor', 'it', 'Search', 4, '0000-00-00 00:00:00'),
(186, 'expcsv', 'Esportare come CSV', 'cor', 'it', 'Exports the results as comma separated values', 4, '0000-00-00 00:00:00'),
(187, 'expxml', 'Esportare come XML', 'cor', 'it', 'To export data as XML', 4, '0000-00-00 00:00:00'),
(188, 'vwtbl', 'Vedere come Table', 'cor', 'it', 'To view results as a table', 4, '0000-00-00 00:00:00'),
(189, 'vwcht', 'Vedere come Chat', 'cor', 'it', 'Used to give options for results view', 4, '0000-00-00 00:00:00'),
(190, 'vwmap', 'Vedere come Mappa', 'cor', 'it', 'Used to give options for results view', 4, '0000-00-00 00:00:00'),
(191, 'options', 'Opzioni', 'cor', 'it', 'Label for the options column of a table', 4, '0000-00-00 00:00:00'),
(192, 'viewmsg', 'Vedere il Record', 'cor', 'it', 'Message for linking out to the record view option', 4, '0000-00-00 00:00:00'),
(193, 'score', 'Punteggio Veridicita', 'cor', 'it', 'MArkup for hte relevancy score', 4, '0000-00-00 00:00:00'),
(194, 'norec', 'I filtri hanno prodotto un set di risultati vuoto', 'cor', 'it', 'A message to display when the result set is empty', 4, '0000-00-00 00:00:00'),
(195, 'nofilters', 'Nessun filto e'' stato selezionato, per favore seleziona un filtro', 'cor', 'it', 'A message to say that no filters are set', 4, '0000-00-00 00:00:00'),
(196, 'notinauthitems', 'Non compreso negli Oggetti Autorizzati', 'cor', 'it', 'Displayed when field is not in auth items.', 4, '0000-00-00 00:00:00'),
(197, 'space', '&nbsp;', 'cor', 'it', 'A non-breaking space when no markup is required', 4, '0000-00-00 00:00:00'),
(200, 'home', 'Home', 'cor', 'it', 'Markup for the home page of various sections', 4, '0000-00-00 00:00:00'),
(201, 'interp', 'Interpretazione', 'cor', 'it', 'Markup for labelling the interpretation', 4, '0000-00-00 00:00:00'),
(205, 'spat_data', 'Spatial Data', 'cor', 'it', 'Markup identifying the spatial data panel in the micro view', 4, '0000-00-00 00:00:00'),
(206, 'no_interps', 'Nessuna Interpretazione', 'cor', 'it', 'Markup for indicating there are no interpretations available', 4, '0000-00-00 00:00:00'),
(212, 'noxmi', 'Nessun Record e'' Leggato', 'cor', 'it', 'Markup for items missing an xmi link', 4, '0000-00-00 00:00:00'),
(223, 'files', 'Files', 'cor', 'en', 'It''s some markup for files.', 4, '2008-07-16 00:00:00'),
(380, 'savedfilters', 'Saved Searches', 'cor', 'en', 'For the mysavedstuff subform in search and user home pages.', 4, '2011-06-09 15:36:21'),
(231, 'regabk', 'Address Book', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(238, 'uplfile', 'Upload File', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(239, 'frm_select', 'Please select an option from the left.', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(240, 'data_entry', 'Data Entry Home', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(241, 'user_admin', 'User Administration Home', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(242, 'adduser', 'Add a User', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(243, 'edituser', 'Edit a User', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(244, 'view', 'view', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(245, 'enter', 'enter', 'cor', '', '', 4, '0000-00-00 00:00:00'),
(246, 'qed', 'edit', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(247, 'choose_lang', 'Choose a language', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(248, 'welcome', 'Welcome to ARK, ', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(249, 'user_home', 'User Home', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(257, 'filters', 'Search', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(258, 'clearall', 'Clear All', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(259, 'rerunall', 'Rerun All', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(260, 'filtertype', 'Single Record', 'cor', 'en', 'Label for a manual filter', 4, '2011-07-01 17:40:20'),
(261, 'clearfilter', 'Clear Search', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(262, 'make_filter', 'New Search', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(263, 'publicfilters', 'Common Searches', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(264, 'ftx', 'Free Text Search', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(265, 'filteritem', 'Record Type', 'cor', 'en', 'Label for the filter builder when searching by key', 4, '2011-06-10 17:36:50'),
(266, 'filteratt', 'Search by Attribute', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(267, 'filteractor', 'Search by Actor', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(458, 'resetresultsinfo', 'In order to reset this view to the standard configuration, please use the reset button.', 'cor', 'en', 'Label for the sf_userconfigfields', 1, '2011-01-19 16:44:19'),
(270, 'num_pages', 'Number of results per page:', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(271, 'totalres', 'Total Results:', 'cor', 'en', 'Markup display the total number of search results', 4, '2011-06-09 15:41:50'),
(457, 'fieldconfiginfo', 'This form allows you to add and remove fields from the current view. In order to remove a field, click the minus sign at the left hand side of the table below. In order to add fields, use the form provided below the table.', 'cor', 'en', 'Label foe sf_userconfigfields', 1, '2011-01-19 12:46:23'),
(456, 'addfield', 'Select a new field to add to the view.', 'cor', 'en', 'Label for sf_userconfigfields', 1, '2011-01-19 12:43:28'),
(281, 'formupload_instructions', 'To upload files, enter a batch name or module and browse to the upload directory below (/www/htdocs/ark/data/upload).', 'cor', 'en', 'For file upload', 4, '0000-00-00 00:00:00'),
(282, 'batchname', 'Batch Name: ', 'cor', 'en', 'For file upload', 4, '0000-00-00 00:00:00'),
(283, 'module', 'Module', 'cor', 'en', 'For file upload', 4, '0000-00-00 00:00:00'),
(284, 'curuploaddir', 'Current Upload Directory: ', 'cor', 'en', 'For file upload', 4, '0000-00-00 00:00:00'),
(287, 'edit', 'edit', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(381, 'your', 'Your', 'cor', 'en', 'For the yoursavedstuff subform.', 4, '2011-06-09 15:36:35'),
(297, 'stat_flags', 'Record Status', 'cor', 'en', 'Record status flag label', 1, '0000-00-00 00:00:00'),
(298, 'navigation', 'Go to', 'cor', 'en', 'Label for navigation to a record or other', 1, '0000-00-00 00:00:00'),
(299, 'ste_cd', 'Site code', 'cor', 'en', 'A label for site codes', 1, '0000-00-00 00:00:00'),
(301, 'download', 'Download', 'cor', 'en', 'For downloading photos', 4, '0000-00-00 00:00:00'),
(302, 'file_nav', 'Select a batch or module:', 'cor', 'en', 'For file nav (register)', 4, '0000-00-00 00:00:00'),
(303, 'no_reg_files', 'No files selected!', 'cor', 'en', 'For register', 4, '0000-00-00 00:00:00'),
(304, 'ctrllsttitle', 'Add to Control Lists', 'cor', 'en', 'For sf_attr_bytype', 4, '0000-00-00 00:00:00'),
(305, 'choosectrllst', 'Choose a control list:', 'cor', 'en', 'for sf_attr_bytype', 4, '0000-00-00 00:00:00'),
(306, 'ctrllst', 'Control List', 'cor', 'en', 'for sf_attr_bytype', 1, '0000-00-00 00:00:00'),
(307, 'newterm', 'Suggest a new term:', 'cor', 'en', 'for sf_attr_bytype', 1, '0000-00-00 00:00:00'),
(308, 'addterm', 'Add Term', 'cor', 'en', 'for sf_attr_bytype', 4, '0000-00-00 00:00:00'),
(309, 'resetform', 'Reset Form', 'cor', 'en', 'to reset sf_attr_bytype', 4, '0000-00-00 00:00:00'),
(310, 'newtermlab', 'New term label', 'cor', 'en', 'sf_attr_bytype', 4, '0000-00-00 00:00:00'),
(311, 'similar', 'A similar term already exists in this list', 'cor', 'en', 'for adding to control lists', 4, '0000-00-00 00:00:00'),
(312, 'language', 'language', 'cor', 'en', '', 1, '0000-00-00 00:00:00'),
(313, 'tryotherterm', 'Or try another new term', 'cor', 'en', 'for adding to control lists', 4, '0000-00-00 00:00:00'),
(314, 'ifsure', 'If you are certain this is not a duplicate, add the term.', 'cor', 'en', 'for adding to control lists', 4, '0000-00-00 00:00:00'),
(315, 'err_attrtypedontexist', 'This attribute type doesn''t exist.  Please try again.', 'cor', 'en', 'For adding to control lists', 4, '0000-00-00 00:00:00'),
(316, 'failure', 'Your attempt was not successful, please try again.', 'cor', 'en', 'for adding to control lists', 4, '0000-00-00 00:00:00'),
(317, 'attrscss', 'Attribute was added succesfully', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(318, 'attrfail', 'Attribute was not added to control list.', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(319, 'aliscss', 'Alias was added sucessfully!', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(320, 'alifail', 'Alias was not added.', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(321, 'success', 'The new item was added to the control list.  Please reset the form to add additional items.', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(322, 'sf_txt_incompl', 'No text data has been added', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(323, 'sf_number_incompl', 'No number data has been added', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(324, 'noattr', 'No attribute data has been added', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(325, 'filterspan', 'Date Range', 'cor', 'en', 'Label for a date range based filter.', 4, '2011-06-24 15:25:07'),
(326, 'filterpanel', 'Search Tools', 'cor', 'en', '', 4, '0000-00-00 00:00:00'),
(327, 'search_for', 'Search for a', 'cor', 'en', 'For data entry pages', 1, '0000-00-00 00:00:00'),
(328, 'item', 'item', 'cor', 'en', 'For data entry pages', 1, '0000-00-00 00:00:00'),
(329, 'notset', 'Not set', 'cor', 'en', 'For unset sf_attr_boolean', 1, '0000-00-00 00:00:00'),
(455, 'userconfigfields', 'Configure Fields', 'cor', 'en', 'A label for sf_userconfigfields', 1, '2011-01-18 18:06:31'),
(335, 'mapadmin', 'Mapping Administration', 'cor', 'en', 'label', 1, '2009-11-05 14:18:01'),
(336, 'map_admin_instructions', 'This page is used to configure the mapping within ARK. Here you can setup the mapping to take any number of layers from different sources and choose the order and colour of them. You can then save the configuration for use by your users.', 'cor', 'en', 'lbel', 1, '2009-11-05 14:30:16'),
(337, 'extent_label', 'Extents', 'cor', 'en', 'label', 1, '2009-11-09 16:29:35'),
(338, 'extent_instr', 'enter in the format: minx,miny,maxx,maxy', 'cor', 'en', 'label', 1, '2009-11-09 18:56:25'),
(339, 'scales_label', 'Scales', 'cor', 'en', 'label', 1, '2009-11-09 16:36:44'),
(340, 'scales_instr', 'enter in the format: 100000,50000,25000,10000', 'cor', 'en', 'label', 1, '2009-11-09 18:56:05'),
(341, 'extent_err', 'Your extents are not valid. Either you have not entered them correctly using commas (minx,miny,maxx,maxy e.g. -130, 14, -60, 55) or your extents are in the wrong order (e.g. your minx is greater than your miny)', 'cor', 'en', 'error label', 1, '2009-11-09 17:39:21'),
(342, 'scales_err', 'You have a problem with your scales. Please fill them in using commas (e.g. 25000,10000,5000,1000)', 'cor', 'en', 'scales err', 1, '2009-11-09 18:52:46'),
(343, 'progress_step', 'Step: ', 'cor', 'en', 'label', 1, '2009-11-12 15:40:48'),
(344, 'progress_finish', 'Finished', 'cor', 'en', 'label', 1, '2009-11-12 16:47:37'),
(345, 'mapsave_instr', 'Please enter the following details to save your map', 'cor', 'en', 'label', 1, '2009-11-23 17:50:10'),
(346, 'map_name', 'Name of Map:', 'cor', 'en', 'label', 1, '2009-11-23 17:50:36'),
(347, 'map_comments', 'Comments:', 'cor', 'en', 'label', 1, '2009-11-23 17:51:00'),
(348, 'map_tools', 'Tools', 'cor', 'en', 'label', 1, '2009-11-25 14:36:15'),
(349, 'map_restart', 'Restart', 'cor', 'en', 'label', 1, '2009-11-25 14:36:36'),
(350, 'map_mapsize', 'Map Size', 'cor', 'en', 'size label', 1, '2009-11-25 14:53:01'),
(351, 'map_small', 'small', 'cor', 'en', 'label', 1, '2009-11-25 14:37:27'),
(352, 'map_medium', 'medium', 'cor', 'en', 'label', 1, '2009-11-25 14:37:43'),
(353, 'map_large', 'large', 'cor', 'en', 'label', 1, '2009-11-25 14:37:57'),
(354, 'map_export', 'Export Tools', 'cor', 'en', 'label', 1, '2009-11-25 15:03:16'),
(355, 'map_exportpdf', 'Export to PDF', 'cor', 'en', 'label', 1, '2009-11-25 15:03:33'),
(356, 'map_savemap', 'Save Map', 'cor', 'en', 'label', 1, '2009-11-25 15:03:51'),
(357, 'savesuccessful', 'Save Successful', 'cor', 'en', 'label', 1, '2009-11-25 16:12:18'),
(358, 'saveproblem', 'There was a problem saving: ', 'cor', 'en', 'label', 1, '2009-11-25 16:12:45'),
(359, 'map_public', 'Allow all users to load the map?', 'cor', 'en', 'label', 1, '2009-11-25 17:01:03'),
(360, 'map_choose', 'Load New Map', 'cor', 'en', 'label', 1, '2009-11-25 17:12:50'),
(361, 'map_preconf', 'Public Maps', 'cor', 'en', 'label', 1, '2009-11-25 17:15:52'),
(362, 'map_savedmaps', 'Your Saved Maps', 'cor', 'en', 'label', 1, '2009-11-25 17:16:36'),
(363, 'map_creby', 'Created By', 'cor', 'en', 'label', 1, '2009-11-25 17:16:56'),
(364, 'delete', 'DELETE', 'cor', 'en', 'labels', 4, '2011-06-09 16:17:10'),
(365, 'delete_successful', 'Delete Successful', 'cor', 'en', 'label', 1, '2009-11-25 18:19:27'),
(366, 'map_choose_title', 'Please choose a map below', 'cor', 'en', 'header', 4, '2011-06-10 16:53:41'),
(367, 'build_map', 'Configure a Map', 'cor', 'en', 'label', 1, '2009-11-26 10:31:05'),
(454, 'no_files', 'There are currently no files in the upload directory: ', 'cor', 'en', 'A markup displayed when the configured upload directory is empty.', 1, '2011-07-16 20:32:46'),
(373, 'files_uploaded', 'files uploaded successfully!', 'cor', 'en', 'for file uploads', 4, '0000-00-00 00:00:00'),
(379, 'importoptions', 'Import', 'cor', 'en', 'For the home of the import options.', 4, '2011-06-09 15:32:37'),
(375, 'logout', 'Logout', 'cor', 'en', 'For logout navigation in top right.', 4, '2011-06-09 15:31:20'),
(383, 'infinity', 'view all', 'cor', 'en', 'For viewing all search results', 4, '2011-06-09 15:40:03'),
(376, 'markupadminoptions', 'Markup Administration', 'cor', 'en', 'For the left panel of the markup admin pages.', 4, '2011-06-09 15:31:35'),
(385, 'user', 'User', 'cor', 'en', 'For the left panel labels in the user admin pages.', 4, '2011-06-09 15:44:51'),
(386, 'chgtype', 'type', 'cor', 'en', 'For changing the modtype', 4, '2011-06-09 16:14:34'),
(387, 'chgkey', 'number', 'cor', 'en', 'For changing the item value', 4, '2011-06-09 16:18:53'),
(388, 'changemod', 'Change the Item Type', 'cor', 'en', 'For title of change modtype button', 4, '2011-06-09 16:17:45'),
(389, 'changeval', 'Change the Record Number', 'cor', 'en', 'For changing the itemkey', 4, '2011-06-09 16:18:06'),
(390, 'addctrllst', 'Admin Tools- Add to control lists', 'cor', 'en', 'For a button to add to control lists in data entry, micro view', 4, '2011-06-09 16:19:23'),
(391, 'arkname', 'Basic Installation', 'cor', 'en', 'Markup for the index page of this instance of ark', 1, '2011-07-16 21:43:24'),
(392, 'csv', 'CSV', 'cor', 'en', 'Label for downloading a CSV of search results.', 4, '2011-06-10 12:46:36'),
(393, 'curmodtype', 'Current Type: ', 'cor', 'en', 'For changing modtypes subform', 4, '2011-06-10 16:08:27'),
(394, 'reclabel', 'Record', 'cor', 'en', 'For changing modtypes subform', 4, '2011-06-10 16:09:35'),
(395, 'novalue', 'No records attached.', 'cor', 'en', 'For an xmi subform with no records attached.', 4, '2011-06-10 16:16:59'),
(396, 'mapview', 'Map View', 'cor', 'en', 'For the left panel of the map view', 4, '2011-06-10 16:47:48'),
(397, 'map', 'Map', 'cor', 'en', 'For the left panel options in the map view', 4, '2011-06-10 16:48:04'),
(398, 'map_configure', 'Please configure a map below', 'cor', 'en', 'A message for the map admin tools', 4, '2011-06-10 16:53:09'),
(399, 'vwtext', 'View as Text', 'cor', 'en', 'Hover text for text display of search results', 4, '2011-06-10 16:55:48'),
(400, 'vwthumb', 'View as Thumbnails', 'cor', 'en', 'Hover text for thumbs display of search results', 4, '2011-06-10 16:55:54'),
(401, 'configfields', 'Configure visible fields', 'cor', 'en', 'Hover text for tools to configure fields in search results', 4, '2011-06-10 17:08:00'),
(402, 'vwall', 'View Full Records (Print View)', 'cor', 'en', 'Hover text for displaying all full records for printing', 4, '2011-06-10 17:08:49'),
(403, 'table', 'table', 'cor', 'en', 'Header of table view of search results', 4, '2011-06-10 17:09:28'),
(404, 'text', 'text', 'cor', 'en', 'Header of text view of search results', 4, '2011-06-10 17:10:09'),
(405, 'thumb', 'thumbs', 'cor', 'en', 'header for thumbs view of search results', 4, '2011-06-10 17:10:56'),
(406, 'nofile', 'No files attached to this record', 'cor', 'en', 'Message when no files present in a sf_file', 4, '2011-06-10 17:13:31'),
(407, 'filterkey', 'Record Type', 'cor', 'en', 'Search label for key type filter', 4, '2011-06-24 15:16:21'),
(408, 'projection_label', 'Projection', 'cor', 'en', 'A label for projection in the map admin pages', 4, '2011-06-15 13:19:29'),
(409, 'projection_instr', 'The variables for the projection dropdown are set in the sf_conf', 'cor', 'en', 'Instructions for projections in map admin', 4, '2011-06-15 13:20:32'),
(410, 'OSM_label', 'Use OpenStreetMap as a background?', 'cor', 'en', 'Label for map admin of open streemap', 4, '2011-06-15 13:21:12'),
(411, 'osm_instr', 'Click this if you want an openstreetmap backdrop. <i>NOTE: your other WMS server will need to support the EPSG:900913 projection.</i>', 'cor', 'en', 'Instructions regarding open streetmap', 4, '2011-06-15 13:21:51'),
(412, 'gmap_api_key_label', 'Google Maps API key (if available)', 'cor', 'en', 'Label for the API for google maps', 4, '2011-06-15 13:22:59'),
(413, 'gmap_api_key_instr', 'Please supply your GMap Api Key if you want a Google Maps backdrop. <i>NOTE: your other WMS server will need to support the EPSG:900913 projection.</i>', 'cor', 'en', 'Instructions for insertion of gmap API key', 4, '2011-06-15 13:25:18'),
(414, 'url_label', 'WMS URL', 'cor', 'en', 'For the map admin pages', 4, '2011-06-15 14:03:00'),
(415, 'url_instr', 'URL for the WMS server. <i>NOTE: the url options are set in the sf_conf</i>', 'cor', 'en', 'For mapping admin', 4, '2011-06-15 14:03:53'),
(416, 'getcap_err', 'There appears to be an error with the WMS server you are attempting to access - please check the URL you have set in the sf_conf_baselayer. If it is still not working the server maybe currently offline.', 'cor', 'en', 'An error message for failed map admin setup.', 4, '2011-06-15 14:09:52'),
(417, 'legend_admin_instr', 'Choose which layers you want in your map', 'cor', 'en', 'For map admin pages', 4, '2011-06-15 14:14:47'),
(418, 'nosuggestions', 'No Suggestions', 'cor', 'en', 'Used in the livesearch suggestion script', 4, '2011-06-15 16:11:04'),
(419, 'no_spat_results', 'No spatial results for this search.', 'cor', 'en', 'A message for a spatial search result with no spatial data.', 4, '2011-06-15 17:59:30'),
(420, 'papersize', 'Paper Size', 'cor', 'en', 'Selector for paper size of map download', 4, '2011-06-16 10:54:20'),
(421, 'dl', 'Download', 'cor', 'en', 'A download link for overlays', 4, '2011-06-16 10:54:33'),
(422, 'dlsucs', 'Download Success!', 'cor', 'en', 'Successful generation of a map for download', 4, '2011-06-16 10:54:58'),
(423, 'all', 'All', 'cor', 'en', 'For the filter by attribute to show all of a given attribute', 4, '2011-06-24 15:12:30'),
(424, 'filtercertype', 'Ceramic Type', 'cor', 'en', 'Label for ceramics filter', 4, '2011-06-24 15:15:45'),
(425, 'filterfindtype', 'Find Type', 'cor', 'en', 'Label for find type filters.', 4, '2011-06-24 15:16:58'),
(426, 'filtercxt', 'Contexts', 'cor', 'en', 'Label for context filters', 4, '2011-06-24 15:22:09'),
(427, 'filterrecstatus', 'Record Status', 'cor', 'en', 'Label for record status attribute filter', 4, '2011-06-24 15:22:35'),
(428, 'rss', 'RSS', 'cor', 'en', 'Label for RSS export functionality', 4, '2011-06-29 14:03:17'),
(429, 'exportfeed', 'Export as feed', 'cor', 'en', 'A label for the feedbuilder', 1, '2011-06-09 13:21:39'),
(430, 'prepfeed', 'Prepare the feed', 'cor', 'en', 'A label for the feed builder', 1, '2011-06-09 13:22:21'),
(431, 'feedinfo', 'This form will make the current result setup available as a feed. The setup includes the filters and the sort order, but the fields used in the feed will be based on the deafult fields for this display mode (table/thumbnail/text) for each module in the feed. The feed will be publicly accessible on the link supplied, although the link may be hard to find, the contents of this feed will not be secured.', 'cor', 'en', 'Information for the feedbuilder', 1, '2011-06-10 11:21:05'),
(432, 'limit', 'Limit feed to this many records', 'cor', 'en', 'Label for the sf_feedbuilder', 1, '2011-06-10 11:06:07'),
(433, 'feedview', 'Use fields based on the current display mode', 'cor', 'en', 'Label for the sf_feedbuilder', 1, '2011-06-10 11:16:25'),
(434, 'feedtitle', 'Feed title (any name you want to remember this by)', 'cor', 'en', 'Label for sf_feedbuilder', 1, '2011-06-10 11:58:06'),
(435, 'err_feeddbsave', 'There was an error saving the feed to the database', 'cor', 'en', 'Label for sf_feedbuilder', 1, '2011-06-10 13:28:01'),
(436, 'feedsucs', 'The feed was sucessfully created. You can view the feed by clicking the link below or by copying and pasting the URL printed below.', 'cor', 'en', 'Label for the sf_feedbuilder', 1, '2011-06-10 13:31:59'),
(437, 'feedlink', 'Feed', 'cor', 'en', 'A label for the sf_feedbuilder', 1, '2011-06-10 13:35:32'),
(438, 'err_feeddisp_mode', 'No disp_mode (table/text/thumb etc) was set for the feed.', 'cor', 'en', 'Label for sf_feedbuilder', 1, '2011-06-10 14:27:29'),
(439, 'feeddesc', 'Feed description', 'cor', 'en', 'Label for sf_feedbuilder', 1, '2011-06-10 15:50:20'),
(440, 'err_feeddesc', 'No feed description was set', 'cor', 'en', 'Label for sf_feedbuilder', 1, '2011-06-10 15:50:58'),
(441, 'reqfileformat', 'File format', 'cor', 'en', 'Label for feed file format', 4, '2011-07-01 14:03:24'),
(442, 'err_notauthforedit', 'Sorry, you don''t have access to enter or edit this data.', 'cor', 'en', 'Label to prevent anon users editing data.', 4, '2011-07-01 14:48:14'),
(443, 'anonoverlayaccess', 'Sorry, you do not have access to these administrator options.', 'cor', 'en', 'Label to alert anon users they cannot have overlays.', 4, '2011-07-01 14:51:26'),
(444, 'dlinfo', 'This is going to create a file and then offer you a download. This can only be used for a single module. The data in the exported file will be based on the fields in the current display.', 'cor', 'en', 'Label for sf_exportdownload.php', 1, '2010-12-23 16:06:36'),
(445, 'reqfileformat', 'File format', 'cor', 'en', 'Label for sf_exportdownload', 1, '2010-12-23 16:07:03'),
(446, 'exportdownloadcsv', 'Export data to a file', 'cor', 'en', 'Label for sf_exportdownload', 1, '2010-12-23 16:10:59'),
(447, 'prepdl', 'Prepare file', 'cor', 'en', 'Label for sf_exportdownload', 1, '2010-12-23 16:16:32'),
(448, 'problem_string', 'Problem String', 'cor', 'en', 'Label used by CSV exports', 1, '2011-01-06 21:16:26'),
(449, 'problem_item', 'Problem Item', 'cor', 'en', 'Label used by CSV exports', 1, '2011-01-06 21:16:59'),
(450, 'problem_csv_detected', 'A problem field was detected. This has not prevented the file from being created, but may cause problems when opening this file in some spreadsheet programs. This was caused by your text delimiter occurring within a field.', 'cor', 'en', 'Label used by CSV exporter', 1, '2011-01-06 21:41:08'),
(451, 'waitmsg', 'Processing your download. Please be patient. This may take up to 5 minutes.', 'cor', 'en', 'A label for the download export.', 1, '2010-12-20 14:35:48'),
(452, 'dlsucs', 'The file was sucessfully created. You can download this using the link below or directly from the data/downloads directory.', 'cor', 'en', 'Label for sf_exportdownload', 1, '2010-12-23 16:04:34'),
(453, 'dl', 'Download', 'cor', 'en', 'Markup for download dialogue', 1, '2011-06-09 00:00:00'),
(460, 'no_files', 'There are currently no files in the configured upload directory:', 'cor', 'en', 'Markup appearing when no files in upload direcotry', 1, '2011-06-09 00:00:00'),
(461, 'all', 'All', 'cor', 'en', 'label for top of attribute indexed search', 1, '2011-06-09 00:00:00'),
(462, 'atr', 'Attribute', 'cor', 'en', 'label for label of basic attribute search', 1, '2011-06-09 00:00:00'),
(463, 'err_nodelkey', 'No itemkey was sent for deletion', 'cor', 'en', 'An error used in deletions', 1, '0000-00-00 00:00:00'),
(464, 'err_nodelval', 'No item value was sent for deletion', 'cor', 'en', 'An error used in deletions', 1, '0000-00-00 00:00:00'),
(465, 'err_recwasdel', 'This record was deleted', 'cor', 'en', 'An error used in deletions', 1, '0000-00-00 00:00:00'),
(466, 'err_notvalid', 'The itemkey is not valid', 'cor', 'en', 'An error for invalid itemkeys', 1, '0000-00-00 00:00:00'),
(467, 'err_delfail', 'Something went wrong with the delete operation', 'cor', 'en', 'An error used in deletions', 1, '0000-00-00 00:00:00'),
(468, 'delwarn', 'This record and ALL attached data will be permanently deleted. It is NOT possible to undo this action.<br/><br/>Be careful!', 'cor', 'en', 'A warning message used for deleting entire records', 1, '0000-00-00 00:00:00'),
(469, 'dnarecord', 'Record DNA', 'cor', 'en', 'A label fo the dnarecord subform', 1, '0000-00-00 00:00:00'),
(470, 'numfrags', 'Number of fragments attached to this record', 'cor', 'en', 'A label used in deletions', 1, '0000-00-00 00:00:00'),
(471, 'armdelete', 'PREPARE DELETION', 'cor', 'en', 'A label for delete buttons... danger!', 1, '0000-00-00 00:00:00'),
(472, 'confirmdel', 'Click <em>delete</em> to review and confirm deletion of multiple fragments', 'cor', 'en', 'A label used in deletions', 1, '0000-00-00 00:00:00'),
(473, 'cxttypeconflicts', 'Modtype DNA', 'cor', 'en', 'Label for working with sf_dnamodtype', 1, '0000-00-00 00:00:00'),
(474, 'succsreload', 'RESET', 'cor', 'en', 'Label for sf_modtype', 1, '2010-10-04 16:05:29'),
(475, 'err_noconflictres', 'Admin Error: This SF is missing the var conflict_res_sf which tells the subform where to send users for conflict resolution. You must set this up as per documentation.', 'cor', 'en', 'Label for sf''s that use conflict resolution', 1, '2010-10-04 17:15:34'),
(476, 'currkey', 'Current Itemkey', 'cor', 'en', 'Label of sf_itemkey', 1, '2010-10-11 17:52:41'),
(477, 'tgtkey', 'Target Itemkey', 'cor', 'en', 'Label of sf_itemkey', 1, '2010-10-11 17:53:03'),
(478, 'valchgsuccs', 'The value was successfuly updated. You should now reload this item.', 'cor', 'en', 'A label for sf_itemval', 1, '2010-10-12 17:57:08'),
(479, 'changevalwarn', 'Warning! Some fragments of data are already attached to this record. These will be transferred to the new item. Look at these in detail before making the change.', 'cor', 'en', 'A label for sf_itemval.', 1, '2010-10-12 18:03:29'),
(480, 'delsucs', 'The deletion was successful', 'cor', 'en', 'Label for sf_delete_record', 1, '2010-12-23 16:05:14'),
(481, 'chngtype', 'Modtype', 'cor', 'en', 'For record nav', 1, '0000-00-00 00:00:00'),
(482, 'tgtmodtype', 'Target Modtype', 'cor', 'en', 'Markup for target modtype in change modtype dialogue', 84, '2011-02-07 00:00:00'),
(483, 'numconflictsfs', 'Number of Conflicted Subforms', 'cor', 'en', 'Markup for conflicted subforms in modtype dialogue', 84, '2011-02-07 00:00:00');
INSERT INTO `cor_tbl_markup` (`id`, `nname`, `markup`, `mod_short`, `language`, `description`, `cre_by`, `cre_on`) VALUES
(484, 'changewarn', 'Warning! There some subforms are set up differently for the target type. Look at these in detail before making the change.', 'cor', 'en', 'Markup for change warning when changing modtype', 84, '2011-02-07 00:00:00'),
(485, 'numconflictfrags', 'Number of conflicted fragments', 'cor', 'en', 'Markup for number of conflicting data fragments when changing modtype', 84, '2011-02-07 00:00:00'),
(486, 'conflictwarn', 'Warning! Conflicted fragments of data WILL be deleted in order to make the change. This cannot be undone.', 'cor', 'en', 'Markup for conflicting fragments warning in change modtype dialogue', 84, '2011-02-07 00:00:00'),
(487, 'change', 'Change', 'cor', 'en', 'Markup for change button in change modtype dialogue', 84, '2011-02-07 00:00:00'),
(488, 'modtypechanged', 'The modtype was successfully changed. You must now reset your page view using the button below.', 'cor', 'en', 'Markup displayed when modtype of item is successfully changed in change modtype dialogue', 84, '2011-02-07 00:00:00'),
(489, 'submit', 'Submit', 'cor', 'en', 'Markup displayed when modtype of item is successfully changed in change modtype dialogue', 84, '2011-02-07 00:00:00'),
(490, 'cxtmeta', 'Record Details', 'cxt', 'en', 'A label to express the idea of cxt meta info', 2, '2006-05-15 00:00:00'),
(491, 'cxts', 'Linked Records', 'cxt', 'en', 'Markup for showing contexts linked to other records in the xmi viewer', 4, '2007-05-17 00:00:00'),
(492, 'site_photo', 'Site Photo', 'sph', 'en', 'Markup for displaying Site Photo', 4, '2007-05-17 00:00:00'),
(493, 'interp', 'Interpretation', 'cxt', 'en', 'Markup for labelling the interpretation', 4, '2007-05-17 00:00:00'),
(494, 'plan', 'Plan', 'pln', 'en', 'Markup for the micro viewer displaying drawn plans', 4, '2007-05-18 00:00:00'),
(495, 'geophoto', 'Geophoto', 'gph', 'en', 'Markup used when displaying the Geophoto in the micro view', 4, '2007-05-18 00:00:00'),
(496, 'matrix', 'Stratigraphic Matrix', 'cxt', 'en', 'Markup for the display of the stratigraphic matrix', 4, '2007-06-06 00:00:00'),
(497, 'othermatrix', 'Other Stratigraphic Relationships', 'cxt', 'en', 'Markup for displaying additional stratigraphic relationships not present in the matrix', 4, '2007-06-06 00:00:00'),
(498, 'photo', 'Photos', 'sph', 'en', 'For displaying of photos for finds/arch elements, etc (ie anything not site photos or geophotos)', 4, '2007-06-15 00:00:00'),
(499, 'materi', 'Materials Inventory', 'cxt', 'en', 'The heading of teh Materials Inventory subform', 4, '2008-05-27 00:00:00'),
(500, 'objects', 'Objects', 'spf', 'en', 'Objects', 4, '2008-05-28 00:00:00'),
(501, 'elements', 'Architectural Elements', 'ael', 'en', 'Architectural Elements markup for subforms', 4, '2008-05-28 00:00:00'),
(502, 'coins', 'Coins', 'cns', 'en', 'Coins markup for subforms', 4, '2008-05-28 00:00:00'),
(503, 'ceramic', 'Ceramic Inventory', 'cxt', 'en', 'The header for the ceramic inventory', 4, '2008-06-03 00:00:00'),
(504, 'comparanda', 'Comparanda', 'spf', 'en', 'Heading for comparanda of objects', 4, '2008-06-04 00:00:00'),
(505, 'cond', 'Overall Condition Assessment', 'spf', 'en', 'Used in spf module', 4, '2008-07-14 00:00:00'),
(506, 'cons', 'Conservation', 'spf', 'en', 'Used in spf module', 4, '2008-07-14 00:00:00'),
(507, 'damage', 'Damage', 'spf', 'en', 'Used in spf module', 4, '2008-07-14 00:00:00'),
(508, 'further_work', 'Further Conservation Work Required', 'spf', 'en', 'Used in spf module', 4, '2008-07-14 00:00:00'),
(509, 'priority', 'Priority', 'spf', 'en', 'Used in spf module', 4, '2008-07-14 00:00:00'),
(510, 'storage', 'Storage', 'spf', 'en', 'Used in spf module', 4, '2008-07-14 00:00:00'),
(511, 'cxtstrat', 'Stratigraphic Relationships', 'cxt', 'en', '', 4, '0000-00-00 00:00:00'),
(512, 'basicinfo', 'Basic Information', 'cxt', 'en', '', 4, '0000-00-00 00:00:00'),
(513, 'position', 'Position', 'cxt', 'en', 'For position frame for HRUs', 4, '0000-00-00 00:00:00'),
(514, 'decomp', 'Decomposition and Compression', 'cxt', 'en', 'For hru decomp frame', 4, '0000-00-00 00:00:00'),
(515, 'measure', 'Measures', 'cxt', 'en', 'For measures frame', 4, '0000-00-00 00:00:00'),
(516, 'articulation', 'Articulation', 'cxt', 'en', 'HRU articulation frame', 4, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_module`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_module` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `itemkey` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shortform` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(3) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Dumping data for table `cor_tbl_module`
--

INSERT INTO `cor_tbl_module` (`id`, `itemkey`, `name`, `shortform`, `description`, `cre_by`, `cre_on`) VALUES
(1, 'abk_cd', 'mod_abk', 'abk', 'Address Book Module', 4, '0000-00-00 00:00:00'),
(2, 'cor_cd', 'mod_cor', 'cor', 'A core module to hold markup and aliases for all instances of ark', 1, '0000-00-00 00:00:00'),
(3, 'cxt_cd', 'mod_cxt', 'cxt', 'The context module', 1, '2011-07-22 00:00:00'),
(4, 'sph_cd', 'mod_sph', 'sph', 'The Site Photo module', 1, '2011-07-22 00:00:00'),
(5, 'pln_cd', 'mod_pln', 'pln', 'The Planning module', 1, '2011-07-22 00:00:00'),
(6, 'gph_cd', 'mod_gph', 'gph', 'The Geophoto module', 1, '2011-07-22 00:00:00'),
(7, 'ael_cd', 'mod_ael', 'ael', 'The module for recording architectural elements', 1, '2011-07-22 00:00:00'),
(8, 'spf_cd', 'mod_spf', 'spf', 'The Special Finds module', 1, '2011-07-22 00:00:00'),
(9, 'cns_cd', 'mod_cns', 'cns', 'The coins module', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_number`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numbertype` int(11) NOT NULL DEFAULT '0',
  `typemod` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemkey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `itemvalue` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fragtype` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fragid` int(5) NOT NULL DEFAULT '0',
  `number` double NOT NULL DEFAULT '0',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table allows extensible text values to be added to cont' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_sgrp`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_sgrp` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `sgrp` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='A table of security groups' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `cor_tbl_sgrp`
--

INSERT INTO `cor_tbl_sgrp` (`id`, `sgrp`, `cre_by`, `cre_on`) VALUES
(1, 'users', 1, '2005-11-08 00:00:00'),
(2, 'admins', 2, '2005-11-08 00:00:00'),
(3, 'public', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_span`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_span` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spantype` int(11) NOT NULL DEFAULT '0',
  `typemod` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemkey` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemvalue` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `beg` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `end` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table allows extensible text values to be added to cont' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_spanattr`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_spanattr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `span` int(10) NOT NULL DEFAULT '0',
  `spanlabel` int(11) NOT NULL DEFAULT '0',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table allows extensible attributing of text fragments' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_ste`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_ste` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cor_tbl_ste`
--

INSERT INTO `cor_tbl_ste` (`id`, `description`, `cre_by`, `cre_on`) VALUES
('ARK', 'A generic ARK site code', 1, '2008-07-16 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_txt`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_txt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txttype` int(11) NOT NULL DEFAULT '0',
  `itemkey` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `itemvalue` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `txt` longtext COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `txt` (`txt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table allows extensible text values to be added to cont' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `cor_tbl_txt`
--

INSERT INTO `cor_tbl_txt` (`id`, `txttype`, `itemkey`, `itemvalue`, `txt`, `language`, `cre_by`, `cre_on`) VALUES
(3, 67, 'abk_cd', 'ARK_1', 'Jane Doe', 'en', 1, '2011-07-16 20:12:35'),
(4, 68, 'abk_cd', 'ARK_1', 'JD', 'en', 1, '2011-07-16 20:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_users`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `initials` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sfilter` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `cre_by` int(11) NOT NULL,
  `cre_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `initials` (`initials`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=120 ;

--
-- Dumping data for table `cor_tbl_users`
--

INSERT INTO `cor_tbl_users` (`id`, `username`, `password`, `firstname`, `lastname`, `initials`, `sfilter`, `email`, `account_enabled`, `cre_by`, `cre_on`) VALUES
(1, 'doe_jd', 'a8c0d2a9d332574951a8e4a0af7d516f', 'Jane', 'Doe', 'JD', 0, 'jane@doe.com', 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_wmc`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_wmc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wmc` longtext COLLATE utf8_unicode_ci NOT NULL,
  `scales` text COLLATE utf8_unicode_ci NOT NULL,
  `extents` text COLLATE utf8_unicode_ci NOT NULL,
  `projection` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zoom` int(11) NOT NULL,
  `legend_array` text COLLATE utf8_unicode_ci NOT NULL,
  `OSM` int(11) NOT NULL,
  `gmap_api_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(4) NOT NULL,
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `txt` (`wmc`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This table allows extensible text values to be added to cont' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cor_tbl_wmc`
--

INSERT INTO `cor_tbl_wmc` (`id`, `name`, `comments`, `wmc`, `scales`, `extents`, `projection`, `zoom`, `legend_array`, `OSM`, `gmap_api_key`, `public`, `cre_by`, `cre_on`) VALUES
(1, 'Results Map', 'Basic Open Street Map background for spatial results and subforms', '<ViewContext xmlns="http://www.opengis.net/context" version="1.1.0" id="OpenLayers_Context_133" xsi:schemaLocation="http://www.opengis.net/context http://schemas.opengis.net/context/1.1.0/context.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"><General><Window width="600" height="500"/><BoundingBox minx="-8330.97084512989932" miny="6712029.89360880014" maxx="-7614.37370508470030" maxy="6712627.05789219961" SRS="EPSG:27700"/><Title/><Extension><ol:maxExtent xmlns:ol="http://openlayers.org/context" minx="-8051.69436270589995" miny="6712278.20026940014" maxx="-7893.65018750859963" maxy="6712378.75123149995"/></Extension></General><LayerList/></ViewContext>', '50000,25000,10000,7500,5000,2500,1000,500,250,50', '-8330.9708451299,6712029.8936088,-7614.3737050847,6712627.0578922', 'EPSG:27700', 17, 'a:1:{s:7:"servers";a:1:{i:0;a:3:{s:3:"url";s:95:"http://www2.dmsolutions.ca/cgi-bin/mswms_gmap?Service=WMS&VERSION=1.1.0&REQUEST=GetCapabilities";s:5:"title";s:20:"GMap WMS Demo Server";s:6:"layers";a:11:{i:0;a:3:{s:4:"name";s:10:"bathymetry";s:5:"title";s:20:"Elevation/Bathymetry";s:9:"queryable";i:0;}i:1;a:4:{s:4:"name";s:7:"land_fn";s:5:"title";s:13:"Foreign Lands";s:9:"queryable";i:0;s:9:"sld_array";a:1:{i:0;a:4:{s:4:"name";s:13:"Foreign Lands";s:6:"colour";s:7:"#f0f0f0";s:7:"opacity";s:4:"1.00";s:4:"type";i:2;}}}i:2;a:4:{s:4:"name";s:4:"park";s:5:"title";s:5:"Parks";s:9:"queryable";i:0;s:9:"sld_array";a:1:{i:0;a:4:{s:4:"name";s:5:"Parks";s:6:"colour";s:7:"#c8ff00";s:7:"opacity";s:4:"1.00";s:4:"type";i:2;}}}i:3;a:4:{s:4:"name";s:8:"drain_fn";s:5:"title";s:5:"Water";s:9:"queryable";i:0;s:9:"sld_array";a:1:{i:0;a:4:{s:4:"name";s:5:"Water";s:6:"colour";s:7:"#e1f9ff";s:7:"opacity";s:4:"1.00";s:4:"type";i:2;}}}i:4;a:4:{s:4:"name";s:8:"drainage";s:5:"title";s:8:"Drainage";s:9:"queryable";i:0;s:9:"sld_array";a:1:{i:0;a:4:{s:4:"name";s:5:"Water";s:6:"colour";s:7:"#e1f9ff";s:7:"opacity";s:4:"1.00";s:4:"type";i:2;}}}i:5;a:4:{s:4:"name";s:10:"prov_bound";s:5:"title";s:8:"Province";s:9:"queryable";i:0;s:9:"sld_array";a:1:{i:0;a:3:{s:4:"name";s:8:"Province";s:6:"colour";s:7:"#787878";s:4:"type";i:1;}}}i:6;a:4:{s:4:"name";s:8:"fedlimit";s:5:"title";s:13:"Federal Limit";s:9:"queryable";i:0;s:9:"sld_array";a:1:{i:0;a:3:{s:4:"name";s:13:"Federal Limit";s:6:"colour";s:7:"#0077ff";s:4:"type";i:1;}}}i:7;a:4:{s:4:"name";s:4:"rail";s:5:"title";s:9:"Railroads";s:9:"queryable";i:0;s:9:"sld_array";a:1:{i:0;a:3:{s:4:"name";s:9:"Railroads";s:6:"colour";s:7:"#a800b8";s:4:"type";i:1;}}}i:8;a:4:{s:4:"name";s:4:"road";s:5:"title";s:5:"Roads";s:9:"queryable";i:0;s:9:"sld_array";a:1:{i:0;a:3:{s:4:"name";s:5:"Roads";s:6:"colour";s:7:"#dc0000";s:4:"type";i:1;}}}i:9;a:4:{s:4:"name";s:8:"popplace";s:5:"title";s:6:"Cities";s:9:"queryable";i:0;s:9:"sld_array";a:2:{i:0;a:3:{s:4:"name";s:6:"Cities";s:6:"colour";s:7:"#000000";s:4:"type";i:0;}i:1;a:3:{s:4:"name";s:6:"Cities";s:6:"colour";s:7:"#000000";s:4:"type";i:0;}}}i:10;a:4:{s:4:"name";s:4:"grid";s:5:"title";s:4:"Grid";s:9:"queryable";i:0;s:9:"sld_array";a:1:{i:0;a:3:{s:4:"name";s:9:"Graticule";s:6:"colour";s:7:"#000000";s:4:"type";i:1;}}}}}}}', 1, '', 1, 1, '2011-07-22 15:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_wwwpages`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_wwwpages` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortposs` int(3) NOT NULL DEFAULT '0',
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sgrp` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `navname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `navlinkvars` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `defaultvars` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `cre_by` int(3) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=16 ;

--
-- Dumping data for table `cor_tbl_wwwpages`
--

INSERT INTO `cor_tbl_wwwpages` (`id`, `name`, `title`, `sortposs`, `file`, `sgrp`, `navname`, `navlinkvars`, `defaultvars`, `cre_by`, `cre_on`) VALUES
(1, 'User Home', 'User Home Page', 1, 'user_home.php', '1', 'home', '?view=home', 'pownergrp|1,default_view|home,cur_page|user_home,cur_code_dir|php/user_home/', 2, '2005-11-08 00:00:00'),
(2, 'Data Entry', 'Data Entry', 3, 'data_entry.php', '1', 'data entry', '?view=home', 'pownergrp|1,default_view|home,cur_page|data_entry,cur_code_dir|php/data_entry/', 2, '2005-11-08 00:00:00'),
(3, 'User Admin', 'User Admin', 2, 'user_admin.php', '2', 'users', '?view=home', 'cur_code_dir|php/user_admin/', 2, '2006-05-26 00:00:00'),
(4, 'Data Viewing', 'Data Viewing', 4, 'data_view.php', '1', 'search', '?view=standard', 'pownergrp|1,default_view|home,cur_page|data_view,cur_code_dir|php/data_view/', 1, '2006-05-31 00:00:00'),
(7, 'micro_view', 'Micro Viewer', 5, 'micro_view.php', '1', 'record view', '?view=home', 'default_view|home,cur_page|micro_view,cur_code_dir|php/micro_view/', 2, '2006-06-06 00:00:00'),
(8, 'map_view', 'Map Viewer', 6, 'map_view.php', '1', 'map view', '?view=home', 'default_view|home,cur_page|map_view,cur_code_dir|php/map_view/', 1, '2006-09-11 00:00:00'),
(9, 'import_tools', 'Import Tools', 7, 'import.php', '2', 'import', '?view=home', 'default_view|home,cur_page|import_tools,cur_code_dir|php/import/', 4, '2007-05-18 00:00:00'),
(10, 'map_admin', 'Map Admin', 6, 'map_admin.php', '2', 'map admin', '?view=home', 'default_view|home,cur_page|map_admin,cur_code_dir|php/map_admin/', 4, '2007-05-18 00:00:00'),
(11, 'alias_admin', 'Alias Admin', 7, 'alias_admin.php', '2', 'aliases', '?view=home', 'default_view|home,cur_page|alias_admin,cur_code_dir|php/alias_admin/', 1, '2007-05-18 00:00:00'),
(12, 'markup_admin', 'Markup Admin', 7, 'markup_admin.php', '2', 'markup', '?view=home', 'default_view|home,cur_page|markup_admin,cur_code_dir|php/markup_admin/', 1, '2007-05-18 00:00:00'),
(15, 'overlay_holder', 'Overlay', 10, 'overlay_holder.php', '3', 'Overlay', '?view=home', 'default_view|home,cur_page|overlay_holder,cur_code_dir|php/overlay_holder/', 1, '2006-06-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cor_tbl_xmi`
--

CREATE TABLE IF NOT EXISTS `cor_tbl_xmi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemkey` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `itemvalue` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xmi_itemkey` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xmi_itemvalue` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cxt_lut_cxttype`
--

CREATE TABLE IF NOT EXISTS `cxt_lut_cxttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cxttype` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cre_by` int(11) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='This lookup table supplys different types of text to be link' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cxt_lut_cxttype`
--

INSERT INTO `cxt_lut_cxttype` (`id`, `cxttype`, `cre_by`, `cre_on`) VALUES
(1, 'SU', 1, '2011-07-22 00:00:00'),
(2, 'SSU', 1, '2011-07-22 00:00:00'),
(3, 'HRU', 1, '2011-07-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cxt_tbl_cxt`
--

CREATE TABLE IF NOT EXISTS `cxt_tbl_cxt` (
  `cxt_cd` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cxt_no` int(10) NOT NULL DEFAULT '0',
  `ste_cd` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cxttype` int(3) NOT NULL DEFAULT '0',
  `cre_by` int(4) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`cxt_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gph_tbl_gph`
--

CREATE TABLE IF NOT EXISTS `gph_tbl_gph` (
  `gph_cd` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `gph_no` int(10) NOT NULL DEFAULT '0',
  `ste_cd` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cre_by` int(4) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`gph_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pln_tbl_pln`
--

CREATE TABLE IF NOT EXISTS `pln_tbl_pln` (
  `pln_cd` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pln_no` int(10) NOT NULL DEFAULT '0',
  `ste_cd` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cre_by` int(4) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`pln_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spf_tbl_spf`
--

CREATE TABLE IF NOT EXISTS `spf_tbl_spf` (
  `spf_cd` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `spf_no` int(10) NOT NULL DEFAULT '0',
  `ste_cd` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cre_by` int(4) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`spf_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sph_tbl_sph`
--

CREATE TABLE IF NOT EXISTS `sph_tbl_sph` (
  `sph_cd` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sph_no` int(10) NOT NULL DEFAULT '0',
  `ste_cd` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cre_by` int(4) NOT NULL DEFAULT '0',
  `cre_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`sph_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
