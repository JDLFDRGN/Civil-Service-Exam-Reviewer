-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 16, 2023 at 02:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity`
--

CREATE TABLE `tbl_activity` (
  `activityID` int(11) NOT NULL,
  `fileValue` varchar(255) NOT NULL,
  `dateTimeStarted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_activity`
--

INSERT INTO `tbl_activity` (`activityID`, `fileValue`, `dateTimeStarted`) VALUES
(1, 'activity6485914fc95b0', '2023-06-11 17:18:07'),
(2, 'activity6485916b96c29', '2023-06-11 17:18:35'),
(3, 'activity648591c59debc', '2023-06-11 17:20:05'),
(4, 'activity648591f10a1fc', '2023-06-11 17:20:49'),
(5, 'activity6485931f8b66e', '2023-06-11 17:25:51'),
(6, 'activity648593466d288', '2023-06-11 17:26:30'),
(7, 'activity6485936074d68', '2023-06-11 17:26:56'),
(8, 'activity6485939a87e23', '2023-06-11 17:27:54'),
(9, 'activity648593fe6e77b', '2023-06-11 17:29:34'),
(10, 'activity6485946f8a389', '2023-06-11 17:31:27'),
(11, 'activity648594e58815f', '2023-06-11 17:33:25'),
(12, 'activity648595234d680', '2023-06-11 17:34:27'),
(13, 'activity64859554e93df', '2023-06-11 17:35:16'),
(14, 'activity64859575714c5', '2023-06-11 17:35:49'),
(15, 'activity648596b1cb504', '2023-06-11 17:41:05'),
(16, 'activity648596ddb91c4', '2023-06-11 17:41:49'),
(17, 'activity648596f83dd77', '2023-06-11 17:42:16'),
(18, 'activity6485972746716', '2023-06-11 17:43:03'),
(19, 'activity6485973b7553b', '2023-06-11 17:43:23'),
(20, 'activity6485975f90813', '2023-06-11 17:43:59'),
(21, 'activity648597a3401dd', '2023-06-11 17:45:07'),
(22, 'activity648597ca5b837', '2023-06-11 17:45:46'),
(23, 'activity648598069feee', '2023-06-11 17:46:46'),
(24, 'activity6485981974ef1', '2023-06-11 17:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_choice`
--

CREATE TABLE `tbl_choice` (
  `choiceID` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `choice` varchar(255) DEFAULT NULL,
  `questionID` int(11) DEFAULT NULL,
  `dateTimeCreated` datetime DEFAULT NULL,
  `dateTimeUpdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_choice`
--

INSERT INTO `tbl_choice` (`choiceID`, `label`, `choice`, `questionID`, `dateTimeCreated`, `dateTimeUpdated`) VALUES
(1, 'A', 'Loves', 1, '2023-06-05 18:35:57', NULL),
(2, 'B', 'Grasps', 1, '2023-06-05 18:35:57', NULL),
(3, 'C', 'Hates', 1, '2023-06-05 18:35:57', NULL),
(4, 'D', 'Uses', 1, '2023-06-05 18:35:57', NULL),
(5, 'A', 'summary', 2, '2023-06-05 18:38:19', NULL),
(6, 'B', 'teaser', 2, '2023-06-05 18:38:19', NULL),
(7, 'C', 'blog', 2, '2023-06-05 18:38:19', NULL),
(8, 'D', 'plot', 2, '2023-06-05 18:38:19', NULL),
(9, 'A', 'set it on fire', 3, '2023-06-05 18:45:48', NULL),
(10, 'B', 'destroy it with bombs', 3, '2023-06-05 18:45:48', NULL),
(11, 'C', 'negotiate peace between warring tribes', 3, '2023-06-05 18:45:48', NULL),
(12, 'D', 'ransack it and steal as much as you can', 3, '2023-06-05 18:45:48', NULL),
(13, 'A', 'repeated', 4, '2023-06-05 18:47:19', NULL),
(14, 'B', 'tolerated', 4, '2023-06-05 18:47:19', NULL),
(15, 'C', 'forgiven', 4, '2023-06-05 18:47:19', NULL),
(16, 'D', 'corrected', 4, '2023-06-05 18:47:19', NULL),
(17, 'E', 'committed', 4, '2023-06-05 18:47:19', NULL),
(18, 'A', 'unforgettable', 5, '2023-06-05 18:48:51', NULL),
(19, 'B', 'threatening', 5, '2023-06-05 18:48:51', NULL),
(20, 'C', 'ugly', 5, '2023-06-05 18:48:51', NULL),
(21, 'D', 'remarkable', 5, '2023-06-05 18:48:51', NULL),
(22, 'A', 'naive', 6, '2023-06-05 18:53:15', NULL),
(23, 'B', 'unbelievable', 6, '2023-06-05 18:53:15', NULL),
(24, 'C', 'assertive', 6, '2023-06-05 18:53:15', NULL),
(25, 'D', 'unclear', 6, '2023-06-05 18:53:15', NULL),
(26, 'A', 'Getting rid of', 7, '2023-06-05 18:57:54', NULL),
(27, 'B', 'Speeding up', 7, '2023-06-05 18:57:54', NULL),
(28, 'C', 'Relieving of', 7, '2023-06-05 18:57:54', NULL),
(29, 'D', 'Making easier', 7, '2023-06-05 18:57:54', NULL),
(30, 'A', 'untidy', 8, '2023-06-05 19:01:40', NULL),
(31, 'B', 'ill-tempered', 8, '2023-06-05 19:01:40', NULL),
(32, 'C', 'dizzy', 8, '2023-06-05 19:01:40', NULL),
(33, 'D', 'disorganized', 8, '2023-06-05 19:01:40', NULL),
(34, 'E', 'weak', 8, '2023-06-05 19:01:40', NULL),
(35, 'A', 'can be easily manipulated', 9, '2023-06-05 19:09:14', NULL),
(36, 'B', 'have adopted their beliefs from another', 9, '2023-06-05 19:09:14', NULL),
(37, 'C', 'hold their beliefs deeply and passionately', 9, '2023-06-05 19:09:14', NULL),
(38, 'D', 'change their beliefs frequently', 9, '2023-06-05 19:09:14', NULL),
(39, 'A', 'level', 10, '2023-06-05 19:12:41', NULL),
(40, 'B', 'same', 10, '2023-06-05 19:12:41', NULL),
(41, 'C', 'deified', 10, '2023-06-05 19:12:41', NULL),
(42, 'D', 'noon', 10, '2023-06-05 19:12:41', NULL),
(43, 'E', 'murdrum', 10, '2023-06-05 19:12:41', NULL),
(44, 'A', 'pretentious', 11, '2023-06-05 19:15:20', NULL),
(45, 'B', 'ambitious', 11, '2023-06-05 19:15:20', NULL),
(46, 'C', 'gorgeous', 11, '2023-06-05 19:15:20', NULL),
(47, 'D', 'rebellious', 11, '2023-06-05 19:15:20', NULL),
(48, 'A', 'different', 12, '2023-06-05 19:17:07', NULL),
(49, 'B', 'weird', 12, '2023-06-05 19:17:07', NULL),
(50, 'C', 'beautiful', 12, '2023-06-05 19:17:07', NULL),
(51, 'D', 'colorful', 12, '2023-06-05 19:17:07', NULL),
(52, 'A', 'are involved in a secret plot', 13, '2023-06-05 19:19:28', NULL),
(53, 'B', 'are participating in a protest', 13, '2023-06-05 19:19:28', NULL),
(54, 'C', 'belong to the majority', 13, '2023-06-05 19:19:28', NULL),
(55, 'D', 'are fighting against the enemy', 13, '2023-06-05 19:19:28', NULL),
(56, 'A', 'acceptable', 14, '2023-06-05 19:21:48', NULL),
(57, 'B', 'objectionable', 14, '2023-06-05 19:21:48', NULL),
(58, 'C', 'beneficial', 14, '2023-06-05 19:21:48', NULL),
(59, 'D', 'degrading', 14, '2023-06-05 19:21:48', NULL),
(60, 'E', 'embarassing', 14, '2023-06-05 19:21:48', NULL),
(61, 'A', 'angers', 15, '2023-06-06 10:14:56', NULL),
(62, 'B', 'calls up', 15, '2023-06-06 10:14:56', NULL),
(63, 'C', 'erases', 15, '2023-06-06 10:14:56', NULL),
(64, 'D', 'confuses', 15, '2023-06-06 10:14:56', NULL),
(65, 'A', 'diet', 16, '2023-06-06 10:30:47', NULL),
(66, 'B', 'environment', 16, '2023-06-06 10:30:47', NULL),
(67, 'C', 'exercise', 16, '2023-06-06 10:30:47', NULL),
(68, 'D', 'medicine', 16, '2023-06-06 10:30:47', NULL),
(69, 'A', 'are disloyal', 17, '2023-06-06 10:33:09', NULL),
(70, 'B', 'are usually calm and peaceful', 17, '2023-06-06 10:33:09', NULL),
(71, 'C', 'are always trying to pick up a fight', 17, '2023-06-06 10:33:09', NULL),
(72, 'D', 'are not to be trusted', 17, '2023-06-06 10:33:09', NULL),
(73, 'A', 'a period of extended peace', 18, '2023-06-06 10:34:56', NULL),
(74, 'B', 'an invasion', 18, '2023-06-06 10:34:56', NULL),
(75, 'C', 'total devastation and destruction', 18, '2023-06-06 10:34:56', NULL),
(76, 'D', 'a time of anarchy', 18, '2023-06-06 10:34:56', NULL),
(77, 'A', 'musical, soothing', 19, '2023-06-06 10:36:37', NULL),
(78, 'B', 'plain, uninteresting', 19, '2023-06-06 10:36:37', NULL),
(79, 'C', 'sorrowful, mournful', 19, '2023-06-06 10:36:37', NULL),
(80, 'D', 'loud, jarring', 19, '2023-06-06 10:36:37', NULL),
(81, 'A', 'crawl', 20, '2023-06-06 10:39:15', NULL),
(82, 'B', 'take pictures', 20, '2023-06-06 10:39:15', NULL),
(83, 'C', 'sunbathe', 20, '2023-06-06 10:39:15', NULL),
(84, 'D', 'play cheerfully', 20, '2023-06-06 10:39:15', NULL),
(85, 'A', 'criteria', 21, '2023-06-06 10:42:00', NULL),
(86, 'B', 'paradox', 21, '2023-06-06 10:42:00', NULL),
(87, 'C', 'cure-all', 21, '2023-06-06 10:42:00', NULL),
(88, 'D', 'answer', 21, '2023-06-06 10:42:00', NULL),
(89, 'A', 'very musculine', 22, '2023-06-06 10:44:16', NULL),
(90, 'B', 'very handsome', 22, '2023-06-06 10:44:16', NULL),
(91, 'C', 'very attractive', 22, '2023-06-06 10:44:16', NULL),
(92, 'D', 'very intelligent', 22, '2023-06-06 10:44:16', NULL),
(93, 'A', 'swiftness', 23, '2023-06-06 10:54:32', NULL),
(94, 'B', 'monotony', 23, '2023-06-06 10:54:32', NULL),
(95, 'C', 'excitement', 23, '2023-06-06 10:54:32', NULL),
(96, 'D', 'fatigue', 23, '2023-06-06 10:54:32', NULL),
(97, 'A', 'plan to retaliate', 24, '2023-06-06 10:57:35', NULL),
(98, 'B', 'plan to surrender', 24, '2023-06-06 10:57:35', NULL),
(99, 'C', 'hope to negotiate a cease-fire', 24, '2023-06-06 10:57:35', NULL),
(100, 'D', 'plan to desert the army', 24, '2023-06-06 10:57:35', NULL),
(101, 'A', 'Disrespectful', 25, '2023-06-06 11:00:12', NULL),
(102, 'B', 'Irritable', 25, '2023-06-06 11:00:12', NULL),
(103, 'C', 'Frightening', 25, '2023-06-06 11:00:12', NULL),
(104, 'D', 'Fond of cussing', 25, '2023-06-06 11:00:12', NULL),
(105, 'A', 'has been invaded', 26, '2023-06-06 11:04:01', NULL),
(106, 'B', 'has had a natural disaster', 26, '2023-06-06 11:04:01', NULL),
(107, 'C', 'is in a depression', 26, '2023-06-06 11:04:01', NULL),
(108, 'D', 'has seceded to form a new state', 26, '2023-06-06 11:04:01', NULL),
(109, 'A', 'Imperative', 27, '2023-06-06 11:06:45', NULL),
(110, 'B', 'Very lucky', 27, '2023-06-06 11:06:45', NULL),
(111, 'C', 'Conducive to success', 27, '2023-06-06 11:06:45', NULL),
(112, 'D', 'A good sign', 27, '2023-06-06 11:06:45', NULL),
(113, 'A', 'the leader of your country', 28, '2023-06-06 11:09:36', NULL),
(114, 'B', 'the person who decides your fate', 28, '2023-06-06 11:09:36', NULL),
(115, 'C', 'the cause of your misfortunes', 28, '2023-06-06 11:09:36', NULL),
(116, 'D', 'your guarding angel', 28, '2023-06-06 11:09:36', NULL),
(117, 'A', 'had an accident', 29, '2023-06-06 11:11:47', NULL),
(118, 'B', 'had a heated argument', 29, '2023-06-06 11:11:47', NULL),
(119, 'C', 'were a part of a conspiracy', 29, '2023-06-06 11:11:47', NULL),
(120, 'D', 'served in a war', 29, '2023-06-06 11:11:47', NULL),
(121, 'A', 'evaluate', 30, '2023-06-06 11:13:50', NULL),
(122, 'B', 'justify', 30, '2023-06-06 11:13:50', NULL),
(123, 'C', 'accelerate', 30, '2023-06-06 11:13:50', NULL),
(124, 'D', 'reverse', 30, '2023-06-06 11:13:50', NULL),
(125, 'A', 'a football for her little brother', 31, '2023-06-06 12:21:43', NULL),
(126, 'B', 'to her little brother a football', 31, '2023-06-06 12:21:43', NULL),
(127, 'C', 'a football her little brother', 31, '2023-06-06 12:21:43', NULL),
(128, 'D', 'her little brother a football', 31, '2023-06-06 12:21:43', NULL),
(129, 'A', 'very expensive', 32, '2023-06-06 15:29:01', NULL),
(130, 'B', 'met an accident', 32, '2023-06-06 15:29:01', NULL),
(131, 'C', 'was stolen', 32, '2023-06-06 15:29:01', NULL),
(132, 'D', 'got fired', 32, '2023-06-06 15:29:01', NULL),
(133, 'A', 'secret strategy', 33, '2023-06-06 15:30:20', NULL),
(134, 'B', 'amulet', 33, '2023-06-06 15:30:20', NULL),
(135, 'C', 'strong point', 33, '2023-06-06 15:30:20', NULL),
(136, 'D', 'weak spot', 33, '2023-06-06 15:30:20', NULL),
(137, 'A', 'Complaisant', 34, '2023-06-06 15:31:57', NULL),
(138, 'B', 'Climactic', 34, '2023-06-06 15:31:57', NULL),
(139, 'C', 'Intensly', 34, '2023-06-06 15:31:57', NULL),
(140, 'D', 'Biennial', 34, '2023-06-06 15:31:57', NULL),
(141, 'A', 'reuncarnation', 35, '2023-06-06 15:33:32', NULL),
(142, 'B', 'riincarnation', 35, '2023-06-06 15:33:32', NULL),
(143, 'C', 'reincarnation', 35, '2023-06-06 15:33:32', NULL),
(144, 'D', 'rincarnation', 35, '2023-06-06 15:33:32', NULL),
(145, 'A', 'how', 36, '2023-06-06 15:34:10', NULL),
(146, 'B', 'if', 36, '2023-06-06 15:34:10', NULL),
(147, 'C', 'that', 36, '2023-06-06 15:34:10', NULL),
(148, 'D', 'when', 36, '2023-06-06 15:34:10', NULL),
(149, 'A', 'unemployeds', 37, '2023-06-06 15:35:01', NULL),
(150, 'B', 'unemployment', 37, '2023-06-06 15:35:01', NULL),
(151, 'C', 'unemployments', 37, '2023-06-06 15:35:01', NULL),
(152, 'D', 'unemployed', 37, '2023-06-06 15:35:01', NULL),
(153, 'A', 'frequently', 38, '2023-06-06 15:36:03', NULL),
(154, 'B', 'frequintly', 38, '2023-06-06 15:36:03', NULL),
(155, 'C', 'frequentley', 38, '2023-06-06 15:36:03', NULL),
(156, 'D', 'frequently', 38, '2023-06-06 15:36:03', NULL),
(157, 'A', 'No error', 39, '2023-06-06 15:38:25', NULL),
(158, 'B', 'warm than', 39, '2023-06-06 15:38:25', NULL),
(159, 'C', 'In winter', 39, '2023-06-06 15:38:25', NULL),
(160, 'D', 'are', 39, '2023-06-06 15:38:25', NULL),
(161, 'A', 'aspirations', 40, '2023-06-06 15:39:15', NULL),
(162, 'B', 'asparations', 40, '2023-06-06 15:39:15', NULL),
(163, 'C', 'aspirrations', 40, '2023-06-06 15:39:15', NULL),
(164, 'D', 'asspirations', 40, '2023-06-06 15:39:15', NULL),
(165, 'A', 'acent', 41, '2023-06-06 15:40:00', NULL),
(166, 'B', 'ascent', 41, '2023-06-06 15:40:00', NULL),
(167, 'C', 'accent', 41, '2023-06-06 15:40:00', NULL),
(168, 'D', 'assent', 41, '2023-06-06 15:40:00', NULL),
(169, 'A', 'most cleanest', 42, '2023-06-06 15:42:31', NULL),
(170, 'B', 'No error', 42, '2023-06-06 15:42:31', NULL),
(171, 'C', 'Metro Manila', 42, '2023-06-06 15:42:31', NULL),
(172, 'D', 'was adjudged', 42, '2023-06-06 15:42:31', NULL),
(173, 'A', 'earn his own money', 43, '2023-06-06 15:43:57', NULL),
(174, 'B', 'have self-respect', 43, '2023-06-06 15:43:57', NULL),
(175, 'C', 'always tries his best', 43, '2023-06-06 15:43:57', NULL),
(176, 'D', 'be self-reliant', 43, '2023-06-06 15:43:57', NULL),
(177, 'A', 'No error', 44, '2023-06-06 15:45:21', NULL),
(178, 'B', 'experienced', 44, '2023-06-06 15:45:21', NULL),
(179, 'C', 'you', 44, '2023-06-06 15:45:21', NULL),
(180, 'D', 'Have', 44, '2023-06-06 15:45:21', NULL),
(181, 'A', 'adapted', 45, '2023-06-06 15:46:56', NULL),
(182, 'B', 'adopted', 45, '2023-06-06 15:46:56', NULL),
(183, 'C', 'adepted', 45, '2023-06-06 15:46:56', NULL),
(184, 'D', 'made', 45, '2023-06-06 15:46:56', NULL),
(185, 'A', 'anonimous', 46, '2023-06-06 15:48:08', NULL),
(186, 'B', 'anounymous', 46, '2023-06-06 15:48:08', NULL),
(187, 'C', 'anonymous', 46, '2023-06-06 15:48:08', NULL),
(188, 'D', 'anynonimous', 46, '2023-06-06 15:48:08', NULL),
(189, 'A', 'constantly ..... landmark', 47, '2023-06-06 15:50:26', NULL),
(190, 'B', 'merely ..... surprise', 47, '2023-06-06 15:50:26', NULL),
(191, 'C', 'eternally ..... Involuntary', 47, '2023-06-06 15:50:26', NULL),
(192, 'D', 'perennially ..... contradictory', 47, '2023-06-06 15:50:26', NULL),
(193, 'A', 'allusion', 48, '2023-06-06 15:51:38', NULL),
(194, 'B', 'loathe', 48, '2023-06-06 15:51:38', NULL),
(195, 'C', 'tortous', 48, '2023-06-06 15:51:38', NULL),
(196, 'D', 'adduce', 48, '2023-06-06 15:51:38', NULL),
(197, 'A', 'she\'s ', 50, '2023-06-06 15:53:55', NULL),
(198, 'B', 'her', 50, '2023-06-06 15:53:55', NULL),
(199, 'C', 'she is', 50, '2023-06-06 15:53:55', NULL),
(200, 'D', 'hers', 50, '2023-06-06 15:53:55', NULL),
(201, 'A', 'on the highway', 51, '2023-06-06 15:56:00', NULL),
(202, 'B', 'No error', 51, '2023-06-06 15:56:00', NULL),
(203, 'C', 'laying', 51, '2023-06-06 15:56:00', NULL),
(204, 'D', 'the next morning', 51, '2023-06-06 15:56:00', NULL),
(205, 'A', 'however', 52, '2023-06-06 15:57:17', NULL),
(206, 'B', 'although', 52, '2023-06-06 15:57:17', NULL),
(207, 'C', 'even', 52, '2023-06-06 15:57:17', NULL),
(208, 'D', 'moreover', 52, '2023-06-06 15:57:17', NULL),
(209, 'A', 'reached home safely', 53, '2023-06-06 15:58:28', NULL),
(210, 'B', 'realized their mistakes', 53, '2023-06-06 15:58:28', NULL),
(211, 'C', 'defeated the enemies', 53, '2023-06-06 15:58:28', NULL),
(212, 'D', 'survived the crisis', 53, '2023-06-06 15:58:28', NULL),
(213, 'A', 'of the theatre', 54, '2023-06-06 16:01:12', NULL),
(214, 'B', 'On the time', 54, '2023-06-06 16:01:12', NULL),
(215, 'C', 'No error', 54, '2023-06-06 16:01:12', NULL),
(216, 'D', 'has assembled', 54, '2023-06-06 16:01:12', NULL),
(217, 'A', 'pare', 55, '2023-06-06 16:02:21', NULL),
(218, 'B', 'pear', 55, '2023-06-06 16:02:21', NULL),
(219, 'C', 'pair', 55, '2023-06-06 16:02:21', NULL),
(220, 'D', 'peer', 55, '2023-06-06 16:02:21', NULL),
(221, 'A', 'bcommitment', 56, '2023-06-06 16:04:31', NULL),
(222, 'B', 'commitment', 56, '2023-06-06 16:04:31', NULL),
(223, 'C', 'comittment', 56, '2023-06-06 16:04:31', NULL),
(224, 'D', 'comitment', 56, '2023-06-06 16:04:31', NULL),
(225, 'A', 'It was him', 57, '2023-06-06 16:06:47', NULL),
(226, 'B', 'was', 57, '2023-06-06 16:06:47', NULL),
(227, 'C', 'his', 57, '2023-06-06 16:06:47', NULL),
(228, 'D', 'No error', 57, '2023-06-06 16:06:47', NULL),
(229, 'A', 'legible', 58, '2023-06-06 16:08:11', NULL),
(230, 'B', 'satisfactory', 58, '2023-06-06 16:08:11', NULL),
(231, 'C', 'important', 58, '2023-06-06 16:08:11', NULL),
(232, 'D', 'longed', 58, '2023-06-06 16:08:11', NULL),
(233, 'A', 'are', 59, '2023-06-06 16:09:18', NULL),
(234, 'B', 'not take', 59, '2023-06-06 16:09:18', NULL),
(235, 'C', 'No error', 59, '2023-06-06 16:09:18', NULL),
(236, 'D', 'than', 59, '2023-06-06 16:09:18', NULL),
(237, 'A', 'smell', 60, '2023-06-06 16:11:20', NULL),
(238, 'B', 'No error', 60, '2023-06-06 16:11:20', NULL),
(239, 'C', 'receiving', 60, '2023-06-06 16:11:20', NULL),
(240, 'D', 'sweetly', 60, '2023-06-06 16:11:20', NULL),
(241, 'A', 'ABCD', 61, '2023-06-06 18:55:08', NULL),
(242, 'B', 'DCBA', 61, '2023-06-06 18:55:08', NULL),
(243, 'C', 'ACDB', 61, '2023-06-06 18:55:08', NULL),
(244, 'D', 'ADBC', 61, '2023-06-06 18:55:08', NULL),
(245, 'A', 'BCDA', 62, '2023-06-07 08:44:05', NULL),
(246, 'B', 'BDAC', 62, '2023-06-07 08:44:05', NULL),
(247, 'C', 'BADC', 62, '2023-06-07 08:44:05', NULL),
(248, 'D', 'BCAD', 62, '2023-06-07 08:44:05', NULL),
(249, 'A', 'DACEB', 63, '2023-06-07 08:47:46', NULL),
(250, 'B', 'ABCDE', 63, '2023-06-07 08:47:46', NULL),
(251, 'C', 'EADCB', 63, '2023-06-07 08:47:46', NULL),
(252, 'D', 'EDCBA', 63, '2023-06-07 08:47:46', NULL),
(253, 'A', 'BCAD', 64, '2023-06-07 08:50:18', NULL),
(254, 'B', 'CBAD', 64, '2023-06-07 08:50:18', NULL),
(255, 'C', 'DACB', 64, '2023-06-07 08:50:18', NULL),
(256, 'D', 'DBAC', 64, '2023-06-07 08:50:18', NULL),
(257, 'A', 'ABCD', 65, '2023-06-07 08:53:21', NULL),
(258, 'B', 'BACD', 65, '2023-06-07 08:53:21', NULL),
(259, 'C', 'CBAD', 65, '2023-06-07 08:53:21', NULL),
(260, 'D', 'DBCA', 65, '2023-06-07 08:53:21', NULL),
(261, 'A', 'CDBEA', 66, '2023-06-07 08:56:22', NULL),
(262, 'B', 'BCDEA', 66, '2023-06-07 08:56:22', NULL),
(263, 'C', 'ADBEC', 66, '2023-06-07 08:56:22', NULL),
(264, 'D', 'ACDBE', 66, '2023-06-07 08:56:22', NULL),
(265, 'A', 'CDAB', 67, '2023-06-07 08:58:59', NULL),
(266, 'B', 'ADCB', 67, '2023-06-07 08:58:59', NULL),
(267, 'C', 'ADBC', 67, '2023-06-07 08:58:59', NULL),
(268, 'D', 'CBAD', 67, '2023-06-07 08:58:59', NULL),
(269, 'A', 'BACD', 68, '2023-06-07 09:02:17', NULL),
(270, 'B', 'ABCD', 68, '2023-06-07 09:02:17', NULL),
(271, 'C', 'BCDA', 68, '2023-06-07 09:02:17', NULL),
(272, 'D', 'CDBA', 68, '2023-06-07 09:02:17', NULL),
(273, 'A', 'DBCA', 69, '2023-06-07 09:05:12', NULL),
(274, 'B', 'DCBA', 69, '2023-06-07 09:05:12', NULL),
(275, 'C', 'ADBC', 69, '2023-06-07 09:05:12', NULL),
(276, 'D', 'CBAD', 69, '2023-06-07 09:05:12', NULL),
(277, 'A', 'ACBD', 70, '2023-06-07 09:07:54', NULL),
(278, 'B', 'BACD', 70, '2023-06-07 09:07:54', NULL),
(279, 'C', 'ABCD', 70, '2023-06-07 09:07:54', NULL),
(280, 'D', 'ACDB', 70, '2023-06-07 09:07:54', NULL),
(281, 'A', 'people have different tastes and interests', 71, '2023-06-07 09:12:43', NULL),
(282, 'B', 'people have varied ways of looking at different things', 71, '2023-06-07 09:12:43', NULL),
(283, 'C', 'people see things differently depending on their own perspective', 71, '2023-06-07 09:12:43', NULL),
(284, 'D', 'some people are more blind than others', 71, '2023-06-07 09:12:43', NULL),
(285, 'A', 'A eustress is advised to be chosen over distress', 72, '2023-06-07 09:18:31', NULL),
(286, 'B', 'A disagreement with a colleague at work is a challenging event', 72, '2023-06-07 09:18:31', NULL),
(287, 'C', 'Spiritual growth is the result of a disagreement with a colleague at work', 72, '2023-06-07 09:18:31', NULL),
(288, 'D', 'A disagreement with a colleague at work can be can opportunity for spiritual growth', 72, '2023-06-07 09:18:31', NULL),
(289, 'A', 'The number of ties appear to have increased after this rule change', 73, '2023-06-07 09:25:14', NULL),
(290, 'B', 'The number of ties appear to have stayed the same after this rule change', 73, '2023-06-07 09:25:14', NULL),
(291, 'C', 'There\'s not enough information to determine if this rule change impacted the number of ties', 73, '2023-06-07 09:25:14', NULL),
(292, 'D', 'The number of ties appear to have been reduced after this rule change', 73, '2023-06-07 09:25:14', NULL),
(293, 'A', 'It reveals the first statement', 74, '2023-06-07 09:27:09', NULL),
(294, 'B', 'It offers a solution', 74, '2023-06-07 09:27:09', NULL),
(295, 'C', 'It contradicts the first statement', 74, '2023-06-07 09:27:09', NULL),
(296, 'D', 'It reinforce the first element', 74, '2023-06-07 09:27:09', NULL),
(297, 'A', 'baby carriage sales have dramatically rised in the last 75 years', 75, '2023-06-07 09:36:16', NULL),
(298, 'B', 'the initial design of the baby carriage was not safe', 75, '2023-06-07 09:36:16', NULL),
(299, 'C', 'Burto had many inventions that he tried to put into mass production', 75, '2023-06-07 09:36:16', NULL),
(300, 'D', 'Americans attitude toward baby carriages has changed significantly', 75, '2023-06-07 09:36:16', NULL),
(301, 'A', 'dogs', 76, '2023-06-07 09:48:15', NULL),
(302, 'B', 'sheep', 76, '2023-06-07 09:48:15', NULL),
(303, 'C', 'ship', 76, '2023-06-07 09:48:15', NULL),
(304, 'D', 'cats', 76, '2023-06-07 09:48:15', NULL),
(305, 'A', 'flirt', 77, '2023-06-07 09:50:52', NULL),
(306, 'B', 'sloth', 77, '2023-06-07 09:50:52', NULL),
(307, 'C', 'insult', 77, '2023-06-07 09:50:52', NULL),
(308, 'D', 'confuse', 77, '2023-06-07 09:50:52', NULL),
(309, 'A', 'character', 78, '2023-06-07 09:53:10', NULL),
(310, 'B', 'behavior', 78, '2023-06-07 09:53:10', NULL),
(311, 'C', 'subject', 78, '2023-06-07 09:53:10', NULL),
(312, 'D', 'traits', 78, '2023-06-07 09:53:10', NULL),
(313, 'A', 'caterpillar: leaves', 79, '2023-06-07 09:57:39', NULL),
(314, 'B', 'bees: wasps', 79, '2023-06-07 09:57:39', NULL),
(315, 'C', 'butterfly: moth', 79, '2023-06-07 09:57:39', NULL),
(316, 'D', 'tadpole: frog', 79, '2023-06-07 09:57:39', NULL),
(317, 'A', 'aristocrat: gratitude', 80, '2023-06-07 10:00:40', NULL),
(318, 'B', 'skeptic: disbelief', 80, '2023-06-07 10:00:40', NULL),
(319, 'C', 'symptom: treatment', 80, '2023-06-07 10:00:40', NULL),
(320, 'D', 'anomaly: plausibility', 80, '2023-06-07 10:00:40', NULL),
(321, 'E', 'cynic: melancholy', 80, '2023-06-07 10:00:40', NULL),
(322, 'A', 'teacher', 81, '2023-06-07 11:16:47', NULL),
(323, 'B', 'president', 81, '2023-06-07 11:16:47', NULL),
(324, 'C', 'doctrine', 81, '2023-06-07 11:16:47', NULL),
(325, 'D', 'student', 81, '2023-06-07 11:16:47', NULL),
(326, 'A', 'glee', 82, '2023-06-07 11:19:56', NULL),
(327, 'B', 'foible', 82, '2023-06-07 11:19:56', NULL),
(328, 'C', 'desperate', 82, '2023-06-07 11:19:56', NULL),
(329, 'D', 'gloaming', 82, '2023-06-07 11:19:56', NULL),
(330, 'A', 'dishevelled: messy', 83, '2023-06-07 11:21:53', NULL),
(331, 'B', 'disconsolate: happy', 83, '2023-06-07 11:21:53', NULL),
(332, 'C', 'disrespectful: injurious', 83, '2023-06-07 11:21:53', NULL),
(333, 'D', 'disallow: reject', 83, '2023-06-07 11:21:53', NULL),
(334, 'E', 'distraught: calm', 83, '2023-06-07 11:21:53', NULL),
(335, 'A', 'extravagant', 84, '2023-06-07 11:23:09', NULL),
(336, 'B', 'unkind', 84, '2023-06-07 11:23:09', NULL),
(337, 'C', 'alike', 84, '2023-06-07 11:23:09', NULL),
(338, 'D', 'friendly', 84, '2023-06-07 11:23:09', NULL),
(339, 'A', 'spectacular:  legitimate', 85, '2023-06-07 11:24:51', NULL),
(340, 'B', 'mundane: commonplace', 85, '2023-06-07 11:24:51', NULL),
(341, 'C', 'magical: impressive', 85, '2023-06-07 11:24:51', NULL),
(342, 'D', 'steep: shallow', 85, '2023-06-07 11:24:51', NULL),
(343, 'A', 'killing of genies', 86, '2023-06-07 11:27:29', NULL),
(344, 'B', 'killing of geniuses', 86, '2023-06-07 11:27:29', NULL),
(345, 'C', 'killing of a race or social group', 86, '2023-06-07 11:27:29', NULL),
(346, 'D', 'killing of geno', 86, '2023-06-07 11:27:29', NULL),
(347, 'A', 'property', 87, '2023-06-07 11:34:16', NULL),
(348, 'B', 'house', 87, '2023-06-07 11:34:16', NULL),
(349, 'C', 'land', 87, '2023-06-07 11:34:16', NULL),
(350, 'D', 'assets', 87, '2023-06-07 11:34:16', NULL),
(351, 'A', 'maiden', 88, '2023-06-07 11:36:39', NULL),
(352, 'B', 'sinner', 88, '2023-06-07 11:36:39', NULL),
(353, 'C', 'candle', 88, '2023-06-07 11:36:39', NULL),
(354, 'D', 'priest', 88, '2023-06-07 11:36:39', NULL),
(355, 'A', 'cloth', 89, '2023-06-07 11:38:23', NULL),
(356, 'B', 'country', 89, '2023-06-07 11:38:23', NULL),
(357, 'C', 'piano', 89, '2023-06-07 11:38:23', NULL),
(358, 'D', 'india', 89, '2023-06-07 11:38:23', NULL),
(359, 'A', 'return', 90, '2023-06-07 11:39:56', NULL),
(360, 'B', 'damage', 90, '2023-06-07 11:39:56', NULL),
(361, 'C', 'exercise', 90, '2023-06-07 11:39:56', NULL),
(362, 'D', 'furnish', 90, '2023-06-07 11:39:56', NULL),
(363, 'A', 'chemistry', 91, '2023-06-07 11:44:25', NULL),
(364, 'B', 'biology', 91, '2023-06-07 11:44:25', NULL),
(365, 'C', 'physics', 91, '2023-06-07 11:44:25', NULL),
(366, 'D', 'science', 91, '2023-06-07 11:44:25', NULL),
(367, 'A', 'represent', 92, '2023-06-07 11:45:57', NULL),
(368, 'B', 'doubt', 92, '2023-06-07 11:45:57', NULL),
(369, 'C', 'consider', 92, '2023-06-07 11:45:57', NULL),
(370, 'D', 'need', 92, '2023-06-07 11:45:57', NULL),
(371, 'A', 'rapid', 93, '2023-06-07 11:47:06', NULL),
(372, 'B', 'slow', 93, '2023-06-07 11:47:06', NULL),
(373, 'C', 'fertilizer', 93, '2023-06-07 11:47:06', NULL),
(374, 'D', 'dam', 93, '2023-06-07 11:47:06', NULL),
(375, 'A', 'rapid', 94, '2023-06-07 11:48:34', NULL),
(376, 'B', 'cloudy', 94, '2023-06-07 11:48:34', NULL),
(377, 'C', 'clear', 94, '2023-06-07 11:48:34', NULL),
(378, 'D', 'friendly', 94, '2023-06-07 11:48:34', NULL),
(379, 'A', 'sand', 95, '2023-06-07 11:50:08', NULL),
(380, 'B', 'rock', 95, '2023-06-07 11:50:08', NULL),
(381, 'C', 'solid', 95, '2023-06-07 11:50:08', NULL),
(382, 'D', 'hard', 95, '2023-06-07 11:50:08', NULL),
(383, 'A', 'Police Power', 96, '2023-07-15 09:14:02', NULL),
(384, 'B', 'Power to Impeach', 96, '2023-07-15 09:14:02', NULL),
(385, 'C', 'Power of Taxation', 96, '2023-07-15 09:14:02', NULL),
(386, 'D', 'Power of Eminent Domain', 96, '2023-07-15 09:14:02', NULL),
(387, 'A', 'PAGASA', 97, '2023-07-15 09:26:27', NULL),
(388, 'B', 'I AM READY', 97, '2023-07-15 09:26:27', NULL),
(389, 'C', 'DOST-ADVANCED DISASTER PROGRAM', 97, '2023-07-15 09:26:27', NULL),
(390, 'D', 'PROJECT NOAH', 97, '2023-07-15 09:26:27', NULL),
(391, 'A', 'Public trust', 98, '2023-07-15 09:30:03', NULL),
(392, 'B', 'Constitutional Rights', 98, '2023-07-15 09:30:03', NULL),
(393, 'C', 'Accountability', 98, '2023-07-15 09:30:03', NULL),
(394, 'D', 'Responsibility', 98, '2023-07-15 09:30:03', NULL),
(395, 'A', 'Surface', 99, '2023-07-15 09:33:12', NULL),
(396, 'B', 'Election', 99, '2023-07-15 09:33:12', NULL),
(397, 'C', 'Voting Power', 99, '2023-07-15 09:33:12', NULL),
(398, 'D', 'Civil Right', 99, '2023-07-15 09:33:12', NULL),
(399, 'A', 'pagkilala', 100, '2023-07-15 09:47:29', NULL),
(400, 'B', 'hula', 100, '2023-07-15 09:47:29', NULL),
(401, 'C', 'hinala', 100, '2023-07-15 09:47:29', NULL),
(402, 'D', 'paratang', 100, '2023-07-15 09:47:29', NULL),
(403, 'A', 'kaylanman', 101, '2023-07-15 10:05:51', NULL),
(404, 'B', 'kalian man', 101, '2023-07-15 10:05:51', NULL),
(405, 'C', 'kailanman', 101, '2023-07-15 10:05:51', NULL),
(406, 'D', 'lamang', 101, '2023-07-15 10:05:51', NULL),
(407, 'A', 'BCAED', 102, '2023-07-15 10:11:08', NULL),
(408, 'B', 'BAEDC', 102, '2023-07-15 10:11:08', NULL),
(409, 'C', 'BEADC', 102, '2023-07-15 10:11:08', NULL),
(410, 'D', 'BDACE', 102, '2023-07-15 10:11:08', NULL),
(411, 'A', 'laging handang makipagsapalaran', 103, '2023-07-15 10:18:43', NULL),
(412, 'B', 'hindi natatakot sa mga hamon', 103, '2023-07-15 10:18:43', NULL),
(413, 'C', 'malakas and kanilang karisma', 103, '2023-07-15 10:18:43', NULL),
(414, 'D', 'gustong mamuhay ayon sa sarili nilang batas', 103, '2023-07-15 10:18:43', NULL),
(415, 'A', 'gitna', 104, '2023-07-15 10:30:15', NULL),
(416, 'B', 'ibaba', 104, '2023-07-15 10:30:15', NULL),
(417, 'C', 'kanan', 104, '2023-07-15 10:30:15', NULL),
(418, 'D', 'itaas', 104, '2023-07-15 10:30:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_question`
--

CREATE TABLE `tbl_question` (
  `questionID` int(11) NOT NULL,
  `question` varchar(999) DEFAULT NULL,
  `subjectID` int(11) DEFAULT NULL,
  `topicID` int(11) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `explanation` varchar(9999) DEFAULT NULL,
  `dateTimeCreated` datetime DEFAULT NULL,
  `dateTimeUpdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_question`
--

INSERT INTO `tbl_question` (`questionID`, `question`, `subjectID`, `topicID`, `answer`, `explanation`, `dateTimeCreated`, `dateTimeUpdated`) VALUES
(1, 'The candidate maintains that he abhors most forms of socialism.\r\n\r\nAbhor means...', 1, 1, 'C', 'To abhor means to hate, despise, loathe, detest, reject, abominate, or find repugnant.\r\n\r\nIt comes from a Latin word meaning to tremble or shudder away from something.', '2023-06-05 18:35:57', NULL),
(2, 'I bought this book because when I read the [blurb] at the back, I fell in love with it', 1, 1, 'B', 'A blurb is a short description of a book, movie or other product written form promotional purposes and appearing on the cover of a book or in an advertisement.', '2023-06-05 18:38:19', NULL),
(3, 'If you pillage a village, you', 1, 1, 'D', 'Pillaging refers to the act of plundering or looting a town, village, or city, often in a violent and destructive manner.', '2023-06-05 18:45:48', NULL),
(4, 'There is certainty no mistake that cannot be [RECTIFIED].', 1, 1, 'D', 'Rectify means to correct, remedy, or make something right.', '2023-06-05 18:47:19', NULL),
(5, 'He left the country because of the [ominous] experience he had in the past.', 1, 1, 'B', '\"Ominous\" means having an evil or malevolent appearance or a threatening quality.', '2023-06-05 18:48:51', NULL),
(6, 'The court released a [dogmatic] statement that made people more hopeful.', 1, 1, 'C', '\"Dogmatic\" means characterized by a strict adherence to a particular set of beliefs or principles, often without considering alternative viewpoints or evidence.\r\n\r\n\"Assertive\" is another word that could be used to describe a statement that is characterized by a strict adherence to a particular set of beliefs or principles, without considering alternative viewpoints or evidence.', '2023-06-05 18:53:15', NULL),
(7, 'The executive has charged his staff with expediting this matter.\r\n\r\nExpedition means...', 1, 1, 'B', 'Expediting means speeding up, accomplishing promptly, or dispatching.\r\n\r\nTo expedite comes from a Latin word meaning to disengage or set the feet free.', '2023-06-05 18:57:54', NULL),
(8, 'One tends to be [CHURLISH] before breakfast', 1, 1, 'B', 'Churlish means to be rude, ill-mannered, or impolite, especially in a way that shows a lack of consideration for others.\r\n\r\nIt implies a person who is grumpy or easily annoyed, and may exhibit bad behavior towards others', '2023-06-05 19:01:40', NULL),
(9, 'People with inveterate beliefs', 1, 1, 'C', 'Inveterate beliefs refer to beliefs that are deeply ingrained, established, and difficult to change.\r\n\r\nThey are held with great conviction and passion, and may have been reinforced over a long period of time, often resulting in a strong emotional attachment to the belief.', '2023-06-05 19:09:14', NULL),
(10, 'The following are examples of Palindrome, except.', 1, 1, 'B', 'A palindrome is a word, phrase, number or sequence of words that reads the same backward as forward.', '2023-06-05 19:12:41', NULL),
(11, 'She wears gold but people know how [ostentatious] she can be.', 1, 1, 'A', '\"Ostentatious\" means showy or pretentious in an attempt to impress others.', '2023-06-05 19:15:20', NULL),
(12, 'He submitted a [grotesque] artwork that nobody in the class could relate to.', 1, 1, 'B', '\"Grotesque\" means bizarre or strange in a way that is unpleasant or disturbing.', '2023-06-05 19:17:07', NULL),
(13, 'If you are a part of a cabal, you', 1, 1, 'A', 'A cabal refers to a small group of people who are involved in a secret or covert plot or scheme, often to further their own interests of gain power', '2023-06-05 19:19:28', NULL),
(14, 'The recommendation of the wage council is [REPUGNANT] to the employees', 1, 1, 'B', 'Repugnant means causing strong disgust or aversion, often used to describe something that is offensive, unpleasant, or objectionable.\r\n\r\nIt implies a situation where a person is strongly opposed to something or finds it offensive', '2023-06-05 19:21:48', NULL),
(15, 'The perfume always \"evokes\" pleasant memories.', 1, 1, 'B', '\"evoke\" means to bring or recall to the conscious mind.', '2023-06-06 10:14:56', NULL),
(16, 'A breath of fresh air and a change of \"milieu\" is what you need to regain your health', 1, 1, 'B', '\"milieu\" means a person social environment', '2023-06-06 10:30:47', NULL),
(17, 'If you are a placid person, you', 1, 1, 'B', 'Placid means calm and peaceful; free from disturbance.', '2023-06-06 10:33:09', NULL),
(18, 'If an apocalypse is near, you can expect', 1, 1, 'C', 'An apocalypse is a cataclysmic event that brings total devastation or the end of the world.', '2023-06-06 10:34:56', NULL),
(19, 'Plaintive cries would be', 1, 1, 'C', 'Plaintive means expressing sorrow; mournful, melancholy', '2023-06-06 10:36:37', NULL),
(20, 'Early in the morning, the children \"frolic\" at the white sand of the famous beach in the Boracay.', 1, 1, 'A', '\"frolic\" means a playful action or movement.', '2023-06-06 10:39:15', NULL),
(21, 'There is no PANACEA that will solve our financial difficulty.', 1, 1, 'C', '\"PANACEA\" means a solution or remedy for all difficulties or diseases.', '2023-06-06 10:42:00', NULL),
(22, 'His \"magnetic\" personality drives every women in their neighborhood crazy over him.', 1, 1, 'C', '\"magnetic\" refers to attractiveness', '2023-06-06 10:44:16', NULL),
(23, 'Because I have lived in the city since I was ten years old, I find myself wanting to escape from the \"humdrum\" of urban living', 1, 1, 'B', '\"humdrum\" means lacking of excitement or variety; dull; monotonous.', '2023-06-06 10:54:32', NULL),
(24, 'If you plan a reprisal, you', 1, 1, 'A', 'A reprisal is an act of retaliation for an injury. It is also the practice of using political or military force without actually resorting to war', '2023-06-06 10:57:35', NULL),
(25, 'Everyone in his department hates their \"irascible\" superior who is fond of shouting at a small mistake.', 1, 1, 'B', '\"irascible\" means having or showing a tendency to be easily angered.', '2023-06-06 11:00:12', NULL),
(26, 'If your country suffers an incursion, your territory', 1, 1, 'A', 'An incursion is a raid or temporary invasion of someone else territory.', '2023-06-06 11:04:01', NULL),
(27, 'In Feng Shui, having a water feature in front of the house is considered \"auspicious\".', 1, 1, 'C', '\"auspicious\" means conducive to success', '2023-06-06 11:06:45', NULL),
(28, 'If you meet your nemesis, you meet', 1, 1, 'C', 'A nemesis is a source of harm or ruin; the cause of ones misery or downfall, bane; agent of retribution or veangeance', '2023-06-06 11:09:36', NULL),
(29, 'If you were involved in an altercation, you', 1, 1, 'B', 'An altercation is a heated dispute or quarrel.', '2023-06-06 11:11:47', NULL),
(30, 'The attorney wanted to \"expedite\" the process because her client was becoming impatient.', 1, 1, 'C', '\"expedite\" means make (an action or process) happen sooner or be accomplished more quickly.', '2023-06-06 11:13:50', NULL),
(31, 'Maria gave _____ for his birthday.', 1, 2, 'D', 'The answer is her little brother a football', '2023-06-06 12:21:43', NULL),
(32, 'His new Ferrari costs an arm and a leg so he is now looking for another job', 1, 2, 'A', 'The answer is very expensive', '2023-06-06 15:29:01', NULL),
(33, 'One proven way to beat an enemy is find his Achilles heel', 1, 2, 'D', 'The answer is weak spot', '2023-06-06 15:30:20', NULL),
(34, 'Which of the following words is not correctly spelt?', 1, 2, 'C', 'The answer is intensly', '2023-06-06 15:31:57', NULL),
(35, 'Which of the following words is correctly spelt?', 1, 2, 'C', 'The correct answer is reincarnation', '2023-06-06 15:33:32', NULL),
(36, 'Do you mind ______ I open the window?', 1, 2, 'B', 'The correct answer is if', '2023-06-06 15:34:10', NULL),
(37, 'There are more ______ than last year.', 1, 2, 'D', 'The answer is unemployed', '2023-06-06 15:35:01', NULL),
(38, 'The purpose of the new city ordinance was debated ______.', 1, 2, 'D', 'The answer is frequently.', '2023-06-06 15:36:03', NULL),
(39, 'Choose bracketed word or phrase which is not acceptable in formal written English. Select No Error if the sentence is grammatically correct.\r\n\r\n[In winter], days [are][warm than] night. [No error]', 1, 2, 'B', 'The correct answer is warm than', '2023-06-06 15:38:25', NULL),
(40, 'Each of the new employees had similar ______.', 1, 2, 'A', 'The answer is aspirations', '2023-06-06 15:39:15', NULL),
(41, 'He could easily cover his rural _______.', 1, 2, 'C', 'The answer is accent', '2023-06-06 15:40:00', NULL),
(42, 'Choose bracketed word or phrase which is not acceptable in formal written English. Select No Error if the sentence is grammatically correct.\r\n\r\nZone 61 [was adjudged] the [most cleanest] community in [Metro Manila]. [No error]', 1, 2, 'A', 'The answer is most cleanest', '2023-06-06 15:42:31', NULL),
(43, 'Paddle your own CANOE', 1, 2, 'D', 'The answer is be self-reliant', '2023-06-06 15:43:57', NULL),
(44, 'Choose bracketed word or phrase which is not acceptable in formal written English. Select No Error if the sentence is grammatically correct.\r\n\r\n[Have] anyone of [you] [experienced] working in a company?[No error]', 1, 2, 'D', 'The answer is Have', '2023-06-06 15:45:21', NULL),
(45, 'The animals quickly ______ to the new environment.', 1, 2, 'A', 'The answer is adapted', '2023-06-06 15:46:56', NULL),
(46, 'The large donation came from an ______ source.', 1, 2, 'C', 'The answer is anonymous', '2023-06-06 15:48:08', NULL),
(47, 'At a time when most charities seem to think of ______ increasing their capital, Warren Buffets stipulation that what he gifts must be spent within ten years comes as a ______ announcement.', 1, 2, 'A', 'The answer is constantly ...... landmark', '2023-06-06 15:50:26', NULL),
(48, 'Which of the following words is not correctly spelt?', 1, 2, 'C', 'The answer is tortous', '2023-06-06 15:51:38', NULL),
(50, 'Tell Laura that the missing phone which was found earlier is ______ .', 1, 2, 'D', 'The answer is hers', '2023-06-06 15:53:55', NULL),
(51, 'Choose bracketed word or phrase which is not acceptable in formal written English. Select No Error if the sentence is grammatically correct.\r\n\r\nThe snow fell during the night so that it was [laying] in big drifts [on the highway] [the next morning]. [No error]', 1, 2, 'C', 'The answer is laying', '2023-06-06 15:56:00', NULL),
(52, 'He always gets up at 5 o\'clock in the morning, ______ on holiday', 1, 2, 'C', 'The answer is even', '2023-06-06 15:57:17', NULL),
(53, 'They were able to WEATHER the storm.', 1, 2, 'D', 'The answer is survived the crisis', '2023-06-06 15:58:28', NULL),
(54, 'Choose bracketed word or phrase which is not acceptable in formal written English. Select No Error if the sentence is grammatically correct.\r\n\r\n[On the time] of the opening ceremony [of the theatre] a large crowd [had assembled]. [No error]', 1, 2, 'B', 'The answer is On the time', '2023-06-06 16:01:12', NULL),
(55, 'She had to buy a ______ of shoes to match her dress.', 1, 2, 'C', 'The answer is pair', '2023-06-06 16:02:21', NULL),
(56, 'The journalist made a ______ to finish the article by Friday', 1, 2, 'B', 'The answer is commitment', '2023-06-06 16:04:31', NULL),
(57, 'Choose bracketed word or phrase which is not acceptable in formal written English. Select No Error if the sentence is grammatically correct.\r\n\r\n[It was him] who [was] responsible for making all the arrangements for the successful completion of [his] studies. [No error]', 1, 2, 'A', 'The answer is It was him', '2023-06-06 16:06:47', NULL),
(58, 'This report leaves much to be DESIRED.', 1, 2, 'D', 'The answer is longed', '2023-06-06 16:08:11', NULL),
(59, 'Choose bracketed word or phrase which is not acceptable in formal written English. Select No Error if the sentence is grammatically correct.\r\n\r\nA person on diet must [not take] more calories [than] what [are] needed. [No error]', 1, 2, 'A', 'The answer is are', '2023-06-06 16:09:18', NULL),
(60, 'Choose bracketed word or phrase which is not acceptable in formal written English. Select No Error if the sentence is grammatically correct.\r\n\r\nI know that you will enjoy [receiving] flowers that [smell] so [sweetly]. [No error]', 1, 2, 'D', 'The answer is sweetly', '2023-06-06 16:11:20', NULL),
(61, 'A. The strength of a company\'s ethical culture lies in the extent to which the organization makes doing the right thing a priority.\r\n\r\nB. Hence, it is imperative to continually share expectations and policies to create a clear understanding of acceptable and unacceptable behaviour at the workplace.\r\n\r\nC. This creates a culture where employees independently behave in an ethical manner.\r\n\r\nD. And, if a zero-tolerance policy towards unethical practices is adheres to, the myth of nice guys finishing last will be shattered', 1, 3, 'A', 'The answer is ABCD', '2023-06-06 18:55:08', NULL),
(62, 'A. Others don\'t realize yet what to pursue because they have many dreams.\r\n\r\nB. Finding the right course in college is one of the most challenging decisions anyone can make.\r\n\r\nC. Some people want to pursue their dreams ever since they were just little.\r\n\r\nD. Indeed destiny is a matter of choice.', 1, 3, 'D', 'The answer is BCAD', '2023-06-07 08:44:05', NULL),
(63, 'A. The Egyptians believed that the obelisk was the home of the spirit of the sun\r\n\r\nB. Obelisks were unusually made in pairs and placed on each side of the gates to temples and tombs.\r\n\r\nC. The tops were often covered with bright metals, such as gold, to reflect the sun rays.\r\n\r\nD. Inscriptions in hieroglyphics on the four sides praised the pharaohs who had ordered the obelisks\r\n\r\nE. All Egyptian obelisks came from a granite quarry near Aswan.', 1, 3, 'B', 'The answer is ABCDE', '2023-06-07 08:47:46', NULL),
(64, 'A. The block or slab rock is usually used for building.\r\n\r\nB. The rocks may be quarried as solid blocks or slabs, or as crushed and broken stone.\r\n\r\nC. Crushed rock is most often used for roadbeds.\r\n\r\nD. Quarrying is the process by which rock materials are removed from the ground.', 1, 3, 'D', 'The answer is DBAC', '2023-06-07 08:50:18', NULL),
(65, 'A. Before, his religion was basically involved with rituals and ceremonies.\r\n\r\nB. The religion of the teacher helps him in reducing his fears and uncertainties.\r\n\r\nC. His religion responds to his needs for a means to allay fears about the uncertainty of events contrary to natural laws.\r\n\r\nD. Religion is important because it provides spiritual nourishment for his total being.', 1, 3, 'B', 'The answer is BACD', '2023-06-07 08:53:21', NULL),
(66, 'A. The first step in the process, evaporation, is going on practically all the time during the day\r\n\r\nB. But this invisible water vapour does not change into visible cloud droplets every day.\r\n\r\nC. If there are very few or no dust - particles in the air, condensation is not likely to take place.\r\n\r\nD. Water vapour is rising into the atmosphere.\r\n\r\nE. And this is because the water vapour has to have a surface on which to condense', 1, 3, 'C', 'The answer is ADBEC', '2023-06-07 08:56:22', NULL),
(67, 'A. After a while, the lymph moves with our body, the sensory hairs are erect, and we no longer have that feeling of suddenly moving forward.\r\n\r\nB. It therefore bends the hairs forward.\r\n\r\nC. The message goes to the brain and we feel ourselves slowing up.\r\n\r\nD. Now suppose we step on the brake! Our body keeps going forward and so does the lymph in the organs.', 1, 3, 'A', 'The answer is ADBC', '2023-06-07 08:58:59', NULL),
(68, 'A. You may not think about it, you can instinctively understand that when someone helps you, you are expected sooner or later to somehow pay them back, in some reasonable way.\r\n\r\nB. You already know a lot more about influence than you realize.\r\n\r\nC. Some of the time, you can just ask for what you need, and if the other person or group can respond, they will.\r\n\r\nD. Sometimes you have to work a little harder to figure out how to get what you want.', 1, 3, 'C', 'The answer is BCDA', '2023-06-07 09:02:17', NULL),
(69, 'A. He must get the amino acids from the protein in the food he eats.\r\n\r\nB. They are important to man because they provide him with the amino acids that his body cannot make for itself\r\n\r\nC. These include milk, eggs, lean meats, fish, peas, beans, peanuts, and certain grains.\r\n\r\nD. Many of the foods that are considered important for us to eat are so because of the proteins they contain.', 1, 3, 'B', 'The answer is DCBA', '2023-06-07 09:05:12', NULL),
(70, 'A. By trying, man learns to solve his problems through satisfying acts and eliminate actions which are annoying.\r\n\r\nB. He used a hungry cat in a puzzled box where it tried ways to get out in order to get the food.\r\n\r\nC. Edward C. Thornsdike\'s connectionism theory of learning establishes the trial and error way to learn', 1, 3, 'A', 'The answer is ACDB', '2023-06-07 09:07:54', NULL),
(71, 'Two persons look out through the same bars;\r\none sees mud and the other, the stars.\r\n\r\nThe sentence best supports the statement that _______.', 1, 4, 'B', 'The answer is people have varied ways of looking at different things', '2023-06-07 09:12:43', NULL),
(72, 'When faced with a challenging event like a disagreement with a colleague at work, there are always two roads to go down; You can either approach the situation as a problem, or as an opportunity for spiritual growth.This is not-so-subtle distinction can mean the difference between distress and eustress-always try to choose the latter. A eustress is a moderate or normal psychological stress interpreted as being beneficial for the one who experiences it.\r\n\r\nWhich of the following is not true about the passage?', 1, 4, 'C', 'The answer is Spiritual growth is the result of a disagreement with a colleague at work.', '2023-06-07 09:18:31', NULL),
(73, 'A rule change was enacted before the 1974 National Football League (NFL) season to add one sudden death overtime period (15 minutes) to all preseason and regular season games. If no team scored in this period, the game would result in a tie. This rule was enacted to decrease the number of tie games. The first ever regular season overtime, a September 22 game between the Pittsburgh Steelers and the Denver Broncos, ended in a 35-35 draw. It was not until November 10, when the New York Jets defeated the New York Giants, 26-20, that an overtime game would produce a winner. \r\n\r\nBased on this information, which of the following statements is accurate:', 1, 4, 'C', 'The answer is There\'s not enough information to determine if this rule change impacted the number of ties', '2023-06-07 09:25:14', NULL),
(74, 'Spending time volunteering for the charity is important to Company X. Company X offers their employees paid time off to volunteer', 1, 4, 'D', 'The answer is It reinforce the first element.', '2023-06-07 09:27:09', NULL),
(75, 'Baby carriages were invented in 1848 by Charles Burton. He lived in New York City and faced opposition to his invention from people who felt they were unsafe. He believed in his idea and moved to England, where he opened a factory. He made carriages for Queen Victoria of England, Queen Isabella II of Spain, and other royalty. A factory opened in the United States ten years later but only 75 carriages are extremely popular and almost every baby has at least one.\r\n\r\nWe can conclude from the passage that:', 1, 4, 'D', 'The answer is Americans attitude toward baby carriages has changed significantly.', '2023-06-07 09:36:16', NULL),
(76, 'bouquet: flowers::flock: ______', 1, 5, 'B', 'A bouquet is a group of flowers that are arranged and tied together for decoration or as a gift.\r\n\r\nSimilarly, a flock is a group of animals, especially birds or sheep, that are kept, fed, or hunted together.\r\n\r\nTherefore, the relationship between \"bouquet\" and \"flowers\" is the same as the relationship between \"flock\" and \"sheep\".', '2023-06-07 09:48:15', NULL),
(77, 'fetish: fixation::slight: ______', 1, 5, 'C', 'A fetish is a synonym for a fixation, and a slight is a synonym for an insult', '2023-06-07 09:50:52', NULL),
(78, 'logic: reasoning::ethics: ______', 1, 5, 'B', 'Logic is a formal system of reasoning that helps to analyze and evaluate arguments.\r\n\r\nIn the same way, ethics is a system of moral principles that helps to guide human behavior.\r\n\r\nTherefore, the relationship between \"logic\" and \"reasoning\" is the same as the relationship between \"ethics\" and \"behavior\".', '2023-06-07 09:53:10', NULL),
(79, 'Fill in the blanks with the appropriate word to complete the word set.\r\n\r\nmaggot: fly:: ______:______', 1, 5, 'D', 'A maggot is the larva of a fly, while a tadpole is the larva of a frog.\r\n\r\nThese terms refer to the young, immature stages of these animals, before they have fully developed into their adult forms.\r\n\r\nMaggots and tadpoles go through a process called metamorphosis, in which they undergo physical changes and develop into their adult forms.\r\n\r\nMaggots eventually become flies, while tadpoles become frogs.\r\n\r\nA caterpillar is the larva of a butterfly or moth, while bees and wasps are different types of insects that do not have larval stages.', '2023-06-07 09:57:39', NULL),
(80, 'philanthropist: munificence:: ______:______', 1, 5, 'B', 'Degree of intensity.\r\n\r\nPhilanthropist is a generous person while munificence is extremely generous.\r\n\r\nAs skeptic is inclined to question or doubt accepted opinions while disbelief is refusal to accept that', '2023-06-07 10:00:40', NULL),
(81, 'marshal: prisoner::principal: ______', 1, 5, 'D', 'A marshal is a person in charge of a prisoner, and a principal is a person in charge of a student.', '2023-06-07 11:16:47', NULL),
(82, 'skew: gloomy::slant: ______', 1, 5, 'C', 'This an analogy question that tests your vocabulary and reasoning skills.\r\n\r\nYou need to find a word that has a similar relationship to gloomy as skew has to slant.\r\n\r\nTo skew is a synonym of to slant, and to be gloomy is a synonym for desperate.\r\n\r\nTherefore, the correct word that completes the analogy is desperate.', '2023-06-07 11:19:56', NULL),
(83, 'Diaphanous: Opaque:: ______:______', 1, 5, 'E', 'diaphanous is the opposite of opaque. Distraught is the opposite of calm.', '2023-06-07 11:21:53', NULL),
(84, 'miserly: cheap::homogeneous: ______', 1, 5, 'C', 'Miserly is another word for cheap, and homogeneous is another word for alike.', '2023-06-07 11:23:09', NULL),
(85, 'vague: nebulous:: ______:______', 1, 5, 'B', 'Something vague is nebulous. Something mundane is commonplace.', '2023-06-07 11:24:51', NULL),
(86, 'Infanticide: killing of infants::genocide: ______', 1, 5, 'C', 'Genocide is the deliberate killing of a large group of people, especially those of a particular ethnic group or nation.\r\n\r\nIt is a crime under international law and is considered a grave human rights violation.', '2023-06-07 11:27:29', NULL),
(87, 'eavesdrop: conversation::trespass: ______', 1, 5, 'A', 'To eavesdrop means to secretly listen in on a conversation that one is not supposed to hear.\r\n\r\nSimilarly, to trespass means to enter or remain on someone else\'s property without permission or legal right to do so.\r\n\r\nTherefore, the relationship between \"eavesdrop\" and \"conversation\" is the same as the relationship between \"trespass\" and \"property\".', '2023-06-07 11:34:16', NULL),
(88, 'nymph: ______::seraphim: angel', 1, 5, 'A', 'A nymph is a maiden, and a seraphim is an angel.', '2023-06-07 11:36:39', NULL),
(89, 'ragtime: United States::rage: ______', 1, 5, 'D', 'Ragtime is a type of music from the United States, and raga is a type of music from India.', '2023-06-07 11:38:23', NULL),
(90, 'pilfer: steal:: ______:equip', 1, 5, 'D', 'To pilfer means to steal, and to furnish means to equip.', '2023-06-07 11:39:56', NULL),
(91, 'astrology: astronomy::alchemy: ______', 1, 5, 'A', 'Astrology and Astronomy are related to celestial bodies and their movements. Alchemy is an ancient practice that involves the study of the transmutation of matter, particularly the transformation of base metals into gold, and the search for the philosopher\'s stone. Alchemy is considered a pseudoscience as it does not follow the scientific method and has been superseded by modern chemistry, which is the scientific study of the composition, properties, and behavior of matter.', '2023-06-07 11:44:25', NULL),
(92, 'smear: libel::heed: ______', 1, 5, 'C', 'To smear is a synonym of to libel, and to heed is a synonym of to consider.', '2023-06-07 11:45:57', NULL),
(93, 'fecund: infertile:: ______:fleet', 1, 5, 'B', 'Fecund is an antonym for infertile, and slow is an antonym for fleet.', '2023-06-07 11:47:06', NULL),
(94, 'quixotic: pragmatic::murky: ______', 1, 5, 'C', 'Quixotic is an antonym for pragmatic, and murky is an antonym for clear.', '2023-06-07 11:48:34', NULL),
(95, 'iron: metal::granite: ______', 1, 5, 'B', 'The relationship between \"iron\" and \"metal\" is one of specificity, as iron is a type of metal.\r\n\r\nIn the same way, \"granite\" is a type of rock.', '2023-06-07 11:50:08', NULL),
(96, 'The three inherent powers of the state are the following except one:', 3, 8, 'B', 'Correct Answer Power to Impeach', '2023-07-15 09:14:02', NULL),
(97, 'It is a project of DOST for more accurate, integrated and responsive disaster prevention and mitigation system especially in high risk calamity areas of the Philippines', 3, 11, 'D', 'The answer is PROJECT NOAH', '2023-07-15 09:26:27', NULL),
(98, 'It states that public office is public trust and that public officers and employees must, at all times be accountable to the people, serve them with utmost responsibility, integrity, loyalty and efficiency; act with patriotism and justice and lead modest', 3, 9, 'C', 'The answer is Accountability', '2023-07-15 09:30:03', NULL),
(99, 'It is the right and obligation by all citizens, who are at least 18 years of age, and qualified by law, to vote in the election of national and local officials of the government without literacy,, property, or other substantive requirement.', 3, 10, 'A', 'The answer is Surface', '2023-07-15 09:33:12', NULL),
(100, 'Hindi sila nagkamali ng \"sapantaha\" tungkol sa babaing pumasok sa tindahan', 2, 1, 'A', 'Ang tamang sagot ay hinala', '2023-07-15 09:47:29', NULL),
(101, 'Ang saging ________ ay di magbubunga ng santol', 2, 2, 'C', 'Ang tamang sagot ay kailanman', '2023-07-15 10:05:51', NULL),
(102, 'A. Ang bawat polista ay kinakailangang magtrabaho ng apatnapung araw sa bawat taon.\r\n\r\nB. Ang polo y servicios o sapilitang paglilingkod sa pamahalaang mga Pilipinong lalaki mula 16 hanggang 60 taong gulang.\r\n\r\nC. Noong 1884, ito ay ginagawa na lamang labinlimang araw.\r\n\r\nD. And mga manggagawa sa ilalim ng polo y servicios ay tinatawag na polista.\r\n\r\nE. Upang makaligtas sa sapilitang paggawa kinakailangang magbayad ng falla na tanging mga mayayaman lamang ang nakakabayad', 2, 3, 'D', 'Ang tamang sagot ay BDACE', '2023-07-15 10:11:08', NULL),
(103, 'Ang mga taong ipinanganak sa Taon ng Dragon ay sinasabing may kakambal na swerte, karaniwang dominante at matataas ang ambisyon. Mas gusto nilang mamuhay ayon sa sarili nilang mga batas at kung sila ay hahayaang magisa, mas nagiging matagumpay sila sa buhay. Sila ay mga pursigido at hindi natatakot sa mga hamon at laging handang makipagsapalaran, kaya hindi katakataka na malapit sa kanila ang tagumpay. Sila ay matulungin sa mga nangangailangan ngunit hindi sila hihingi ng tulong sa iba kung sila naman ang nangangailangan.\r\n\r\nHanapin ang mali sa mga sumusunod na paglalarawan sa taong ipinanganak sa Taon ng Dragon', 2, 4, 'C', 'Ang tamang sagot ay malakas ang kanilang karisma', '2023-07-15 10:18:43', NULL),
(104, 'bukas: sara:: kaliwa: _______', 2, 5, 'C', 'Ang tamang sagot ay kanan', '2023-07-15 10:30:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject`
--

CREATE TABLE `tbl_subject` (
  `subjectID` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_subject`
--

INSERT INTO `tbl_subject` (`subjectID`, `subject`) VALUES
(1, 'english'),
(2, 'filipino'),
(3, 'general information');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topic`
--

CREATE TABLE `tbl_topic` (
  `topicID` int(11) NOT NULL,
  `topic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_topic`
--

INSERT INTO `tbl_topic` (`topicID`, `topic`) VALUES
(1, 'vocabulary'),
(2, 'grammar and correct usage'),
(3, 'paragraph organization'),
(4, 'reading comprehension'),
(5, 'analogy'),
(6, 'logic'),
(7, 'numerical reasoning'),
(8, 'philippine constitution'),
(9, 'code and conduct and ethical standards for public officials and employees'),
(10, 'peace and human rights issues and concepts'),
(11, 'environment management and protection');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  ADD PRIMARY KEY (`activityID`),
  ADD UNIQUE KEY `filename` (`fileValue`);

--
-- Indexes for table `tbl_choice`
--
ALTER TABLE `tbl_choice`
  ADD PRIMARY KEY (`choiceID`),
  ADD KEY `questionID` (`questionID`);

--
-- Indexes for table `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD PRIMARY KEY (`questionID`),
  ADD KEY `subjectID` (`subjectID`),
  ADD KEY `topicID` (`topicID`);

--
-- Indexes for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  ADD PRIMARY KEY (`subjectID`);

--
-- Indexes for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  ADD PRIMARY KEY (`topicID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  MODIFY `activityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_choice`
--
ALTER TABLE `tbl_choice`
  MODIFY `choiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;

--
-- AUTO_INCREMENT for table `tbl_question`
--
ALTER TABLE `tbl_question`
  MODIFY `questionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `tbl_subject`
--
ALTER TABLE `tbl_subject`
  MODIFY `subjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  MODIFY `topicID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_choice`
--
ALTER TABLE `tbl_choice`
  ADD CONSTRAINT `tbl_choice_ibfk_1` FOREIGN KEY (`questionID`) REFERENCES `tbl_question` (`questionID`);

--
-- Constraints for table `tbl_question`
--
ALTER TABLE `tbl_question`
  ADD CONSTRAINT `tbl_question_ibfk_1` FOREIGN KEY (`subjectID`) REFERENCES `tbl_subject` (`subjectID`),
  ADD CONSTRAINT `tbl_question_ibfk_2` FOREIGN KEY (`topicID`) REFERENCES `tbl_topic` (`topicID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
