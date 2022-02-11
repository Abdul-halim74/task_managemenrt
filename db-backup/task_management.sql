-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2022 at 05:35 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_marks`
--

CREATE TABLE `all_marks` (
  `id` int(50) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `attendance_marks` varchar(50) NOT NULL,
  `daily_time_marks` varchar(50) NOT NULL,
  `holiday_office_time_marks` varchar(50) NOT NULL,
  `overtime_marks` varchar(50) NOT NULL,
  `target_fillup_marks` varchar(50) NOT NULL,
  `regular_suupport_marks` varchar(50) NOT NULL,
  `report_schedule_marks` varchar(50) NOT NULL,
  `dresscode_marks` varchar(50) NOT NULL,
  `total` varchar(100) NOT NULL,
  `year_and_month` varchar(50) DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry_usr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `all_marks`
--

INSERT INTO `all_marks` (`id`, `emp_id`, `attendance_marks`, `daily_time_marks`, `holiday_office_time_marks`, `overtime_marks`, `target_fillup_marks`, `regular_suupport_marks`, `report_schedule_marks`, `dresscode_marks`, `total`, `year_and_month`, `from_date`, `to_date`, `entry_date`, `entry_usr`) VALUES
(1, '13', '7', '1', '0', '1', '17', '5', '6', '2', '39', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(2, '22', '6', '4', '0', '1', '0', '0', '6', '2', '19', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(3, '23', '7', '5', '0', '1', '10', '0', '6', '2', '31', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(4, '26', '6', '6', '0', '2', '0', '0', '6', '2', '22', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(5, '32', '4', '3', '0', '0', '0', '0', '6', '2', '15', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(6, '35', '7', '3', '0', '0', '0', '0', '6', '2', '18', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(7, '41', '1', '4', '0', '0', '0', '0', '6', '2', '13', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(8, '49', '8', '1', '0', '1', '0', '3', '6', '2', '21', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(9, '64', '8', '1', '0', '2', '0', '20', '6', '2', '39', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(10, '65', '8', '6', '0', '1', '0', '0', '6', '2', '23', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(11, '66', '0', '0', '0', '0', '0', '0', '6', '2', '8', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(12, '72', '8', '1', '0', '3', '0', '0', '6', '2', '20', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(13, '73', '0', '0', '0', '0', '0', '0', '6', '2', '8', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(14, '74', '6', '0', '0', '1', '0', '0', '6', '2', '15', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(15, '75', '8', '5', '0', '2', '0', '0', '6', '2', '23', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1'),
(16, '76', '6', '7', '0', '1', '0', '0', '6', '2', '22', '2021-11', NULL, NULL, '2021-12-20 09:08:56', '1');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0=''late present'', 1=''present'', 2=''cancel'' , 3=''approve''',
  `incoming_reason` text DEFAULT NULL,
  `outgoing_reason` text DEFAULT NULL,
  `on_duty_status` int(10) NOT NULL DEFAULT 0 COMMENT '1=on duty',
  `total_overtime` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_marks`
--

CREATE TABLE `attendance_marks` (
  `id` int(50) NOT NULL,
  `emp_id` varchar(100) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `deptartment` varchar(50) NOT NULL,
  `year_and_month` varchar(50) NOT NULL,
  `from_date` varchar(50) NOT NULL,
  `to_date` varchar(50) NOT NULL,
  `total_office_opened` varchar(50) NOT NULL,
  `present` varchar(50) NOT NULL,
  `absent` varchar(50) NOT NULL,
  `marks` varchar(50) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance_marks`
--

INSERT INTO `attendance_marks` (`id`, `emp_id`, `emp_name`, `deptartment`, `year_and_month`, `from_date`, `to_date`, `total_office_opened`, `present`, `absent`, `marks`, `entry_date`, `entry_user`) VALUES
(1, '13', 'Md. Rabiul Hasan', 'programmer', '2021-11', '', '', '24', '22', '2', '7', '2021-12-20 09:02:17', '1'),
(2, '23', 'Nazrul Islam', 'programmer', '2021-11', '', '', '24', '21', '3', '7', '2021-12-20 09:02:17', '1'),
(3, '26', 'Khaled Mahmud Shopon', 'programmer', '2021-11', '', '', '24', '19', '5', '6', '2021-12-20 09:02:17', '1'),
(4, '35', 'Md. Montasir Tasneem', 'programmer', '2021-11', '', '', '24', '22', '2', '7', '2021-12-20 09:02:18', '1'),
(5, '49', 'Abdul halim hasan', 'programmer', '2021-11', '', '', '24', '23', '1', '8', '2021-12-20 09:02:18', '1'),
(6, '64', 'Md. Ramjan Hosen', 'programmer', '2021-11', '', '', '24', '23', '1', '8', '2021-12-20 09:02:18', '1'),
(7, '65', 'Samiul Haque', 'programmer', '2021-11', '', '', '24', '23', '1', '8', '2021-12-20 09:02:18', '1'),
(8, '72', 'Abul Kauser Samer', 'programmer', '2021-11', '', '', '24', '24', '0', '8', '2021-12-20 09:02:18', '1'),
(9, '74', 'KAZI ENAMUL HQUE', 'programmer', '2021-11', '', '', '24', '18', '6', '6', '2021-12-20 09:02:18', '1'),
(10, '75', 'Mohammad Shahabuddin', 'programmer', '2021-11', '', '', '24', '24', '0', '8', '2021-12-20 09:02:18', '1'),
(11, '22', 'Khalid Mostafa', 'marketting', '2021-11', '', '', '24', '18', '6', '6', '2021-12-20 09:02:25', '1'),
(12, '32', 'kazi Abdullah Al Mamun', 'marketting', '2021-11', '', '', '24', '13', '11', '4', '2021-12-20 09:02:25', '1'),
(13, '41', 'Emran Hossain Khokon', 'marketting', '2021-11', '', '', '24', '2', '22', '1', '2021-12-20 09:02:25', '1'),
(14, '76', 'MD. NOR HOSSAN', 'marketting', '2021-11', '', '', '24', '17', '7', '6', '2021-12-20 09:02:25', '1'),
(15, '13', 'Md. Rabiul Hasan', 'programmer', '2021-10', '', '', '24', '17', '7', '6', '2021-12-20 09:53:39', '1'),
(16, '23', 'Nazrul Islam', 'programmer', '2021-10', '', '', '24', '8', '16', '3', '2021-12-20 09:53:39', '1'),
(17, '26', 'Khaled Mahmud Shopon', 'programmer', '2021-10', '', '', '24', '21', '3', '7', '2021-12-20 09:53:39', '1'),
(18, '33', 'Hasnain Rahman', 'programmer', '2021-10', '', '', '24', '1', '23', '0', '2021-12-20 09:53:39', '1'),
(19, '35', 'Md. Montasir Tasneem', 'programmer', '2021-10', '', '', '24', '19', '5', '6', '2021-12-20 09:53:39', '1'),
(20, '49', 'Abdul halim hasan', 'programmer', '2021-10', '', '', '24', '20', '4', '7', '2021-12-20 09:53:39', '1'),
(21, '64', 'Md. Ramjan Hosen', 'programmer', '2021-10', '', '', '24', '19', '5', '6', '2021-12-20 09:53:39', '1'),
(22, '65', 'Samiul Haque', 'programmer', '2021-10', '', '', '24', '23', '1', '8', '2021-12-20 09:53:39', '1'),
(23, '72', 'Abul Kauser Samer', 'programmer', '2021-10', '', '', '24', '22', '2', '7', '2021-12-20 09:53:40', '1'),
(24, '74', 'KAZI ENAMUL HQUE', 'programmer', '2021-10', '', '', '24', '17', '7', '6', '2021-12-20 09:53:40', '1'),
(25, '75', 'Mohammad Shahabuddin', 'programmer', '2021-10', '', '', '24', '22', '2', '7', '2021-12-20 09:53:40', '1');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_status`
--

CREATE TABLE `attendance_status` (
  `id` int(5) NOT NULL,
  `status_name` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_status`
--

INSERT INTO `attendance_status` (`id`, `status_name`) VALUES
(0, 'Late Present'),
(1, 'Present'),
(2, 'Late'),
(3, 'Late Permitted');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(33) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `receivable_amount` int(100) NOT NULL,
  `target_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `assigned_person` varchar(100) NOT NULL,
  `created_user` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `collect_bills`
--

CREATE TABLE `collect_bills` (
  `id` int(11) NOT NULL,
  `project_id` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `collection_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`) VALUES
(1, 'Venture Solution'),
(2, 'Moiur'),
(3, 'Fintech');

-- --------------------------------------------------------

--
-- Table structure for table `daily_time`
--

CREATE TABLE `daily_time` (
  `id` int(50) NOT NULL,
  `emp_id` varchar(100) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `year_and_month` varchar(100) NOT NULL,
  `total_attend` varchar(100) NOT NULL,
  `total_late` varchar(100) NOT NULL,
  `marks` varchar(100) NOT NULL,
  `entry_user` varchar(100) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `daily_time`
--

INSERT INTO `daily_time` (`id`, `emp_id`, `emp_name`, `year_and_month`, `total_attend`, `total_late`, `marks`, `entry_user`, `from_date`, `to_date`, `entry_date`) VALUES
(1, '13', 'Md. Rabiul Hasan', '2021-11', '22', '20', '1', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(2, '22', 'Khalid Mostafa', '2021-11', '18', '8', '4', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(3, '23', 'Nazrul Islam', '2021-11', '21', '7', '5', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(4, '26', 'Khaled Mahmud Shopon', '2021-11', '19', '5', '6', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(5, '32', 'kazi Abdullah Al Mamun', '2021-11', '13', '8', '3', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(6, '35', 'Md. Montasir Tasneem', '2021-11', '22', '15', '3', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(7, '41', 'Emran Hossain Khokon', '2021-11', '2', '1', '4', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(8, '49', 'Abdul halim hasan', '2021-11', '23', '19', '1', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(9, '64', 'Md. Ramjan Hosen', '2021-11', '23', '19', '1', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(10, '65', 'Samiul Haque', '2021-11', '23', '5', '6', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(11, '66', 'Jitu Mia', '2021-11', '0', '0', '0', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(12, '72', 'Abul Kauser Samer', '2021-11', '24', '22', '1', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(13, '74', 'KAZI ENAMUL HQUE', '2021-11', '18', '17', '0', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(14, '75', 'Mohammad Shahabuddin', '2021-11', '24', '8', '5', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11'),
(15, '76', 'MD. NOR HOSSAN', '2021-11', '17', '2', '7', '1', '0000-00-00', '0000-00-00', '2021-12-20 07:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`) VALUES
(7, 'Administration'),
(9, 'Creative Design'),
(6, 'Feature & Content'),
(8, 'Fintech Marketing'),
(3, 'Operations'),
(4, 'Production And Distribution'),
(10, 'Socks Marketing'),
(2, 'Software Development'),
(5, 'Venture marketing');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `department_id`, `designation_name`) VALUES
(1, 2, 'Software Engineer'),
(2, 1, 'Marketing Manager'),
(3, 2, 'Technical Lead'),
(4, 1, 'Sales Manager'),
(6, 2, 'Junior Software Engineer'),
(7, 2, 'Senior Software Engineer'),
(8, 2, 'Junior Software Engineer (Intern)'),
(9, 3, 'Assistant Manager'),
(10, 4, 'Junior Executive'),
(11, 5, 'Junior Executive'),
(12, 5, 'Sr.Executive, Sales & marketing'),
(13, 6, 'Feature Writer'),
(14, 5, 'Vice President'),
(15, 6, 'Manager,Brand Communication'),
(16, 7, 'Director'),
(17, 7, 'Business Editor'),
(18, 3, 'Jr. Executive'),
(19, 8, 'Marketing Executive,Brand Communication'),
(20, 2, 'Associate Software Engineer'),
(21, 4, 'Junior Executive Production & Distribution'),
(22, 9, 'Creative Lead'),
(23, 6, 'Feature Writer and Reporter'),
(24, 7, 'CTO'),
(25, 3, 'Office Assistant');

-- --------------------------------------------------------

--
-- Table structure for table `developer_tasks`
--

CREATE TABLE `developer_tasks` (
  `id` int(23) NOT NULL,
  `title` varchar(255) NOT NULL,
  `department_id` varchar(50) NOT NULL,
  `task_manager` int(10) NOT NULL,
  `assignment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) NOT NULL,
  `request_status` int(10) NOT NULL DEFAULT 0,
  `request_status_date` datetime DEFAULT NULL,
  `team_member` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `user_updated_date` datetime DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `priority` int(10) NOT NULL,
  `created_user` int(10) UNSIGNED NOT NULL,
  `late_completed_status` int(10) DEFAULT 0,
  `module_or_project` int(10) DEFAULT NULL COMMENT '1=module, 2=full project	',
  `client_name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `developer_tasks`
--

INSERT INTO `developer_tasks` (`id`, `title`, `department_id`, `task_manager`, `assignment`, `status`, `request_status`, `request_status_date`, `team_member`, `assign_date`, `delivery_date`, `user_updated_date`, `remarks`, `amount`, `priority`, `created_user`, `late_completed_status`, `module_or_project`, `client_name`) VALUES
(148, 'LC MANAGER', '2', 35, '<ol><li>Import LC Branch Document Receiving Module</li><li>Import LC Branch Document Scrutiny Module</li><li>Bill of Acceptance</li><li>Bill Processing Module</li></ol>', 2, 0, NULL, '72', '2021-10-06 12:00:00', '2021-10-10 12:00:00', '2021-11-08 02:04:30', '', 0, 2, 74, 1, 1, NULL),
(149, 'SBS-3(IFIC)', '2', 35, '<ol><li>UAT support</li></ol>', 1, 0, NULL, '65', '2021-10-06 12:00:00', '2021-10-10 12:00:00', NULL, '', 0, 3, 74, 0, 1, NULL),
(150, 'AB Bank Pending Task ', '2', 35, '<p>please see the following attached link.</p><p>https://docs.google.com/spreadsheets/d/1Zrwvr1gse9wnx8B2PLphdPBXTAgYN-d0Q8xP2DeGNuA/edit?usp=sharing_eip_m&amp;ts=61665b29<br></p>', 1, 0, NULL, '13,64', '2021-10-16 12:00:00', '2021-10-31 12:00:00', NULL, '', 0, 2, 74, 0, 2, NULL),
(151, 'AB Bank Buro Incentive Operation ', '2', 35, '', 1, 0, NULL, '13', '2021-10-16 12:00:00', '2021-10-21 12:00:00', NULL, '', 0, 2, 74, 0, 1, NULL),
(152, 'DBL (Bangladesh Bank Report Modification) ', '2', 35, '', 1, 0, NULL, '13', '2021-10-16 12:00:00', '2021-10-18 12:00:00', NULL, '', 0, 2, 74, 0, 1, NULL),
(153, 'DBL (Sunman Exchange House API integration testing [cash/deposit] but i have 2 transaction) ', '2', 35, '', 1, 0, NULL, '13', '2021-10-16 12:00:00', '2021-10-28 12:00:00', NULL, '', 0, 2, 74, 0, 1, NULL),
(154, 'SBAC Impprest Account Reconcile & Form KHA Report', '2', 35, '', 1, 0, NULL, '13', '2021-10-16 12:00:00', '2021-10-21 12:00:00', NULL, '', 0, 2, 74, 0, 1, NULL),
(155, 'SEBL Bkash callback api create done need to generate API Documentation ', '2', 35, '', 1, 0, NULL, '13', '2021-10-16 12:00:00', '2021-10-18 12:00:00', NULL, '', 0, 2, 74, 0, 1, NULL),
(156, 'User Management Finding Issue', '2', 49, '<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">When user ID is created, IP phone field showing â€œIP Hassanâ€<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">Secure content have been accessed by all users<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">Reporting problems are not solved.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">When a user mistakenly selects IT checker or IT maker role, it canâ€™t be rejected by&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Super Admin ID. Therefore, that User ID status goes to â€˜â€™INACTIVEâ€™â€™ status.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">When a user selects domain related module for requests, User ID not showing in â€œShow Detailsâ€ option.6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Disable Edit Profile option for Admin and Super Admin Idâ€™s.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">We have faced Login session problem<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">Branch and Sub-branch/Division add option should be in Super Admin ID as there can be newly opened branch or sub-branch at any time.</span></p><ul><li style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\"><br></span><span style=\"background-color: rgb(248, 248, 248); color: rgb(29, 28, 29); font-family: Arial, sans-serif; font-size: 11.5pt; text-indent: -18pt;\">When branch checker transfers into Head Office, His/her old requests â€œâ€™Show Detailsâ€™â€™â€™ option showing â€˜â€™Head Office Division Checkerâ€™ .</span></li></ul>', 2, 0, NULL, NULL, '2021-10-16 12:00:00', '2021-10-18 12:00:00', '2021-11-08 02:19:54', '', 0, 1, 74, 1, 1, NULL),
(158, 'User Management finding issue.', '2', 49, '<p class=\"MsoListParagraphCxSpFirst\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">When user ID is created, IP phone field showing â€œIP Hassanâ€<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">Secure content have been accessed by all users<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">Reporting problems are not solved.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">When a user mistakenly selects IT checker or IT maker role, it canâ€™t be rejected by&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Super Admin ID. Therefore, that User ID status goes to â€˜â€™INACTIVEâ€™â€™ status.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">When a user selects domain related module for requests, User ID not showing in â€œShow Detailsâ€ option.6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Disable Edit Profile option for Admin and Super Admin Idâ€™s.<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpMiddle\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">We have faced Login session problem<o:p></o:p></span></p><p class=\"MsoListParagraphCxSpLast\" style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Symbol; color: rgb(29, 28, 29);\">Â·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\">Branch and Sub-branch/Division add option should be in Super Admin ID as there can be newly opened branch or sub-branch at any time.</span></p><ul><li style=\"margin-left: 18pt; text-indent: -18pt; border: none; padding: 0cm;\"><span lang=\"EN-US\" style=\"font-size: 11.5pt; line-height: 16.4067px; font-family: Arial, sans-serif; color: rgb(29, 28, 29); background: rgb(248, 248, 248);\"><br></span><span style=\"background-color: rgb(248, 248, 248); color: rgb(29, 28, 29); font-family: Arial, sans-serif; font-size: 11.5pt; text-indent: -18pt;\">When branch checker transfers into Head Office, His/her old requests â€œâ€™Show Detailsâ€™â€™â€™ option showing â€˜â€™Head Office Division Checkerâ€™ .</span></li></ul>', 2, 1, '2021-11-07 10:40:15', '13', '2021-10-16 12:00:00', '2021-10-18 12:00:00', '2021-11-07 12:09:20', '', 0, 1, 74, 1, 1, NULL),
(162, 'Union periodic report', '2', 35, '<p><br></p>', 2, 0, NULL, '64', '2021-10-16 12:00:00', '2021-10-17 12:00:00', '2021-11-06 05:00:19', '', 0, 1, 74, 1, 1, NULL),
(164, 'Other Bank Support', '2', 35, '<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">SBS-3 IFIC support</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"background-color: rgb(248, 248, 248);\"><font color=\"#1d1c1d\" face=\"Slack-Lato, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Remit book&nbsp;One&nbsp;Bank&nbsp;Support</span></font></span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">CL IFIC Not started, only screen is ready.</span><br style=\"box-sizing: inherit; color: rgb(29, 28, 29); font-family: Slack-Lato, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\"><span style=\"background-color: rgb(248, 248, 248);\"><font color=\"#1d1c1d\" face=\"Slack-Lato, appleLogo, sans-serif\"><span style=\"font-size: 15px; font-variant-ligatures: common-ligatures;\">Ezy Meeting =&gt; step wise Meeting&nbsp;Panel integration and convert into Laravel, not started</span></font></span><br></p>', 1, 0, NULL, '65', '2021-10-16 12:00:00', '2022-10-16 12:00:00', NULL, '', 0, 3, 74, 0, 1, NULL),
(165, 'User profile update ', '2', 35, '', 2, 1, '2021-11-02 12:20:02', '75', '2021-10-16 12:00:00', '2021-10-16 12:00:00', '2021-11-07 12:00:06', '', 0, 1, 74, 1, 1, NULL),
(166, 'Conversion rate ', '2', 35, '', 2, 1, '2021-11-02 12:19:58', '75', '2021-10-16 12:00:00', '2021-10-16 12:00:00', '2021-11-07 11:59:22', '', 0, 1, 74, 1, 1, NULL),
(167, 'Commission type ', '2', 35, '', 2, 1, '2021-11-02 12:19:53', '75', '2021-10-16 12:00:00', '2021-10-16 12:00:00', '2021-11-07 10:43:35', '', 0, 1, 74, 1, 1, NULL),
(168, 'Fees', '2', 35, '', 2, 1, '2021-11-02 12:19:46', '75', '2021-10-16 12:00:00', '2021-10-17 12:00:00', '2021-11-07 11:58:50', '', 0, 1, 74, 1, 1, NULL),
(169, 'Transaction limit ', '2', 35, '', 2, 1, '2021-11-02 12:19:38', '75', '2021-10-16 12:00:00', '2021-10-17 12:00:00', '2021-11-07 11:55:40', '', 0, 1, 74, 1, 1, NULL),
(170, 'Transaction type ', '2', 35, '', 2, 1, '2021-11-02 12:19:29', '75', '2021-10-16 12:00:00', '2021-10-17 12:00:00', '2021-11-07 10:54:17', '', 0, 1, 74, 1, 1, NULL),
(171, 'Alleen Food', '5', 26, 'working order', 1, 0, NULL, '22', '2021-10-31 12:00:00', '2021-11-15 12:00:00', NULL, '', 0, 1, 74, 0, 2, NULL),
(172, 'WEAEPA(SLA)', '2,5', 35, '<p>working order&nbsp;</p>', 1, 0, NULL, '22', '2021-10-31 12:00:00', '2021-11-15 12:00:00', NULL, '', 0, 1, 74, 0, 1, NULL),
(173, 'MTB(B-Performance)', '5', 26, '<p>working order</p>', 1, 0, NULL, '22,35', '2021-10-31 12:00:00', '2021-11-30 12:00:00', NULL, '', 0, 1, 74, 0, 2, NULL),
(174, 'GIB(RemitBook)', '5', 35, '<p>Work order</p>', 1, 0, NULL, '26,22', '2021-10-31 12:00:00', '2021-11-30 12:00:00', NULL, '', 0, 1, 74, 0, 2, NULL),
(175, 'Uttara', '5', 35, '<p>work order</p>', 1, 0, NULL, '22', '2021-10-31 12:00:00', '2021-11-30 12:00:00', NULL, '', 0, 1, 74, 0, 2, NULL),
(176, 'Merchantile Bank', '5', 35, '<p>work order</p>', 1, 0, NULL, '26', '2021-10-31 12:00:00', '2021-11-30 12:00:00', NULL, '', 0, 1, 74, 0, 2, NULL),
(177, 'One Bank(User Management)', '5', 26, '<p>work order</p>', 1, 0, NULL, NULL, '2021-10-31 12:00:00', '2021-11-15 12:00:00', NULL, '', 0, 1, 74, 0, 2, NULL),
(178, 'Basic Bank', '5', 26, '<p>Work Order</p>', 1, 0, NULL, '35', '2021-10-31 12:00:00', '2021-11-30 12:00:00', NULL, '', 0, 1, 74, 0, 2, NULL),
(179, 'SIBL', '5', 26, 'Work Order', 1, 0, NULL, NULL, '2021-10-31 12:00:00', '2021-12-30 12:00:00', NULL, '', 0, 1, 74, 0, 2, NULL),
(180, 'DBL(CARD MANAGER)', '5', 26, '<p>work order</p>', 1, 0, NULL, '35', '2021-10-31 12:00:00', '2021-11-30 12:00:00', NULL, '', 0, 1, 74, 0, 2, NULL),
(181, 'AB BANK', '2', 23, '                                            <p>REMITBOOK</p>                                        ', 1, 0, NULL, '13,49,64', '2021-11-02 06:11:05', '2021-11-25 06:11:05', NULL, '', 0, 1, 74, 1, 1, 'Ab bank'),
(182, 'SEBL', '2', 35, '<p>BKASH</p>', 1, 0, NULL, '13', '2021-11-02 12:00:00', '2022-01-30 12:00:00', NULL, '', 0, 1, 74, 0, 1, NULL),
(183, 'UTTARA BANK', '2', 35, '<p>API</p>', 1, 0, NULL, '23', '2021-11-02 12:00:00', '2021-11-30 12:00:00', NULL, '', 0, 1, 74, 0, 1, NULL),
(184, 'UMS server configure, Application Installation, Demonstration & User Manual', '2', 23, '                                                                                        <p>USER MANAGEMENT</p>                                                                                ', 2, 1, '2021-11-08 01:56:05', '49', '2021-11-02 02:13:11', '2021-11-11 02:13:11', '2021-11-08 02:18:57', '', 0, 1, 74, 2, 1, 'ONE Bank Ltd.'),
(185, 'SBAC BANK', '2', 64, '<p>CARD MANAGER</p>', 1, 1, '2021-11-08 01:51:18', '75', '2021-11-02 12:00:00', '2021-11-08 12:00:00', NULL, '', 0, 1, 74, 0, 1, NULL),
(186, 'MTB BANK', '2', 13, '<p>KPI</p>', 2, 1, '2021-11-07 11:12:04', '49', '2021-11-02 12:00:00', '2021-11-07 12:00:00', '2021-11-08 01:59:54', '', 0, 1, 74, 1, 1, NULL),
(187, 'MARCHANTILE BANK', '2', 35, '<p>LC MANAGER</p>', 1, 0, NULL, '72,75,23', '2021-11-02 12:00:00', '2021-11-08 12:00:00', NULL, '', 0, 1, 74, 0, 1, NULL),
(188, 'IFIC BANK', '2', 35, '<p>SBS2</p>', 1, 0, NULL, '65', '2021-11-02 12:00:00', '2021-11-25 12:00:00', NULL, '', 0, 1, 74, 0, 1, NULL),
(191, 'SBAC', '2', 13, '<p>REMITBOOK</p>', 1, 1, '2021-11-08 06:43:54', '49', '2021-11-06 12:00:00', '2021-11-08 12:00:00', NULL, '', 0, 1, 74, 0, 1, NULL),
(192, 'SBS 3 Project Closing and Bill', '5', 35, '<p>SBS 3 Project Closing and Bill</p>', 1, 0, NULL, '26', '2021-11-07 12:00:00', '2021-11-11 12:00:00', NULL, '', 0, 1, 74, 0, 1, NULL),
(193, 'SBS 2 Full Data Mapping and Development Requirement', '2', 35, '                                            <p>SBS 2 Full Data Mapping and Development Requirement</p>                                        ', 1, 0, NULL, '65', '2021-11-07 04:12:43', '2021-11-14 04:12:43', NULL, '', 0, 1, 74, 1, 1, 'IFIC Bank'),
(194, 'Task Management Upgradation', '2', 23, '<p style=\"box-sizing: inherit; margin-bottom: 0px; list-style-type: none; margin-left: 28px;\">1. Allow login from Rampura office only for ( Khukon,Mamun,Haydar,Jitu Vai)</p><p style=\"box-sizing: inherit; margin-bottom: 0px; list-style-type: none; margin-left: 28px;\">2. Attendance Summary Report (Tushar vai given format)</p><p style=\"box-sizing: inherit; margin-bottom: 0px; list-style-type: none; margin-left: 28px;\">3. Tentative date is over then Tentative date column red mark and status Date Expire</p><p style=\"box-sizing: inherit; margin-bottom: 0px; list-style-type: none; margin-left: 28px;\">4. Client Name added to the Task view list</p><p style=\"box-sizing: inherit; margin-bottom: 0px; list-style-type: none; margin-left: 28px;\">5. Add to serial Number in the Task view list</p><p style=\"box-sizing: inherit; margin-bottom: 0px; list-style-type: none; margin-left: 28px;\">6. The resigned person will be deactivated</p><p style=\"box-sizing: inherit; margin-bottom: 0px; list-style-type: none; margin-left: 28px;\">7. Add new department Socks Marketing.</p>', 1, 1, '2021-11-08 01:50:15', '49', '2021-11-07 12:00:00', '2021-11-08 12:00:00', NULL, '', 0, 1, 74, 0, 1, NULL),
(195, 'Agent Banking commission', '2', 23, '<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">school fees commission&nbsp; calculated dynamically commission setup value</span><br></p>', 1, 0, NULL, '13', '2021-11-08 12:00:00', '2021-11-10 12:00:00', NULL, '', 0, 1, 74, 0, 1, 'Agent Banking'),
(196, 'DBL Exchange House API', '2', 23, '<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">Data pull from exchange house and insert our system. Then paid mark through my system (Cash / Deposit)</span><br></p>', 1, 0, NULL, '49,13', '2021-11-09 12:00:00', '2021-11-18 12:00:00', NULL, '', 0, 1, 74, 0, 1, 'DBL'),
(197, 'people gender list', '2', 13, '<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">create a gender list table&nbsp; for finding sender &amp; beneficiary gender form kha report gender automated matching</span><br></p>', 1, 0, NULL, '49', '2021-11-16 12:00:00', '2021-11-18 12:00:00', NULL, '', 0, 1, 74, 0, 1, 'DBL'),
(198, 'SEBL Remit-Transfer API Call & Callback API Create With Documentation', '2', 35, '<p><span style=\"color: rgb(29, 28, 29); font-family: Slack-Lato, appleLogo, sans-serif; font-size: 15px; font-variant-ligatures: common-ligatures; background-color: rgb(248, 248, 248);\">call sebl bkash remit-transfer api and create callback api for fetching bkash response.</span><br></p>', 1, 0, NULL, '13', '2021-11-16 12:00:00', '2021-11-18 12:00:00', NULL, '', 0, 1, 74, 0, 1, 'SEBL');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(20) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spouse_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_married` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `official_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_person` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_person_relations` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergency_contact_person_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_working_experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `references` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `join_date` date NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `company`, `father_name`, `mother_name`, `spouse_name`, `is_married`, `personal_phone`, `official_phone`, `current_address`, `permanent_address`, `national_id`, `passport_no`, `blood_group`, `emergency_contact_person`, `emergency_contact_person_relations`, `emergency_contact_person_phone`, `previous_working_experience`, `references`, `dob`, `join_date`, `resume`, `photo`, `work_type`, `created_at`) VALUES
(1, 1, '1,2,3', 'a', 'b', '', 'married', '33', '', 'm', '435435', '45435435', '435435435', '435435', '4354354', '435435', '45435', '45', '4354', '2020-02-04', '2018-02-03', '', 'a65148ceb0133b38569a616c1030fb51.jpg', 1, '2020-02-03 07:20:27'),
(56, 7, '1', 'Md. Atiyar Rahman', 'Mst.Tahmina khatun', '', 'unmarried', '01686129484', '', 'Jatrabari,1236 Dhaka (Bangladesh) ', 'Ratanganj-7501,Narail sadar, Narail,Bangladesh', '3751885918', '', 'A+', 'Md. Atiyar Rahman', 'father', '01716344781', '0', '', '1996-06-03', '2019-10-16', '7194bd7bebbc30c42312e2d3044c4039.xls', 'af54c4c0c6a0f55e670e3ae59ce617d5.jpg', 1, '2020-02-09 08:38:22'),
(58, 10, '2', 'Mir Abdul Hamid', 'Hena Begum', '', 'unmarried', '01684239748', '', '84/2/85 Dhalkanagar, Gandaria, Dhaka', '84/2/85 Dhalkanagar, Gandaria, Dhaka', '8222085485', '', 'O+', 'Mir Abdul Hamid', 'Father', '01818794298', '1.0', '', '1992-07-18', '2019-09-21', '', '72cc4e7a39aebff0fc022c7d8ec39bd4.jpg', 2, '2020-02-09 09:22:11'),
(59, 11, '1', 'Abdul Khalek Sikder', 'Rajiya Begum', '', 'unmarried', '01646442925', '', 'Khilgaon, Dhaka.', 'Barishal, kuakata', '100457815', '', 'A+', 'Jakir', 'Brother', '01677703014', '4.0', '', '1989-05-10', '2019-10-07', '2a2c386860c22d081991e2dc97e5ec47.jpg', '0d6e041f76899b3ffca42567c499d0b7.jpg', 2, '2020-02-09 09:35:49'),
(60, 12, '2', 'Altap Hossain', 'Safura khathun', '', 'unmarried', '01724265446', '88027192901', '174/1A tejkuni para,Tejgoan,Dhaka 1215', 'Gazipur,Sriula, Assasuni, Satkhira,khulana Bangladesh,9460', '8710494595681', 'EA0047085', 'AB+', 'Ashique Iqbal', 'Brother', '01911765220', '2.5', '', '1989-03-20', '2019-07-15', '84f9ad6affdeac3ff037cf4a0dbb7ffa.doc', 'b6bff8fa7c50775a1efdd3dafb4f0bab.jpg', 2, '2020-02-09 09:53:28'),
(61, 13, '1', 'Md. Rafiqul Islam', 'Hasina Begum', '', 'unmarried', '01859443458', '01518303955', 'Gopibag, Motijheel, Dhaka, Bangladesh', 'Matain Kot, Ali-shor, Sadar South, Cumilla,Bangladesh', '1953364146', '', 'O+', 'Md. Rafiqul Islam', 'Father', '01831659716', '0.7', 'Nazurl Islam (Software Engineer at Venture  Solution)', '1997-04-13', '2019-07-08', '4d5b136ebb90bd71f226b677aaa469d0.pdf', '0f550567694461e199b8bb223a0f4ac8.jpg', 2, '2020-02-09 10:03:32'),
(62, 14, '1', 'MD. Yusuf Sarker', 'Bilquis Akter', '', 'unmarried', '01937424217', '', 'Jonotabag Hazi Osim Uddin Road, House: 49/7', 'Same as current address.', '2354968139', '', 'A-', 'Bilquis Akter', 'Mother', '01920476056', '0', '', '1995-05-26', '2019-05-16', '925776ad3ea79d8aa0d1af57965806b7.pdf', '4d59a61484c3a55b33d59f1d1b0d7a1d.jpg', 2, '2020-02-09 10:19:32'),
(63, 15, '1', 'Late Taslim Uddin', 'Farida Yeasmin', '', 'unmarried', '01718149568', '', 'east rampura', 'Vill: Mominpur, Post: Ukhariabari, Upazilla: Dhanbari                                                  District: Tangail', '19909312547000006', '', 'A+', 'M.A. Hojaiffa Noman', 'Cousin', '01713329475', '2.0', 'M.A. Hojaiffa Noman', '1990-10-19', '2019-04-11', '4d27f88e1ba037bc09d46247797a0050.doc', '78ed73c0898e11d7e306d3d6d9cfae31.jpg', 2, '2020-02-09 10:39:41'),
(64, 16, '1', 'Sushanta Kumar Biswas', 'Shipra Mazumder', '', 'unmarried', '01521459324', '', '36/3 Masjid Road , Dhankhetermor , Mirpur 1', '36/3 Masjid Road , Dhankhetermor , Mirpur 1', '19966517647000146', '', 'B+', 'Sushanta Kumar Biswas', 'Father', '01728847987', '0', '', '1996-08-08', '2019-05-01', 'f8bc8d43be2758591ae531c324571f0a.pdf', 'fd2fbdc2ba013dafec7047d1aaeded21.jpg', 2, '2020-02-09 10:47:54'),
(65, 17, '1', 'M.Altaf Hossain', 'Mahmuda sultana', '', 'married', '01704521264', '', '1598, South Dania, Dhaka', '1598, South Dania, Dhaka', '4642631099', '', 'AB+', 'M.Altaf Hossain', 'Father', '01716512126', '0.6', '', '1990-10-17', '2019-03-20', 'c7f119e5117843fbac5a356505665395.docx', '9de9f0a61d263f6a8f723fe8f001d147.jpg', 2, '2020-02-09 11:00:11'),
(66, 18, '1', 'Syed Munsurul Haque', 'Syeda Arefa Haque', '', 'married', '01711206014', '', 'Vill - Karary, Post,- Rakhalgachy,Dist.-Bagerhat', 'Vill - Karary, Post,- Rakhalgachy,Dist.-Bagerhat', '1922779028', '', 'AB+', 'Syeda Rukshana Haque', 'Sister', '01720994515', '8.0', 'Mizan Sir', '1978-12-01', '2019-02-10', 'ac5b3478067b81b5a69234e17b84023c.pdf', '0f7ecae6a5a939093668f801e5686b36.jpg', 2, '2020-02-09 11:24:10'),
(68, 22, '1', 'A. B. M Golam Mostafa', 'Khaleda Mostafa', 'Dr. Sadia Afrin Bannya', 'married', '01720571129', '01911601026', 'House - 12, Road - 4,  Block - J, Banasree, Rampura. Dhaka - 1219', 'House - 12, Road - 4,  Block - J, Banasree, Rampura. Dhaka - 1219', '8663873266', '', 'B+', 'Dr. Sadia Afrin Bannya', 'Spouse', '01764484078', '4', 'Name: Shabu Anwar Designation: CEO, Marks and Marker. Address: House No. 20, Road No. 2 Block#C. Banasree, Dhaka. Cell No: 01732807555 Contact: 03772001535 (office) Web site: www.marksandmarker.com www.bloggymedia.com  Name: Nafiul Alam Choudhury  Designation: Managing Director, JadeWits Technologies Limited.  Address: House No. 8, Road No. 3  Block#A. Banasree, Dhaka.  Cell No: 01713204715  Contact: 028399641 (office)  Web site: jadewits.com', '1991-06-12', '2019-03-02', 'd3ad9dfcc59a058e442688df4cd8825a.pdf', 'a3bb323e07354ac14e59ba5f45b6c51a.jpg', 2, '2020-02-09 11:50:26'),
(69, 23, '1', 'Maznu Mondol', 'Rabeya Begum', '', 'unmarried', '01902713613', '', 'Jha#48,Road#09,Middle Badda, Gulshan-1, Dhaka', 'Chilimpur,Kalihati, Tangail', '19959312843000123', '', 'B+', 'Ab. Halim', 'Brother', '01756652050', '0', 'Abu Saleh', '1995-09-01', '2018-10-01', '50d7515612fb5556cd96ba13a9f9063e.docx', '4fcd021fe242d6a3084e83a3cf054301.jpg', 2, '2020-02-09 12:00:42'),
(70, 24, '1', 'Md. Nazrul Islam', 'Hasina Begum', '', 'married', '01911311175', '', 'Flat-21 E4, Sukrabad, Dhaka', 'Vill- Vangagate, Thana- Avoynagor, Jella- Jessore', '19922695017000123', '', 'A+', '', 'Father', '01920639933', '6', '', '1992-12-07', '2018-10-15', 'b9125595b29c935a550f8d3c0583a245.pdf', 'a7e9939ca0cbea23ce783df01ac0cba9.jpg', 2, '2020-02-09 12:27:25'),
(71, 25, '1', 'Syed Tareq Ahmed', 'Kishwer Jahan', '', '', '01916572338', '', '42/F Indira Road, Forum Apartment A/4, Tejgaon, Dhaka-1215.', '42/F Indira Road, Forum Apartment A/4, Tejgaon, Dhaka-1215.', '5529255563', '', 'B+', 'Kishwer Jahan', 'Mother', '01913151504', '6', '', '1990-02-07', '2018-09-01', 'faaa86f7fbac99f599417afba0ed41ba.docx', '66c102e5586a9dc8b19ef20ebf7ed5f5.png', 2, '2020-02-09 12:36:43'),
(72, 26, '1', 'Md. Khalilur Rahman', 'Mst. Mamataz Begum', 'Mst. Kanis Fatema', 'married', '01612126345', '01712126345', 'House No: 1476/3, Khilgaon, Dhaka-1219, Bangladesh', 'Village: Dhipur, Post Office: Goshairhut, Thana: Goshairhut, District: Shawrioutpur, Bangladesh', '19772693623847624', 'BE0442091', 'B+', 'Mst. Kanis Fatema', 'Wife', '01816811440', '15.0', 'MD. Anisur Rahman    UCBL (United Commercial Bank Ltd).    Branch Manager, (Corporate Banking Division)    Banani Branch, Banani, Dhaka.    +8801714038199    anis.rahman@ucbl.com', '1977-01-03', '2018-07-21', '6fd768cc2d84b7cd61add8611036b3a5.doc', '03b593ab372953be20ed98c4b8e5f3ac.jpg', 2, '2020-02-09 12:57:05'),
(73, 27, '1', 'Habibur Rahman', 'Deloara Chowdhury', 'Farhana Binte Noor', '', '01616499869', '01916499869', 'H-11(5th floor), R-10, B-D, Banasri, Rampura, Dhaka', 'Vill- Chor Modhu Charia, Po- Churain, Nababgonj, Dhaka-1325', '1234', '', 'A+', 'Farhana Binte noor', 'wife', '01670806839', '', '', '1988-03-09', '2016-09-01', '4b8e029c079dddd50baff4d1a9940ca8.jpeg', 'acdbee3ddd97e97f94caeefec245467b.JPG', 2, '2020-02-09 13:13:57'),
(74, 28, '1,3', 'x', 'y', '', 'married', '01712555117', '', 'addd', 'add', '1234', '', 'A+', '', '', '', '', '', '1980-07-09', '2017-07-01', '5e045ce4ceb360d36d4a0130e915c7d2.jpeg', 'cb3f5e64e168fd2d85041d22f84aef56.jpeg', 2, '2020-02-09 13:26:32'),
(75, 29, '1', 'x', 'y', '', '', '43434', '', 'road no - 3 , house no - 7 , 4th floor', 'road no - 3 , house no - 7 , 4th floor', '23434', '', '', '', '', '', '', '', '1986-07-16', '2020-02-09', 'b4623ae3bddf3e895c4c5c5628477bc0.jpeg', 'dca68779a09fd401416d58c4d05598b2.jpeg', 2, '2020-02-09 13:32:30'),
(76, 30, '1', 'Fazlur Rahman', 'Mamataz Begum', '', '', '01710877990', '', '120/B, sahjahanpur, Dhaka', '120/B, sahjahanpur, Dhaka', '1234', '', 'B+', 'xyz', '', '1234', '0', '', '1985-07-24', '2018-06-26', '649c94fffb46885d700ef4d1e3335ed1.pdf', '046737e77921a1390c7705afb406e975.png', 2, '2020-02-10 04:23:20'),
(77, 31, '2', 'Md. Laal mia', 'Jahida Begum', '', 'married', '01720819450', '', '120/B/1, Uttar Shajahanpur,Dhaka', 'Village: Vashanee Sarak, Post:mongla-9350, District: Bagerhat', '19810125808000004', '', 'B+', 'Didar', '', '01720819450', '5', '', '1981-10-10', '2016-11-22', '28ebd65a380473c1899de9a4d7218650.docx', '5845fd01de29d30ebeaa5a66630a8899.jpg', 2, '2020-02-10 04:36:02'),
(78, 32, '3', 'Kazi Emdadul Haque', 'Taslima Begum', '', 'unmarried', '01710495278', '', 'Balita, Sreenagor, Munshigonj', 'Balita, Sreenagor, Munshigonj', '19925918494000035', '', 'B-', 'Kazi Emdadul Haque', 'Father', '01726737761', '0', '', '1992-01-31', '2018-02-01', '0ad16ec181d97a1d87f3f8e12487308b.doc', 'ed859fa5266017c1b52f0937c008bb52.jpg', 2, '2020-02-10 04:47:27'),
(79, 33, '1', 'Motiar Rahman', 'Fahmida Rahman', '', 'unmarried', '01676415198', '01676415198', 'H-168,Road-7, Rafiq Housing ,Shekertek,Mohammadpur,Dhaka,1207', 'H-94,Pabla,Daulatpur,Khulna', '19924792106000126', '', 'O+', 'Fahmida Rahman', 'Mother', '01712625461', '0', '', '1995-07-19', '2016-11-26', '8b8e1ee20c3ad43348787260a4d89ce1.pdf', '4f8d65310c0645af458d6f6bf84ff999.jpg', 2, '2020-02-10 04:57:07'),
(80, 34, '1,2', 'Md. Alim Uddin', 'Hafiza Ferdousi', '', 'unmarried', '01675461458', '', 'Ka-8 Jagannathpur, Bashundhara r/a dhaka', 'Vill: Borokhali, P.O: Mirzapur, Tha: Gopalpur, District: Tangail', '19936115223000002', '', 'O+', 'Md. Alim Uddin', 'Father', '01716722541', '3.0', 'Zahedul Alam Sr. Software Engineer  Workspace InfoTech', '1988-06-14', '2018-05-03', '', 'b6953c02ab1913581371def18ef69b3c.jpg', 2, '2020-02-10 05:06:51'),
(81, 35, '1,2,3', 'Late Mizanur Rahman', 'Nasima Begum', '', 'unmarried', '01928434000', '', '209/B, Lalbagh Road, BDR Gate-2, Azimpur, Dhaka', 'Village: Farmpara, Chuadanga Sadar, Chuadanga P.O.: Chuadanga- 7200 Division: Khulna, Bangladesh', '19951822308000167', '', 'B+', 'Nasima Begum', 'Mother', '01717912968', '0.8', 'i) Azmul Haque Additional District Commissioner, Magura Government of the People Republic of Bangladesh Mobile: +8801712126661 ii)Dr. Md. Samsuzzaman  Dept. of CCE, Faculty of CSE  Associate Professor  Patuakhali Science and Technology University, Dumki, Patuakhali - 8602  Mobile:01712653210', '1995-07-01', '2017-09-03', 'bcda8aab3d3261e836c8c52057493b2a.pdf', 'e14a1896740e878ff7aa70285c7d28c7.jpg', 2, '2020-02-10 05:13:33'),
(82, 36, '1', 'Dr. Md Alee Murtuza', 'Anwara Ferdousi', '', '', '01854562919', '', 'Dakkhin Hawa, Apartment-2B, House- 48 Road- 3A, Dhaka', 'Dakkhin Hawa, Apartment-2B, House- 48 Road- 3A, Dhaka', '133465', '', 'A+', 'ggjym', '', '13', '9.0', '', '1983-03-02', '2018-06-03', '652c304c7f3ae11e1f22170779af4132.jpg', '752afece56890e826f7399b1d91ed4a9.jpg', 2, '2020-02-10 05:20:47'),
(87, 41, '1', 'Md. Motalib Khalifa', 'Mst. Tasmilma', '', 'married', '1234', '', '123/2, West Jurain, Tula Bagicha Road, Faridabad, Shampur, Dhaka- 1204', 'same the current address', '297690562539', '', 'A+', '', '', '', '3', 'K. M. Faisal  IT Executive, SBAC Bank Ltd, Head Office', '1995-07-19', '2018-06-03', '1ef5a05af4d7d29f3c11ad50407d5da5.jpg', '17958116f8bf5590e87f9e2bed9753d8.jpg', 2, '2020-02-10 06:00:45'),
(88, 42, '1', 'Late Md. Mehtab Uddin Chowdhury', 'Aysha Akhter Begum', '', 'unmarried', '01915172892', '', 'B/68 South Banasree, Gorun (1st Floor), Dhaka- 1214', 'Same the current address', '7750597085', '', 'A+', '', 'Mother', '01715028344', '8', '', '1988-03-26', '2016-12-01', 'c13397d9ac31ce3ce27ca1598b90d34a.jpg', '1b48ef9818242bd3f5b83afc8c2df32d.jpg', 2, '2020-02-10 06:13:25'),
(89, 43, '1', 'Late Golam Haider', 'Hosne Ara Begom', '', 'married', '01715601625', '', 'Eastern Banabithi Apartment Flat- 615, Plot- L-1/A, Main Road, South Banasree,  Dhaka- 1219', '3B.K.Road, jashore, Bangladesh', '2695435719482', '', 'A+', '', 'Wife', '01787718944', '15', '', '1980-03-12', '2016-09-03', '0f8fd0b7a1f72d80e8593bb8a8c17e77.jpg', '1f9dc8734089966b0db00a61a443dc05.jpg', 2, '2020-02-10 06:23:15'),
(91, 47, '1', 'Md. Abdur Razzak', 'Runa Parvin', '', 'married', '01717600424', '', '2/15-16, Tajmahol Road, Mohammadpu', '2/15-16, Tajmahol Road, Mohammadpu', '1122255', '', 'O+', 'Md. Abdur Razzak', 'father', '01711392850', '7', '', '1988-01-01', '2016-12-18', 'c49ba66fc5a0161a476527b7d4499078.docx', '1e0126628745c347e80a407a5a6b812f.jpg', 2, '2020-02-10 07:13:27'),
(92, 48, '1', 'Md Mizanur Rahman', 'Ferdous Ara', 'Fahmina Sultana', 'married', '01819430692', '', '1st Floor, House 42, Road 3, Block E Banasree, Rampura Dhaka 1219', '1st Floor, House 42, Road 3, Block E Banasree, Rampura Dhaka 1219', '123', '', 'B-', 'Fahmina Sultana', '', '01833085207', '8', '', '1984-06-20', '2018-01-01', 'adb78f769ec985c1a6ec4575864b5ebd.pdf', 'da7032ec909865504c2b0855972d7ca5.jpg', 2, '2020-02-10 07:21:00'),
(93, 49, '1', 'Sana ullah', 'Nasima akter', '', 'unmarried', '01854109774', '', 'adabor,Mohammmadpur,Dhaka', 'sonagazi,Feni', '12345', '', 'O+', 'Nasima akter', 'Mother', '01866086025', '0', '', '1999-02-11', '2020-01-01', 'a16d31dd78a1b25488c09ac5423b593a.pdf', 'e1140623c5adb8b72f713845fbc5c873.jpg', 2, '2020-02-10 07:26:19'),
(107, 63, '1', 'Matiar Rahman', 'Mamtaj Shahnewas', '', 'married', '01558946111', '', '232,Bondhon villa,Middle Bashabo,Dhaka.', '232,Bondhon villa,Middle Bashabo,Dhaka.', '7349732722', '', 'O+', 'Imtiaz Ahmed', '', '01755515022', '', '', '1994-04-03', '2020-02-17', 'a71f92061633d0d81ba0d2f294a2a4b5.pdf', '0f76e2ea6e237ce47c54727390a32d01.', 2, '2020-02-17 08:59:49'),
(108, 64, '1', '-', '-', '', 'unmarried', '00000', '', 'Dhaka', 'Dhaka', '123123123', '', '', '', '', '', '', '', '1996-07-11', '2020-09-28', '91729ec0c8a5ab95c0b5741f00649b3c.jpg', '0ee6b84d519f8bbe92271f77ff4f7741.jpg', 2, '2020-09-28 03:16:22'),
(109, 65, '1', '-', '-', '', 'unmarried', '0000', '', 'Dhaka', 'Dhaka', '1234', '', '', '', '', '', '', '', '1994-05-04', '2020-09-01', 'd04758b182ceada7929d05a471c5bbae.jpg', 'c4c1d49c335ac715703525f517e2a10a.jpg', 2, '2020-09-28 05:24:35'),
(110, 66, '1', '-', '-', '', 'unmarried', '01989060083', '', '-', '-', '-', '', '', '', '', '', '', '', '1987-04-01', '2020-09-01', 'b1c5c9ed7f7930e999eb0f2e5525bd12.txt', '60145fe4368d7e20d48a73ee44f76118.png', 2, '2020-10-26 16:49:09'),
(112, 0, '1,2,3', 'Md. Rafiq Islam', 'mrs amena begum', '', 'unmarried', '01406315285', '', 'Manda,Muriali goli , Dhaka', 'pirojpur', '5545434434', '', '', 'mrs amena begum', 'Mother', '0194863068', '', '', '2001-12-27', '2020-08-20', 'c7ecb7fc2c4858143259e77203c1afa5.jpg', '6f63eecfd53ad65c89bb71c2ea6e437e.jpg', 2, '2020-12-31 10:13:42'),
(114, 69, '1', 'Md. Rafiq Islam', 'mrs amena begum', '', 'unmarried', '01406315285', '', 'Manda,Muriali goli , Dhaka', 'pirojpur', '4553323', '', '', 'mrs amena begum', 'Mother', '0194863068', '', '', '2001-12-27', '2020-10-01', '581e9dbc3ef9c0bb9c80adeb5c9bb790.jpg', '43b91df38e136a002f9440fee585815b.jpg', 2, '2020-12-31 10:23:57'),
(116, 71, '3', 'Md. Mofijul Haque', 'Late. Laiju Begum', '', 'unmarried', '01797975052', '', 'Rajarbag', 'kurigram', '5454', '', '', '', '', '', '', '', '1997-09-11', '2020-11-21', '91bbe9e211dbb8c0c462c26af3498a41.pdf', '28a2b079c7e6885a7f2d8b59fd628568.jpg', 2, '2021-01-02 10:46:01'),
(117, 67, '1', '-', '-', '-', NULL, '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '1997-01-01', '2021-01-01', '-', '-', 1, '2021-01-26 08:15:02'),
(118, 72, '1', 'Abul Basar Badal', 'Shamima Basar', '', 'unmarried', '01686392899', '', '18/1 Sayed Hasan Ali Lane, Babubazar, Dhaka-1100', '18/1 Sayed Hasan Ali Lane, Babubazar, Dhaka-1100', '686 354 6427', '', 'O+', 'Abul Basar Badal', 'Father', '01732229210', 'Yes', '', '1995-09-10', '2021-03-01', '5b8dd19accb6eedec5639fa463332f7c.pdf', 'f1060cca56d53c54bf74bac10041c2a4.jpg', 2, '2021-03-02 10:40:32'),
(119, 73, '1', 'Kazi Obaidul Hoque', 'Kazi Aktarunnesa', '', 'unmarried', '01521436337', '', '180/F East Rampura, Dhaka', '180/F East Rampura, Dhaka', '3752414213', '', '', '', '', '', '', '', '1997-10-14', '2021-06-01', '43561b73129ff40ec6ad6dd770f67ac8.pdf', 'c93c8596a31ee61976cba6c89ce9a0dc.jpg', 2, '2021-06-27 09:32:11'),
(120, 74, '1,2,3', 'KAZI EMDADUL HAQUE', 'TASLIMA BEGUM', 'NABIRA LIMU', 'married', '01319681706', '', 'balita,tontor,sreenagar,munshiganj', 'balita,tontor,sreenagar,munshiganj', '34534534', 'BM0946208', 'B-', 'Kazi Abdullah Al Mamun', 'Brother', '01710495278', '', '', '1996-06-09', '2021-10-03', 'babe8e21c19279d30d73d7685fd5a5e8.txt', 'dc57597c742bc3dfaf72c8e5f11b2d41.jpg', 2, '2021-10-03 05:51:28'),
(121, 75, '1', 'Late Modh. Chan Mia Shekh', 'Ashia Begum', '', 'unmarried', '8801680850224', '', '11/7 Mirbagh, Dhaka, Bangladesh', 'Village: Diarchor, Madaripur, Bangladesh', '8702681951', '', 'A+', '', 'Shafiqul Alam Tushar', '01952136806', '', '', '1994-10-22', '2021-10-02', '44e04f743fcbc094a6c858b7ac5ba7fb.pdf', '35d69ed3e60d9e0b332c5a28beffc492.jpg', 2, '2021-10-03 06:31:05'),
(122, 76, '1', 'MD. MIR HOSSAN', 'HAZERA BEGUM', '', 'unmarried', '8801828683053', '', '135/1,South Kamalapur, Motijheel, Dhaka-1000', 'Vill: Monnara, PO: Monnara Bazar, PS: Nangalkot, Dis: Cumilla, ', '6889376650', '', 'AB+', 'Atiqur Rahman Mazumder', 'Cousin Brother', '01616020193', 'Fit Elegance', '', '1994-06-01', '2021-11-01', '0b53dacdd257cdeac89bb1d39a006107.pdf', 'b384e5c8fb9cdd4df95d0b4f0af5af30.jpg', 2, '2021-11-06 06:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_office`
--

CREATE TABLE `holiday_office` (
  `id` int(50) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `holiday_office`
--

INSERT INTO `holiday_office` (`id`, `emp_id`, `date`, `created_at`, `entry_user`) VALUES
(1, '64', '2021-10-03', '2021-10-03 09:01:50', '74'),
(2, '26', '2021-10-06', '2021-10-06 04:24:31', '74');

-- --------------------------------------------------------

--
-- Table structure for table `holiday_office_marks`
--

CREATE TABLE `holiday_office_marks` (
  `id` int(50) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `total_holiday_office` varchar(50) NOT NULL,
  `marks` int(11) NOT NULL,
  `year_and_month` varchar(50) NOT NULL,
  `from_date` varchar(50) NOT NULL,
  `to_date` varchar(50) NOT NULL,
  `entry_usr` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_address`
--

CREATE TABLE `ip_address` (
  `id` int(10) NOT NULL,
  `ip_address` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_address`
--

INSERT INTO `ip_address` (`id`, `ip_address`) VALUES
(1, '116.212.106.50,223.27.81.186,180.210.179.38,192.168.0.107');

-- --------------------------------------------------------

--
-- Table structure for table `kpi_parameter`
--

CREATE TABLE `kpi_parameter` (
  `id` int(50) NOT NULL,
  `marks_generate` varchar(50) NOT NULL,
  `holiday_office` varchar(50) DEFAULT NULL,
  `overtime` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kpi_parameter`
--

INSERT INTO `kpi_parameter` (`id`, `marks_generate`, `holiday_office`, `overtime`) VALUES
(1, '1', '1', '200');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(200) NOT NULL,
  `emp_id` int(200) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `leave_reason` text NOT NULL,
  `status` int(11) NOT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offce_open_off`
--

CREATE TABLE `offce_open_off` (
  `id` int(50) NOT NULL,
  `programmer` int(10) NOT NULL COMMENT '0=off, 1=open',
  `marketting` int(10) NOT NULL COMMENT '0=off, 1=open',
  `date` date DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry_time` varchar(50) NOT NULL,
  `entry_usr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `offce_open_off`
--

INSERT INTO `offce_open_off` (`id`, `programmer`, `marketting`, `date`, `entry_date`, `entry_time`, `entry_usr`) VALUES
(5, 1, 1, '2020-12-01', '2020-12-13 12:17:50', '18:17:50', '1'),
(6, 1, 1, '2020-12-02', '2020-12-13 12:17:50', '18:17:50', '1'),
(7, 1, 1, '2020-12-03', '2020-12-13 12:17:50', '18:17:50', '1'),
(8, 0, 0, '2020-12-04', '2020-12-13 12:17:50', '18:17:50', '1'),
(9, 1, 1, '2020-12-05', '2020-12-13 12:17:50', '18:17:50', '1'),
(10, 1, 1, '2020-12-06', '2020-12-13 12:17:50', '18:17:50', '1'),
(11, 1, 1, '2020-12-07', '2020-12-13 12:17:50', '18:17:50', '1'),
(12, 0, 0, '2020-12-08', '2020-12-13 12:17:50', '18:17:50', '1'),
(13, 1, 1, '2020-12-09', '2020-12-13 12:17:50', '18:17:50', '1'),
(14, 1, 1, '2020-12-10', '2020-12-13 12:17:50', '18:17:50', '1'),
(15, 0, 0, '2020-12-11', '2020-12-13 12:17:50', '18:17:50', '1'),
(17, 0, 1, '2020-12-29', '2020-12-20 06:20:27', '12:20:27', '1'),
(18, 1, 0, '2020-12-30', '2020-12-20 16:46:10', '22:46:10', '1'),
(19, 1, 0, '2020-12-01', '2020-12-29 08:35:51', '14:35:51', '1'),
(20, 1, 1, '2021-01-02', '2021-01-02 07:02:21', '07:02:21', '10'),
(21, 1, 1, '2021-01-03', '2021-01-03 04:33:09', '04:33:09', '10'),
(22, 1, 1, '2021-01-04', '2021-01-06 04:09:48', '04:09:48', '10'),
(23, 1, 1, '2021-01-05', '2021-01-06 05:01:25', '05:01:25', '1'),
(24, 1, 1, '2021-01-06', '2021-01-06 05:01:36', '05:01:36', '1'),
(25, 1, 1, '2021-01-07', '2021-01-07 04:24:17', '04:24:17', '10'),
(26, 1, 1, '2021-01-09', '2021-01-09 04:33:17', '04:33:17', '10'),
(27, 1, 1, '2020-12-12', '2020-12-13 12:17:50', '18:17:50', '1'),
(28, 1, 1, '2020-12-13', '2021-01-09 09:26:25', '18:17:50', '1'),
(29, 1, 1, '2020-12-14', '2021-01-09 09:26:25', '18:17:50', '1'),
(30, 1, 1, '2020-12-15', '2021-01-09 09:26:25', '18:17:50', '1'),
(31, 1, 1, '2020-12-17', '2021-01-09 09:26:25', '18:17:50', '1'),
(32, 1, 1, '2020-12-19', '2021-01-09 09:26:25', '18:17:50', '1'),
(33, 1, 1, '2020-12-20', '2021-01-09 09:26:25', '18:17:50', '1'),
(34, 1, 1, '2020-12-21', '2021-01-09 09:26:25', '18:17:50', '1'),
(35, 1, 1, '2020-12-22', '2021-01-09 09:26:25', '18:17:50', '1'),
(36, 1, 1, '2020-12-23', '2021-01-09 09:26:25', '18:17:50', '1'),
(37, 1, 1, '2020-12-24', '2021-01-09 09:26:25', '18:17:50', '1'),
(38, 0, 0, '2020-12-26', '2021-01-09 09:26:25', '18:17:50', '1'),
(39, 1, 1, '2020-12-27', '2021-01-09 09:26:25', '18:17:50', '1'),
(40, 1, 1, '2020-12-28', '2021-01-09 09:26:25', '18:17:50', '1'),
(41, 1, 1, '2020-12-29', '2021-01-09 09:26:25', '18:17:50', '1'),
(42, 1, 1, '2020-12-30', '2021-01-09 09:26:25', '18:17:50', '1'),
(43, 1, 1, '2020-12-31', '2021-01-09 09:26:25', '18:17:50', '1'),
(44, 1, 1, '2021-01-10', '2021-01-10 04:15:58', '04:15:58', '10'),
(45, 1, 1, '2021-01-11', '2021-01-11 05:35:31', '05:35:31', '10'),
(46, 1, 1, '2021-01-12', '2021-01-12 09:04:01', '09:04:01', '10'),
(47, 1, 1, '2021-01-13', '2021-01-12 09:05:54', '09:05:54', '10'),
(48, 1, 1, '2021-01-14', '2021-01-12 09:06:09', '09:06:09', '10'),
(49, 1, 1, '2021-01-16', '2021-01-12 09:06:18', '09:06:18', '10'),
(50, 1, 1, '2021-01-17', '2021-01-17 08:10:19', '08:10:19', '10'),
(51, 1, 1, '2021-01-18', '2021-01-17 08:10:27', '08:10:27', '10'),
(52, 1, 1, '2021-01-19', '2021-01-17 08:10:34', '08:10:34', '10'),
(53, 1, 1, '2021-01-20', '2021-01-17 08:10:41', '08:10:41', '10'),
(54, 1, 1, '2021-01-21', '2021-01-17 08:10:47', '08:10:47', '10'),
(55, 1, 1, '2021-01-23', '2021-01-17 08:10:56', '08:10:56', '10'),
(56, 1, 1, '2021-01-24', '2021-01-24 04:29:51', '04:29:51', '10'),
(57, 1, 1, '2021-01-25', '2021-01-24 04:29:58', '04:29:58', '10'),
(58, 1, 1, '2021-01-26', '2021-01-24 04:30:04', '04:30:04', '10'),
(59, 1, 1, '2021-01-27', '2021-01-24 04:30:09', '04:30:09', '10'),
(60, 1, 1, '2021-01-28', '2021-01-24 04:30:14', '04:30:14', '10'),
(61, 1, 1, '2021-02-01', '2021-02-01 13:31:18', '13:31:18', '10'),
(62, 1, 1, '2021-02-02', '2021-02-02 07:38:55', '07:38:55', '10'),
(63, 1, 1, '2021-02-03', '2021-02-02 07:39:01', '07:39:01', '10'),
(64, 1, 1, '2021-02-04', '2021-02-02 07:39:10', '07:39:10', '10'),
(65, 1, 1, '2021-02-06', '2021-02-02 07:40:09', '07:40:09', '10'),
(66, 1, 1, '2021-02-07', '2021-02-02 07:40:16', '07:40:16', '10'),
(67, 1, 1, '2021-02-08', '2021-02-04 10:08:12', '10:08:12', '10'),
(68, 1, 1, '2021-02-09', '2021-02-04 10:08:18', '10:08:18', '10'),
(69, 1, 1, '2021-02-10', '2021-02-04 10:08:23', '10:08:23', '10'),
(70, 1, 1, '2021-02-11', '2021-02-04 10:08:28', '10:08:28', '10'),
(71, 1, 1, '2021-02-14', '2021-02-14 05:02:42', '05:02:42', '10'),
(72, 1, 1, '2021-02-15', '2021-02-14 05:02:47', '05:02:47', '10'),
(73, 1, 1, '2021-02-16', '2021-02-14 05:02:51', '05:02:51', '10'),
(74, 1, 1, '2021-02-17', '2021-02-14 05:02:56', '05:02:56', '10'),
(75, 1, 1, '2021-02-18', '2021-02-14 05:03:00', '05:03:00', '10'),
(76, 1, 1, '2021-02-20', '2021-02-14 05:03:12', '05:03:12', '10'),
(77, 1, 1, '2021-02-22', '2021-02-14 05:03:19', '05:03:19', '10'),
(78, 1, 1, '2021-02-23', '2021-02-14 05:03:24', '05:03:24', '10'),
(79, 1, 1, '2021-02-24', '2021-02-14 05:03:29', '05:03:29', '10'),
(80, 1, 1, '2021-02-25', '2021-02-14 05:03:34', '05:03:34', '10'),
(81, 1, 1, '2021-02-27', '2021-02-14 05:03:42', '05:03:42', '10'),
(82, 1, 1, '2021-02-28', '2021-02-14 05:03:47', '05:03:47', '10'),
(83, 1, 1, '2021-03-01', '2021-03-01 05:14:19', '05:14:19', '10'),
(84, 1, 1, '2021-03-02', '2021-03-01 05:14:25', '05:14:25', '10'),
(85, 1, 1, '2021-03-03', '2021-03-01 05:14:30', '05:14:30', '10'),
(86, 1, 1, '2021-03-04', '2021-03-01 05:14:35', '05:14:35', '10'),
(87, 1, 1, '2021-03-22', '2021-03-22 04:26:31', '04:26:31', '10'),
(88, 1, 1, '2021-03-23', '2021-03-22 04:26:39', '04:26:39', '10'),
(89, 1, 1, '2021-03-24', '2021-03-22 04:26:45', '04:26:45', '10'),
(90, 1, 1, '2021-03-25', '2021-03-22 04:26:52', '04:26:52', '10'),
(91, 1, 1, '2021-03-27', '2021-03-22 04:26:57', '04:26:57', '10'),
(92, 1, 1, '2021-03-28', '2021-03-22 04:27:02', '04:27:02', '10'),
(93, 1, 1, '2021-03-29', '2021-03-22 04:27:11', '04:27:11', '10'),
(94, 1, 1, '2021-03-30', '2021-03-22 04:27:15', '04:27:15', '10'),
(95, 1, 1, '2021-03-31', '2021-03-22 04:27:20', '04:27:20', '10'),
(96, 1, 1, '2021-04-01', '2021-04-01 04:27:20', '04:27:20', '10'),
(97, 1, 1, '2021-04-03', '2021-04-03 04:27:20', '04:27:20', '10'),
(98, 1, 1, '2021-06-01', '2021-06-01 05:52:16', '05:52:16', '22'),
(99, 1, 1, '2021-06-02', '2021-06-01 05:53:45', '05:53:45', '22'),
(100, 1, 1, '2021-06-03', '2021-06-01 05:53:56', '05:53:56', '22'),
(101, 1, 1, '2021-06-06', '2021-06-06 03:42:36', '03:42:36', '22'),
(102, 1, 1, '2021-06-07', '2021-06-06 03:42:42', '03:42:42', '22'),
(103, 1, 1, '2021-06-08', '2021-06-06 03:42:47', '03:42:47', '22'),
(104, 1, 1, '2021-06-09', '2021-06-06 03:42:54', '03:42:54', '22'),
(105, 1, 1, '2021-06-10', '2021-06-06 03:43:00', '03:43:00', '22'),
(106, 1, 1, '2021-06-13', '2021-06-13 03:34:30', '03:34:30', '22'),
(107, 1, 1, '2021-06-14', '2021-06-13 03:34:36', '03:34:36', '22'),
(108, 1, 1, '2021-06-15', '2021-06-13 03:34:41', '03:34:41', '22'),
(109, 1, 1, '2021-06-16', '2021-06-13 03:34:47', '03:34:47', '22'),
(110, 1, 1, '2021-06-17', '2021-06-13 03:34:52', '03:34:52', '22'),
(111, 1, 1, '2021-06-19', '2021-06-19 04:38:36', '04:38:36', '22'),
(112, 1, 1, '2021-06-20', '2021-06-19 04:38:42', '04:38:42', '22'),
(113, 1, 1, '2021-06-21', '2021-06-19 04:38:47', '04:38:47', '22'),
(114, 1, 1, '2021-06-22', '2021-06-19 04:38:55', '04:38:55', '22'),
(115, 1, 1, '2021-06-23', '2021-06-19 04:39:05', '04:39:05', '22'),
(116, 1, 1, '2021-06-24', '2021-06-19 04:39:11', '04:39:11', '22'),
(117, 1, 1, '2021-06-26', '2021-06-24 03:35:56', '03:35:56', '22'),
(118, 1, 1, '2021-06-27', '2021-06-24 03:36:03', '03:36:03', '22'),
(119, 1, 1, '2021-06-28', '2021-06-24 03:36:10', '03:36:10', '22'),
(120, 1, 1, '2021-06-29', '2021-06-24 03:36:20', '03:36:20', '22'),
(121, 1, 1, '2021-06-30', '2021-06-24 03:36:26', '03:36:26', '22'),
(122, 1, 1, '2021-07-01', '2021-06-24 03:36:31', '03:36:31', '22'),
(123, 1, 1, '2021-08-12', '2021-08-12 03:56:55', '03:56:55', '22'),
(124, 1, 1, '2021-08-28', '2021-08-28 06:05:35', '06:05:35', '22'),
(125, 1, 1, '2021-08-29', '2021-08-28 06:05:45', '06:05:45', '22'),
(126, 1, 1, '2021-08-30', '2021-08-28 06:05:52', '06:05:52', '22'),
(127, 1, 1, '2021-08-31', '2021-08-28 06:05:57', '06:05:57', '22'),
(128, 1, 1, '2021-09-15', '2021-09-15 04:02:18', '04:02:18', '22'),
(129, 1, 1, '2021-09-16', '2021-09-15 04:02:33', '04:02:33', '22'),
(130, 1, 1, '2021-09-18', '2021-09-15 04:02:43', '04:02:43', '22'),
(131, 1, 1, '2021-09-19', '2021-09-15 04:02:49', '04:02:49', '22'),
(132, 1, 1, '2021-09-20', '2021-09-15 04:02:54', '04:02:54', '22'),
(133, 1, 1, '2021-09-21', '2021-09-15 04:03:01', '04:03:01', '22'),
(134, 1, 1, '2021-09-22', '2021-09-15 04:03:05', '04:03:05', '22'),
(135, 1, 1, '2021-09-23', '2021-09-15 04:03:13', '04:03:13', '22'),
(136, 1, 1, '2021-09-25', '2021-09-15 04:03:19', '04:03:19', '22'),
(137, 1, 1, '2021-09-26', '2021-09-15 04:03:25', '04:03:25', '22'),
(138, 1, 1, '2021-09-27', '2021-09-15 04:03:30', '04:03:30', '22'),
(139, 1, 1, '2021-09-28', '2021-09-15 04:03:35', '04:03:35', '22'),
(140, 1, 1, '2021-09-30', '2021-09-28 04:03:41', '04:03:41', '22'),
(141, 1, 1, '2021-09-29', '2021-09-28 04:03:46', '04:03:46', '22'),
(142, 1, 1, '2021-10-02', '2021-10-02 04:50:27', '04:50:27', '22'),
(143, 1, 1, '2021-10-03', '2021-10-02 04:50:41', '04:50:41', '22'),
(144, 1, 1, '2021-10-04', '2021-10-02 04:50:49', '04:50:49', '22'),
(145, 1, 1, '2021-10-05', '2021-10-02 04:50:55', '04:50:55', '22'),
(146, 1, 1, '2021-10-07', '2021-10-02 04:51:08', '04:51:08', '22'),
(147, 1, 1, '2021-10-09', '2021-10-02 04:51:24', '04:51:24', '22'),
(148, 1, 1, '2021-10-10', '2021-10-02 04:51:31', '04:51:31', '22'),
(149, 1, 1, '2021-10-11', '2021-10-02 04:51:44', '04:51:44', '22'),
(150, 1, 1, '2021-10-12', '2021-10-02 04:51:50', '04:51:50', '22'),
(151, 1, 1, '2021-10-13', '2021-10-02 04:51:56', '04:51:56', '22'),
(152, 1, 1, '2021-10-16', '2021-10-02 04:52:46', '04:52:46', '22'),
(153, 1, 1, '2021-10-17', '2021-10-02 04:52:54', '04:52:54', '22'),
(154, 1, 1, '2021-10-06', '2021-10-12 05:44:34', '05:44:34', '1'),
(155, 1, 1, '2021-10-14', '2021-10-17 09:52:28', '09:52:28', '1'),
(156, 1, 1, '2021-10-19', '2021-10-19 03:39:02', '03:39:02', '74'),
(157, 0, 0, '2021-10-20', '2021-10-20 02:18:45', '02:18:45', '74'),
(158, 1, 1, '2021-10-24', '2021-10-24 03:38:08', '03:38:08', '74'),
(159, 1, 1, '2021-10-18', '2021-10-24 06:26:05', '06:26:05', '1'),
(160, 1, 1, '2021-10-21', '2021-10-24 09:17:43', '09:17:43', '1'),
(161, 1, 1, '2021-10-25', '2021-10-25 02:07:17', '02:07:17', '74'),
(162, 1, 1, '2021-10-26', '2021-10-26 04:16:35', '04:16:35', '22'),
(163, 1, 1, '2021-10-27', '2021-10-26 04:16:40', '04:16:40', '22'),
(164, 1, 1, '2021-10-28', '2021-10-26 04:16:45', '04:16:45', '22'),
(165, 1, 1, '2021-10-30', '2021-10-26 04:16:52', '04:16:52', '22'),
(166, 1, 1, '2021-10-31', '2021-10-26 04:16:57', '04:16:57', '22'),
(167, 1, 1, '2021-11-01', '2021-11-01 04:43:35', '04:43:35', '74'),
(168, 1, 1, '2021-11-02', '2021-11-02 04:00:06', '04:00:06', '22'),
(169, 1, 1, '2021-11-03', '2021-11-02 04:00:11', '04:00:11', '22'),
(170, 1, 1, '2021-11-04', '2021-11-02 04:00:16', '04:00:16', '22'),
(171, 1, 1, '2021-11-06', '2021-11-06 05:39:52', '05:39:52', '74'),
(172, 1, 1, '2021-11-07', '2021-11-07 09:57:43', '09:57:43', '1'),
(173, 1, 1, '2021-11-08', '2021-11-08 04:34:21', '04:34:21', '74'),
(174, 1, 1, '2021-11-09', '2021-11-08 04:36:17', '04:36:17', '74'),
(175, 1, 1, '2021-11-10', '2021-11-08 04:36:17', '04:36:17', '74'),
(176, 1, 1, '2021-11-11', '2021-11-08 04:36:17', '04:36:17', '74'),
(177, 1, 1, '2021-11-13', '2021-11-08 04:37:02', '04:37:02', '74'),
(178, 1, 1, '2021-11-14', '2021-11-08 04:37:02', '04:37:02', '74'),
(179, 1, 1, '2021-11-15', '2021-11-08 04:37:02', '04:37:02', '74'),
(180, 1, 1, '2021-11-16', '2021-11-08 04:37:02', '04:37:02', '74'),
(181, 1, 1, '2021-11-17', '2021-11-08 04:37:02', '04:37:02', '74'),
(182, 1, 1, '2021-11-18', '2021-11-08 04:37:02', '04:37:02', '74'),
(183, 1, 1, '2021-11-21', '2021-11-21 04:18:53', '04:18:53', '22'),
(184, 1, 1, '2021-11-22', '2021-11-21 04:20:05', '04:20:05', '22'),
(185, 1, 1, '2021-11-23', '2021-11-21 04:20:05', '04:20:05', '22'),
(186, 1, 1, '2021-11-24', '2021-11-21 04:20:05', '04:20:05', '22'),
(187, 1, 1, '2021-11-25', '2021-11-21 04:20:05', '04:20:05', '22'),
(188, 1, 1, '2021-11-28', '2021-11-28 10:52:39', '10:52:39', '74'),
(189, 1, 1, '2021-11-29', '2021-11-29 04:30:06', '04:30:06', '74'),
(190, 1, 1, '2021-11-30', '2021-11-30 04:49:17', '04:49:17', '74'),
(191, 1, 1, '2021-12-02', '2021-12-02 04:34:50', '04:34:50', '74'),
(192, 1, 1, '2021-12-06', '2021-12-06 05:19:07', '05:19:07', '74'),
(193, 1, 1, '2021-12-07', '2021-12-07 05:34:05', '05:34:05', '74'),
(194, 1, 1, '2021-12-08', '2021-12-08 05:09:05', '05:09:05', '74'),
(195, 1, 1, '2021-12-09', '2021-12-09 05:03:07', '05:03:07', '74'),
(196, 1, 1, '2021-12-11', '2021-12-11 03:51:03', '03:51:03', '74'),
(197, 1, 1, '2021-12-12', '2021-12-12 04:44:46', '04:44:46', '74'),
(198, 1, 1, '2021-12-13', '2021-12-13 04:10:49', '04:10:49', '74'),
(199, 1, 1, '2021-12-14', '2021-12-14 06:16:08', '06:16:08', '74'),
(200, 1, 1, '2021-12-15', '2021-12-15 04:26:09', '04:26:09', '74'),
(201, 1, 1, '2021-12-19', '2021-12-19 05:42:41', '05:42:41', '74');

-- --------------------------------------------------------

--
-- Table structure for table `others_marks`
--

CREATE TABLE `others_marks` (
  `id` int(50) NOT NULL,
  `emp_id` varchar(100) NOT NULL,
  `reporting_marks` varchar(100) NOT NULL,
  `dresscode_marks` varchar(100) NOT NULL,
  `year_and_month` varchar(100) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `entry_usr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `others_marks`
--

INSERT INTO `others_marks` (`id`, `emp_id`, `reporting_marks`, `dresscode_marks`, `year_and_month`, `from_date`, `to_date`, `entry_date`, `entry_usr`) VALUES
(1, '1', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:43', '1'),
(2, '7', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:43', '1'),
(3, '10', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:43', '1'),
(4, '11', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:43', '1'),
(5, '12', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:43', '1'),
(6, '13', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:43', '1'),
(7, '14', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(8, '15', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(9, '16', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(10, '17', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(11, '18', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(12, '22', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(13, '23', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(14, '24', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(15, '25', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(16, '26', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(17, '27', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(18, '28', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(19, '29', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(20, '30', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(21, '31', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(22, '32', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(23, '33', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(24, '34', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(25, '35', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(26, '36', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(27, '41', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(28, '42', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(29, '43', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(30, '47', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(31, '48', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(32, '49', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(33, '63', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(34, '64', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(35, '65', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(36, '66', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(37, '67', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(38, '69', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(39, '71', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:44', '1'),
(40, '72', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:45', '1'),
(41, '73', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:45', '1'),
(42, '74', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:45', '1'),
(43, '75', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:45', '1'),
(44, '76', '6', '2', '2021-11', '0000-00-00', '0000-00-00', '2021-12-20 08:21:45', '1');

-- --------------------------------------------------------

--
-- Table structure for table `overtime_marks`
--

CREATE TABLE `overtime_marks` (
  `id` int(100) NOT NULL,
  `emp_id` varchar(100) NOT NULL,
  `task_title` varchar(100) NOT NULL,
  `year_and_month` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `total_time_hours` varchar(100) NOT NULL,
  `marks` varchar(100) NOT NULL,
  `entry_usr` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `overtime_marks`
--

INSERT INTO `overtime_marks` (`id`, `emp_id`, `task_title`, `year_and_month`, `from_date`, `to_date`, `total_time_hours`, `marks`, `entry_usr`) VALUES
(1, '13', '', '2021-11', '0000-00-00', '0000-00-00', '65', '1', '1'),
(2, '22', '', '2021-11', '0000-00-00', '0000-00-00', '36', '1', '1'),
(3, '23', '', '2021-11', '0000-00-00', '0000-00-00', '89', '1', '1'),
(4, '26', '', '2021-11', '0000-00-00', '0000-00-00', '129', '2', '1'),
(5, '32', '', '2021-11', '0000-00-00', '0000-00-00', '9', '0', '1'),
(6, '35', '', '2021-11', '0000-00-00', '0000-00-00', '9', '0', '1'),
(7, '41', '', '2021-11', '0000-00-00', '0000-00-00', '12', '0', '1'),
(8, '49', '', '2021-11', '0000-00-00', '0000-00-00', '78', '1', '1'),
(9, '64', '', '2021-11', '0000-00-00', '0000-00-00', '123', '2', '1'),
(10, '65', '', '2021-11', '0000-00-00', '0000-00-00', '45', '1', '1'),
(11, '72', '', '2021-11', '0000-00-00', '0000-00-00', '183', '3', '1'),
(12, '74', '', '2021-11', '0000-00-00', '0000-00-00', '62', '1', '1'),
(13, '75', '', '2021-11', '0000-00-00', '0000-00-00', '164', '2', '1'),
(14, '76', '', '2021-11', '0000-00-00', '0000-00-00', '45', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `file_link` varchar(100) NOT NULL,
  `page_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `file_link`, `page_name`) VALUES
(1, 'task/create_developer_task.php', 'Create New Task'),
(4, 'index.php', ''),
(5, 'dashboard.php', 'Home Page'),
(6, 'employee/edit_emp.php', 'Profile Edit'),
(7, 'employee/index.php', 'All Employee Lists'),
(8, 'employee/new_employee.php', 'Add New Employee'),
(9, 'bills/collect_bill.php', 'Collect Bill'),
(10, 'bills/create_bill.php', 'Create New Bill'),
(11, 'bills/index-bill.php', 'All Bill List'),
(12, 'bills/index-bill-collection.php', 'Bill collection'),
(13, 'mytask/my-developer-task.php', 'My Developer Task'),
(14, 'task/developer-task-detail.php', ''),
(17, 'All Developer Task', 'index-developer.php'),
(18, 'task/index-developer.php', 'All Developer Task'),
(19, 'employee/emp_detail.php', ''),
(20, 'mytask/my-created-task.php', 'My Created Task'),
(21, 'mytask/my-created-task-details.php', 'my-created-task-details'),
(22, 'mytask/edit_task.php', 'edit_task'),
(23, 'employee/myprofile.php', 'My Profile'),
(24, 'task/user-assigned-task-list.php', 'My Assigned Task List'),
(25, 'mytask/user-assigned-task-details.php', 'User Assigned Task Details'),
(26, 'reset_password.php', 'change password'),
(27, 'bills/bill_details.php', 'Bill Details'),
(28, 'bills/edit_bill.php', 'Edit bill'),
(29, 'attendance/attendance.php', 'Give Attendance'),
(30, 'attendance/attendance_list.php', 'Attendance List'),
(31, 'attendance/attendance_report.php', 'Attendance Report'),
(32, 'kpi/office_open_off.php', 'office open off status'),
(33, 'kpi/attendance_mark.php', 'Employee Attendance Mark'),
(34, 'kpi/attendance_mark_insert.php', 'attendance mark insert'),
(35, 'kpi/daily_time.php', 'Daily Time Page'),
(36, 'kpi/daily_time_insert.php', 'Daily Time Insert page'),
(37, 'kpi/holiday_office.php', 'Holy Day office mark page'),
(38, 'kpi/parameter.php', 'parameter page'),
(39, 'kpi/holiday_office_marks.php', 'Holiday Office Mark page'),
(40, 'kpi/holiday_office_mark_insert.php', 'Holiday Office Mark insert page'),
(41, 'kpi/attendance_mark_weekly_insert.php', 'attendance Mark weekly or daily insert page'),
(42, 'kpi/daily_time_after_week_insert.php', 'daily time after week insert page'),
(43, 'kpi/holiday_office_mark_weekly_insert.php', 'holiday office marks weekly insert page'),
(44, 'kpi/overtime.php', 'overtime page'),
(45, 'kpi/overtime_marks.php', 'overtime marks page'),
(46, 'kpi/overtime_mark_insert.php', 'overtime marks insert page'),
(47, 'kpi/overtime_mark_weekly_insert.php', 'overtime marks weekly insert page'),
(48, 'kpi/target_fillup_marks.php', 'target fillup marks page'),
(49, 'kpi/target_fillup_marks_insert.php', 'target fillup marks insert page'),
(50, 'kpi/target_fillup_mark_weekly_insert.php', 'target fillup marks weekly insert page'),
(51, 'kpi/regular_support_marks.php', 'regular support marks insert page'),
(52, 'kpi/others_mark.php', 'others mark insert page'),
(53, 'kpi/others_mark_weekly_insert.php', 'others mark weekly insert page'),
(54, 'kpi/others_mark_insert.php', 'others mark insert page'),
(55, 'kpi/regular_support_mark_insert.php', 'regular support mark insert page'),
(56, 'kpi/regular_support_mark_weekly_insert.php', 'regular support mark weekly insert page'),
(57, 'kpi/all_mark.php', 'all mark insert page'),
(58, 'kpi/all_mark_weekly_insert.php', 'all marks weekly insert page'),
(59, 'kpi/all_mark_insert.php', 'all marks insert page'),
(60, 'kpi/edit_parameter.php', 'edit parameter page'),
(61, 'kpi/edit_parameter_submit.php', 'edit parameter submit page'),
(62, 'kpi/edit_office_off.php', 'edit office off  page'),
(63, 'kpi/edit_holiday_office.php', 'edit holiday office  page'),
(64, 'kpi/on_duty.php', 'on duty office  page'),
(65, 'kpi/edit_on_duty_office.php', 'edit on duty office  page'),
(66, 'report/attendance_report.php', 'Daily Attendance Report'),
(67, 'report/attendance_summary_report.php', 'Attendance Summary Report');

-- --------------------------------------------------------

--
-- Table structure for table `page_roles`
--

CREATE TABLE `page_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pages_id_list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page_roles`
--

INSERT INTO `page_roles` (`id`, `user_id`, `pages_id_list`) VALUES
(1, 1, '1,2,4,4,5,6,7,8,9,10,11,12,14,15,17,18,19,20,21,22,23,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67'),
(6, 7, '1,5,6,23,24,25,26,29,30,18,21'),
(7, 10, '1,2,4,4,5,6,7,8,9,10,11,12,14,15,17,18,19,20,21,22,23,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65'),
(8, 11, '1,5,6,23,24,25,26,29,30,18,21'),
(9, 12, '1,5,6,23,24,25,26,29,30,18,21'),
(10, 13, '1,5,6,23,24,25,26,29,30,18,21'),
(11, 14, '1,5,6,23,24,25,26,29,30,18,21'),
(12, 15, '1,5,6,23,24,25,26,29,30,18,21'),
(13, 16, '1,5,6,23,24,25,26,29,30,18,21'),
(14, 17, '1,5,6,23,24,25,26,29,30,18,21'),
(15, 18, '1,5,6,23,24,25,26,29,30,18,21'),
(16, 22, '1,2,4,4,5,6,7,8,9,10,11,12,14,15,17,18,19,20,21,22,23,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67'),
(17, 23, '1,5,6,23,24,25,26,29,30,18,21'),
(18, 24, '1,5,6,23,24,25,26,29,30,18,21'),
(19, 25, '1,5,6,23,24,25,26,29,30,18,21'),
(20, 26, '1,5,6,23,25,18,1,21,26,22,29,30,31'),
(21, 27, '1,5,6,21,23,24,25,26,29,30,18'),
(22, 28, '1,2,4,4,5,6,7,8,9,10,11,12,14,15,17,18,19,20,21,22,23,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67'),
(23, 29, '1,5,6,23,24,25,26,29,30,18,21'),
(24, 30, '1,5,6,23,18,1,25,21,26,22,29,30,21'),
(25, 31, '1,5,6,23,24,25,26,29,30,18,21'),
(26, 32, '1,5,6,23,24,25,26,29,30,18,21'),
(27, 33, '1,2,4,4,5,6,7,8,9,10,11,12,14,15,17,18,19,20,21,22,23,26,27,28,29,30,31'),
(28, 34, '1,5,6,23,18,1,25,21,26,22,29,30'),
(29, 35, '1,5,6,23,18,1,25,21,26,22,29,30,31'),
(30, 36, '1,5,6,23,25,26,29,30,18,21'),
(31, 41, '1,5,6,23,25,26,29,30,18,21'),
(32, 42, '1,5,6,23,25,26,29,30,18,21'),
(33, 43, '1,5,6,23,25,26,29,30,18,21'),
(34, 47, '1,5,6,23,25,26,29,30,18,21'),
(35, 48, '1,5,6,23,18,1,25,21,26,22,29,30'),
(36, 49, '1,5,6,23,24,25,26,29,30,18,21'),
(37, 64, '1,5,6,23,24,25,26,29,30,18,21'),
(38, 65, '1,5,6,23,24,25,26,29,30,18,21'),
(39, 66, '1,5,6,23,24,25,26,29,30,18,21'),
(40, 69, '1,5,6,23,24,25,26,29,30,18,21'),
(41, 71, '1,5,6,23,24,25,26,29,30,18,21'),
(42, 67, '1,5,6,23,24,25,26,29,30,18,21'),
(43, 72, '1,5,6,23,24,25,26,29,30,18,21'),
(44, 73, '1,5,6,23,24,25,26,29,30,18,21'),
(45, 74, '1,2,4,4,5,6,7,8,9,10,11,12,14,15,17,18,19,20,21,22,23,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67'),
(46, 75, '1,5,6,23,24,25,26,29,30,18,21'),
(47, 76, '1,5,6,23,24,25,26,29,30,18,21');

-- --------------------------------------------------------

--
-- Table structure for table `project_status`
--

CREATE TABLE `project_status` (
  `id` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_status`
--

INSERT INTO `project_status` (`id`, `status_name`) VALUES
(1, 'In Progress'),
(2, 'Completed'),
(4, 'Rejected'),
(5, 'Extension');

-- --------------------------------------------------------

--
-- Table structure for table `regular_support_marks`
--

CREATE TABLE `regular_support_marks` (
  `id` int(50) NOT NULL,
  `emp_id` varchar(100) NOT NULL,
  `year_and_month` varchar(100) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `total_task` varchar(50) NOT NULL,
  `completed_task` varchar(50) NOT NULL,
  `marks` varchar(50) DEFAULT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `entry_usr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `regular_support_marks`
--

INSERT INTO `regular_support_marks` (`id`, `emp_id`, `year_and_month`, `from_date`, `to_date`, `total_task`, `completed_task`, `marks`, `entry_date`, `entry_usr`) VALUES
(1, '', '2021-11', '0000-00-00', '0000-00-00', '4', '0', '0', '2021-12-20 12:44:01', '1'),
(2, '', '2021-11', '0000-00-00', '0000-00-00', '5', '0', '0', '2021-12-20 12:44:01', '1'),
(3, '', '2021-11', '0000-00-00', '0000-00-00', '2', '0', '0', '2021-12-20 12:44:01', '1'),
(4, '', '2021-11', '0000-00-00', '0000-00-00', '3', '0', '0', '2021-12-20 12:44:01', '1'),
(5, '', '2021-11', '0000-00-00', '0000-00-00', '0', '0', '0', '2021-12-20 12:44:01', '1'),
(6, '', '2021-11', '0000-00-00', '0000-00-00', '3', '0', '0', '2021-12-20 12:44:01', '1'),
(7, '', '2021-11', '0000-00-00', '0000-00-00', '0', '0', '0', '2021-12-20 12:44:01', '1'),
(8, '', '2021-11', '0000-00-00', '0000-00-00', '7', '2', '6', '2021-12-20 12:44:01', '1'),
(9, '', '2021-11', '0000-00-00', '0000-00-00', '1', '0', '0', '2021-12-20 12:44:01', '1'),
(10, '', '2021-11', '0000-00-00', '0000-00-00', '2', '0', '0', '2021-12-20 12:44:01', '1'),
(11, '', '2021-11', '0000-00-00', '0000-00-00', '0', '0', '0', '2021-12-20 12:44:01', '1'),
(12, '', '2021-11', '0000-00-00', '0000-00-00', '1', '0', '0', '2021-12-20 12:44:01', '1'),
(13, '', '2021-11', '0000-00-00', '0000-00-00', '0', '0', '0', '2021-12-20 12:44:01', '1'),
(14, '', '2021-11', '0000-00-00', '0000-00-00', '0', '0', '0', '2021-12-20 12:44:01', '1'),
(15, '', '2021-11', '0000-00-00', '0000-00-00', '2', '0', '0', '2021-12-20 12:44:01', '1'),
(16, '', '2021-11', '0000-00-00', '0000-00-00', '0', '0', '0', '2021-12-20 12:44:01', '1');

-- --------------------------------------------------------

--
-- Table structure for table `target_fillup_marks`
--

CREATE TABLE `target_fillup_marks` (
  `id` int(50) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `year_and_month` varchar(50) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `total_task` varchar(50) NOT NULL,
  `completed_task` varchar(50) NOT NULL,
  `marks` varchar(50) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry_usr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `target_fillup_marks`
--

INSERT INTO `target_fillup_marks` (`id`, `emp_id`, `year_and_month`, `from_date`, `to_date`, `total_task`, `completed_task`, `marks`, `entry_date`, `entry_usr`) VALUES
(1, '13', '2021-11', '0000-00-00', '0000-00-00', '3', '1', '17', '2021-12-20 07:36:31', '1'),
(2, '23', '2021-11', '0000-00-00', '0000-00-00', '5', '1', '10', '2021-12-20 07:36:31', '1'),
(3, '26', '2021-11', '0000-00-00', '0000-00-00', '5', '0', '0', '2021-12-20 07:36:31', '1'),
(4, '35', '2021-11', '0000-00-00', '0000-00-00', '10', '0', '0', '2021-12-20 07:36:31', '1'),
(5, '64', '2021-11', '0000-00-00', '0000-00-00', '1', '0', '0', '2021-12-20 07:36:31', '1');

-- --------------------------------------------------------

--
-- Table structure for table `task_remarks`
--

CREATE TABLE `task_remarks` (
  `id` int(20) NOT NULL,
  `task_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `remarks` text NOT NULL,
  `created_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task_remarks`
--

INSERT INTO `task_remarks` (`id`, `task_id`, `user_id`, `remarks`, `created_time`) VALUES
(1, 8, 35, '<ol><li>Reconciliation module development running.</li><li>API module: already deployed in SBAC test server</li></ol>', '2020-02-26 04:04:29'),
(2, 28, 26, '<p>Tender dropping complete.</p>', '2020-03-22 04:03:54'),
(3, 101, 49, '<p><span style=\"color: rgb(3, 155, 229); text-transform: capitalize; background-color: rgb(249, 249, 249);\"><b>WEPA</b><br></span><br><b>incomplete part</b><br><br></p><p class=\"MsoNormal\"><b><span style=\"font-size: 14pt; line-height: 107%;\">Events:\r\n<o:p></o:p></span></b></p><p>\r\n\r\n</p><p class=\"MsoNormal\"><b><span style=\"font-size: 12pt; line-height: 107%;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - </span></b><b><span style=\"font-size:12.0pt;line-height:\r\n107%;color:#7F7F7F;mso-themecolor:text1;mso-themetint:128\">Seminar / Workshop<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -\r\nGeneral Meeting<br>\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Social\r\nEvents</span></b></p><p class=\"MsoNormal\"><br></p><p class=\"MsoNormal\"><b><span style=\"font-size:12.0pt;line-height:\r\n107%;color:#7F7F7F;mso-themecolor:text1;mso-themetint:128\"><br></span></b></p>', '2021-03-10 10:58:40'),
(4, 99, 13, '<p>If I found any issue with mobile API then I fix it. EC\'s API Credential + IP Issue Setting Up on SBAC Bank\'s Server (Faysal Bai)</p>', '2021-03-10 11:00:22'),
(5, 103, 64, 'CIB have some change . SBAC finalize these change and debit charge instruction has bee tested successfully waiting for deploy to live&nbsp;', '2021-03-10 11:01:59'),
(6, 97, 65, '<p>After UAT (15th February 2021) meeting given task are done :</p><p>1) bank provided their updated query for advance loan and using this query stored data in sbs3 system.</p><p>2) Implemented bank provided mapping for product code, nature code and sme code</p><p>3) created database and script for TI data upload</p><p>4) same edit operation for bills and advance data<br>&nbsp;</p>', '2021-03-10 11:02:50'),
(7, 107, 13, '<p>I have connected exchange house API authentication with the DBL auth credential. The exchange house was given some reference, but when I try to pull the information they are giving me a [record not found ] response. I also mail my screenshot to the exchange house 3 days ago. But they could not respond still now<br></p>', '2021-03-10 11:11:39'),
(8, 94, 23, '<div class=\"\\\\\\&quot;p-rich_text_section\\\\\\&quot;\" inherit;=\"\" counter-reset:=\"\" list-0=\"\" 0=\"\" list-1=\"\" list-2=\"\" list-3=\"\" list-4=\"\" list-5=\"\" list-6=\"\" list-7=\"\" list-8=\"\" list-9=\"\" 0;=\"\" color:=\"\" rgb(29,=\"\" 28,=\"\" 29);=\"\" font-family:=\"\" slack-lato,=\"\" applelogo,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" font-variant-ligatures:=\"\" common-ligatures;=\"\" background-color:=\"\" rgb(248,=\"\" 248,=\"\" 248);\\\\\\\"=\"\" style=\"color: rgb(3, 155, 229);\">User Module :<br inherit;\\\\\\\"=\"\"></div><ol data-stringify-type=\"\\\\\\&quot;ordered-list\\\\\\&quot;\" class=\"\\\\\\&quot;p-rich_text_list\" p-rich_text_list__ordered\\\\\\\"=\"\" data-indent=\"\\\\\\&quot;0\\\\\\&quot;\" inherit;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" padding:=\"\" list-style-type:=\"\" none;=\"\" counter-reset:=\"\" list-1=\"\" 0=\"\" list-2=\"\" list-3=\"\" list-4=\"\" list-5=\"\" list-6=\"\" list-7=\"\" list-8=\"\" 0;=\"\" color:=\"\" rgb(29,=\"\" 28,=\"\" 29);=\"\" font-family:=\"\" slack-lato,=\"\" applelogo,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" font-variant-ligatures:=\"\" common-ligatures;=\"\" background-color:=\"\" rgb(248,=\"\" 248,=\"\" 248);\\\\\\\"=\"\" style=\"color: rgb(3, 155, 229);\"><li data-stringify-indent=\"\\\\\\&quot;0\\\\\\&quot;\" inherit;=\"\" margin-bottom:=\"\" 0px;=\"\" list-style-type:=\"\" none;=\"\" margin-left:=\"\" 28px;\\\\\\\"=\"\">Add branch filtering</li><li data-stringify-indent=\"\\\\\\&quot;0\\\\\\&quot;\" inherit;=\"\" margin-bottom:=\"\" 0px;=\"\" list-style-type:=\"\" none;=\"\" margin-left:=\"\" 28px;\\\\\\\"=\"\">update issue fix</li></ol><div class=\"\\\\\\&quot;p-rich_text_section\\\\\\&quot;\" inherit;=\"\" counter-reset:=\"\" list-0=\"\" 0=\"\" list-1=\"\" list-2=\"\" list-3=\"\" list-4=\"\" list-5=\"\" list-6=\"\" list-7=\"\" list-8=\"\" list-9=\"\" 0;=\"\" color:=\"\" rgb(29,=\"\" 28,=\"\" 29);=\"\" font-family:=\"\" slack-lato,=\"\" applelogo,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" font-variant-ligatures:=\"\" common-ligatures;=\"\" background-color:=\"\" rgb(248,=\"\" 248,=\"\" 248);\\\\\\\"=\"\" style=\"color: rgb(3, 155, 229);\">Report Module :<br inherit;\\\\\\\"=\"\"></div><ol data-stringify-type=\"\\\\\\&quot;ordered-list\\\\\\&quot;\" class=\"\\\\\\&quot;p-rich_text_list\" p-rich_text_list__ordered\\\\\\\"=\"\" data-indent=\"\\\\\\&quot;0\\\\\\&quot;\" inherit;=\"\" margin-right:=\"\" 0px;=\"\" margin-bottom:=\"\" margin-left:=\"\" padding:=\"\" list-style-type:=\"\" none;=\"\" counter-reset:=\"\" list-1=\"\" 0=\"\" list-2=\"\" list-3=\"\" list-4=\"\" list-5=\"\" list-6=\"\" list-7=\"\" list-8=\"\" 0;=\"\" color:=\"\" rgb(29,=\"\" 28,=\"\" 29);=\"\" font-family:=\"\" slack-lato,=\"\" applelogo,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;=\"\" font-variant-ligatures:=\"\" common-ligatures;=\"\" background-color:=\"\" rgb(248,=\"\" 248,=\"\" 248);\\\\\\\"=\"\" style=\"color: rgb(3, 155, 229);\"><li data-stringify-indent=\"\\\\\\&quot;0\\\\\\&quot;\" inherit;=\"\" margin-bottom:=\"\" 0px;=\"\" list-style-type:=\"\" none;=\"\" margin-left:=\"\" 28px;\\\\\\\"=\"\">Bangladesh bank all report</li><li data-stringify-indent=\"\\\\\\&quot;0\\\\\\&quot;\" inherit;=\"\" margin-bottom:=\"\" 0px;=\"\" list-style-type:=\"\" none;=\"\" margin-left:=\"\" 28px;\\\\\\\"=\"\">others report fix</li><li data-stringify-indent=\"\\\\\\&quot;0\\\\\\&quot;\" inherit;=\"\" margin-bottom:=\"\" 0px;=\"\" list-style-type:=\"\" none;=\"\" margin-left:=\"\" 28px;\\\\\\\"=\"\">Individual report (Transaction LOG)</li></ol><p><span style=\"color: rgb(3, 155, 229);\">Customer Module :</span>&nbsp;&nbsp;&nbsp;&nbsp;<br inherit;\\\\\\\"=\"\" style=\"color: rgb(3, 155, 229);\"><span style=\"color: rgb(3, 155, 229);\">1.customer update issue fix</span></p><p><br></p><p><span style=\"color: rgb(3, 155, 229);\">5. Custom Incentive Process<br>6. Vsl API issues Fix.<br></span><br><b>Above All are complete.</b><br><br>Next : <b>Pending</b><br><span style=\"color: rgb(3, 155, 229);\">1.ria 24*7 APIs integration</span><br inherit;\\\\\\\"=\"\" style=\"color: rgb(3, 155, 229);\"><span style=\"color: rgb(3, 155, 229);\">2.buro operation start<br></span><span style=\"color: rgb(3, 155, 229);\">3. voucher re-print</span></p><p><br><br></p><p><br></p>', '2021-03-11 09:58:31'),
(9, 128, 65, '<p>completed</p>', '2021-03-15 03:56:33'),
(10, 127, 65, '<p>completed</p>', '2021-03-15 03:59:36'),
(11, 126, 65, '<p>Completed</p>', '2021-03-18 09:49:41'),
(12, 171, 74, '', '2021-10-31 01:06:24'),
(13, 185, 64, '<p>All task Complete but IP issue not fixed . Its stopped for IT&nbsp;</p>', '2021-11-08 01:50:59'),
(14, 184, 23, '<ol><li>UMS server configure &amp; Application Installation Complete.</li><li>After UMS Installation demonstrations to Bank project people</li><li>Create UMS User Manual &amp; send to Bank project people.</li></ol>', '2021-11-08 01:55:53'),
(15, 194, 23, '<p>All task completed.</p>', '2021-11-08 01:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `tentative_delivery_log`
--

CREATE TABLE `tentative_delivery_log` (
  `id` int(50) NOT NULL,
  `task_id` varchar(50) NOT NULL,
  `task_title` varchar(100) NOT NULL,
  `task_manager` varchar(50) NOT NULL,
  `assign_date` varchar(50) NOT NULL,
  `tentative_delivery_date` varchar(50) NOT NULL,
  `tentative_delivery_update_date` varchar(50) NOT NULL,
  `module_or_project` int(10) DEFAULT NULL COMMENT '1= module, 2= full project',
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `entry_usr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tentative_delivery_log`
--

INSERT INTO `tentative_delivery_log` (`id`, `task_id`, `task_title`, `task_manager`, `assign_date`, `tentative_delivery_date`, `tentative_delivery_update_date`, `module_or_project`, `entry_date`, `entry_usr`) VALUES
(1, '94', 'AB Bank Remitbook', '23', '2021-02-06 01:11:04', '2021-02-25 01:11:04', '2021-02-06 07:11:04', NULL, '2021-02-06 07:11:04', '1'),
(2, '97', 'Prepare UAT Version For IFIC SBS3', '65', '2021-02-06 07:14:28', '2021-02-15 07:14:28', '2021-02-06 13:14:28', NULL, '2021-02-06 13:14:28', '1'),
(3, '103', 'CIB', '64', '2021-02-06 07:22:59', '2021-02-15 07:22:59', '2021-02-06 13:22:59', NULL, '2021-02-06 13:22:59', '1'),
(4, '103', 'CIB', '64', '2021-02-06 10:19:33', '2021-02-15 10:19:33', '2021-02-07 04:19:33', NULL, '2021-02-07 04:19:33', '1'),
(5, '94', 'AB Bank Remitbook', '23', '2021-02-06 10:21:28', '2021-02-25 10:21:28', '2021-02-08 16:21:28', 1, '2021-02-08 16:21:28', '1'),
(6, '94', 'AB Bank Remitbook', '23', '2021-02-06 10:21:49', '2021-02-25 10:21:49', '2021-02-08 16:21:49', 1, '2021-02-08 16:21:49', '1'),
(7, '57', 'Union Bank ( EZY Meeting )', '26', '2020-11-08 04:21:26', '2021-01-31 04:21:26', '2021-03-13 10:21:26', 2, '2021-03-13 10:21:26', '1'),
(8, '101', 'WEPA', '49', '2021-02-06 02:11:03', '2021-02-25 02:11:03', '2021-03-14 08:11:03', 2, '2021-03-14 08:11:03', '1'),
(9, '94', 'AB Bank Remitbook', '23', '2021-02-06 02:12:23', '2021-02-25 02:12:23', '2021-03-14 08:12:23', 1, '2021-03-14 08:12:23', '1'),
(10, '96', 'OBL Remitbook', '23', '2021-02-06 02:14:39', '2021-02-25 02:14:39', '2021-03-14 08:14:39', 1, '2021-03-14 08:14:39', '1'),
(11, '106', 'Basic Bank: Agent Banking', '67', '2021-03-01 02:22:28', '2021-03-18 02:22:28', '2021-03-14 08:22:28', 2, '2021-03-14 08:22:28', '1'),
(12, '96', 'OBL Remitbook', '23', '2021-02-06 02:24:17', '2021-02-25 02:24:17', '2021-03-14 08:24:18', 1, '2021-03-14 08:24:18', '1'),
(13, '128', 'SBS3 UAT Version host in ific bank server. ', '65', '2021-03-14 07:10:39', '2021-03-15 07:10:39', '2021-03-14 13:10:39', 1, '2021-03-14 13:10:39', '1'),
(14, '96', 'OBL Remitbook', '23', '2021-02-06 03:58:10', '2021-02-25 03:58:10', '2021-03-15 09:58:10', 1, '2021-03-15 09:58:10', '1'),
(15, '102', 'Union Bank Remitbook API Integration', '33', '2021-02-06 04:00:38', '2021-04-11 04:00:38', '2021-03-15 10:00:39', 1, '2021-03-15 10:00:39', '1'),
(16, '130', 'SBS3 Data init, Data confirmation and Data Permission', '65', '2021-03-14 04:06:46', '2021-03-31 04:06:46', '2021-03-15 10:06:46', 1, '2021-03-15 10:06:46', '1'),
(17, '124', 'AB Bank Incentive Reverse option + Custom incentive report issue ', '13', '2021-03-14 06:13:53', '2021-03-16 06:13:53', '2021-03-15 12:13:53', 1, '2021-03-15 12:13:53', '1'),
(18, '184', 'UMS server configure, Application Installation, Demonstration & User Manual', '23', '2021-11-02 02:01:59', '2021-11-11 02:01:59', '2021-11-08 08:01:59', 1, '2021-11-08 08:01:59', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_role` int(100) NOT NULL,
  `department_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_id` int(11) NOT NULL,
  `user_status` int(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `employee_id`, `password`, `employee_role`, `department_id`, `designation_id`, `user_status`, `created_at`) VALUES
(1, 'Super Admin User', 'superadmin@gmail.com', 'emp01', 'e10adc3949ba59abbe56e057f20f883e', 1, '2,3,4,5,6,7,8,9,10', 30, 1, '2020-02-03 04:56:37'),
(7, 'Ariful Islam juwel', 'juwelariful1@gmail.com', 'emp_01', '85f44bcfdd60329dc92eb2f83a9a0e24', 3, '2', 8, 0, '2020-02-09 08:38:22'),
(10, 'Mir Hasibur Rahman Ovi', 'ovixyan@gmail.com', 'emp_02', 'c51102888448f9139d1dca7e6a714b62', 3, '3', 9, 0, '2020-02-09 09:22:11'),
(11, 'Mahabub Alam', 'mahabub@gmail.com', 'emp_03', 'e10adc3949ba59abbe56e057f20f883e', 3, '4', 10, 0, '2020-02-09 09:35:49'),
(12, 'Azharul Islam', 'azharulsojib@gmail.com', 'emp_04', '42b00384b0ba1b7ef775dd8c5ca70d1f', 3, '5', 11, 0, '2020-02-09 09:53:28'),
(13, 'Md. Rabiul Hasan', 'rabiul.fci@gmail.com', 'emp_05', 'e10adc3949ba59abbe56e057f20f883e', 3, '2', 6, 1, '2020-02-09 10:03:32'),
(14, 'MD Eyakub Sorkar', 'eyakubsorkar@gmail.com', 'emp_06', '49d22c26065e6f5957cd977a9032d9e7', 3, '2', 6, 0, '2020-02-09 10:19:32'),
(15, 'Faqhrul Hasan', 'emon.bubt@gmail.com', 'emp_07', '7b7a53e239400a13bd6be6c91c4f6c4e', 3, '5', 12, 0, '2020-02-09 10:39:41'),
(16, 'Diganta Protic Biswas', 'digantaprotik@gmail.com', 'emp_08', 'a1ec6585b85adb88231b42153694bfed', 3, '2', 6, 0, '2020-02-09 10:47:54'),
(17, 'Kamrun Nahar', 'kamrun.fintech@gmail.com', 'emp_09', 'e10adc3949ba59abbe56e057f20f883e', 3, '6', 13, 0, '2020-02-09 11:00:11'),
(18, 'Syed Maruful Haque', 'sagor202@gmail.com', 'emp_10', 'e10adc3949ba59abbe56e057f20f883e', 3, '5', 12, 0, '2020-02-09 11:24:10'),
(22, 'Khalid Mostafa', 'khalidisamit@gmail.com', 'emp_11', 'a425834a089ac4f8289c0072c1ddb358', 3, '5', 11, 1, '2020-02-09 11:50:26'),
(23, 'Nazrul Islam', 'nazrul@venturenxt.com', 'emp_12', 'f3e667a6c7065ae6b8a8a59f5a7f5023', 3, '2', 6, 1, '2020-02-09 12:00:42'),
(24, 'Monirul Islam', 'monirjss@gmail.com', 'emp_13', 'ed436f856f188f836d6c98a56113b68c', 3, '2', 1, 0, '2020-02-09 12:27:25'),
(25, 'Shaquib Tayeem Ahmed', 'shaqwork@outlook.com', 'emp_14', '75bc7f11cb533e0c2a85bc5251b612ba', 3, '6', 13, 0, '2020-02-09 12:36:43'),
(26, 'Khaled Mahmud Shopon', 'kmshopon@venturenxt.com', 'emp_15', '70ac6e315d5e67cbfc34a9d6bed7de1f', 2, '2,3,4,5,6,7,8,9,10', 14, 1, '2020-02-09 12:57:05'),
(27, 'Tanveer Ahmed', 'tanveer@venturenxt.com', 'emp_16', 'e10adc3949ba59abbe56e057f20f883e', 2, '2,3,4,5,6,7,8,9,10', 15, 0, '2020-02-09 13:13:57'),
(28, 'Sipar Ahmed', 'ahmed2sipar@gmail.com', 'emp_17', 'f352917e9c2fff99488e5a6b6692df76', 1, '2,3,4,5,6,7,8,9,10', 14, 1, '2020-02-09 13:26:32'),
(29, 'Sakib Sharker', 'asd2323@g.com', 'emp_18', '75bc7f11cb533e0c2a85bc5251b612ba', 3, '6', 13, 0, '2020-02-09 13:32:30'),
(30, 'Ashiqur Rahman', 'landlbd@gmail.com', 'emp_19', '75bc7f11cb533e0c2a85bc5251b612ba', 2, '7', 17, 1, '2020-02-10 04:23:20'),
(31, 'Md. Didarul alom', 'didarul0220@gmail.com', 'emp_20', 'd2b15c75c0c389b49c2efbea79cdc946', 3, '3', 18, 0, '2020-02-10 04:36:02'),
(32, 'kazi Abdullah Al Mamun', 'mamun.fintech@gmail.com', 'emp_21', 'dce92ba24b47d87a2044e0facb86e9d2', 3, '8,10', 19, 1, '2020-02-10 04:47:27'),
(33, 'Hasnain Rahman', 'hrahman.2k11@gmail.com', 'emp_22', 'a99424f67926d40e8908c11e0b421f46', 1, '2,3,4,5,6,7,8,9', 20, 0, '2020-02-10 04:57:07'),
(34, 'Ferdous Bin Alim', 'ferdous@venturenxt.com', 'emp_23', '75bc7f11cb533e0c2a85bc5251b612ba', 2, '5', 1, 0, '2020-02-10 05:06:51'),
(35, 'Md. Montasir Tasneem', 'nishad@venturenxt.com', 'emp_24', 'dadc433f6d1d272ff229c4a3f13cbdb4', 2, '2,5', 1, 1, '2020-02-10 05:13:33'),
(36, 'Faisal Mahmud', 'faisalmahmud06@yahoo.com', 'emp_25', '75bc7f11cb533e0c2a85bc5251b612ba', 3, '6', 13, 0, '2020-02-10 05:20:47'),
(41, 'Emran Hossain Khokon', 'khokon.fintech@gmail.com', 'emp_26', 'e10adc3949ba59abbe56e057f20f883e', 3, '4,10', 21, 1, '2020-02-10 06:00:45'),
(42, 'Arif Mahmud Riad', 'ony.cse@gmail.com', 'emp_27', 'd602dbf44ee6d9b23e1bae7cfedac7a7', 3, '3', 18, 0, '2020-02-10 06:13:25'),
(43, 'Md. Abdur Rob (Pappu)', 'pappurob@gmail.com', 'emp_28', '75bc7f11cb533e0c2a85bc5251b612ba', 3, '9', 22, 0, '2020-02-10 06:23:15'),
(47, 'Anonno Ibne Razzak', 'anonnoraz@gmail.com', 'emp_29', 'f4d616a9dee7140bc7a267469f8a59ff', 3, '6', 23, 0, '2020-02-10 07:13:27'),
(48, 'Md Imranur Rahman', 'imran@venturenxt.com', 'emp_30', '75bc7f11cb533e0c2a85bc5251b612ba', 2, '7', 24, 0, '2020-02-10 07:21:00'),
(49, 'Abdul halim hasan', 'halimkhanfeni7@gmail.com', 'emp_31', '75bc7f11cb533e0c2a85bc5251b612ba', 3, '2', 6, 1, '2020-02-10 07:26:19'),
(63, 'Mirja Tawhida', 'emanamirja56@gmail.com', 'emp_32', '75bc7f11cb533e0c2a85bc5251b612ba', 3, '2', 8, 0, '2020-02-17 08:59:49'),
(64, 'Md. Ramjan Hosen', 'rharnab@gmail.com', '2020090102', 'e10adc3949ba59abbe56e057f20f883e', 3, '2,5', 8, 1, '2020-09-28 03:16:22'),
(65, 'Samiul Haque', 'samiulh4@gmail.com', '2020090101', 'e10adc3949ba59abbe56e057f20f883e', 3, '2', 8, 1, '2020-09-28 05:24:35'),
(66, 'Jitu Mia', 'jitumiabd@gmail.com', '198720200101', 'bbfa1b21563b977b7c818089fe6e9a2f', 3, '5,10', 19, 1, '2020-10-26 16:49:09'),
(67, 'Israfil Alam Asif', 'israfilasif224@gmail.com', '2020110101', 'e10adc3949ba59abbe56e057f20f883e', 3, '5', 11, 0, '2020-12-09 05:23:29'),
(69, 'Md . Rana Hossain', 'sayedislamrana27@gmail.com', 'sayedislamrana27', 'e10adc3949ba59abbe56e057f20f883e', 3, '3', 25, 0, '2020-12-31 10:23:57'),
(71, 'Md. Lanju Khan', 'lanju.vsl@gmail.com', 'lanju.vsl', 'e10adc3949ba59abbe56e057f20f883e', 3, '8', 11, 0, '2021-01-02 10:46:01'),
(72, 'Abul Kauser Samer', 'acquaintsam@gmail.com', 'samer', '404c47ca4ed629060063b17621457fbd', 3, '2', 6, 1, '2021-03-02 10:40:32'),
(73, 'Rafsan Shuvo', 'kmrafsanshuvo@gmail.com', 'Em_34', '758bfe8619adf9c987e2558439fa09a9', 3, '5', 12, 1, '2021-06-27 09:32:11'),
(74, 'KAZI ENAMUL HQUE', 'kazienamulhque88727@gmail.com', '1231231', 'c13ee4d1ee622c794bbc3f3e51c08c33', 1, '7,9,6,8,3,4,2,5', 19, 1, '2021-10-03 05:51:28'),
(75, 'Mohammad Shahabuddin', 'shahabuddin650@gmail.com', '1010244', '630fe2bcedcab25516f39e9a9a999060', 3, '2', 6, 1, '2021-10-03 06:31:05'),
(76, 'MD. NOR HOSSAN', 'nhliton709@gmail.com', 'MKT-7788', '8e464b7dbb1d41c51b6917c43e3dab5c', 3, '5', 12, 1, '2021-11-06 06:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(33) NOT NULL,
  `role_name` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_name`) VALUES
(1, 'Super Admin'),
(2, 'Admin'),
(3, 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_marks`
--
ALTER TABLE `all_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`emp_id`,`date`);

--
-- Indexes for table `attendance_marks`
--
ALTER TABLE `attendance_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `project_name` (`project_name`);

--
-- Indexes for table `collect_bills`
--
ALTER TABLE `collect_bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_time`
--
ALTER TABLE `daily_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department_name` (`department_name`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `developer_tasks`
--
ALTER TABLE `developer_tasks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `holiday_office`
--
ALTER TABLE `holiday_office`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday_office_marks`
--
ALTER TABLE `holiday_office_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_address`
--
ALTER TABLE `ip_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kpi_parameter`
--
ALTER TABLE `kpi_parameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offce_open_off`
--
ALTER TABLE `offce_open_off`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `others_marks`
--
ALTER TABLE `others_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `overtime_marks`
--
ALTER TABLE `overtime_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `file_link` (`file_link`);

--
-- Indexes for table `page_roles`
--
ALTER TABLE `page_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_status`
--
ALTER TABLE `project_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regular_support_marks`
--
ALTER TABLE `regular_support_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `target_fillup_marks`
--
ALTER TABLE `target_fillup_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_remarks`
--
ALTER TABLE `task_remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tentative_delivery_log`
--
ALTER TABLE `tentative_delivery_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_marks`
--
ALTER TABLE `all_marks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_marks`
--
ALTER TABLE `attendance_marks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(33) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collect_bills`
--
ALTER TABLE `collect_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `daily_time`
--
ALTER TABLE `daily_time`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `developer_tasks`
--
ALTER TABLE `developer_tasks`
  MODIFY `id` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `holiday_office`
--
ALTER TABLE `holiday_office`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `holiday_office_marks`
--
ALTER TABLE `holiday_office_marks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_address`
--
ALTER TABLE `ip_address`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kpi_parameter`
--
ALTER TABLE `kpi_parameter`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offce_open_off`
--
ALTER TABLE `offce_open_off`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `others_marks`
--
ALTER TABLE `others_marks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `overtime_marks`
--
ALTER TABLE `overtime_marks`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `page_roles`
--
ALTER TABLE `page_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `project_status`
--
ALTER TABLE `project_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `regular_support_marks`
--
ALTER TABLE `regular_support_marks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `target_fillup_marks`
--
ALTER TABLE `target_fillup_marks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `task_remarks`
--
ALTER TABLE `task_remarks`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tentative_delivery_log`
--
ALTER TABLE `tentative_delivery_log`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
