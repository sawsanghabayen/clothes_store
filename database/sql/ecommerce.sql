-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 06, 2023 at 10:02 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
CREATE TABLE IF NOT EXISTS `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(5, 'default', 'mahmoudتعديل كلمة المرور', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 08:35:08', '2022-08-23 08:35:08'),
(6, 'default', 'zygewidivتعديل المستخدم : ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 08:40:58', '2022-08-23 08:40:58'),
(7, 'default', 'zygewidivتعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 08:41:46', '2022-08-23 08:41:46'),
(8, 'default', 'zygewidiv تعديل كلمة المرور للمستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 08:43:03', '2022-08-23 08:43:03'),
(9, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 08:50:43', '2022-08-23 08:50:43'),
(10, 'default', 'فلسطين تعديل التصنيف ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 08:52:44', '2022-08-23 08:52:44'),
(11, 'default', 'مرحبا تعديل خيارات الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 08:55:33', '2022-08-23 08:55:33'),
(12, 'default', 'Hope Byrd إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 08:55:49', '2022-08-23 08:55:49'),
(13, 'default', ' تصدير تقرير لبيانات الوجبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 08:59:13', '2022-08-23 08:59:13'),
(14, 'default', ' تعديل الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:03:35', '2022-08-23 09:03:35'),
(15, 'default', ' تعديل الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:05:25', '2022-08-23 09:05:25'),
(16, '$item->name', ' تعديل الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:05:49', '2022-08-23 09:05:49'),
(17, 'Omnis asperiores aut', ' تعديل الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:07:18', '2022-08-23 09:07:18'),
(18, 'Omnis asperiores aut', ' تعديل الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:07:21', '2022-08-23 09:07:21'),
(19, 'Susan Shepherd', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:09:48', '2022-08-23 09:09:48'),
(20, 'Susan Shepherd', ' حذف خيار للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:12:22', '2022-08-23 09:12:22'),
(21, 'السلام', ' تعديل مزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:14:41', '2022-08-23 09:14:41'),
(22, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:14:45', '2022-08-23 09:14:45'),
(23, 'default', ' تصدير ملف إكسل لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:21:08', '2022-08-23 09:21:08'),
(24, 'febigytyqi', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:21:15', '2022-08-23 09:21:15'),
(25, 'febigytyqi', ' تعديل كلمة المرور للمستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:21:27', '2022-08-23 09:21:27'),
(26, 'فلسطين', ' تعديل التصنيف ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:22:14', '2022-08-23 09:22:14'),
(27, 'Mariko Clark', ' إضافة تصنيف جديد ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:22:25', '2022-08-23 09:22:25'),
(28, 'Azalia Davidson', ' إضافة الخيار ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:23:44', '2022-08-23 09:23:44'),
(29, 'Azalia Davidson', ' تعديل الخيار ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:23:51', '2022-08-23 09:23:51'),
(30, 'Damian Collier', ' تعديل كود الخصم ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:25:45', '2022-08-23 09:25:45'),
(31, '29', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:32:22', '2022-08-23 09:32:22'),
(32, '29', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:35:05', '2022-08-23 09:35:05'),
(33, 'default', ' تصدير تقرير لبيانات الوجبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:36:00', '2022-08-23 09:36:00'),
(34, '6', ' إضافة مطبخ جديد ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:37:35', '2022-08-23 09:37:35'),
(35, '4', ' تعديل المطبخ ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:37:42', '2022-08-23 09:37:42'),
(36, '3', ' إضافة اعلان جديد ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:39:16', '2022-08-23 09:39:16'),
(37, '2', ' تعديل الاعلان ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:39:34', '2022-08-23 09:39:34'),
(38, 'سياسة الخصوصية', ' تعديل في صفحة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-23 09:45:29', '2022-08-23 09:45:29'),
(39, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 02:48:29', '2022-08-24 02:48:29'),
(40, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 02:53:56', '2022-08-24 02:53:56'),
(41, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:13:51', '2022-08-24 03:13:51'),
(42, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:14:32', '2022-08-24 03:14:32'),
(43, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:15:29', '2022-08-24 03:15:29'),
(44, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:15:48', '2022-08-24 03:15:48'),
(45, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:24:31', '2022-08-24 03:24:31'),
(46, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:24:47', '2022-08-24 03:24:47'),
(47, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:25:02', '2022-08-24 03:25:02'),
(48, 'default', ' تصدير ملف PDF لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:34:21', '2022-08-24 03:34:21'),
(49, 'default', ' تصدير ملف PDF لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:38:18', '2022-08-24 03:38:18'),
(50, 'default', ' تصدير ملف إكسل لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:42:53', '2022-08-24 03:42:53'),
(51, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:50:05', '2022-08-24 03:50:05'),
(52, 'default', ' تصدير ملف PDF لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:50:35', '2022-08-24 03:50:35'),
(53, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:54:12', '2022-08-24 03:54:12'),
(54, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:57:10', '2022-08-24 03:57:10'),
(55, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:58:36', '2022-08-24 03:58:36'),
(56, 'default', ' تصدير ملف PDF لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 03:59:56', '2022-08-24 03:59:56'),
(57, 'default', ' تصدير ملف إكسل لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:01:53', '2022-08-24 04:01:53'),
(58, 'default', ' تصدير ملف إكسل لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:05:27', '2022-08-24 04:05:27'),
(59, 'default', ' تصدير ملف PDF لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:07:14', '2022-08-24 04:07:14'),
(60, 'default', ' تصدير ملف PDF لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:07:35', '2022-08-24 04:07:35'),
(61, 'default', ' تصدير ملف إكسل لبيانات الرسائل ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:11:50', '2022-08-24 04:11:50'),
(62, 'default', ' تصدير ملف PDF لبيانات الرسائل ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:12:47', '2022-08-24 04:12:47'),
(63, 'default', ' تصدير ملف PDF لبيانات الرسائل ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:13:55', '2022-08-24 04:13:55'),
(64, 'default', ' تصدير ملف PDF لبيانات الرسائل ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:14:36', '2022-08-24 04:14:36'),
(65, 'default', ' تصدير ملف PDF لبيانات طلبات الانضمام ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:19:14', '2022-08-24 04:19:14'),
(66, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:24:46', '2022-08-24 04:24:46'),
(67, 'default', ' تصدير ملف إكسل لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:24:57', '2022-08-24 04:24:57'),
(68, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Subadmin', 3, '[]', '2022-08-24 04:26:41', '2022-08-24 04:26:41'),
(69, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:37:38', '2022-08-24 04:37:38'),
(70, 'default', ' تصدير تقرير لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:45:56', '2022-08-24 04:45:56'),
(71, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:46:04', '2022-08-24 04:46:04'),
(72, 'default', ' تصدير ملف إكسل لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 04:46:08', '2022-08-24 04:46:08'),
(73, 'default', ' تصدير تقرير لبيانات الوجبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 05:06:12', '2022-08-24 05:06:12'),
(74, 'default', ' تصدير تقرير لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 05:06:21', '2022-08-24 05:06:21'),
(75, 'default', ' تصدير ملف إكسل لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 05:06:32', '2022-08-24 05:06:32'),
(76, 'default', ' تصدير تقرير لبيانات الوجبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 05:08:37', '2022-08-24 05:08:37'),
(77, 'default', ' تصدير ملف إكسل لبيانات الوجبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 05:17:50', '2022-08-24 05:17:50'),
(78, 'default', ' تصدير ملف إكسل لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 05:18:47', '2022-08-24 05:18:47'),
(79, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-24 05:18:50', '2022-08-24 05:18:50'),
(80, 'default', ' تصدير ملف PDF لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 03:15:06', '2022-08-25 03:15:06'),
(81, 'default', ' تصدير ملف PDF لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 03:15:44', '2022-08-25 03:15:44'),
(82, 'Garth Hahn', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 04:44:33', '2022-08-25 04:44:33'),
(83, 'Emma Glenn', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 04:45:04', '2022-08-25 04:45:04'),
(84, 'Emma Glenn', ' حذف خيار للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 04:45:21', '2022-08-25 04:45:21'),
(85, 'Barbara Vance', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 04:49:30', '2022-08-25 04:49:30'),
(86, 'Zachary Townsend', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 04:50:06', '2022-08-25 04:50:06'),
(87, 'Ebony Durham', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 04:51:16', '2022-08-25 04:51:16'),
(88, 'Tad Jones', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 04:55:28', '2022-08-25 04:55:28'),
(89, 'Sonya Drake', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 04:56:31', '2022-08-25 04:56:31'),
(90, 'Leila Roth', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 04:57:59', '2022-08-25 04:57:59'),
(91, 'السلام', ' تعديل مزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 05:36:41', '2022-08-25 05:36:41'),
(92, 'السلام', ' تعديل مزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 05:57:59', '2022-08-25 05:57:59'),
(93, 'السلام', ' تعديل مزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 05:58:07', '2022-08-25 05:58:07'),
(94, 'Larissa Griffin', ' إضافة مزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 06:00:31', '2022-08-25 06:00:31'),
(95, 'Larissa Griffin', ' تعديل مزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 06:02:14', '2022-08-25 06:02:14'),
(96, 'Oren Richmond', ' إضافة مطبخ جديد ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 06:20:50', '2022-08-25 06:20:50'),
(97, 'Zahir Pearson', ' إضافة مطبخ جديد ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 06:20:55', '2022-08-25 06:20:55'),
(98, 'Lucian Holden', ' إضافة مطبخ جديد ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 06:21:00', '2022-08-25 06:21:00'),
(99, 'فلسطين', 'إضافة تصنيف جديد ', NULL, NULL, 'App\\Models\\Subadmin', 3, '[]', '2022-08-25 06:33:19', '2022-08-25 06:33:19'),
(100, 'default', 'تعديل الوجبة ', NULL, NULL, 'App\\Models\\Subadmin', 3, '[]', '2022-08-25 06:36:20', '2022-08-25 06:36:20'),
(101, 'Iusto unde sint sol', 'تعديل الوجبة ', NULL, NULL, 'App\\Models\\Subadmin', 3, '[]', '2022-08-25 06:37:02', '2022-08-25 06:37:02'),
(102, 'default', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Subadmin', 3, '[]', '2022-08-25 06:46:51', '2022-08-25 06:46:51'),
(103, 'Lila Stafford', ' حذف خيار للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 06:46:59', '2022-08-25 06:46:59'),
(104, '52', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:01:27', '2022-08-25 09:01:27'),
(105, '52', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:03:45', '2022-08-25 09:03:45'),
(106, '52', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:04:34', '2022-08-25 09:04:34'),
(107, '52', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:04:48', '2022-08-25 09:04:48'),
(108, '52', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:10:02', '2022-08-25 09:10:02'),
(109, '52', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:10:30', '2022-08-25 09:10:30'),
(110, '52', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:11:11', '2022-08-25 09:11:11'),
(111, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Subadmin', 3, '[]', '2022-08-25 09:34:02', '2022-08-25 09:34:02'),
(112, 'default', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Subadmin', 3, '[]', '2022-08-25 09:37:42', '2022-08-25 09:37:42'),
(113, 'شاورما', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Subadmin', 3, '[]', '2022-08-25 09:38:51', '2022-08-25 09:38:51'),
(114, 'Larissa Griffin', ' تعديل مزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:40:20', '2022-08-25 09:40:20'),
(115, 'default', ' تصدير ملف PDF لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:40:37', '2022-08-25 09:40:37'),
(116, 'default', ' تصدير ملف PDF لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:43:25', '2022-08-25 09:43:25'),
(117, 'default', ' تصدير ملف إكسل لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:57:51', '2022-08-25 09:57:51'),
(118, 'default', ' تصدير ملف إكسل لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:59:21', '2022-08-25 09:59:21'),
(119, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-25 09:59:32', '2022-08-25 09:59:32'),
(120, '81', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 06:43:11', '2022-08-28 06:43:11'),
(121, 'febigytyqi', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:21:05', '2022-08-28 08:21:05'),
(122, '18', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:23:56', '2022-08-28 08:23:56'),
(123, 'Leila Roth', ' حذف خيار للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:27:51', '2022-08-28 08:27:51'),
(124, 'Sonya Drake', ' حذف خيار للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:27:54', '2022-08-28 08:27:54'),
(125, 'default', ' تعديل خيارات الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:31:41', '2022-08-28 08:31:41'),
(126, 'default', ' تعديل خيارات الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:35:16', '2022-08-28 08:35:16'),
(127, 'Iusto unde sint sol', ' تعديل خيارات الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:38:20', '2022-08-28 08:38:20'),
(128, 'Iusto unde sint sol', ' تعديل خيارات الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:39:45', '2022-08-28 08:39:45'),
(129, 'Iusto unde sint sol', ' تعديل خيارات الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:40:58', '2022-08-28 08:40:58'),
(130, 'Iusto unde sint sol', ' تعديل خيارات الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:47:16', '2022-08-28 08:47:16'),
(131, 'Iusto unde sint sol', ' تعديل خيارات الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:47:24', '2022-08-28 08:47:24'),
(132, 'Iusto unde sint sol', ' تعديل خيارات الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:47:44', '2022-08-28 08:47:44'),
(133, 'Iusto unde sint sol', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:48:10', '2022-08-28 08:48:10'),
(134, 'Iusto unde sint sol', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:48:42', '2022-08-28 08:48:42'),
(135, 'Rahim Humphrey', ' حذف خيار للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:48:58', '2022-08-28 08:48:58'),
(136, 'Nicholas Hinton', ' حذف خيار للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:49:44', '2022-08-28 08:49:44'),
(137, '18', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 08:55:52', '2022-08-28 08:55:52'),
(138, 'Maxine Cameron', ' تعديل مزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 09:29:09', '2022-08-28 09:29:09'),
(139, 'taulandi', ' تعديل ساعات العمل لمزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 09:30:49', '2022-08-28 09:30:49'),
(140, 'taulandi', ' تعديل كلمة المرور لمزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 09:31:04', '2022-08-28 09:31:04'),
(141, '80', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 09:48:31', '2022-08-28 09:48:31'),
(142, '80', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-28 09:51:17', '2022-08-28 09:51:17'),
(143, 'default', ' تصدير ملف إكسل لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:22:51', '2022-08-29 03:22:51'),
(144, 'default', ' تصدير ملف PDF لبيانات مزودي الخدمات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:23:58', '2022-08-29 03:23:58'),
(145, 'Justin Murray', ' إضافة مزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:30:54', '2022-08-29 03:30:54'),
(146, 'Justin Murray', ' تعديل مزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:31:17', '2022-08-29 03:31:17'),
(147, '80', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:32:36', '2022-08-29 03:32:36'),
(148, 'Urielle Levine', ' إضافة تصنيف جديد ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:35:33', '2022-08-29 03:35:33'),
(149, 'Iusto unde sint sol', ' تعديل الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:52:57', '2022-08-29 03:52:57'),
(150, 'Iusto unde sint sol', ' تعديل الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:53:02', '2022-08-29 03:53:02'),
(151, 'Iusto unde sint sol', ' إضافة خيارات للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:56:33', '2022-08-29 03:56:33'),
(152, 'q', ' تعديل الخيار ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:57:05', '2022-08-29 03:57:05'),
(153, 's', ' تعديل الخيار ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:57:16', '2022-08-29 03:57:16'),
(154, 'Erasmus Espinoza', ' تعديل الخيار ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:57:30', '2022-08-29 03:57:30'),
(155, 'q', ' تعديل الخيار ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:57:55', '2022-08-29 03:57:55'),
(156, 'q', ' تعديل الخيار ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 03:58:00', '2022-08-29 03:58:00'),
(157, '80', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 04:02:31', '2022-08-29 04:02:31'),
(158, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 04:05:36', '2022-08-29 04:05:36'),
(159, 'febigytyqi', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:17:02', '2022-08-29 05:17:02'),
(160, 'febigytyqi', ' تعديل كلمة المرور للمستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:17:18', '2022-08-29 05:17:18'),
(161, 'febigytyqi', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:19:52', '2022-08-29 05:19:52'),
(162, 'zygewidiv', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:30:17', '2022-08-29 05:30:17'),
(163, 'mahmoud tabaza', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:30:46', '2022-08-29 05:30:46'),
(164, 'mahmoud tabaza', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:30:56', '2022-08-29 05:30:56'),
(165, 'mahmoud tabaza', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:31:38', '2022-08-29 05:31:38'),
(166, 'mahmoud tabaza', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:31:52', '2022-08-29 05:31:52'),
(167, 'mahmoud tabaza', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:32:00', '2022-08-29 05:32:00'),
(168, 'mahmoud tabaza', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:33:27', '2022-08-29 05:33:27'),
(169, 'mahmoud tabaza', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:33:46', '2022-08-29 05:33:46'),
(170, 'mahmoud tabaza', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:48:06', '2022-08-29 05:48:06'),
(171, 'default', ' تصدير ملف PDF لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:51:54', '2022-08-29 05:51:54'),
(172, 'default', ' تصدير ملف PDF لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:52:10', '2022-08-29 05:52:10'),
(173, 'default', ' تصدير ملف PDF لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:53:17', '2022-08-29 05:53:17'),
(174, 'default', ' تصدير ملف PDF لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:53:37', '2022-08-29 05:53:37'),
(175, 'default', ' تصدير ملف إكسل لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:53:47', '2022-08-29 05:53:47'),
(176, 'febigytyqi', ' تعديل المستخدم  ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:55:04', '2022-08-29 05:55:04'),
(177, 'default', ' تصدير ملف PDF لبيانات المستخدمين ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:55:49', '2022-08-29 05:55:49'),
(178, 'default', 'إضافة مستخدم جديد', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 05:56:30', '2022-08-29 05:56:30'),
(179, 'Grady Oliver', ' إضافة كود الخصم ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 06:01:05', '2022-08-29 06:01:05'),
(180, 'default', ' تصدير ملف PDF لبيانات الرسائل ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 06:08:32', '2022-08-29 06:08:32'),
(181, '6', ' تعديل الاعلان ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 06:08:51', '2022-08-29 06:08:51'),
(182, '89', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 06:15:25', '2022-08-29 06:15:25'),
(183, 'default', ' تصدير تقرير لبيانات الطلبات ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 06:15:51', '2022-08-29 06:15:51'),
(184, 'Teagan Roy', 'إضافة التصنيف ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 06:23:13', '2022-08-29 06:23:13'),
(185, 'Harum libero volupta', 'تعديل الوجبة ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 06:25:19', '2022-08-29 06:25:19'),
(186, 'Hope Harrington', ' حذف خيار للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 06:34:43', '2022-08-29 06:34:43'),
(187, 'Lucy Frank', ' حذف خيار للوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 06:58:12', '2022-08-29 06:58:12'),
(188, 'شاورما', ' تعديل خيارات الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 06:58:26', '2022-08-29 06:58:26'),
(189, 'Omnis asperiores aut', ' تعديل الوجبة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 07:00:48', '2022-08-29 07:00:48'),
(190, '', ' تحديث بياناته الشخصية ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 07:51:30', '2022-08-29 07:51:30'),
(191, '', ' تحديث بياناته الشخصية ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 07:51:43', '2022-08-29 07:51:43'),
(192, '', ' تحديث بياناته الشخصية ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 07:51:57', '2022-08-29 07:51:57'),
(193, '', ' تحديث بياناته الشخصية ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 07:52:16', '2022-08-29 07:52:16'),
(194, '', ' تحديث بياناته الشخصية ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 07:52:21', '2022-08-29 07:52:21'),
(195, '', ' تحديث بياناته الشخصية ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 07:52:29', '2022-08-29 07:52:29'),
(196, '', ' تحديث بياناته الشخصية ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 07:52:57', '2022-08-29 07:52:57'),
(197, 'بالميرا', ' تعديل ساعات العمل لمزود الخدمة ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-29 07:53:26', '2022-08-29 07:53:26'),
(198, '', ' تحديث بياناته الشخصية ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 07:53:41', '2022-08-29 07:53:41'),
(199, '', ' تحديث بياناته الشخصية ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 07:53:56', '2022-08-29 07:53:56'),
(200, '', ' تحديث بياناته الشخصية ', NULL, NULL, 'App\\Models\\Subadmin', 4, '[]', '2022-08-29 09:03:35', '2022-08-29 09:03:35'),
(201, '93', 'تعديل في حالة الطلب ', NULL, NULL, 'App\\Models\\Admin', 1, '[]', '2022-08-30 06:02:28', '2022-08-30 06:02:28');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `street` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `building` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flate_num` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addresses_user_id_foreign` (`user_id`),
  KEY `addresses_city_id_foreign` (`city_id`),
  KEY `addresses_area_id_foreign` (`area_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `street`, `building`, `flate_num`, `user_id`, `city_id`, `area_id`, `created_at`, `updated_at`) VALUES
(1, 'qweqweqe', 'qwewqeqw', 'qweqweqw', 1, 1, 1, '2023-02-13 10:04:55', '2023-02-13 10:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `image`, `mobile`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mahmoud', 'admin@admin.com', '214868', '1234567891', '$2y$10$MvEY0rLrUfWomyQi83D.Xu794mvxrRU9S2AxlGvK69x.q1O8.sAaa', 'YxNDlJ9mBaPdHTo8RNoPphZOP7zJmeySbvZR3N1lTyHVqC2st3IWOC1wX0EO', 'active', '2022-04-05 11:13:26', '2022-08-22 07:05:40'),
(5, 'mahmoud', 'b@b.com', NULL, '0592123488', '$2y$10$gqNChordIltHnWzCtHUTLe0pMtd4llNKP.7LPkplqd2GYnJ1rMc9O', NULL, 'active', '2021-06-21 07:20:27', '2022-08-29 03:19:29'),
(6, 'ali', 'a@a.com', 'byhefXzQ0IOfsYR79208421655122939_6484132.png', '1234567890', '$2y$10$ey2njugOIQeKfpiU4Ms63OTfQH/mcdz5Aqv30qgCOESg2Tj.lPCFO', NULL, 'active', '2022-04-11 08:07:11', '2022-06-13 09:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `admin_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 6, 1, NULL, NULL, NULL),
(3, 5, 1, NULL, NULL, NULL),
(4, 11, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
CREATE TABLE IF NOT EXISTS `areas` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `areas_city_id_foreign` (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-02-13 10:04:33', '2023-02-13 10:04:33'),
(2, 1, '2023-02-13 10:04:33', '2023-02-13 10:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `area_translations`
--

DROP TABLE IF EXISTS `area_translations`;
CREATE TABLE IF NOT EXISTS `area_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `area_translations_locale_index` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `area_translations`
--

INSERT INTO `area_translations` (`id`, `name`, `area_id`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'Alremal', 1, 'en', '2023-02-13 10:04:33', '2023-02-13 10:04:33'),
(2, 'الرمال', 1, 'ar', '2023-02-13 10:04:33', '2023-02-13 10:04:33'),
(3, 'Tel al-Hawa', 2, 'en', '2023-02-13 10:04:33', '2023-02-13 10:04:33'),
(4, 'تل الهوا', 2, 'ar', '2023-02-13 10:04:33', '2023-02-13 10:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` double(8,2) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_product_id_foreign` (`product_id`),
  KEY `carts_color_id_foreign` (`color_id`),
  KEY `carts_size_id_foreign` (`size_id`),
  KEY `carts_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `quantity`, `price`, `product_id`, `color_id`, `size_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 3, 20.00, 3, 1, 1, 1, '2023-02-13 10:02:52', '2023-02-13 11:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'active', 'categories/1676282496_.jpg', '2023-02-13 08:01:36', '2023-02-13 08:01:36'),
(2, 'active', 'categories/1676289080_.jpg', '2023-02-13 09:51:20', '2023-02-13 09:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
CREATE TABLE IF NOT EXISTS `category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_translations_locale_index` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `name`, `category_id`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'Dominic Reese', 1, 'en', '2023-02-13 08:01:36', '2023-02-13 08:01:36'),
(2, 'Kane Graves', 1, 'ar', '2023-02-13 08:01:36', '2023-02-13 08:01:36'),
(3, 'bags', 2, 'en', '2023-02-13 09:51:20', '2023-02-13 09:51:20'),
(4, 'qweqwe', 2, 'ar', '2023-02-13 09:51:20', '2023-02-13 09:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`) VALUES
(1, '2023-02-13 10:04:39', '2023-02-13 10:04:39'),
(2, '2023-02-13 10:04:39', '2023-02-13 10:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `city_translations`
--

DROP TABLE IF EXISTS `city_translations`;
CREATE TABLE IF NOT EXISTS `city_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_translations_locale_index` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city_translations`
--

INSERT INTO `city_translations` (`id`, `name`, `city_id`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'Gaza', 1, 'en', '2023-02-13 10:04:39', '2023-02-13 10:04:39'),
(2, 'غزة', 1, 'ar', '2023-02-13 10:04:39', '2023-02-13 10:04:39'),
(3, 'Rafah', 2, 'en', '2023-02-13 10:04:39', '2023-02-13 10:04:39'),
(4, 'رفح', 2, 'ar', '2023-02-13 10:04:39', '2023-02-13 10:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
CREATE TABLE IF NOT EXISTS `colors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `created_at`, `updated_at`) VALUES
(1, '2023-02-13 08:21:12', '2023-02-13 08:21:12'),
(2, '2023-02-13 08:21:12', '2023-02-13 08:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `color_translations`
--

DROP TABLE IF EXISTS `color_translations`;
CREATE TABLE IF NOT EXISTS `color_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `color_translations_locale_index` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `color_translations`
--

INSERT INTO `color_translations` (`id`, `name`, `color_id`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'red', 1, 'en', '2023-02-13 08:21:12', '2023-02-13 08:21:12'),
(2, 'احمر', 1, 'ar', '2023-02-13 08:21:12', '2023-02-13 08:21:12'),
(3, 'black', 2, 'en', '2023-02-13 08:21:12', '2023-02-13 08:21:12'),
(4, 'اسود', 2, 'ar', '2023-02-13 08:21:12', '2023-02-13 08:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `mobile`, `message`, `is_read`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hello', 'a@a.com', '13456789', '111111111111111111', '1', '2022-08-07 05:14:28', '2022-08-17 05:34:28', NULL),
(2, 'hello', 'a@a.com', '13456789', '111111111111111111', '1', '2022-08-17 05:12:23', '2022-08-17 05:31:30', NULL),
(3, 'hello', 'a@a.com', '13456789', '111111111111111111', '0', '2022-08-17 05:12:40', '2022-08-17 08:55:35', NULL),
(4, 'hello', 'a@a.com', '13456789', '111111111111111111', '0', '2022-08-17 05:15:07', '2022-08-17 05:15:07', NULL),
(5, 'hello', 'a@a.com', '13456789', '33333333333333333333333', '0', '2022-08-17 06:20:37', '2022-08-23 09:46:52', NULL),
(6, 'hello', 'a@a.com', '13456789', '111111111111111111', '0', '2022-08-18 07:20:41', '2022-08-18 07:20:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorit_products`
--

DROP TABLE IF EXISTS `favorit_products`;
CREATE TABLE IF NOT EXISTS `favorit_products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favorit_products_product_id_foreign` (`product_id`),
  KEY `favorit_products_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `images_object_type_object_id_index` (`object_type`,`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `object_type`, `object_id`, `url`, `name`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Product', 1, 'products/QSNwLZJE16762837143293054.jpg', 'QSNwLZJE16762837143293054.jpg', '2023-02-13 08:21:55', '2023-02-13 08:21:55'),
(2, 'App\\Models\\Product', 1, 'products/RlJa2DFD16762837158400340.jpg', 'RlJa2DFD16762837158400340.jpg', '2023-02-13 08:21:56', '2023-02-13 08:21:56'),
(3, 'App\\Models\\Product', 2, 'products/mw5SDvgY16762856878984621.jpg', 'mw5SDvgY16762856878984621.jpg', '2023-02-13 08:54:48', '2023-02-13 08:54:48'),
(4, 'App\\Models\\Product', 3, 'products/rDbBDOsQ16762891156241514.jpg', 'rDbBDOsQ16762891156241514.jpg', '2023-02-13 09:51:55', '2023-02-13 09:51:55'),
(5, 'App\\Models\\Product', 3, 'products/lF3FpWnx16762891156493175.jpg', 'lF3FpWnx16762891156493175.jpg', '2023-02-13 09:51:55', '2023-02-13 09:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `join_requests`
--

DROP TABLE IF EXISTS `join_requests`;
CREATE TABLE IF NOT EXISTS `join_requests` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `join_requests`
--

INSERT INTO `join_requests` (`id`, `email`, `mobile`, `name`, `description`, `is_read`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a@a.com', '13456789', 'hello', '22222222222222', '1', '2022-08-17 06:21:37', '2022-08-17 06:30:36', NULL),
(2, 'a@a.com', '13456789', 'hello', '22222222222222', '0', '2022-08-17 06:33:19', '2022-08-17 06:33:19', NULL),
(3, 'a@a.com', '13456789', 'hello', '22222222222222', '0', '2022-08-18 09:40:45', '2022-08-18 09:40:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `lang`, `flag`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'en', '', NULL, NULL, NULL),
(2, 'ar', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_translation`
--

DROP TABLE IF EXISTS `language_translation`;
CREATE TABLE IF NOT EXISTS `language_translation` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_translation`
--

INSERT INTO `language_translation` (`id`, `language_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'English', NULL, NULL, NULL),
(2, 1, 'ar', 'إنجليزي', NULL, NULL, NULL),
(3, 2, 'en', 'Arabic', NULL, NULL, NULL),
(4, 2, 'ar', 'عربي', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2022_02_05_120404_create_settings_table', 1),
(11, '2022_02_05_120430_create_setting_translations_table', 1),
(12, '2022_03_04_115027_create_contacts_table', 1),
(13, '2022_03_07_201822_create_pages_table', 1),
(14, '2022_03_07_201850_create_page_translations_table', 1),
(15, '2022_03_20_132959_create_languages_table', 1),
(16, '2022_03_20_133027_create_language_translation_table', 1),
(17, '2022_05_24_063926_create_varification_codes_table', 1),
(18, '2022_08_07_080113_create_user_translations_table', 1),
(19, '2022_08_07_095539_create_cuisines_table', 2),
(20, '2022_08_07_095556_create_cuisine_translations_table', 2),
(21, '2022_08_07_104845_create_user_images_table', 3),
(22, '2022_08_07_105720_create_user_cuisines_table', 4),
(23, '2022_02_28_125214_create_categories_table', 5),
(24, '2022_02_28_125336_create_category_translations_table', 5),
(25, '2022_08_09_054954_create_meals_table', 6),
(26, '2022_08_09_055048_create_meal_translations_table', 6),
(27, '2022_08_09_060402_create_meal_images_table', 6),
(28, '2022_08_09_084953_create_options_table', 7),
(29, '2022_08_09_085016_create_option_translations_table', 7),
(30, '2022_08_09_091355_create_option_values_table', 7),
(31, '2022_08_09_091417_create_option_value_translations_table', 7),
(32, '2022_08_09_112544_create_extras_table', 8),
(33, '2022_08_09_112600_create_extra_translations_table', 8),
(34, '2022_08_09_122510_create_option_option_values_table', 9),
(35, '2022_08_10_084001_create_days_table', 10),
(36, '2022_08_10_084028_create_day_translations_table', 10),
(37, '2022_08_10_085526_create_times_table', 11),
(38, '2022_08_10_095236_create_carts_table', 12),
(39, '2022_08_10_095305_create_cart_options_table', 12),
(40, '2022_08_10_095322_create_cart_extras_table', 12),
(41, '2022_07_24_073256_create_promo_codes_table', 13),
(42, '2022_07_25_085907_create_orders_table', 14),
(44, '2022_07_25_085922_create_order_products_table', 15),
(45, '2022_08_14_081853_create_order_product_options_table', 15),
(46, '2022_08_14_081921_create_order_product_extras_table', 15),
(47, '2022_08_14_082650_create_order_meals_table', 16),
(48, '2022_08_14_082903_create_order_meal_options_table', 17),
(49, '2022_08_14_082959_create_order_meal_extras_table', 17),
(50, '2022_08_16_120915_create_promo_code_users_table', 18),
(51, '2022_02_28_125214_create_banners_table', 19),
(52, '2022_08_17_085933_create_join_requests_table', 20),
(53, '2022_08_18_113139_create_user_searches_table', 21),
(54, '2022_08_21_062118_create_subadmins_table', 22),
(55, '2022_08_21_070920_create_subadmin_translations_table', 23),
(56, '2022_08_23_104309_create_activity_log_table', 24),
(57, '2022_03_06_072541_create_admin_roles_table', 25),
(58, '2022_03_06_072637_create_roles_table', 25),
(59, '2022_03_06_072708_create_permissions_table', 25),
(60, '2022_03_06_072813_create_permission_translations_table', 25),
(61, '2022_03_06_081530_create_role_translations_table', 25),
(62, '2022_03_06_081604_create_role_permissions_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fcm_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1->admin , 2->order , 3->logout',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `fcm_token`, `target_id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, NULL, 52, 2, '2022-08-25 08:44:35', '2022-08-25 08:44:35', NULL),
(2, 0, NULL, 52, 2, '2022-08-25 08:46:31', '2022-08-25 08:46:31', NULL),
(3, 0, NULL, 52, 2, '2022-08-25 08:47:49', '2022-08-25 08:47:49', NULL),
(4, 0, NULL, 52, 2, '2022-08-25 08:50:24', '2022-08-25 08:50:24', NULL),
(5, 0, NULL, 52, 2, '2022-08-25 09:00:42', '2022-08-25 09:00:42', NULL),
(6, 0, '123', 52, 2, '2022-08-25 09:01:26', '2022-08-25 09:01:26', NULL),
(7, 0, '123', 52, 2, '2022-08-25 09:03:01', '2022-08-25 09:03:01', NULL),
(8, 0, '123', 52, 2, '2022-08-25 09:03:30', '2022-08-25 09:03:30', NULL),
(9, 0, '123', 52, 2, '2022-08-25 09:03:45', '2022-08-25 09:03:45', NULL),
(10, 0, '123', 52, 2, '2022-08-25 09:04:33', '2022-08-25 09:04:33', NULL),
(11, 0, '123', 52, 2, '2022-08-25 09:04:47', '2022-08-25 09:04:47', NULL),
(12, 0, '123', 52, 2, '2022-08-25 09:05:06', '2022-08-25 09:05:06', NULL),
(13, 0, '123', 52, 2, '2022-08-25 09:05:22', '2022-08-25 09:05:22', NULL),
(14, 0, '123', 52, 2, '2022-08-25 09:05:55', '2022-08-25 09:05:55', NULL),
(15, 0, '123', 52, 2, '2022-08-25 09:10:01', '2022-08-25 09:10:01', NULL),
(16, 0, '123', 52, 2, '2022-08-25 09:10:29', '2022-08-25 09:10:29', NULL),
(17, 0, '123', 52, 2, '2022-08-25 09:11:10', '2022-08-25 09:11:10', NULL),
(18, -1, NULL, 0, 1, '2022-08-25 09:13:52', '2022-08-25 09:13:52', NULL),
(19, 0, '123', 81, 2, '2022-08-28 06:43:10', '2022-08-28 06:43:10', NULL),
(20, 0, '123', 49, 2, '2022-08-28 06:44:45', '2022-08-28 06:44:45', NULL),
(21, 0, '123', 48, 2, '2022-08-28 07:04:53', '2022-08-28 07:04:53', NULL),
(22, 0, '123', 48, 2, '2022-08-28 07:05:00', '2022-08-28 07:05:00', NULL),
(23, 11, '123', 18, 2, '2022-08-28 08:23:55', '2022-08-28 08:23:55', NULL),
(24, 11, '123', 18, 2, '2022-08-28 08:55:52', '2022-08-28 08:55:52', NULL),
(25, 0, '123', 80, 2, '2022-08-28 09:48:31', '2022-08-28 09:48:31', NULL),
(26, 0, '123', 80, 2, '2022-08-28 09:51:16', '2022-08-28 09:51:16', NULL),
(27, 0, '123', 80, 2, '2022-08-29 03:32:35', '2022-08-29 03:32:35', NULL),
(28, 0, '123', 80, 2, '2022-08-29 04:02:29', '2022-08-29 04:02:29', NULL),
(29, 15, NULL, 0, 3, '2022-08-29 05:48:04', '2022-08-29 05:48:04', NULL),
(30, 22, NULL, 0, 3, '2022-08-29 05:55:04', '2022-08-29 05:55:04', NULL),
(31, 15, '123', 89, 2, '2022-08-29 06:15:24', '2022-08-29 06:15:24', NULL),
(32, 15, '123', 93, 2, '2022-08-30 06:02:27', '2022-08-30 06:02:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_translations`
--

DROP TABLE IF EXISTS `notification_translations`;
CREATE TABLE IF NOT EXISTS `notification_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `notification_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_translations`
--

INSERT INTO `notification_translations` (`id`, `notification_id`, `locale`, `title`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'Order #52', '', '2022-08-25 08:44:35', '2022-08-25 08:44:35', NULL),
(2, 1, 'ar', '52طلب #', '', '2022-08-25 08:44:35', '2022-08-25 08:44:35', NULL),
(3, 2, 'en', 'Order #52', 'You order is Being Prepared', '2022-08-25 08:46:31', '2022-08-25 08:46:31', NULL),
(4, 2, 'ar', '52طلب #', 'طلبك قيد التحضير', '2022-08-25 08:46:31', '2022-08-25 08:46:31', NULL),
(5, 3, 'en', 'Order #52', 'Your order is Ready for Pick Up', '2022-08-25 08:47:49', '2022-08-25 08:47:49', NULL),
(6, 3, 'ar', '52طلب #', 'طلبك جاهز للاستلام', '2022-08-25 08:47:49', '2022-08-25 08:47:49', NULL),
(7, 4, 'en', 'Order #52', 'You order is Being Prepared', '2022-08-25 08:50:24', '2022-08-25 08:50:24', NULL),
(8, 4, 'ar', '52طلب #', 'طلبك قيد التحضير', '2022-08-25 08:50:24', '2022-08-25 08:50:24', NULL),
(9, 5, 'en', 'Order #52', '', '2022-08-25 09:00:42', '2022-08-25 09:00:42', NULL),
(10, 5, 'ar', '52طلب #', '', '2022-08-25 09:00:42', '2022-08-25 09:00:42', NULL),
(11, 6, 'en', 'Order #52', 'You order is Being Prepared', '2022-08-25 09:01:26', '2022-08-25 09:01:26', NULL),
(12, 6, 'ar', '52طلب #', 'طلبك قيد التحضير', '2022-08-25 09:01:26', '2022-08-25 09:01:26', NULL),
(13, 7, 'en', 'Order #52', '', '2022-08-25 09:03:01', '2022-08-25 09:03:01', NULL),
(14, 7, 'ar', '52طلب #', '', '2022-08-25 09:03:01', '2022-08-25 09:03:01', NULL),
(15, 8, 'en', 'Order #52', 'You order is Being Prepared', '2022-08-25 09:03:30', '2022-08-25 09:03:30', NULL),
(16, 8, 'ar', '52طلب #', 'طلبك قيد التحضير', '2022-08-25 09:03:30', '2022-08-25 09:03:30', NULL),
(17, 9, 'en', 'Order #52', '', '2022-08-25 09:03:45', '2022-08-25 09:03:45', NULL),
(18, 9, 'ar', '52طلب #', '', '2022-08-25 09:03:45', '2022-08-25 09:03:45', NULL),
(19, 10, 'en', 'Order #52', 'You order is Being Prepared', '2022-08-25 09:04:33', '2022-08-25 09:04:33', NULL),
(20, 10, 'ar', '52طلب #', 'طلبك قيد التحضير', '2022-08-25 09:04:33', '2022-08-25 09:04:33', NULL),
(21, 11, 'en', 'Order #52', '', '2022-08-25 09:04:47', '2022-08-25 09:04:47', NULL),
(22, 11, 'ar', '52طلب #', '', '2022-08-25 09:04:47', '2022-08-25 09:04:47', NULL),
(23, 12, 'en', 'Order #52', '', '2022-08-25 09:05:06', '2022-08-25 09:05:06', NULL),
(24, 12, 'ar', '52طلب #', '', '2022-08-25 09:05:06', '2022-08-25 09:05:06', NULL),
(25, 13, 'en', 'Order #52', 'You order is Being Prepared', '2022-08-25 09:05:22', '2022-08-25 09:05:22', NULL),
(26, 13, 'ar', '52طلب #', 'طلبك قيد التحضير', '2022-08-25 09:05:22', '2022-08-25 09:05:22', NULL),
(27, 14, 'en', 'Order #52', '', '2022-08-25 09:05:55', '2022-08-25 09:05:55', NULL),
(28, 14, 'ar', '52طلب #', '', '2022-08-25 09:05:55', '2022-08-25 09:05:55', NULL),
(29, 15, 'en', 'Order #52', 'You order is Being Prepared', '2022-08-25 09:10:01', '2022-08-25 09:10:01', NULL),
(30, 15, 'ar', '52طلب #', 'طلبك قيد التحضير', '2022-08-25 09:10:01', '2022-08-25 09:10:01', NULL),
(31, 16, 'en', 'Order #52', 'You order is Being Prepared', '2022-08-25 09:10:29', '2022-08-25 09:10:29', NULL),
(32, 16, 'ar', '52طلب #', 'طلبك قيد التحضير', '2022-08-25 09:10:29', '2022-08-25 09:10:29', NULL),
(33, 17, 'en', 'Order #52', 'You order is Being Prepared', '2022-08-25 09:11:10', '2022-08-25 09:11:10', NULL),
(34, 17, 'ar', '52طلب #', 'طلبك قيد التحضير', '2022-08-25 09:11:10', '2022-08-25 09:11:10', NULL),
(35, 18, 'en', 'Quo molestiae aliqui', 'In doloribus id inve', '2022-08-25 09:13:52', '2022-08-25 09:13:52', NULL),
(36, 18, 'ar', 'Porro reprehenderit', 'Omnis ut a non ad su', '2022-08-25 09:13:52', '2022-08-25 09:13:52', NULL),
(37, 19, 'en', 'Order #81', 'Sorry! Your order has been cancelled, please contact our customer service.', '2022-08-28 06:43:10', '2022-08-28 06:43:10', NULL),
(38, 19, 'ar', '81طلب #', 'نأسف ! تم الغاء طلبك , يرجى التواصل مع خدمة العملاء', '2022-08-28 06:43:10', '2022-08-28 06:43:10', NULL),
(39, 20, 'en', 'Order #49', 'Sorry! Your order has been cancelled, please contact our customer service.', '2022-08-28 06:44:45', '2022-08-28 06:44:45', NULL),
(40, 20, 'ar', '49طلب #', 'نأسف ! تم الغاء طلبك , يرجى التواصل مع خدمة العملاء', '2022-08-28 06:44:45', '2022-08-28 06:44:45', NULL),
(41, 21, 'en', 'Order #48', 'You order is Being Prepared', '2022-08-28 07:04:53', '2022-08-28 07:04:53', NULL),
(42, 21, 'ar', '48طلب #', 'طلبك قيد التحضير', '2022-08-28 07:04:53', '2022-08-28 07:04:53', NULL),
(43, 22, 'en', 'Order #48', 'Your order is Ready for Pick Up', '2022-08-28 07:05:00', '2022-08-28 07:05:00', NULL),
(44, 22, 'ar', '48طلب #', 'طلبك جاهز للاستلام', '2022-08-28 07:05:00', '2022-08-28 07:05:00', NULL),
(45, 23, 'en', 'Order #18', 'Your order is Ready for Pick Up', '2022-08-28 08:23:55', '2022-08-28 08:23:55', NULL),
(46, 23, 'ar', '18طلب #', 'طلبك جاهز للاستلام', '2022-08-28 08:23:55', '2022-08-28 08:23:55', NULL),
(47, 24, 'en', 'Order #18', 'You order is Being Prepared', '2022-08-28 08:55:52', '2022-08-28 08:55:52', NULL),
(48, 24, 'ar', '18طلب #', 'طلبك قيد التحضير', '2022-08-28 08:55:52', '2022-08-28 08:55:52', NULL),
(49, 25, 'en', 'Order #80', 'You order is Being Prepared', '2022-08-28 09:48:31', '2022-08-28 09:48:31', NULL),
(50, 25, 'ar', '80طلب #', 'طلبك قيد التحضير', '2022-08-28 09:48:31', '2022-08-28 09:48:31', NULL),
(51, 26, 'en', 'Order #80', 'Your order is Ready for Pick Up', '2022-08-28 09:51:16', '2022-08-28 09:51:16', NULL),
(52, 26, 'ar', '80طلب #', 'طلبك جاهز للاستلام', '2022-08-28 09:51:16', '2022-08-28 09:51:16', NULL),
(53, 27, 'en', 'Order #80', 'You order is Being Prepared', '2022-08-29 03:32:35', '2022-08-29 03:32:35', NULL),
(54, 27, 'ar', '80طلب #', 'طلبك قيد التحضير', '2022-08-29 03:32:35', '2022-08-29 03:32:35', NULL),
(55, 28, 'en', 'Order #80', 'Your order is Ready for Pick Up', '2022-08-29 04:02:29', '2022-08-29 04:02:29', NULL),
(56, 28, 'ar', '80طلب #', 'طلبك جاهز للاستلام', '2022-08-29 04:02:29', '2022-08-29 04:02:29', NULL),
(57, 29, 'en', 'Attention', 'You Are Logout', '2022-08-29 05:48:04', '2022-08-29 05:48:04', NULL),
(58, 29, 'ar', 'تنبيه', 'لقد تم تسجيل الخروج', '2022-08-29 05:48:04', '2022-08-29 05:48:04', NULL),
(59, 30, 'en', 'Attention', 'You Are Logout', '2022-08-29 05:55:04', '2022-08-29 05:55:04', NULL),
(60, 30, 'ar', 'تنبيه', 'لقد تم تسجيل الخروج', '2022-08-29 05:55:04', '2022-08-29 05:55:04', NULL),
(61, 31, 'en', 'Order #89', 'Your order has been picked up', '2022-08-29 06:15:24', '2022-08-29 06:15:24', NULL),
(62, 31, 'ar', '89طلب #', 'تم تسليم طلبك', '2022-08-29 06:15:24', '2022-08-29 06:15:24', NULL),
(63, 32, 'en', 'Order #93', 'You order is Being Prepared', '2022-08-30 06:02:27', '2022-08-30 06:02:27', NULL),
(64, 32, 'ar', '93طلب #', 'طلبك قيد التحضير', '2022-08-30 06:02:27', '2022-08-30 06:02:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('081c4fb765a58bc74cccc67c801b4313b39bef12cfc994024d1d21db186f2f093f1b29ec10813bc5', 15, '1', 'mobile', '[]', 0, '2022-08-29 04:49:41', '2022-08-29 04:49:41', '2023-08-29 07:49:41'),
('0d118b11c544464463729eca02418107c630aa534fcabfb2ff634901a30a54a1f6c83299f80d1c62', 11, '1', 'mobile', '[]', 1, '2022-08-18 09:42:33', '2022-08-18 09:42:33', '2023-08-18 12:42:33'),
('1a01a2cedf344d0442e1b5b4e21686856553f46169c1e375ab066213305f3d423ac5a966d476058c', 11, '1', 'mobile', '[]', 0, '2022-08-16 02:59:24', '2022-08-16 02:59:24', '2023-08-16 05:59:24'),
('1fd017a180d49231ea764b32a2fe000ebc63b169bb2a0772dd68fbb43a103610eb4230e3b94305a2', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:40:20', '2022-08-16 03:40:20', '2023-08-16 06:40:20'),
('28d65ee758ac46fe313540b9f325f1d6d8be959b878b96652896e3d2514a786cd9ff393d4e3fd80b', 11, '1', 'mobile', '[]', 0, '2022-08-18 09:39:15', '2022-08-18 09:39:15', '2023-08-18 12:39:15'),
('32704e47b798ce4c9566d82c64f7d08fc3fd2f9930bed9d1242c523ec90b18108f7b0d47d45c1e54', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:50:02', '2022-08-16 03:50:02', '2023-08-16 06:50:02'),
('3ebfc407fad0b72995f0d7034c1fe354fa1d550f7c2ed049a6d8bdd05b808057cb2fae059be0aa3d', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:57:31', '2022-08-16 03:57:31', '2023-08-16 06:57:31'),
('41dc3a26b1a5714a4c044b331653cffe245678c657b75c1fd6b1388ac9b64cc73e601fee1267dc96', 11, '1', 'mobile', '[]', 1, '2022-08-16 03:26:00', '2022-08-16 03:26:00', '2023-08-16 06:26:00'),
('459eeb9e4bfc1fd5a85359dd2c8599bec5e708a0a30761b52caa9666a9c060779ad874a3d9b6fb48', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:57:36', '2022-08-16 03:57:36', '2023-08-16 06:57:36'),
('4e25f7ece8577fbccc1fcf657fd261ee458c6207b7867c4b5e7216f50c0309d4fe06592776a0962b', 11, '1', 'mobile', '[]', 0, '2022-08-18 09:51:29', '2022-08-18 09:51:29', '2023-08-18 12:51:29'),
('583c7b7f1301da0a565139c9654214c7a23f26782fc13a1f7968b4c291ec3bff6c1a905544efb516', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:53:35', '2022-08-16 03:53:35', '2023-08-16 06:53:35'),
('5d2f2b647ba2b384384909c7ee03f727e7db6f28621af996b4cb778e346586eb25727b05ce0a1e0b', 11, '1', 'mobile', '[]', 1, '2022-08-18 08:59:30', '2022-08-18 08:59:30', '2023-08-18 11:59:30'),
('75f57d08a796f0c5310874e36d1eac26b30614de1f270fa533ff6eb3db32ef2dd751a702d01b414c', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:22:55', '2022-08-16 03:22:55', '2023-08-16 06:22:55'),
('776f98d3c8792518473a7ed87ef89113b2cd8bad3e727435c8109522a3f10fe95caa2edffe07c8c6', 11, '1', 'mobile', '[]', 1, '2022-08-16 03:58:18', '2022-08-16 03:58:18', '2023-08-16 06:58:18'),
('87eb21414c2f526a8cddffcd0b4e4207761425b510c7c32a873b0d17dbf53e5c3f59e2931909f228', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:53:23', '2022-08-16 03:53:23', '2023-08-16 06:53:23'),
('8c4abe897fe9954bd2e1989ca4fd29870309096931e7604ad609d493652c6ef6c3b18dcd686f1f80', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:41:11', '2022-08-16 03:41:11', '2023-08-16 06:41:11'),
('8df9f55e94900fb8139f02a630321b70bad813790860f43b856d0004552cc9c58e66428ac3e2412a', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:30:33', '2022-08-16 03:30:33', '2023-08-16 06:30:33'),
('915ac990ac6647451aab66322c8526a05e185c154ce5f54b66cb22fa10d53c5ea62acf211f2dfe00', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:54:47', '2022-08-16 03:54:47', '2023-08-16 06:54:47'),
('9fef95bcfcf82a123797bcac7b9edd31b5c797c1243fea729889d2543d4d839f757c49007c8d8a93', 11, '1', 'mobile', '[]', 0, '2022-08-18 09:38:42', '2022-08-18 09:38:42', '2023-08-18 12:38:42'),
('aaf4ec4e01abf31c8009dc2f49e52c91b91795816622e702e1329ebe8b53e9ecd2b167be4b8a7e57', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:22:25', '2022-08-16 03:22:25', '2023-08-16 06:22:25'),
('ad50067f6732c5563a6b322a6c56f852a9265a9ffa5f514a49839cf659dc6c7a1cbd5abc6559e23d', 11, '1', 'mobile', '[]', 0, '2022-08-17 05:04:51', '2022-08-17 05:04:51', '2023-08-17 08:04:51'),
('b534e7a109bd4cc9b91cadd5f422254af4b6e8762b9fb4380b0018ada8f0c243504df973da29a787', 11, '1', 'mobile', '[]', 0, '2022-08-18 09:38:29', '2022-08-18 09:38:29', '2023-08-18 12:38:29'),
('bf9941561af20ca022d2624fc2f964845a3ed79f7421b2a07e415ca46f965fd3d4ad19e7ad27ee90', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:34:16', '2022-08-16 03:34:16', '2023-08-16 06:34:16'),
('c0362e86cdbce399bdbf64c024cf52fc028112183de82b20b5be017a2e888312882be901c0637197', 10, '1', 'mobile', '[]', 0, '2022-08-16 02:57:00', '2022-08-16 02:57:00', '2023-08-16 05:57:00'),
('cf057f83de8ea3a9b406fff0a6470d25a225eb75efc44044a638c4ee919ee8bf224e467c9c4450a0', 18, '1', 'mobile', '[]', 0, '2022-08-18 09:48:16', '2022-08-18 09:48:16', '2023-08-18 12:48:16'),
('d0f0a3d4d3aa2f16bb5340fc8b70e390411a6b887e9b2fb9fdf5b83cf809aefdf5c1d1a682ef5de7', 14, '1', 'mobile', '[]', 0, '2022-08-16 03:56:17', '2022-08-16 03:56:17', '2023-08-16 06:56:17'),
('e09073793d053be88208ebcbf3e1f2e251b3504a686abec7ecc0f7e70cf2e52bea9b8af91499b2b2', 11, '1', 'mobile', '[]', 0, '2022-08-16 03:57:23', '2022-08-16 03:57:23', '2023-08-16 06:57:23'),
('e273f9031c8f5723a08e6701dd8e585ae94c11b933735be2b0818aee5fb1deb569afff84cc5682c4', 11, '1', 'mobile', '[]', 1, '2022-08-16 04:11:38', '2022-08-16 04:11:38', '2023-08-16 07:11:38'),
('e8ec7e406f80753b17ca99b7025251b785f30616e245d40852445f2380782bac5fc92a16110fd32f', 14, '1', 'mobile', '[]', 0, '2022-08-16 03:57:19', '2022-08-16 03:57:19', '2023-08-16 06:57:19'),
('ed736da1a61a246f80d2f5106d58eb09a1d090e54fb82fb5c9144b8a110270728c4f752e4ea6e933', 14, '1', 'mobile', '[]', 0, '2022-08-16 04:09:03', '2022-08-16 04:09:03', '2023-08-16 07:09:03'),
('efdad0d16fefcc38242eb580b32d2f0c89c720a8d225ea41460b0f37869a82251a88cf8d3d8d2332', 11, '1', 'mobile', '[]', 0, '2022-08-16 06:08:23', '2022-08-16 06:08:23', '2023-08-16 09:08:23'),
('fb3bf7aba87e95d83cf787ae122d7d1050b425159eaf10e05197a510afd96f43b04b2dc7b8d1ae85', 11, '1', 'mobile', '[]', 0, '2022-08-18 09:39:25', '2022-08-18 09:39:25', '2023-08-18 12:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'b5R7r18pfp92zTbIeNbcAEUnUOKAFj4RF26OQBQ9', 'http://localhost', 1, 0, 0, '2018-04-04 05:12:13', '2018-04-04 05:12:13'),
(2, NULL, 'Laravel Password Grant Client', '8FeNSQNGX4ImJ1IScKBaEi1XzD76DFIifSRBjn9j', 'http://localhost', 0, 1, 0, '2018-04-04 05:12:13', '2018-04-04 05:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '1', '2022-08-16 05:53:40', '2022-08-16 05:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `total` double(8,2) NOT NULL,
  `date` datetime NOT NULL,
  `status` enum('Waitting','Processing','Delivered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Waitting',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_address_id_foreign` (`address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
CREATE TABLE IF NOT EXISTS `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `total` double NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_products_order_id_foreign` (`order_id`),
  KEY `order_products_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('a@a.com', '$2y$10$rztPVyF8KQG.Wg6vRdVtseftWFns.xwFzwh11Py6XSDrF5CUAz9Nq', '2022-08-23 02:38:34');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admins-show', NULL, NULL, NULL),
(2, 'admins-create', NULL, NULL, NULL),
(3, 'admins-edit', NULL, NULL, NULL),
(4, 'admins-delete', NULL, NULL, NULL),
(5, 'landingPages-show', NULL, NULL, NULL),
(6, 'landingPages-edit', NULL, NULL, NULL),
(7, 'users-show', NULL, NULL, NULL),
(8, 'users-create', NULL, NULL, NULL),
(9, 'users-edit', NULL, NULL, NULL),
(10, 'users-delete', NULL, NULL, NULL),
(11, 'providers-show', NULL, NULL, NULL),
(12, 'providers-create', NULL, NULL, NULL),
(13, 'providers-edit', NULL, NULL, NULL),
(14, 'providers-delete', NULL, NULL, NULL),
(15, 'categories-show', NULL, NULL, NULL),
(16, 'categories-create', NULL, NULL, NULL),
(17, 'categories-edit', NULL, NULL, NULL),
(18, 'categories-delete', NULL, NULL, NULL),
(19, 'meals-show', NULL, NULL, NULL),
(20, 'meals-create', NULL, NULL, NULL),
(21, 'meals-edit', NULL, NULL, NULL),
(22, 'meals-delete', NULL, NULL, NULL),
(23, 'option_values-show', NULL, NULL, NULL),
(24, 'option_values-create', NULL, NULL, NULL),
(25, 'option_values-edit', NULL, NULL, NULL),
(26, 'option_values-delete', NULL, NULL, NULL),
(27, 'promo_codes-show', NULL, NULL, NULL),
(28, 'promo_codes-create', NULL, NULL, NULL),
(29, 'promo_codes-edit', NULL, NULL, NULL),
(30, 'promo_codes-delete', NULL, NULL, NULL),
(31, 'orders-show', NULL, NULL, NULL),
(32, 'orders-create', NULL, NULL, NULL),
(33, 'orders-edit', NULL, NULL, NULL),
(34, 'orders-delete', NULL, NULL, NULL),
(35, 'cuisines-show', NULL, NULL, NULL),
(36, 'cuisines-create', NULL, NULL, NULL),
(37, 'cuisines-edit', NULL, NULL, NULL),
(38, 'cuisines-delete', NULL, NULL, NULL),
(39, 'banners-show', NULL, NULL, NULL),
(40, 'banners-create', NULL, NULL, NULL),
(41, 'banners-edit', NULL, NULL, NULL),
(42, 'banners-delete', NULL, NULL, NULL),
(43, 'contacts-show', NULL, NULL, NULL),
(44, 'contacts-edit', NULL, NULL, NULL),
(45, 'contacts-delete', NULL, NULL, NULL),
(46, 'join_requests-show', NULL, NULL, NULL),
(47, 'join_requests-edit', NULL, NULL, NULL),
(48, 'join_requests-delete', NULL, NULL, NULL),
(49, 'pages-show', NULL, NULL, NULL),
(50, 'pages-edit', NULL, NULL, NULL),
(51, 'notifications-show', NULL, NULL, NULL),
(52, 'notifications-create', NULL, NULL, NULL),
(53, 'logs-show', NULL, NULL, NULL),
(54, 'logs-delete', NULL, NULL, NULL),
(55, 'roles-show', NULL, NULL, NULL),
(56, 'roles-create', NULL, NULL, NULL),
(57, 'roles-edit', NULL, NULL, NULL),
(58, 'roles-delete', NULL, NULL, NULL),
(59, 'settings-show', NULL, NULL, NULL),
(60, 'settings-edit', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_translations`
--

DROP TABLE IF EXISTS `permission_translations`;
CREATE TABLE IF NOT EXISTS `permission_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_translations`
--

INSERT INTO `permission_translations` (`id`, `permission_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'admins-show', NULL, NULL, NULL),
(2, 1, 'ar', 'عرض المدراء', NULL, NULL, NULL),
(3, 2, 'en', 'admins-create', NULL, NULL, NULL),
(4, 2, 'ar', 'إضافة المدراء', NULL, NULL, NULL),
(5, 3, 'en', 'admins-edit', NULL, NULL, NULL),
(6, 3, 'ar', 'تعديل المدراء', NULL, NULL, NULL),
(7, 4, 'en', 'admins-delete', NULL, NULL, NULL),
(8, 4, 'ar', 'حذف المدراء', NULL, NULL, NULL),
(9, 5, 'en', 'landingPages-show', NULL, NULL, NULL),
(10, 5, 'ar', 'عرض صفحة الموقع', NULL, NULL, NULL),
(11, 6, 'en', 'landingPages-edit', NULL, NULL, NULL),
(12, 6, 'ar', 'تعديل صفحة الموقع', NULL, NULL, NULL),
(13, 7, 'en', 'users-show', NULL, NULL, NULL),
(14, 7, 'ar', 'عرض المستخدمين', NULL, NULL, NULL),
(15, 8, 'en', 'users-create', NULL, NULL, NULL),
(16, 8, 'ar', 'إضافة المستخدمين', NULL, NULL, NULL),
(17, 9, 'en', 'users-edit', NULL, NULL, NULL),
(18, 9, 'ar', 'تعديل المستخدمين', NULL, NULL, NULL),
(19, 10, 'en', 'users-delete', NULL, NULL, NULL),
(20, 10, 'ar', 'حذف المستخدمين', NULL, NULL, NULL),
(21, 11, 'en', 'providers-show', NULL, NULL, NULL),
(22, 11, 'ar', 'عرض مزودي الخدمات', NULL, NULL, NULL),
(23, 12, 'en', 'providers-create', NULL, NULL, NULL),
(24, 12, 'ar', 'إضافة مزودي الخدمات', NULL, NULL, NULL),
(25, 13, 'en', 'providers-edit', NULL, NULL, NULL),
(26, 13, 'ar', 'تعديل مزودي الخدمات', NULL, NULL, NULL),
(27, 14, 'en', 'providers-delete', NULL, NULL, NULL),
(28, 14, 'ar', 'حذف مزودي الخدمات', NULL, NULL, NULL),
(29, 15, 'en', 'categories-show', NULL, NULL, NULL),
(30, 15, 'ar', 'عرض التصنيفات', NULL, NULL, NULL),
(31, 16, 'en', 'categories-create', NULL, NULL, NULL),
(32, 16, 'ar', 'إضافة التصنيفات', NULL, NULL, NULL),
(33, 17, 'en', 'categories-edit', NULL, NULL, NULL),
(34, 17, 'ar', 'تعديل التصنيفات', NULL, NULL, NULL),
(35, 18, 'en', 'categories-delete', NULL, NULL, NULL),
(36, 18, 'ar', 'حذف التصنيفات', NULL, NULL, NULL),
(37, 19, 'en', 'meals-show', NULL, NULL, NULL),
(38, 19, 'ar', 'عرض الوجبات', NULL, NULL, NULL),
(39, 20, 'en', 'meals-create', NULL, NULL, NULL),
(40, 20, 'ar', 'إضافة الوجبات', NULL, NULL, NULL),
(41, 21, 'en', 'meals-edit', NULL, NULL, NULL),
(42, 21, 'ar', 'تعديل الوجبات', NULL, NULL, NULL),
(43, 22, 'en', 'meals-delete', NULL, NULL, NULL),
(44, 22, 'ar', 'حذف الوجبات', NULL, NULL, NULL),
(45, 23, 'en', 'option values-show', NULL, NULL, NULL),
(46, 23, 'ar', 'عرض الخيارات الإضافية', NULL, NULL, NULL),
(47, 24, 'en', 'option values-create', NULL, NULL, NULL),
(48, 24, 'ar', 'إضافة الخيارات الإضافية', NULL, NULL, NULL),
(49, 25, 'en', 'option values-edit', NULL, NULL, NULL),
(50, 25, 'ar', 'تعديل الخيارات الإضافية', NULL, NULL, NULL),
(51, 26, 'en', 'option values-delete', NULL, NULL, NULL),
(52, 26, 'ar', 'حذف الخيارات الإضافية', NULL, NULL, NULL),
(53, 27, 'en', 'promo codes-show', NULL, NULL, NULL),
(54, 27, 'ar', 'عرض أكواد الخصم', NULL, NULL, NULL),
(55, 28, 'en', 'promo codes-create', NULL, NULL, NULL),
(56, 28, 'ar', 'إضافة أكواد الخصم', NULL, NULL, NULL),
(57, 29, 'en', 'promo codes-edit', NULL, NULL, NULL),
(58, 29, 'ar', 'تعديل أكواد الخصم', NULL, NULL, NULL),
(59, 30, 'en', 'promo codes-delete', NULL, NULL, NULL),
(60, 30, 'ar', 'حذف أكواد الخصم', NULL, NULL, NULL),
(61, 31, 'en', 'orders-show', NULL, NULL, NULL),
(62, 31, 'ar', 'عرض الطلبات', NULL, NULL, NULL),
(63, 32, 'en', 'orders-create', NULL, NULL, NULL),
(64, 32, 'ar', 'إضافة الطلبات', NULL, NULL, NULL),
(65, 33, 'en', 'orders-edit', NULL, NULL, NULL),
(66, 33, 'ar', 'تعديل الطلبات', NULL, NULL, NULL),
(67, 34, 'en', 'orders-delete', NULL, NULL, NULL),
(68, 34, 'ar', 'حذف الطلبات', NULL, NULL, NULL),
(69, 35, 'en', 'cuisines-show', NULL, NULL, NULL),
(70, 35, 'ar', 'عرض المطابخ', NULL, NULL, NULL),
(71, 36, 'en', 'cuisines-create', NULL, NULL, NULL),
(72, 36, 'ar', 'إضافة المطابخ', NULL, NULL, NULL),
(73, 37, 'en', 'cuisines-edit', NULL, NULL, NULL),
(74, 37, 'ar', 'تعديل المطابخ', NULL, NULL, NULL),
(75, 38, 'en', 'cuisines-delete', NULL, NULL, NULL),
(76, 38, 'ar', 'حذف المطابخ', NULL, NULL, NULL),
(77, 39, 'en', 'banners-show', NULL, NULL, NULL),
(78, 39, 'ar', 'عرض الإعلانات', NULL, NULL, NULL),
(79, 40, 'en', 'banners-create', NULL, NULL, NULL),
(80, 40, 'ar', 'إضافة الإعلانات', NULL, NULL, NULL),
(81, 41, 'en', 'banners-edit', NULL, NULL, NULL),
(82, 41, 'ar', 'تعديل الإعلانات', NULL, NULL, NULL),
(83, 42, 'en', 'banners-delete', NULL, NULL, NULL),
(84, 42, 'ar', 'حذف الإعلانات', NULL, NULL, NULL),
(85, 43, 'en', 'contacts-show', NULL, NULL, NULL),
(86, 43, 'ar', 'عرض الرسائل', NULL, NULL, NULL),
(87, 44, 'en', 'contacts-edit', NULL, NULL, NULL),
(88, 44, 'ar', 'تعديل الرسائل', NULL, NULL, NULL),
(89, 45, 'en', 'contacts-delete', NULL, NULL, NULL),
(90, 45, 'ar', 'حذف الرسائل', NULL, NULL, NULL),
(91, 46, 'en', 'join requests-show', NULL, NULL, NULL),
(92, 46, 'ar', 'عرض طلبات الإنضمام', NULL, NULL, NULL),
(93, 47, 'en', 'join requests-edit', NULL, NULL, NULL),
(94, 47, 'ar', 'تعديل طلبات الإنضمام', NULL, NULL, NULL),
(95, 48, 'en', 'join requests-delete', NULL, NULL, NULL),
(96, 48, 'ar', 'حذف طلبات الإنضمام', NULL, NULL, NULL),
(97, 49, 'en', 'pages-show', NULL, NULL, NULL),
(98, 49, 'ar', 'عرض الصفحات', NULL, NULL, NULL),
(99, 50, 'en', 'pages-edit', NULL, NULL, NULL),
(100, 50, 'ar', 'تعديل الصفحات', NULL, NULL, NULL),
(101, 51, 'en', 'notifications-show', NULL, NULL, NULL),
(102, 51, 'ar', 'عرض الإشعارات', NULL, NULL, NULL),
(103, 52, 'en', 'notifications-create', NULL, NULL, NULL),
(104, 52, 'ar', 'إضافة الإشعارات', NULL, NULL, NULL),
(105, 53, 'en', 'logs-show', NULL, NULL, NULL),
(106, 53, 'ar', 'عرض أرشيف النشاطات', NULL, NULL, NULL),
(107, 54, 'en', 'logs-delete', NULL, NULL, NULL),
(108, 54, 'ar', 'حذف أرشيف النشاطات', NULL, NULL, NULL),
(109, 55, 'en', 'roles-show', NULL, NULL, NULL),
(110, 55, 'ar', 'عرض المسميات الوظيفية', NULL, NULL, NULL),
(111, 56, 'en', 'roles-create', NULL, NULL, NULL),
(112, 56, 'ar', 'إضافة المسميات الوظيفية', NULL, NULL, NULL),
(113, 57, 'en', 'roles-edit', NULL, NULL, NULL),
(114, 57, 'ar', 'تعديل المسميات الوظيفية', NULL, NULL, NULL),
(115, 58, 'en', 'roles-delete', NULL, NULL, NULL),
(116, 58, 'ar', 'حذف المسميات الوظيفية', NULL, NULL, NULL),
(117, 59, 'en', 'settings-show', NULL, NULL, NULL),
(118, 59, 'ar', 'عرض الإعدادات', NULL, NULL, NULL),
(119, 60, 'en', 'settings-edit', NULL, NULL, NULL),
(120, 60, 'ar', 'تعديل الإعدادات', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `price` double(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('active','not_active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `price`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 10.00, 1, 'active', '2023-02-13 08:21:54', '2023-02-13 08:21:54'),
(2, 100.00, 1, 'active', '2023-02-13 08:54:47', '2023-02-13 08:54:47'),
(3, 20.00, 2, 'active', '2023-02-13 09:51:55', '2023-02-13 09:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `product_color_sizes`
--

DROP TABLE IF EXISTS `product_color_sizes`;
CREATE TABLE IF NOT EXISTS `product_color_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_color_sizes_product_id_foreign` (`product_id`),
  KEY `product_color_sizes_color_id_foreign` (`color_id`),
  KEY `product_color_sizes_size_id_foreign` (`size_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_color_sizes`
--

INSERT INTO `product_color_sizes` (`id`, `quantity`, `product_id`, `color_id`, `size_id`, `created_at`, `updated_at`) VALUES
(2, 12, 1, 1, 1, NULL, NULL),
(3, 12, 2, 1, 1, NULL, NULL),
(4, 200, 2, 2, 1, NULL, NULL),
(5, 12, 3, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_coupons`
--

DROP TABLE IF EXISTS `product_coupons`;
CREATE TABLE IF NOT EXISTS `product_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` bigint(20) UNSIGNED DEFAULT NULL,
  `uses_times` bigint(20) UNSIGNED DEFAULT NULL,
  `used_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `greater_than` decimal(8,2) UNSIGNED DEFAULT NULL,
  `start_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_coupons_code_unique` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_coupons`
--

INSERT INTO `product_coupons` (`id`, `code`, `type`, `description`, `value`, `uses_times`, `used_times`, `greater_than`, `start_date`, `expire_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'hexa10', 'fixed', 'qweqweqweqw', 10, 10, 0, '50.00', '2023-02-13', '2023-02-25', 1, '2023-02-13 09:50:25', '2023-02-13 09:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_offers`
--

DROP TABLE IF EXISTS `product_offers`;
CREATE TABLE IF NOT EXISTS `product_offers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `discount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_offers_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_offers`
--

INSERT INTO `product_offers` (`id`, `start_date`, `end_date`, `product_id`, `discount`, `created_at`, `updated_at`) VALUES
(1, '2023-02-01', '2023-03-09', 1, 10.00, '2023-02-13 09:50:53', '2023-02-13 09:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `product_translations`
--

DROP TABLE IF EXISTS `product_translations`;
CREATE TABLE IF NOT EXISTS `product_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_translations_locale_index` (`locale`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_translations`
--

INSERT INTO `product_translations` (`id`, `name`, `info`, `product_id`, `locale`, `created_at`, `updated_at`) VALUES
(1, 'qewqwe', 'weqewrr', 1, 'en', '2023-02-13 08:21:54', '2023-02-13 08:21:54'),
(2, 'MacKensie Campos', 'weqweqweq', 1, 'ar', '2023-02-13 08:21:54', '2023-02-13 08:21:54'),
(3, 'qweqwewq', 'qweqweqwew', 2, 'en', '2023-02-13 08:54:47', '2023-02-13 08:54:47'),
(4, 'eqweqwe', 'qweqwe', 2, 'ar', '2023-02-13 08:54:47', '2023-02-13 08:54:47'),
(5, 'qweqwe', 'qweqwe', 3, 'en', '2023-02-13 09:51:55', '2023-02-13 09:51:55'),
(6, 'qwewqew', 'qeqe', 3, 'ar', '2023-02-13 09:51:55', '2023-02-13 09:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '', '2022-08-28 08:18:01', '2022-08-28 08:18:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
CREATE TABLE IF NOT EXISTS `role_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, NULL, NULL, NULL),
(2, 1, 2, NULL, NULL, NULL),
(3, 1, 3, NULL, NULL, NULL),
(4, 1, 4, NULL, NULL, NULL),
(5, 1, 5, NULL, NULL, NULL),
(6, 1, 6, NULL, NULL, NULL),
(7, 1, 7, NULL, NULL, NULL),
(8, 1, 8, NULL, NULL, NULL),
(9, 1, 9, NULL, NULL, NULL),
(10, 1, 10, NULL, NULL, NULL),
(11, 1, 11, NULL, NULL, NULL),
(12, 1, 12, NULL, NULL, NULL),
(13, 1, 13, NULL, NULL, NULL),
(14, 1, 14, NULL, NULL, NULL),
(15, 1, 15, NULL, NULL, NULL),
(16, 1, 16, NULL, NULL, NULL),
(17, 1, 17, NULL, NULL, NULL),
(18, 1, 18, NULL, NULL, NULL),
(19, 1, 19, NULL, NULL, NULL),
(20, 1, 20, NULL, NULL, NULL),
(21, 1, 21, NULL, NULL, NULL),
(22, 1, 22, NULL, NULL, NULL),
(23, 1, 23, NULL, NULL, NULL),
(24, 1, 24, NULL, NULL, NULL),
(25, 1, 25, NULL, NULL, NULL),
(26, 1, 26, NULL, NULL, NULL),
(27, 1, 27, NULL, NULL, NULL),
(28, 1, 28, NULL, NULL, NULL),
(29, 1, 29, NULL, NULL, NULL),
(30, 1, 30, NULL, NULL, NULL),
(31, 1, 31, NULL, NULL, NULL),
(32, 1, 32, NULL, NULL, NULL),
(33, 1, 33, NULL, NULL, NULL),
(34, 1, 34, NULL, NULL, NULL),
(35, 1, 35, NULL, NULL, NULL),
(36, 1, 36, NULL, NULL, NULL),
(37, 1, 37, NULL, NULL, NULL),
(38, 1, 38, NULL, NULL, NULL),
(39, 1, 39, NULL, NULL, NULL),
(40, 1, 40, NULL, NULL, NULL),
(41, 1, 41, NULL, NULL, NULL),
(42, 1, 42, NULL, NULL, NULL),
(43, 1, 43, NULL, NULL, NULL),
(44, 1, 44, NULL, NULL, NULL),
(45, 1, 45, NULL, NULL, NULL),
(46, 1, 46, NULL, NULL, NULL),
(47, 1, 47, NULL, NULL, NULL),
(48, 1, 48, NULL, NULL, NULL),
(49, 1, 49, NULL, NULL, NULL),
(50, 1, 50, NULL, NULL, NULL),
(51, 1, 51, NULL, NULL, NULL),
(52, 1, 52, NULL, NULL, NULL),
(53, 1, 53, NULL, NULL, NULL),
(54, 1, 54, NULL, NULL, NULL),
(55, 1, 55, NULL, NULL, NULL),
(56, 1, 56, NULL, NULL, NULL),
(57, 1, 57, NULL, NULL, NULL),
(58, 1, 58, NULL, NULL, NULL),
(59, 1, 59, NULL, NULL, NULL),
(60, 1, 60, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_translations`
--

DROP TABLE IF EXISTS `role_translations`;
CREATE TABLE IF NOT EXISTS `role_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_translations`
--

INSERT INTO `role_translations` (`id`, `role_id`, `locale`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'en', 'admins', '2022-08-28 08:18:01', '2022-08-28 08:18:01', NULL),
(2, 1, 'ar', 'المدراء', '2022-08-28 08:18:01', '2022-08-28 08:18:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `google_play_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_store_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paginateTotal` int(11) NOT NULL,
  `login_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_maintenance_mode` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0->off 1->on',
  `is_allow_register` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0->off 1->on',
  `is_allow_login` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0->off 1->on',
  `is_allow_buy` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0->off 1->on',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `google_play_url`, `app_store_url`, `paginateTotal`, `login_image`, `info_email`, `mobile`, `twitter`, `instagram`, `is_maintenance_mode`, `is_allow_register`, `is_allow_login`, `is_allow_buy`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'https://play.google.com', 'https://www.apple.com/app-store', 12, 'z9ZxpCqiS3tCKci28076021661160989_1664951.jpg', 'yammak@yammk.com', '12345678', 'https://twitter.com', 'https://instagram.com', '0', '1', '1', '1', '0000-00-00 00:00:00', '2022-08-29 09:01:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

DROP TABLE IF EXISTS `setting_translations`;
CREATE TABLE IF NOT EXISTS `setting_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `setting_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
CREATE TABLE IF NOT EXISTS `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'S', '2023-02-13 08:21:18', '2023-02-13 08:21:18'),
(2, 'M', '2023-02-13 08:21:18', '2023-02-13 08:21:18'),
(3, 'L', '2023-02-13 08:21:18', '2023-02-13 08:21:18'),
(4, 'XL', '2023-02-13 08:21:18', '2023-02-13 08:21:18'),
(5, 'XXL', '2023-02-13 08:21:18', '2023-02-13 08:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fcm_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0->android , 1 ->ios',
  `accept` int(11) DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'ar',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `fcm_token`, `device_type`, `accept`, `lang`, `created_at`, `updated_at`, `deleted_at`) VALUES
(93, 11, '123', '0', NULL, 'ar', '2022-08-08 09:57:51', '2022-08-16 04:01:14', NULL),
(94, 15, '123', '0', NULL, 'en', '2022-08-16 04:09:03', '2022-08-29 05:48:06', '2022-08-29 05:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_mobile_unique` (`mobile`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `mobile`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sawsan', 'saw@gmail.com', NULL, '0597085978', '$2y$10$LOACANLYevz6TVeiMFPSdOIZ593u0c/7Obwm.vezL8.wxGlF8FLY6', NULL, '2023-02-13 08:21:04', '2023-02-13 08:21:04');

-- --------------------------------------------------------

--
-- Table structure for table `varification_codes`
--

DROP TABLE IF EXISTS `varification_codes`;
CREATE TABLE IF NOT EXISTS `varification_codes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

DROP TABLE IF EXISTS `websockets_statistics_entries`;
CREATE TABLE IF NOT EXISTS `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
