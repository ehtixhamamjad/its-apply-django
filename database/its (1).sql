-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 12:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `its`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_token` varchar(100) DEFAULT NULL,
  `forget_password_token` varchar(100) DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `email`, `email_token`, `forget_password_token`, `is_verified`, `created_at`, `user_id`) VALUES
(1, 'zain@gmail.com', NULL, NULL, 0, '2024-04-19 10:05:56.589877', 1),
(2, 'zain@Gmailcom', 'bd02b429-8418-447b-aaed-8c94871207c2', NULL, 0, '2024-04-22 07:35:37.768246', 2),
(3, 'ali@gmail.com', '6199cc65-cfbb-460a-a524-dd313868b847', NULL, 0, '2024-04-22 12:06:15.809857', 3),
(5, 'raza@gmail.com', 'cc916b8b-df83-4d28-9230-6c84854f5b31', NULL, 0, '2024-04-23 05:42:40.667496', 5),
(6, 'toheed@gmail.com', '2b55800e-1fcb-4e51-9188-a9b753a20c2a', NULL, 0, '2024-04-26 06:15:05.000057', 6);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'client');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add profile', 7, 'add_profile'),
(26, 'Can change profile', 7, 'change_profile'),
(27, 'Can delete profile', 7, 'delete_profile'),
(28, 'Can view profile', 7, 'view_profile'),
(29, 'Can add license_data', 8, 'add_license_data'),
(30, 'Can change license_data', 8, 'change_license_data'),
(31, 'Can delete license_data', 8, 'delete_license_data'),
(32, 'Can view license_data', 8, 'view_license_data'),
(33, 'Can add transaction', 9, 'add_transaction'),
(34, 'Can change transaction', 9, 'change_transaction'),
(35, 'Can delete transaction', 9, 'delete_transaction'),
(36, 'Can view transaction', 9, 'view_transaction'),
(37, 'Can add User Profile', 10, 'add_profile'),
(38, 'Can change User Profile', 10, 'change_profile'),
(39, 'Can delete User Profile', 10, 'delete_profile'),
(40, 'Can view User Profile', 10, 'view_profile'),
(41, 'Can add employment_ information', 11, 'add_employment_information'),
(42, 'Can change employment_ information', 11, 'change_employment_information'),
(43, 'Can delete employment_ information', 11, 'delete_employment_information'),
(44, 'Can view employment_ information', 11, 'view_employment_information'),
(45, 'Can add address_ info', 12, 'add_address_info'),
(46, 'Can change address_ info', 12, 'change_address_info'),
(47, 'Can delete address_ info', 12, 'delete_address_info'),
(48, 'Can view address_ info', 12, 'view_address_info'),
(49, 'Can add academic_ information', 13, 'add_academic_information'),
(50, 'Can change academic_ information', 13, 'change_academic_information'),
(51, 'Can delete academic_ information', 13, 'delete_academic_information'),
(52, 'Can view academic_ information', 13, 'view_academic_information'),
(53, 'Can add project_ application', 14, 'add_project_application'),
(54, 'Can change project_ application', 14, 'change_project_application'),
(55, 'Can delete project_ application', 14, 'delete_project_application'),
(56, 'Can view project_ application', 14, 'view_project_application');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$mKjGDwPesnAKQAli5LjcM9$8cNbt2cP7dKe1sL5ul+aPFuqTSIKFbk1wV8xqGT1TP8=', '2024-04-26 10:51:57.110454', 1, 'zain', '', '', 'zain@gmail.com', 1, 1, '2024-04-19 10:05:55.461566'),
(2, 'pbkdf2_sha256$720000$9ZnTQvyOLFHgt2Zsos2mUu$e3Zuj69+2aQfu2SCM0ClRXXu9BmUOTCC1V53+nEqLog=', '2024-04-26 09:35:38.189305', 0, '1234', '', '', 'zain@gmailcom', 0, 1, '2024-04-22 07:35:36.074146'),
(3, 'pbkdf2_sha256$720000$VeZfwLJELhIHAkAEhNOtvy$zEM38pnRbvhU6ZtSJHgHqEVGqNGMYXs8zqX0RcW7VQs=', '2024-04-26 11:53:21.026089', 0, '4321', '', '', 'ali@gmail.com', 0, 1, '2024-04-22 12:06:14.520971'),
(4, 'pbkdf2_sha256$720000$JKT7eJCzkbx8UBcpfM1Tha$uYWs2s+hpuEpyOHMOwu1vmA/TQwpMEKZEwTbstoQA7g=', NULL, 1, 'ali', '', '', 'ali@gmail.com', 1, 1, '2024-04-23 05:39:28.426457'),
(5, 'pbkdf2_sha256$720000$QdqlmspIG4W5ZTb4QtVXgy$qSwHvA7FkAvLVV0DkB/mIJVoSE62iV781YRZbN4VEhc=', '2024-04-23 05:43:29.206477', 0, 'raza', '', '', 'raza@gmail.com', 0, 1, '2024-04-23 05:42:39.315435'),
(6, 'pbkdf2_sha256$720000$q3eaWx8IhvNEmzTqizHpYi$35p1R39nDqzI3+xOg0P8Bal3Ca/oukSugglCiszwJu0=', '2024-04-26 06:16:38.162517', 0, 'toheed', '', '', 'toheed@gmail.com', 0, 1, '2024-04-26 06:15:03.032011');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 5, 1),
(4, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(10, 'accounts', 'profile'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'pages', 'academic_information'),
(12, 'pages', 'address_info'),
(11, 'pages', 'employment_information'),
(8, 'pages', 'license_data'),
(7, 'pages', 'profile'),
(14, 'pages', 'project_application'),
(6, 'sessions', 'session'),
(9, 'transactions', 'transaction');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-19 10:02:57.779588'),
(2, 'auth', '0001_initial', '2024-04-19 10:03:08.022724'),
(3, 'accounts', '0001_initial', '2024-04-19 10:03:09.051749'),
(4, 'admin', '0001_initial', '2024-04-19 10:03:11.394909'),
(5, 'admin', '0002_logentry_remove_auto_add', '2024-04-19 10:03:11.450246'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-19 10:03:11.508645'),
(7, 'contenttypes', '0002_remove_content_type_name', '2024-04-19 10:03:12.418109'),
(8, 'auth', '0002_alter_permission_name_max_length', '2024-04-19 10:03:13.795055'),
(9, 'auth', '0003_alter_user_email_max_length', '2024-04-19 10:03:14.014270'),
(10, 'auth', '0004_alter_user_username_opts', '2024-04-19 10:03:14.061164'),
(11, 'auth', '0005_alter_user_last_login_null', '2024-04-19 10:03:14.593400'),
(12, 'auth', '0006_require_contenttypes_0002', '2024-04-19 10:03:14.626450'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2024-04-19 10:03:14.687290'),
(14, 'auth', '0008_alter_user_username_max_length', '2024-04-19 10:03:14.827298'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2024-04-19 10:03:14.995427'),
(16, 'auth', '0010_alter_group_name_max_length', '2024-04-19 10:03:15.176551'),
(17, 'auth', '0011_update_proxy_permissions', '2024-04-19 10:03:15.236997'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2024-04-19 10:03:15.366674'),
(19, 'ecommerce', '0001_initial', '2024-04-19 10:03:15.558468'),
(20, 'ecommerce', '0002_delete_ecommercesettings', '2024-04-19 10:03:15.739734'),
(21, 'pages', '0001_initial', '2024-04-19 10:03:16.344821'),
(22, 'pages', '0002_delete_profileview', '2024-04-19 10:03:16.717369'),
(23, 'pages', '0003_rename_license_license_data', '2024-04-19 10:03:16.975728'),
(24, 'sessions', '0001_initial', '2024-04-19 10:03:17.373760'),
(25, 'transactions', '0001_initial', '2024-04-19 10:03:17.605089'),
(26, 'pages', '0004_alter_profile_has_disability_and_more', '2024-04-19 11:08:09.799302'),
(27, 'pages', '0005_employment_information', '2024-04-19 11:42:25.371782'),
(28, 'pages', '0006_address_info', '2024-04-20 02:49:16.178901'),
(29, 'pages', '0007_academic_information', '2024-04-20 03:12:21.391981'),
(30, 'pages', '0008_project_application', '2024-04-24 07:34:23.152400');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2gxr6xwz5j8dupsv2ovv0krbvib95pxr', '.eJxVjsEOwiAQRP-FsyGWwgIevfcbyLILUjU0Ke3J-O-2SWP0Om_mZV4i4LqUsLY0h5HFRShx-s0i0iPVHfAd622SNNVlHqPcK_KgTQ4Tp-f16P4JCrayrW0mlcmyI5M1e2DyPZPmmCBSxxCdAeuM6zUm9N5lsMTmDMxKd6DcJv1-VO8P1Fw8VA:1rzA9s:rS1BSRsS_d-I8wWXIAJKCrjezNvsXGnOkQ5IBXqmVdY', '2024-04-23 08:01:40.577624'),
('47hecxdihfietj3y5pq5uusq3djyvm4s', '.eJxVjEEOwiAQRe_C2hCghqEu3XsGMsMMUjWQlHbVeHdt0oVu_3vvbyriupS4dpnjxOqirDr9boTpKXUH_MB6bzq1uswT6V3RB-361lhe18P9OyjYy7cmtGEUMJ6YMRnjYBxIDGAAcFmsdzmfmQ0lAmcDDyGQA59NQC_EqN4f9NY4jA:1rymH8:IJfVRj36sX0n-KTsZwdb-FbYJ3_8yZXgpNrxMORQP94', '2024-04-22 06:31:34.051136'),
('67hq85klmz65cxfi9kok75egeujyc5xw', '.eJxVjEEOwiAQRe_C2hCghqEu3XsGMsMMUjWQlHbVeHdt0oVu_3vvbyriupS4dpnjxOqirDr9boTpKXUH_MB6bzq1uswT6V3RB-361lhe18P9OyjYy7cmtGEUMJ6YMRnjYBxIDGAAcFmsdzmfmQ0lAmcDDyGQA59NQC_EqN4f9NY4jA:1ry0UV:flPCrJmFg2rdzr-zNs67r1seokC6GOMGbbtSBSdYweo', '2024-04-20 03:30:11.747731'),
('85xz7fspq6n3eemv17uzf32szefhhy7n', '.eJxVjssKwjAURP8lawl5mYdL9_2GcB-pqUoLTbsS_90Wiuh2zsxhXiLDutS8tjLngcVFWHH6zRDoUcYd8B3G2yRpGpd5QLlX5EGb7CYuz-vR_RNUaHVb9wzkHSNEZSEZdD15JFeKJm9cAjaRziayQjbBB42c2GkMqL2zCv0m_X607w_RgDxJ:1rzxe8:crPEw2eagSchp7xBWLhLqRPcBfTu-lWMkmP7lUjLNRA', '2024-04-25 12:52:12.005759'),
('91s1ag0nvbdp7nn8gpxa5zz2kf26rna1', '.eJxVjEEOwiAQRe_C2hCghqEu3XsGMsMMUjWQlHbVeHdt0oVu_3vvbyriupS4dpnjxOqirDr9boTpKXUH_MB6bzq1uswT6V3RB-361lhe18P9OyjYy7cmtGEUMJ6YMRnjYBxIDGAAcFmsdzmfmQ0lAmcDDyGQA59NQC_EqN4f9NY4jA:1rxnUv:AL4V_SVM06XKlCXdfqWMRwrsSOdfo9WOilNzDIyGorM', '2024-04-19 13:37:45.465211'),
('aud0gyf6crwiuvuthwn52kh96vswajox', '.eJxVjssKwjAURP8lawl5mYdL9_2GcB-pqUoLTbsS_90Wiuh2zsxhXiLDutS8tjLngcVFWHH6zRDoUcYd8B3G2yRpGpd5QLlX5EGb7CYuz-vR_RNUaHVb9wzkHSNEZSEZdD15JFeKJm9cAjaRziayQjbBB42c2GkMqL2zCv0m_X607w_RgDxJ:1rzFiL:f7rS5A_z_jC17ITsSPtOxyIURZhs-4T8Dh4vrMCusio', '2024-04-23 13:57:37.282184'),
('ax3yrqik3o7l4qjzpeoor3t2rqk9ld7r', '.eJxVjEEOwiAQRe_C2hCghqEu3XsGMsMMUjWQlHbVeHdt0oVu_3vvbyriupS4dpnjxOqirDr9boTpKXUH_MB6bzq1uswT6V3RB-361lhe18P9OyjYy7cmtGEUMJ6YMRnjYBxIDGAAcFmsdzmfmQ0lAmcDDyGQA59NQC_EqN4f9NY4jA:1ryoia:qNfWGvaJqec-OWT1zUekBOMkAbL6B-TtGm9xgrSZPpw', '2024-04-22 09:08:04.659981'),
('d49zlumsnwkynuus9cql0cdli0z8gk1r', '.eJxVjssKwjAURP8lawl5mYdL9_2GcB-pqUoLTbsS_90Wiuh2zsxhXiLDutS8tjLngcVFWHH6zRDoUcYd8B3G2yRpGpd5QLlX5EGb7CYuz-vR_RNUaHVb9wzkHSNEZSEZdD15JFeKJm9cAjaRziayQjbBB42c2GkMqL2zCv0m_X607w_RgDxJ:1s0K8n:H4fD2JTDWuNrmrEGMjwZmZbZCEke0nObhVQTZ61HYbU', '2024-04-26 12:53:21.094949'),
('fke0p6ung6pdacvm4so40pfhjb6p074t', '.eJxVjEEOwiAQRe_C2hCghqEu3XsGMsMMUjWQlHbVeHdt0oVu_3vvbyriupS4dpnjxOqirDr9boTpKXUH_MB6bzq1uswT6V3RB-361lhe18P9OyjYy7cmtGEUMJ6YMRnjYBxIDGAAcFmsdzmfmQ0lAmcDDyGQA59NQC_EqN4f9NY4jA:1rxm7C:NCiNMbfIfcEcBU2laO-WbGSCwOrnMxnEdu6WIwCzFuA', '2024-04-19 12:09:10.940784'),
('hvpy4zxtz3htn1b72q5ezdabaujkkdja', '.eJxVjssKwjAURP8lawl5mYdL9_2GcB-pqUoLTbsS_90Wiuh2zsxhXiLDutS8tjLngcVFWHH6zRDoUcYd8B3G2yRpGpd5QLlX5EGb7CYuz-vR_RNUaHVb9wzkHSNEZSEZdD15JFeKJm9cAjaRziayQjbBB42c2GkMqL2zCv0m_X607w_RgDxJ:1rzXq1:fKPraaEYyzu6mqYQrI1cmODoOG8DTPWMmjO-Y7yHiVA', '2024-04-24 09:18:45.330846'),
('nh24tm2ycs0cr0jaeqd8rirchyald2hy', '.eJxVjssKwjAURP8lawl5mYdL9_2GcB-pqUoLTbsS_90Wiuh2zsxhXiLDutS8tjLngcVFWHH6zRDoUcYd8B3G2yRpGpd5QLlX5EGb7CYuz-vR_RNUaHVb9wzkHSNEZSEZdD15JFeKJm9cAjaRziayQjbBB42c2GkMqL2zCv0m_X607w_RgDxJ:1rzbIL:4vGOGWz1Q0STXhHgPefYrpTv60Zo33d9WpHLSRFnUZk', '2024-04-24 13:00:13.442095'),
('p7dnzksdsqex32jeolmdlqptfxfql6t9', '.eJxVjsEOwiAQRP-FsyGWwgIevfcbyLILUjU0Ke3J-O-2SWP0Om_mZV4i4LqUsLY0h5HFRShx-s0i0iPVHfAd622SNNVlHqPcK_KgTQ4Tp-f16P4JCrayrW0mlcmyI5M1e2DyPZPmmCBSxxCdAeuM6zUm9N5lsMTmDMxKd6DcJv1-VO8P1Fw8VA:1s0HzW:lHxw4k5okfq1-_N7mh_jxk8B6NSX4-IOnBrcsBkt8bs', '2024-04-26 10:35:38.333254'),
('pkbi8u125hqmag4opswwk415f0inuuxy', '.eJxVjssKwjAURP8lawl5mYdL9_2GcB-pqUoLTbsS_90Wiuh2zsxhXiLDutS8tjLngcVFWHH6zRDoUcYd8B3G2yRpGpd5QLlX5EGb7CYuz-vR_RNUaHVb9wzkHSNEZSEZdD15JFeKJm9cAjaRziayQjbBB42c2GkMqL2zCv0m_X607w_RgDxJ:1s0F0e:ryJlCT314JGtM8k9IAwuMshHFxUSQrVmgaWvOqsg5ZM', '2024-04-26 07:24:36.662719'),
('pn8i7zksh16hr6nj6sjwhustwwt3gn7p', '.eJxVjsEOwiAQRP-FsyGWwgIevfcbyLILUjU0Ke3J-O-2SWP0Om_mZV4i4LqUsLY0h5HFRShx-s0i0iPVHfAd622SNNVlHqPcK_KgTQ4Tp-f16P4JCrayrW0mlcmyI5M1e2DyPZPmmCBSxxCdAeuM6zUm9N5lsMTmDMxKd6DcJv1-VO8P1Fw8VA:1rzrzG:wp9XAZnYdKE5uZ3Y_dFcOYCOts0_drrr9aexGd_W6_w', '2024-04-25 06:49:38.363438'),
('qczc9nk3vy8toauqd93ldbv9wgh4t6oc', '.eJxVjEEOwiAQRe_C2hCghqEu3XsGMsMMUjWQlHbVeHdt0oVu_3vvbyriupS4dpnjxOqirDr9boTpKXUH_MB6bzq1uswT6V3RB-361lhe18P9OyjYy7cmtGEUMJ6YMRnjYBxIDGAAcFmsdzmfmQ0lAmcDDyGQA59NQC_EqN4f9NY4jA:1ry3DZ:cxGqPl9fOePxfUbZaggmYkGWfvndSxZtiIPz7VerSTo', '2024-04-20 06:24:53.911984'),
('qgvzdfb9o1msnn7o04lxud7u0bp99o97', '.eJxVjsEOwiAQRP-FsyGWwgIevfcbyLILUjU0Ke3J-O-2SWP0Om_mZV4i4LqUsLY0h5HFRShx-s0i0iPVHfAd622SNNVlHqPcK_KgTQ4Tp-f16P4JCrayrW0mlcmyI5M1e2DyPZPmmCBSxxCdAeuM6zUm9N5lsMTmDMxKd6DcJv1-VO8P1Fw8VA:1s0GYh:mtd8sGezxB0QErmQHrtr0AX1I5WZvYQIRSbTRveMPtM', '2024-04-26 09:03:51.266858'),
('rcxhfsau89xibapmon89cf3j0i266h5h', '.eJxVjs0OgjAQhN-lZ9OA7WLryXj3Gch2dwso0ISfi8Z3tyTEhOPMfDOZj5IBu15d1YRvvDWb0JQGdVI1rktbr7NMdccZgKMXkF4ybgE_cWxSbo3L1AW9IXpPZ_1ILP19Zw8DLc5tboeLSHRSCYFQNGXFFIy1jsC7iB5MwZWNsWSxYOlss0IxyA7BF-JdHv1_hO8PRt5FBw:1rz8wD:wzcKA2ughjDg6ct3hkJgDihvKcbO-BnTlc5ytyPswi8', '2024-04-23 06:43:29.342482'),
('sn3eqwia2cgfmpd319xtg0v4yzj8442g', '.eJxVjskKwjAYhN8lZwnNYtp4Eu8-Q_iXtIl2gS4n8d1NoQi9DfPNDPMRcYDci5uAPt-7XUuaBnERAbY1hW2Jc8hcuDl7CPSO4w74BWM3lda4zhnlHpEHXeRz4tg_juxpIMGSSrtlIGcZoakMeI22JYdkY1TktPXAuqGrbrhC1rWrFbJnq7BG5ayp0JXR_0fz_QHbvkQs:1rysRZ:KLID5XhOyqK_CQaH4nrzmxj3ZYtSVQdiS3hb4C0_I8Q', '2024-04-22 13:06:45.550377'),
('ydz76ifozc6lwyt0jhoh819l8vpz6akh', '.eJxVjEEOwiAQRe_C2hCghqEu3XsGMsMMUjWQlHbVeHdt0oVu_3vvbyriupS4dpnjxOqirDr9boTpKXUH_MB6bzq1uswT6V3RB-361lhe18P9OyjYy7cmtGEUMJ6YMRnjYBxIDGAAcFmsdzmfmQ0lAmcDDyGQA59NQC_EqN4f9NY4jA:1rxl8G:WhH6AaymZCcGmrKJSeymMyVQBXblcKUcgjJAN021MRU', '2024-04-19 11:06:12.082642');

-- --------------------------------------------------------

--
-- Table structure for table `pages_academic_information`
--

CREATE TABLE `pages_academic_information` (
  `id` bigint(20) NOT NULL,
  `degree_title` varchar(100) NOT NULL,
  `degree` varchar(50) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `passing_year` int(11) NOT NULL,
  `marks_type` varchar(20) NOT NULL,
  `obtained_marks` decimal(5,2) NOT NULL,
  `total_marks` decimal(5,2) NOT NULL,
  `percentage` decimal(5,2) NOT NULL,
  `board_institute` varchar(100) NOT NULL,
  `subjects` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages_academic_information`
--

INSERT INTO `pages_academic_information` (`id`, `degree_title`, `degree`, `duration`, `passing_year`, `marks_type`, `obtained_marks`, `total_marks`, `percentage`, `board_institute`, `subjects`) VALUES
(1, 'Bachelor of Science', 'B.Sc.', '4 years', 2022, 'CGPA', 3.80, 4.00, 0.95, 'dsxcc', 'qcds x'),
(2, 'Bachelor of Science', 'B.Sc.', '4 years', 2022, 'CGPA', 3.80, 4.00, 0.95, 'tgerd', 'refdcs'),
(3, 'Bachelor of Science', 'B.Sc.', '4 years', 2022, 'CGPA', 3.80, 4.00, 0.95, 'fghj', 'fyuj');

-- --------------------------------------------------------

--
-- Table structure for table `pages_address_info`
--

CREATE TABLE `pages_address_info` (
  `id` bigint(20) NOT NULL,
  `domicile_district` varchar(100) NOT NULL,
  `domicile_taluka` varchar(100) NOT NULL,
  `union_council` varchar(100) NOT NULL,
  `domicile_no` varchar(100) NOT NULL,
  `prc_d_no` varchar(100) NOT NULL,
  `domicile_issuance_date` date NOT NULL,
  `prc_d_issuance_date` date NOT NULL,
  `domicile_urban_rural` varchar(10) NOT NULL,
  `domicile_original_duplicate` varchar(10) NOT NULL,
  `current_address` longtext NOT NULL,
  `postal_address` longtext NOT NULL,
  `permanent_address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages_address_info`
--

INSERT INTO `pages_address_info` (`id`, `domicile_district`, `domicile_taluka`, `union_council`, `domicile_no`, `prc_d_no`, `domicile_issuance_date`, `prc_d_issuance_date`, `domicile_urban_rural`, `domicile_original_duplicate`, `current_address`, `postal_address`, `permanent_address`) VALUES
(1, 'z', 'z', 'z', 'z', 'z', '2024-04-15', '2024-04-22', 'urban', 'original', 'hjmk', 'fgh', 'dfghj'),
(2, 'z', 'z', 'z', 'z', 'xs', '2024-04-14', '2024-04-22', 'urban', 'original', 'fgjhk', 'vgjhnm', 'xcgfg'),
(3, 'z', 'z', 'z', 'z', 'z', '2024-04-11', '2024-04-24', 'urban', 'original', 'jyhtrev', 'trfe', '6'),
(4, 'z', 'z', 'z', 'z', 'z', '2024-04-11', '2024-04-24', 'urban', 'original', 'jyhtrev', 'trfe', '6'),
(5, 'z', 'z', 'z', 'z', 'z', '2024-04-15', '2024-04-16', 'urban', 'original', 'dfghj', 'fghj', 'fghj'),
(6, 'z', 'z', 'z', 'z', 'xs', '2024-04-14', '2024-04-22', 'urban', 'original', 'fgjhk', 'vgjhnm', 'xcgfg'),
(7, 'zaaaaaaaaaaaaaaaaaaaaaaa', 'z', 'z', 'z', 'xs', '2024-04-14', '2024-04-22', 'urban', 'original', 'fgjhk', 'vgjhnm', 'xcgfg');

-- --------------------------------------------------------

--
-- Table structure for table `pages_employment_information`
--

CREATE TABLE `pages_employment_information` (
  `id` bigint(20) NOT NULL,
  `organization_name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages_employment_information`
--

INSERT INTO `pages_employment_information` (`id`, `organization_name`, `designation`, `start_date`, `end_date`) VALUES
(1, 'zain', 'zain', '2019-01-01', '2021-12-31'),
(2, 'zain', 'zain', '2019-01-01', '2021-12-31'),
(3, 'zain', 'zain', '2019-01-01', '2021-12-31'),
(4, 'zain', 'zain', '2019-01-01', '2021-12-31'),
(5, 'zain', 'zain', '2019-01-01', '2021-12-31'),
(7, 'zain', 'zain', '2019-01-01', '2021-12-31'),
(8, 'zain', 'zain', '2019-01-01', '2021-12-31'),
(9, 'tg4frd3es', 'r43edwqs', '2019-01-01', '2021-12-31'),
(10, 'zain', 'zain', '2019-01-01', '2021-12-31'),
(11, 'zain', 'zain', '2019-01-01', '2021-12-31'),
(12, 'zain', 'zain', '2019-01-01', '2021-12-31'),
(13, 'zain', 'zain', '2019-01-01', '2021-12-31'),
(14, 'fghjk', 'fgyhjk', '2019-01-01', '2021-12-31'),
(15, 'sdf', 'awsed', '2019-01-01', '2021-12-31'),
(16, 'z', 'z', '2019-01-01', '2021-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `pages_experience`
--

CREATE TABLE `pages_experience` (
  `id` bigint(20) NOT NULL,
  `organization` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages_license_data`
--

CREATE TABLE `pages_license_data` (
  `id` bigint(20) NOT NULL,
  `license_type` varchar(100) NOT NULL,
  `license_number` varchar(100) NOT NULL,
  `issue_date` date NOT NULL,
  `valid_upto` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages_license_data`
--

INSERT INTO `pages_license_data` (`id`, `license_type`, `license_number`, `issue_date`, `valid_upto`) VALUES
(1, 'x', 'x', '2024-04-27', '2024-04-18'),
(2, 'x', 'x', '2024-04-28', '2024-04-11'),
(3, 'x', 'x', '2024-04-28', '2024-04-11'),
(4, 'x', 'x', '2024-04-30', '2024-04-23'),
(5, 'x', 'x', '2024-04-30', '2024-04-23'),
(6, 'x', 'x', '2024-05-02', '2024-04-17'),
(7, 'x', 'x', '2024-05-02', '2024-04-17'),
(8, 'n', 'n', '2024-04-23', '2024-04-24');

-- --------------------------------------------------------

--
-- Table structure for table `pages_profile`
--

CREATE TABLE `pages_profile` (
  `id` bigint(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `cnic` varchar(15) NOT NULL,
  `mobile_number` varchar(12) NOT NULL,
  `email` varchar(254) NOT NULL,
  `father_or_husband_name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `marital_status` varchar(10) NOT NULL,
  `date_of_birth` date NOT NULL,
  `religion` varchar(50) NOT NULL,
  `is_government_servant` varchar(10) NOT NULL,
  `has_disability` varchar(10) NOT NULL,
  `domicile_district` varchar(100) NOT NULL,
  `domicile_province` varchar(100) NOT NULL,
  `postal_address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages_profile`
--

INSERT INTO `pages_profile` (`id`, `full_name`, `cnic`, `mobile_number`, `email`, `father_or_husband_name`, `gender`, `marital_status`, `date_of_birth`, `religion`, `is_government_servant`, `has_disability`, `domicile_district`, `domicile_province`, `postal_address`) VALUES
(1, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-01', 'z', 'True', 'on', 'z', '', 'zain'),
(2, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-01', 'z', 'True', 'True', 'z', '', 'zain'),
(3, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-04', 'z', 'on', 'on', 'z', '', 'zain'),
(4, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-04', 'z', 'on', 'on', 'z', '', 'zain'),
(5, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-04', 'z', 'on', 'on', 'z', '', 'zain'),
(6, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-04', 'z', 'on', 'on', 'z', '', 'zain'),
(7, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-04', 'z', 'on', 'on', 'z', '', 'zain'),
(8, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-04', 'z', 'on', 'on', 'z', '', 'zain'),
(9, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-04', 'z', 'on', 'on', 'z', '', 'zain'),
(10, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-04', 'z', 'on', 'on', 'z', '', 'zain'),
(11, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-04', 'z', 'on', 'on', 'z', '', 'zain'),
(12, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-04', 'z', 'on', 'on', 'z', '', 'zain'),
(13, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-04', 'z', 'on', 'on', 'z', '', 'zain'),
(14, 'zain', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-20', 'z', 'on', 'on', 'z', '', 'zain'),
(15, 'zain', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-20', 'z', 'on', 'on', 'z', '', 'zain'),
(16, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-15', 'z', 'on', 'on', 'z', '', 'zain'),
(17, 'admin', 'z', '123456', 'zain@Gmailcom', 'z', 'male', 'single', '2024-04-18', 'z', 'on', 'on', 'z', '', 'zain'),
(18, 'admin', 'z', '123456', 'zain@Gmailcom', '', 'male', 'single', '2024-05-03', 'z', 'on', 'on', 'z', '', 'zain'),
(19, 'admin', 'z', '123456', 'zain@Gmailcom', '', 'male', 'single', '2024-05-03', 'z', 'on', 'on', 'z', '', 'zain');

-- --------------------------------------------------------

--
-- Table structure for table `pages_project_application`
--

CREATE TABLE `pages_project_application` (
  `id` bigint(20) NOT NULL,
  `apply_for` varchar(255) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `last_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages_project_application`
--

INSERT INTO `pages_project_application` (`id`, `apply_for`, `project_title`, `last_date`) VALUES
(1, 'zain', 'ali', '2024-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_transaction`
--

CREATE TABLE `transactions_transaction` (
  `id` bigint(20) NOT NULL,
  `customer` varchar(150) NOT NULL,
  `transaction_date` date NOT NULL,
  `due_date` date NOT NULL,
  `total` decimal(20,2) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `pages_academic_information`
--
ALTER TABLE `pages_academic_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_address_info`
--
ALTER TABLE `pages_address_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_employment_information`
--
ALTER TABLE `pages_employment_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_experience`
--
ALTER TABLE `pages_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_license_data`
--
ALTER TABLE `pages_license_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_profile`
--
ALTER TABLE `pages_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_project_application`
--
ALTER TABLE `pages_project_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions_transaction`
--
ALTER TABLE `transactions_transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pages_academic_information`
--
ALTER TABLE `pages_academic_information`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages_address_info`
--
ALTER TABLE `pages_address_info`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages_employment_information`
--
ALTER TABLE `pages_employment_information`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pages_experience`
--
ALTER TABLE `pages_experience`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages_license_data`
--
ALTER TABLE `pages_license_data`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages_profile`
--
ALTER TABLE `pages_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pages_project_application`
--
ALTER TABLE `pages_project_application`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions_transaction`
--
ALTER TABLE `transactions_transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
