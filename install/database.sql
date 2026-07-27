-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 29, 2024 at 01:32 PM
-- Server version: 10.6.20-MariaDB-cll-lve
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialkart_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_type` enum('3','2') NOT NULL DEFAULT '2',
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_email` text DEFAULT NULL,
  `username` varchar(225) DEFAULT NULL,
  `password` text NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` varchar(999) NOT NULL,
  `mode` varchar(225) NOT NULL,
  `two_factor` enum('0','1') NOT NULL DEFAULT '0',
  `two_factor_secret_key` varchar(100) DEFAULT NULL,
  `ip_type` int(11) NOT NULL,
  `ip` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_type`, `admin_name`, `admin_email`, `username`, `password`, `telephone`, `register_date`, `login_date`, `login_ip`, `client_type`, `access`, `mode`, `two_factor`, `two_factor_secret_key`, `ip_type`, `ip`) VALUES
(1, '3', 'SUPER ADMIN', 'ownsmmpanel@gmail.com', 'admin', '2c6816268483f426de7766fb9a024fb1', '1234567890', '2024-12-24 18:37:59', '2024-12-27 11:08:31', '103.215.225.250', '2', '{\"admin_access\":1,\"users\":1,\"services\":1,\"update-prices\":1,\"bulk\":1,\"synced-logs\":1,\"orders\":1,\"subscriptions\":1,\"dripfeed\":1,\"tasks\":1,\"payments\":1,\"tickets\":1,\"additionals\":1,\"referral\":1,\"broadcast\":1,\"logs\":1,\"reports\":1,\"videop\":1,\"coupon\":1,\"child-panels\":1,\"updates\":1,\"appearance\":1,\"themes\":1,\"new_year\":1,\"pages\":1,\"news\":1,\"meta\":1,\"blog\":1,\"menu\":1,\"inte\":1,\"language\":1,\"files\":1,\"settings\":1,\"general_settings\":1,\"providers\":1,\"payments_settings\":1,\"bank_accounts\":1,\"modules\":1,\"subject\":1,\"payments_bonus\":1,\"currency-manager\":1,\"alert_settings\":1,\"site_count\":1,\"manager\":1,\"super_admin\":1}', 'sun', '0', NULL, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_constants`
--

CREATE TABLE `admin_constants` (
  `id` int(11) NOT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `paidRent` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admin_constants`
--

INSERT INTO `admin_constants` (`id`, `brand_logo`, `paidRent`) VALUES
(1, '{\"logo_url\":\"/ownsmmpanel/img/panel/9b8619251a19057cff70779273e95aa6.png\",\"width\":\"150\",\"height\":\"37\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `image_file` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(225) NOT NULL,
  `bank_sube` varchar(225) NOT NULL,
  `bank_hesap` varchar(225) NOT NULL,
  `bank_iban` text NOT NULL,
  `bank_alici` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `published_at` datetime NOT NULL,
  `image_file` varchar(200) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `blog_get` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulkedit`
--

CREATE TABLE `bulkedit` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `category_name_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `category_line` double NOT NULL,
  `category_type` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '2',
  `category_secret` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '2',
  `category_icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `is_refill` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1',
  `category_deleted` enum('0','1') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `childpanels`
--

CREATE TABLE `childpanels` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `domain` varchar(191) NOT NULL,
  `child_panel_currency` varchar(191) NOT NULL,
  `child_panel_username` varchar(191) NOT NULL,
  `child_panel_password` varchar(191) NOT NULL,
  `charged_amount` float NOT NULL,
  `child_panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL DEFAULT 'Pending',
  `renewal_date` date NOT NULL,
  `created_on` datetime NOT NULL,
  `child_panel_uqid` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) DEFAULT NULL,
  `admin_type` enum('1','2') NOT NULL DEFAULT '2',
  `password` text NOT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `balance` decimal(21,4) NOT NULL DEFAULT 0.0000,
  `spent` decimal(21,4) NOT NULL DEFAULT 0.0000,
  `balance_type` enum('1','2') NOT NULL DEFAULT '2',
  `debit_limit` double DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) DEFAULT NULL,
  `apikey` text NOT NULL,
  `tel_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `email_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` text DEFAULT NULL,
  `lang` varchar(255) NOT NULL DEFAULT 'tr',
  `timezone` double NOT NULL DEFAULT 0,
  `currency_type` varchar(10) DEFAULT NULL,
  `ref_code` text NOT NULL,
  `ref_by` text DEFAULT NULL,
  `change_email` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL DEFAULT 3,
  `currency` varchar(225) NOT NULL DEFAULT '1',
  `passwordreset_token` varchar(225) NOT NULL,
  `discount_percentage` int(11) NOT NULL,
  `broadcast_id` varchar(255) NOT NULL DEFAULT '0',
  `otp_type` int(11) NOT NULL,
  `otp_v` int(11) NOT NULL,
  `otp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_category`
--

CREATE TABLE `clients_category` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_price`
--

CREATE TABLE `clients_price` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients_service`
--

CREATE TABLE `clients_service` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_report`
--

CREATE TABLE `client_report` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `action` text NOT NULL,
  `report_ip` varchar(225) NOT NULL,
  `report_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(100) NOT NULL,
  `currency_name` varchar(50) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `currency_symbol` varchar(10) DEFAULT NULL,
  `symbol_position` varchar(10) DEFAULT 'left',
  `currency_rate` double NOT NULL,
  `currency_inverse_rate` double NOT NULL,
  `is_enable` tinyint(1) NOT NULL DEFAULT 0,
  `currency_hash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `currency_name`, `currency_code`, `currency_symbol`, `symbol_position`, `currency_rate`, `currency_inverse_rate`, `is_enable`, `currency_hash`) VALUES
(1, 'U.S. Dollar', 'USD', '$', 'left', 1, 1, 1, 'd618b89bc3339d25f73bd315481e557fa8dc4cf9'),
(3, 'Indian Rupee', 'INR', '₹', 'left', 85.177506771573, 0.011740188670722, 1, 'f923b619f184912cdd9ff4dd77b2b2285f31ad19'),
(15, 'Bangladeshi taka', 'BDT', '৳', 'left', 120.35169580857, 0.0083089813839479, 1, '6d2e04bab90efc7c786c74cce5e35907d4b9b676');

-- --------------------------------------------------------

--
-- Table structure for table `custom_settings`
--

CREATE TABLE `custom_settings` (
  `id` int(11) NOT NULL,
  `snow_data` text NOT NULL,
  `snow_data_array` text NOT NULL,
  `snow_status` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 - inactive , 2 - active',
  `start_count_parser` text NOT NULL,
  `orders_count_increase` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_settings`
--

INSERT INTO `custom_settings` (`id`, `snow_data`, `snow_data_array`, `snow_status`, `start_count_parser`, `orders_count_increase`) VALUES
(1, '\"snow\":{\"init\":false,\"options\":{\"particles\":{\"move\":{\"speed\":,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":10,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\":{\"init\":false,\"options\":{\"count\":100,\"speed\":1,\"images\":[],\"maxSize\":30,\"launches\":\"1\"}},\"garland\":{\"init\":false,\"options\":{\"type\":\"\",\"style\":\"\"}},\"fireworks\":{\"init\":false,\"options\":{\"delay\":{\"max\":30,\"min\":30},\"friction\":,\"launches\":1,}}', '{\"snow_fall\":\"true\",\"snowflakes\":\"20\",\"snow_speed\":\"3\",\"garlands\":\"true\",\"gar_shape\":\"apple\",\"gar_style\":\"style1\",\"fire_works\":\"true\",\"fire_size\":\"0.95\",\"fire_speed\":\"slow\",\"toy_size\":\"80\",\"toy_quantity\":\"100\",\"toy_speed\":\"6\",\"toy_launch\":\"infinite\"}', '1', '{\"none\":\"Catch from supplier\",\"instagram_follower\":\"Instagram followers\",\"instagram_photo\":\"Instagram likes\",\"instagram_comments\":\"Instagram comments\",\"youtube_views\":\"Youtube views\",\"youtube_likes\":\"Youtube likes\",\"youtube_comments\":\"Youtube comments\",\"youtube_subscribers\":\"Youtube subscribers\"}', '0:0');

-- --------------------------------------------------------

--
-- Table structure for table `decoration`
--

CREATE TABLE `decoration` (
  `id` int(11) NOT NULL,
  `snow_effect` int(11) NOT NULL,
  `snow_colour` text NOT NULL,
  `diwali_lights` int(11) NOT NULL,
  `video_link` text NOT NULL,
  `christmas_deco` varchar(5000) NOT NULL,
  `action_link` text NOT NULL,
  `pop_noti` int(11) NOT NULL,
  `pop_title` text NOT NULL,
  `pop_desc` text NOT NULL,
  `action_text` varchar(10) NOT NULL,
  `action_button` int(11) NOT NULL,
  `snow_fall` varchar(500) DEFAULT NULL,
  `garlands` text DEFAULT NULL,
  `fire_works` text DEFAULT NULL,
  `toys` text DEFAULT NULL,
  `snowflakes` int(11) NOT NULL,
  `snow_speed` int(11) NOT NULL,
  `gar_shape` text NOT NULL,
  `gar_style` text NOT NULL,
  `fire_size` varchar(100) NOT NULL,
  `fire_speed` text NOT NULL,
  `toy_size` int(11) NOT NULL,
  `toy_quantity` int(11) NOT NULL,
  `toy_speed` int(11) NOT NULL,
  `toy_launch` varchar(100) NOT NULL,
  `toy_a` varchar(50) NOT NULL,
  `toy_b` varchar(50) NOT NULL,
  `toy_c` varchar(50) NOT NULL,
  `toy_d` varchar(50) NOT NULL,
  `toy_e` varchar(50) NOT NULL,
  `toy_f` varchar(50) NOT NULL,
  `toy_g` varchar(50) NOT NULL,
  `toy_h` varchar(50) NOT NULL,
  `toy_i` varchar(50) NOT NULL,
  `toy_j` varchar(50) NOT NULL,
  `toy_k` varchar(50) NOT NULL,
  `psw_license` text NOT NULL,
  `toy_l` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`id`, `snow_effect`, `snow_colour`, `diwali_lights`, `video_link`, `christmas_deco`, `action_link`, `pop_noti`, `pop_title`, `pop_desc`, `action_text`, `action_button`, `snow_fall`, `garlands`, `fire_works`, `toys`, `snowflakes`, `snow_speed`, `gar_shape`, `gar_style`, `fire_size`, `fire_speed`, `toy_size`, `toy_quantity`, `toy_speed`, `toy_launch`, `toy_a`, `toy_b`, `toy_c`, `toy_d`, `toy_e`, `toy_f`, `toy_g`, `toy_h`, `toy_i`, `toy_j`, `toy_k`, `psw_license`, `toy_l`) VALUES
(1, 0, '#ffffff', 0, '', '\n<style>.particle-snow{position:fixed;top:0;left:0;width:100%;height:100%;z-index:1;pointer-events:none}.particle-snow canvas{position:fixed;top:0;left:0;width:100%;height:100%;pointer-events:none}.christmas-garland{text-align:center;white-space:nowrap;overflow:hidden;position:absolute;z-index:1;padding:0;pointer-events:none;width:100%;height:85px}.christmas-garland .christmas-garland__item{position:relative;width:28px;height:28px;border-radius:50%;display:inline-block;margin-left:20px}.christmas-garland .christmas-garland__item .shape{-webkit-animation-fill-mode:both;animation-fill-mode:both;-webkit-animation-iteration-count:infinite;animation-iteration-count:infinite;-webkit-animation-name:flash-1;animation-name:flash-1;-webkit-animation-duration:2s;animation-duration:2s}.christmas-garland .christmas-garland__item .apple{width:22px;height:22px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:8px}.christmas-garland .christmas-garland__item .pear{width:12px;height:28px;border-radius:50%;margin-left:auto;margin-right:auto;margin-top:6px}.christmas-garland .christmas-garland__item:nth-child(2n+1) .shape{-webkit-animation-name:flash-2;animation-name:flash-2;-webkit-animation-duration:.4s;animation-duration:.4s}.christmas-garland .christmas-garland__item:nth-child(4n+2) .shape{-webkit-animation-name:flash-3;animation-name:flash-3;-webkit-animation-duration:1.1s;animation-duration:1.1s}.christmas-garland .christmas-garland__item:nth-child(odd) .shape{-webkit-animation-duration:1.8s;animation-duration:1.8s}.christmas-garland .christmas-garland__item:nth-child(3n+1) .shape{-webkit-animation-duration:1.4s;animation-duration:1.4s}.christmas-garland .christmas-garland__item:before{content:\"\";position:absolute;background:#222;width:10px;height:10px;border-radius:3px;top:-1px;left:9px}.christmas-garland .christmas-garland__item:after{content:\"\";top:-9px;left:14px;position:absolute;width:52px;height:18px;border-bottom:solid #222 2px;border-radius:50%}.christmas-garland .christmas-garland__item:last-child:after{content:none}.christmas-garland .christmas-garland__item:first-child{margin-left:-40px}</style>\n<!-- developed by Raj Patel-->\n      \n<!-- developed by Raj Patel-->  \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/libs/jquery/1.12.4/jquery.min.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/flpbonhmkq9tsp29.js\">\n          </script>\n    \n        \n<!-- developed by Raj Patel-->\n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/a4kdpfesx15uh7ae.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/596z6ya3isgxcipy.js\">\n          </script>\n    \n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/39j8e9yrxs283d1x.js\">\n          </script>\n    \n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/global/33srijdbqcgk6lsz.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/wxbh27w4jdzpslxn.js\">\n          </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" src=\"https://cdn.mypanel.link/52pp7z/angedasgma230hxr.js\">\n          </script>\n    \n        \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n    <script type=\"text/javascript\" >\n       window.modules.layouts = {\"theme_id\":1,\"auth\":0,\"live\":true};     </script>\n    \n        \n    <script type=\"text/javascript\" >\n       window.modules.signin = [];     </script>\n    \n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n<!-- developed by Raj Patel-->\n        \n    <script type=\"text/javascript\" >\n       document.addEventListener(\'DOMContentLoaded\', function() { \nvar newYearEvent = new window.NewYearEvent({\"snow\":{\"init\":true,\"options\":{\"particles\":{\"move\":{\"speed\":3,\"bounce\":false,\"enable\":true,\"random\":false,\"attract\":{\"enable\":false,\"rotateX\":600,\"rotateY\":1200},\"out_mode\":\"out\",\"straight\":false,\"direction\":\"bottom\"},\"size\":{\"anim\":{\"sync\":false,\"speed\":40,\"enable\":false,\"size_min\":0.1},\"value\":5,\"random\":true},\"color\":{\"value\":\"#fff\"},\"number\":{\"value\":100,\"density\":{\"enable\":true,\"value_area\":650}},\"opacity\":{\"anim\":{\"sync\":false,\"speed\":1,\"enable\":true,\"opacity_min\":0.9},\"value\":0.9,\"random\":true},\"line_linked\":{\"color\":\"#ffffff\",\"width\":1,\"enable\":false,\"opacity\":0.8,\"distance\":500}},\"interactivity\":{\"modes\":{\"bubble\":{\"size\":4,\"speed\":3,\"opacity\":1,\"distance\":400,\"duration\":0.3},\"repulse\":{\"speed\":3,\"distance\":200,\"duration\":0.4}},\"events\":{\"resize\":true,\"onclick\":{\"mode\":\"repulse\",\"enable\":true},\"onhover\":{\"mode\":\"bubble\",\"enable\":false}},\"detect_on\":\"window\"},\"retina_detect\":true}},\"toys\"', '', 0, '', '', '', 0, 'true', NULL, NULL, NULL, 20, 3, 'apple', 'style1', '1.02', 'fast', 50, 20, 1, 'infinite', '', '', '', '', '', '1', '1', '', '', '1', '1', 'dukesmm.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `earn`
--

CREATE TABLE `earn` (
  `earn_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `link` text NOT NULL,
  `earn_note` text NOT NULL,
  `status` enum('Pending','Under Review','Funds Granted','Rejected','Not Eligible') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `link`, `date`) VALUES
(1, NULL, 'https://socialkart.in/ownsmmpanel/img/files/49b8791487c504ebe6946f6288c38067.png', '2024-12-24 20:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `General_options`
--

CREATE TABLE `General_options` (
  `id` int(11) NOT NULL,
  `coupon_status` enum('1','2') NOT NULL DEFAULT '1',
  `updates_show` enum('1','2') NOT NULL DEFAULT '1',
  `panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `massorder` enum('1','2') NOT NULL DEFAULT '2',
  `balance_format` enum('0.0','0.00','0.000','0.0000') NOT NULL DEFAULT '0.0',
  `currency_format` enum('0','2','3','4') NOT NULL DEFAULT '3',
  `ticket_system` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `General_options`
--

INSERT INTO `General_options` (`id`, `coupon_status`, `updates_show`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `massorder`, `balance_format`, `currency_format`, `ticket_system`) VALUES
(1, '', '2', 'Active', 1024, 20, '', '', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `integrations`
--

CREATE TABLE `integrations` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `icon_url` varchar(225) NOT NULL,
  `code` text NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `integrations`
--

INSERT INTO `integrations` (`id`, `name`, `description`, `icon_url`, `code`, `visibility`, `status`) VALUES
(1, 'Beamer', 'Announce updates and get feedback with in-app notification center, widgets and changelog', 'ownsmmpanel/img/integrations/Beamer.svg', '', 1, 1),
(2, 'Getsitecontrol', 'It helps you prevent website visitors from leaving your website without taking any action.', 'ownsmmpanel/img/integrations/Getsitecontrol.svg', '', 1, 1),
(3, 'Google Analytics', 'Statistics and basic analytical tools for search engine optimization (SEO) and marketing purposes', 'ownsmmpanel/img/integrations/Google%20Analytics.svg', '', 1, 1),
(4, 'Google Tag manager', 'Manage all your website tags without editing the code using simple tag management solutions', 'ownsmmpanel/img/integrations/Google%20Tag%20manager.svg', '', 1, 1),
(5, 'JivoChat', 'All-in-one business messenger to talk to customers: live chat, phone, email and social', 'ownsmmpanel/img/integrations/JivoChat.svg', '', 1, 1),
(6, 'Onesignal', 'Leader in customer engagement, empowers mobile push, web push, email, in-app messages', 'ownsmmpanel/img/integrations/Onesignal.svg', '', 1, 1),
(7, 'Push alert', 'Increase reach, revenue, retarget users with Push Notifications on desktop and mobile', 'ownsmmpanel/img/integrations/Push%20alert.svg', '', 1, 1),
(8, 'Smartsupp', 'Live chat, email inbox and Facebook Messenger in one customer messaging platform', 'ownsmmpanel/img/integrations/Smartsupp.svg', '', 1, 1),
(9, 'Tawk.to', 'Track and chat with visitors on your website, mobile app or a free customizable page', 'ownsmmpanel/img/integrations/Tawk.to.svg', '', 1, 1),
(10, 'Tidio', 'Communicator for businesses that keep live chat, chatbots, Messenger and email in one place', 'ownsmmpanel/img/integrations/Tidio.svg', '', 1, 1),
(11, 'Zendesk Chat', 'Helps respond quickly to customer questions, reduce wait times and increase sales', 'ownsmmpanel/img/integrations/Zendesk%20Chat.svg', '', 1, 1),
(12, 'Getbutton.io', 'Chat with website visitors through popular messaging apps. Whatsapp, messenger etc. contact button.', 'ownsmmpanel/img/integrations/Getbutton.svg', '', 1, 1),
(13, 'Google reCAPTCHA v2', 'It uses an advanced risk analysis engine and adaptive challenges to prevent malware from engaging in abusive activities on your website.', 'ownsmmpanel/img/integrations/reCAPTCHA.svg', '', 1, 1),
(14, 'Whatsapp', 'Whatsapp is for Personal Support of your Users', 'ownsmmpanel/img/integrations/whatsapp.svg', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuponlar`
--

CREATE TABLE `kuponlar` (
  `id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `adet` int(11) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kupon_kullananlar`
--

CREATE TABLE `kupon_kullananlar` (
  `id` int(11) NOT NULL,
  `uye_id` int(11) NOT NULL,
  `kuponadi` varchar(255) NOT NULL,
  `tutar` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language_name` varchar(225) NOT NULL,
  `language_code` varchar(225) NOT NULL,
  `language_type` enum('2','1') NOT NULL DEFAULT '2',
  `default_language` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `language_code`, `language_type`, `default_language`) VALUES
(1, 'English', 'en', '2', '1'),
(2, 'Arabic', 'ar', '2', '0'),
(3, 'Hindi', 'hi', '2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `Mailforms`
--

CREATE TABLE `Mailforms` (
  `id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `message` varchar(225) NOT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1',
  `header` varchar(225) NOT NULL,
  `footer` varchar(225) NOT NULL,
  `type` enum('Admins','Users') NOT NULL DEFAULT 'Users'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `menu_name_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `menu_line` double NOT NULL,
  `type` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '2',
  `slug` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '2',
  `icon` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `menu_status` enum('1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1',
  `visible` enum('Internal','External') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'Internal',
  `active` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tiptext` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `menu_name_lang`, `menu_line`, `type`, `slug`, `icon`, `menu_status`, `visible`, `active`, `tiptext`) VALUES
(1, 'NEW ORDER', '{\"en\":\"NEW ORDER\",\"ar\":\"\",\"hi\":\"\"}', 2, '2', '/', 'fas fa-shopping-bag', '1', 'Internal', 'neworder', ''),
(3, 'ORDERS', '{\"en\":\"ORDERS\",\"ar\":\"\",\"hi\":\"\"}', 3, '2', '/orders', 'fas fa-box-open', '1', 'Internal', 'orders', ''),
(6, 'SERVICES', '{\"en\":\"SERVICES\",\"ar\":\"\",\"hi\":\"\"}', 6, '2', '/services', 'fas fa-server', '1', 'Internal', 'services', ''),
(7, 'ADD FUNDS', '{\"en\":\"ADD FUNDS\",\"ar\":\"\",\"hi\":\"\"}', 5, '2', '/addfunds', 'fab fa-cc-amazon-pay', '1', 'Internal', 'addfunds', ''),
(8, 'API DOCS', '{\"en\":\"API DOCS\",\"ar\":\"\",\"hi\":\"\"}', 12, '2', '/api', 'fab fa-audible', '1', 'Internal', 'api', ''),
(9, 'TICKETS', '{\"en\":\"TICKETS\",\"ar\":\"\",\"hi\":\"\"}', 10, '2', '/tickets', 'fas fa-headset', '1', 'Internal', 'tickets', ''),
(10, 'CHILD PANEL', '{\"en\":\"CHILD PANEL\",\"ar\":\"\",\"hi\":\"\"}', 7, '2', '/child-panels', 'fas fa-child', '1', 'Internal', 'child-panels', 'Shown only if child panels selling enabled'),
(11, 'REFER & EARN', '{\"en\":\"REFER & EARN\",\"ar\":\"\",\"hi\":\"\"}', 8, '2', '/refer', 'fas fa-bezier-curve', '1', 'Internal', 'refer', 'Shown only if affiliate system enabled for use'),
(14, 'SIGNUP', '{\"en\":\"SIGNUP\",\"ar\":\"\",\"hi\":\"\"}', 2, '2', '/signup', 'fas fa-arrow-right', '1', 'External', 'signup', 'Shown only if Signup system enabled for use'),
(17, 'UPDATES', '{\"en\":\"UPDATES\",\"ar\":\"\",\"hi\":\"\"}', 9, '2', '/updates', 'fas fa-bell', '1', 'Internal', '', 'Shown only if Updates System enabled'),
(24, 'SERVICES', '{\"en\":\"SERVICES\",\"ar\":\"\",\"hi\":\"\"}', 5, '2', '/services', 'fas fa-file-alt', '1', 'External', 'services', ''),
(32, 'BLOGS', '{\"en\":\"BLOGS\",\"ar\":\"\",\"hi\":\"\"}', 11, '2', '/blog', 'navbar-icon fab fa-blogger-b', '1', 'Internal', 'blog', ''),
(41, 'REFILL', '{\"en\":\"REFILL\",\"ar\":\"\",\"hi\":\"\"}', 4, '2', '/refill', 'fab fa-accusoft', '1', 'Internal', 'refill', ''),
(49, 'TERMS', '{\"en\":\"TERMS\",\"ar\":\"\",\"hi\":\"\"}', 16, '2', '/terms', 'fas fa-check-circle', '1', 'External', 'terms', ''),
(50, 'DASHBOARD', '{\"en\":\"DASHBOARD\",\"ar\":\"\",\"hi\":\"\"}', 1, '2', '/dashboard', 'fas fa-chart-line', '1', 'Internal', 'dashboard', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_icon` varchar(225) NOT NULL,
  `news_title` varchar(225) NOT NULL,
  `news_title_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `news_content` varchar(225) NOT NULL,
  `news_content_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `news_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications_popup`
--

CREATE TABLE `notifications_popup` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` text DEFAULT NULL,
  `action_link` text DEFAULT NULL,
  `isAllUser` enum('1','0') NOT NULL DEFAULT '0',
  `expiry_date` date NOT NULL,
  `status` enum('1','2','0') NOT NULL DEFAULT '1',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `action_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `api_orderid` int(11) NOT NULL DEFAULT 0,
  `order_error` text NOT NULL,
  `order_detail` text DEFAULT NULL,
  `order_api` int(11) NOT NULL DEFAULT 0,
  `api_serviceid` int(11) NOT NULL DEFAULT 0,
  `api_charge` double NOT NULL DEFAULT 0,
  `api_currencycharge` double DEFAULT 1,
  `order_profit` double NOT NULL,
  `order_quantity` double NOT NULL,
  `order_extras` text NOT NULL,
  `order_charge` double NOT NULL,
  `dripfeed` enum('1','2','3') DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_id` double NOT NULL DEFAULT 0,
  `subscriptions_id` double NOT NULL DEFAULT 0,
  `subscriptions_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_totalcharges` double DEFAULT NULL,
  `dripfeed_runs` double DEFAULT NULL,
  `dripfeed_delivery` double NOT NULL DEFAULT 0,
  `dripfeed_interval` double DEFAULT NULL,
  `dripfeed_totalquantity` double DEFAULT NULL,
  `dripfeed_status` enum('active','completed','canceled') NOT NULL DEFAULT 'active',
  `order_url` text NOT NULL,
  `order_start` double NOT NULL DEFAULT 0,
  `order_finish` double NOT NULL DEFAULT 0,
  `order_remains` double NOT NULL DEFAULT 0,
  `order_create` datetime NOT NULL,
  `order_status` enum('pending','inprogress','completed','partial','processing','canceled') NOT NULL DEFAULT 'pending',
  `subscriptions_status` enum('active','paused','completed','canceled','expired','limit') NOT NULL DEFAULT 'active',
  `subscriptions_username` text DEFAULT NULL,
  `subscriptions_posts` double DEFAULT NULL,
  `subscriptions_delivery` double NOT NULL DEFAULT 0,
  `subscriptions_delay` double DEFAULT NULL,
  `subscriptions_min` double DEFAULT NULL,
  `subscriptions_max` double DEFAULT NULL,
  `subscriptions_expiry` date DEFAULT NULL,
  `last_check` datetime NOT NULL,
  `order_where` enum('site','api') NOT NULL DEFAULT 'site',
  `refill_status` enum('Pending','Refilling','Completed','Rejected','Error') NOT NULL DEFAULT 'Pending',
  `is_refill` enum('1','2') NOT NULL DEFAULT '1',
  `refill` varchar(225) NOT NULL DEFAULT '1',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'true',
  `api_refillid` double NOT NULL DEFAULT 0,
  `avg_done` enum('0','1') NOT NULL DEFAULT '1',
  `order_increase` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `page_get` varchar(225) NOT NULL,
  `page_content` text NOT NULL,
  `page_status` enum('1','2') NOT NULL DEFAULT '1',
  `active` enum('1','2') NOT NULL DEFAULT '1',
  `seo_title` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_keywords` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `seo_description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `last_modified` datetime NOT NULL,
  `del` varchar(255) NOT NULL DEFAULT '1',
  `page_content2` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `page_get`, `page_content`, `page_status`, `active`, `seo_title`, `seo_keywords`, `seo_description`, `last_modified`, `del`, `page_content2`) VALUES
(2, 'Add funds', 'addfunds', '', '1', '1', '', '', '', '2024-12-23 06:19:28', '2', ''),
(787, 'Login', 'auth', '<h1>Buy Cheap Social Media Followers, Likes, Views, Shares Instantly.</h1>\r\n\r\n<div class=\"features\">\r\n  <span><i class=\"fas fa-chevron-right\"></i></span>\r\n<span> Orders are completed fully automatically and quickly.</span><br>\r\n  <span><i class=\"fas fa-chevron-right\"></i> We provide instant support for your questions and problems 24 hours a day, 7 days a week.</span><br>\r\n  <span><i class=\"fas fa-chevron-right\"></i> SMM Panel meaning is Cheapest SMM and SEO Services Reseller Panel Script or website, where People Buy-Sell Social Media Marketing Services such as Facebook Fans, Twitter followers, Instagram Followers, YouTube watch time Views, Website Traffic, TikTok Likes, and more significant associations.</span></div>\r\n', '1', '1', 'SMMPanel - Best & Super Fast SMM Panel', 'SMMPanel - #1 SMM Reseller Panel - Best SMM Panel for Resellers. Also well known for TOP SMM Panel and Cheap SMM Panel for all kind of Social Media Marketing Services. SMM Panel for Facebook, Instagram, YouTube and more servi', 'smm panel, smm reseller panel, smm provider panel, reseller panel, instagram panel, resellerpanel, social media reseller panel, smmpanel, panelsmm, smm, panel, socialmedia, instagram reseller panel, smm panel india, best smm ', '2024-12-27 11:21:51', '2', ''),
(9, 'New Order', 'neworder', '', '1', '1', 'New Order', '', '', '2024-12-29 01:31:17', '2', ''),
(14, 'Terms', 'terms', '<h2 class=\"mb-5\">Terms &amp; Conditions of SMMPanel</h2> 																				 <p>The use of services provided by SMMPanel (<b> SMM Panel  </b>) Established the agreement to these terms. By registering or using our services you agree that you have read and fully understood the following terms of Service and SMMPanel will not be help liable for loss in any way for users who have not read the below terms of service.</p>           <b>Delivery Policy</b>            <p> ● By placing an order with <b>SMMPanel</b>, you automatically accept all the below-listed term of services whether you read them or not.</p>            <p> ● We reserve the right to change these terms of service without notice. You are expected to read all terms of service before placing every order to ensure you are up to date with any changes or any future changes. </p> <p> ● You will only use the <b>SMMPanel</b> website in a manner which follows all agreements made with <b>Soundcloud/Vine/Pinterest/Youtube/other social media site</b> on their individual Terms of Service page.</p> <p> ● <b>SMMPanel</b> rates are subject to change at any time without notice. The terms stay in effect in the case of rate changes.</p> <p> ● <b>SMMPanel</b>( Digital SMMPanel ) does not guarantee a delivery time for any services as its depend on the services order quantity. We offer our best estimation for when the order will be delivered. This is only an estimation and <b>SMMPanel</b> will not refund orders that are processing if you feel they are taking too long. </p> <p> ● <b>SMMPanel</b> tries hard to deliver exactly what is expected of us by our resellers. In this case, we reserve the right to change a service type if we deem it necessary to complete an order. </p> <p> ● <b>SMMPanel</b> Always provide the amount mentioned in Service Descriptions , But Remember , If Incase there is Any Update in Any Social Media Platforms then the Drop Ratios of NON DROP or any Guarantee can be Changed , And SMMPanel cant be Responsible for this.  </p>             <b>Disclaimer:</b>           <p><b>SMMPanel</b> will not be responsible for any damages you or your business may suffer.</p>           <b>Liabilities:</b>           <p><b>SMMPanel</b> is in no way liable for any account suspension or picture deletion done by Instagram or Twitter or Facebook or YouTube or Other Social Media.</p>           <br> 	<h2 class=\"mb-5\">Privacy Policy</h2> 	<p> ● This policy covers how we use your personal information. We take your privacy seriously and will take all measures to protect your personal information.  Any personal information received will only be used to fill your order. We will not sell or redistribute your personal information to anyone. All personal information is encrypted and saved in secure servers. </p> 			  <h2 class=\"mb-5\">Refund Policy</h2> 			 													<p>No refunds will be made to your payment method. After a deposit has been completed, there is no way to reverse it. You must use your balance on orders from SMMPanel</p>           <p>You agree that once you complete a payment, you will not file a dispute or a chargeback against us for any reason.</p>           <p>If you file a dispute or charge-back against us after a deposit, we reserve the right to terminate all future orders, ban you from our site. We also reserve the right to take away any followers or likes we delivered to your or your clients Instagram/Facebook/Twitter or other social media account.</p>           <p>Orders placed in SMMPanel will not be refunded or canceled after they are placed.You will receive a refund credit to your SMMPanel account if the order is non deliverable</p>           <p>Misplaced or Private account orders will not qualify for a refund. Be sure to confirm each and every order before placing it.</p>           <p>Wrong Links Orders cant be Refunded , Once Order is Placed !!</p>           <p>Fraudulent activity such as using unauthorized or stolen credit cards will lead to termination of your account. There are no exceptions.</p>           <p>Please do not use more than one server at the same time for the same page. We cannot give you correct followers/likes number in that case. We will not refund for these orders.</p> 										 								 											<h2 class=\"mb-5\">About Services</h2> 											<div class=\"read-text\"> 												 																	<p> ● <b>SMMPanel</b> will only be used to promote your YouTube or Instagram or Telegram or Pinterest or Social account and help boost your \"Appearance\" only. </p>  <p> ● We <b>DO NOT</b> guarantee your new followers will interact with you, we simply <b>guarantee</b> you to get the followers you pay for. </p>  <p> ● We <b>DO NOT</b> guarantee 100% of our accounts will have a profile picture, full bio and uploaded pictures, although we strive to make this the reality for all accounts. </p>  <p> ● We <b>DO NOT</b> guarantee 100% of our accounts will have a profile picture, full bio and uploaded pictures, although we strive to make this the reality for all accounts. </p>  <p> ● You will not upload anything into the <b>SMM Panel</b> site including nudity or any material that is not accepted or suitable for the YouTube or Instagram or Telegram or Pinterest or Social Media community. </p>  <b> ●</b> If your page had 100k+ followers/likes/views already before you order us, it will not cover refill protection, even if you order for refill server from us, as its not possible to understand from where you lost the followers/likes/views.   			</div>', '1', '1', 'Terms', 'smm panel', 'smm panel', '2024-12-27 11:09:21', '2', ''),
(789, 'Mass Order', 'massorder', '', '1', '1', '', '', '', '2022-02-07 08:43:06', '2', ''),
(790, 'Orders', 'orders', '', '1', '1', '', '', '', '2022-02-07 08:53:20', '2', ''),
(791, 'Services', 'services', '', '1', '1', '', '', '', '2024-12-23 06:23:53', '2', ''),
(792, 'Tickets', 'tickets', '', '1', '1', '', '', '', '2022-01-26 07:22:09', '2', ''),
(793, 'API', 'api', '', '1', '1', '', '', '', '2022-01-24 07:21:07', '2', ''),
(794, 'Signup', 'signup', '', '1', '1', '', '', '', '2024-12-23 06:24:13', '2', ''),
(795, 'Blog', 'blog', '', '1', '1', '', '', '', '2024-11-13 05:02:42', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `panel_categories`
--

CREATE TABLE `panel_categories` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '1 -> ENABLE, 0 -> DISABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panel_info`
--

CREATE TABLE `panel_info` (
  `panel_id` int(11) NOT NULL,
  `panel_domain` text NOT NULL,
  `panel_plan` text NOT NULL,
  `panel_status` enum('Pending','Active','Frozen','Suspended') NOT NULL,
  `panel_orders` int(11) NOT NULL,
  `panel_thismonthorders` int(11) NOT NULL,
  `date_created` datetime NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `renewal_date` datetime NOT NULL,
  `panel_type` enum('Child','Main') NOT NULL DEFAULT 'Main'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `panel_info`
--

INSERT INTO `panel_info` (`panel_id`, `panel_domain`, `panel_plan`, `panel_status`, `panel_orders`, `panel_thismonthorders`, `date_created`, `api_key`, `renewal_date`, `panel_type`) VALUES
(1, 'yourpanel.com', 'A', 'Active', 0, 0, '2022-01-24 10:58:08', '0', '2025-02-23 10:58:08', 'Main');

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `methodId` int(11) NOT NULL,
  `methodName` varchar(300) DEFAULT NULL,
  `methodLogo` varchar(200) DEFAULT NULL,
  `methodVisibleName` varchar(300) DEFAULT NULL,
  `methodCallback` varchar(100) DEFAULT NULL,
  `methodMin` int(11) NOT NULL DEFAULT 1,
  `methodMax` int(11) NOT NULL DEFAULT 1,
  `methodFee` float NOT NULL DEFAULT 0,
  `methodBonusPercentage` float NOT NULL DEFAULT 0,
  `methodBonusStartAmount` int(11) NOT NULL DEFAULT 0,
  `methodCurrency` varchar(3) DEFAULT NULL,
  `methodStatus` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 -> off, 1 -> on',
  `methodExtras` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `methodPosition` int(11) DEFAULT NULL,
  `methodInstructions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymentmethods`
--

INSERT INTO `paymentmethods` (`methodId`, `methodName`, `methodLogo`, `methodVisibleName`, `methodCallback`, `methodMin`, `methodMax`, `methodFee`, `methodBonusPercentage`, `methodBonusStartAmount`, `methodCurrency`, `methodStatus`, `methodExtras`, `methodPosition`, `methodInstructions`) VALUES
(1, 'PayTM Checkout', 'ownsmmpanel/img/payments/paytm.svg', 'PayTM Checkout', 'payTMCheckout', 1, 100000, 0, 0, 0, 'INR', '0', '{\"merchantId\":\"\",\"merchantKey\":\"\"}', 3, ''),
(2, 'PayTM Merchant', 'ownsmmpanel/img/payments/paytmqr.svg', 'PayTM', 'payTMMerchant', 1, 50, 0, 0, 0, 'INR', '0', '{\"merchantId\":\"\"}', 1, '&lt;p class=&quot;ql-align-center&quot;&gt;&lt;br&gt;&lt;/p&gt;'),
(3, 'Perfect Money', 'ownsmmpanel/img/payments/perfect_money.svg', 'Perfect Money', 'perfectMoney', 10, 1000, 3, 0, 0, 'USD', '0', '{\"accountNumber\":\"\",\"alternatePassPhrase\":\"\"}', 1, ''),
(4, 'Coinbase Commerce', 'ownsmmpanel/img/payments/coinbase.svg', 'Coinbase Commerce', 'coinbaseCommerce', 1, 1000, 0, 0, 0, 'USD', '0', '{\"APIKey\":\"\"}', 1, NULL),
(5, 'Kashier', 'ownsmmpanel/img/payments/kashier.svg', 'Kashier', 'kashier', 1, 1000, 0, 0, 0, 'USD', '0', '{\"MID\":\"\",\"APIKey\":\"\",\"mode\":\"live\"}', 3, NULL),
(6, 'Razorpay', 'ownsmmpanel/img/payments/razorpay.svg', 'Razorpay', 'razorPay', 1, 10000, 0, 0, 0, 'INR', '0', '{\"APIPublicKey\":\"\",\"APISecretKey\":\"\"}', 4, ''),
(7, 'PhonePe (Automatic)', 'ownsmmpanel/img/payments/phonepe.svg', 'Phonepe', 'phonepe', 1, 10000, 0, 0, 0, 'INR', '0', '{\"email\":false,\"password\":\"\"}', 1, ''),
(8, 'Easypaisa (Automatic)', 'ownsmmpanel/img/payments/easypaisa.svg', 'Easypaisa (Automatic)', 'easypaisa', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"email\":\"\",\"password\":\"\",\"senderEmail\":\"\",\"emailSubject\":\"easypaisa\"}', 1, NULL),
(9, 'Jazzcash (Automatic)', 'ownsmmpanel/img/payments/jazzcash.svg', 'Jazzcash (Automatic)', 'jazzcash', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"email\":\"\",\"password\":\"\",\"senderEmail\":\"\",\"emailSubject\":\"jazzcash\"}', 2, NULL),
(10, 'Instamojo', 'ownsmmpanel/img/payments/instamogo.svg', 'Instamojo', 'instamojo', 1, 1000, 0, 0, 0, 'INR', '0', '{\"APIKey\":\"\",\"authToken\":\"\"}', 3, NULL),
(11, 'Cashmaal', 'ownsmmpanel/img/payments/cashmaal.svg', 'Cashmaal', 'cashmaal', 1, 50000, 0, 0, 0, 'PKR', '0', '{\"webId\":\"\"}', 1, ''),
(12, 'Alipay', 'ownsmmpanel/img/payments/alipay.svg', 'Alipay', 'alipay', 1, 10000, 0, 0, 0, 'USD', '0', '{\"partnerId\":\"\",\"privateKey\":\"\"}', 1, NULL),
(13, 'PayU', 'ownsmmpanel/img/payments/payu.svg', 'PayU', 'payU', 1, 10000, 0, 0, 0, 'INR', '0', '{\"merchantKey\":\"\",\"merchantSalt\":\"\"}', 1, NULL),
(14, 'UpiApi', 'ownsmmpanel/img/payments/upiapi.svg', 'UpiApi', 'upiapi', 1, 10000, 0, 0, 0, 'INR', '0', '{\"productionAPIToken\":\"\",\"productionAPISecretKey\":\"\"}', 4, ''),
(15, 'Opay Express Checkout', 'ownsmmpanel/img/payments/opay.svg', 'Opay Express Checkout', 'opay', 1, 10000, 0, 0, 0, 'USD', '0', '{\"merchantId\":\"\",\"publicKey\":\"\",\"secretKey\":\"\"}', 8, ''),
(16, 'Flutterwave', 'ownsmmpanel/img/payments/Flutterwave.svg', 'Flutterwave', 'flutterwave', 1, 1000, 0, 0, 0, 'USD', '0', '{\"secretKey\":\"\"}', 4, ''),
(17, 'Stripe', 'ownsmmpanel/img/payments/stripe.svg', 'Credit Card', 'stripe', 1, 1000, 0, 0, 0, 'USD', '0', '{\"publishableKey\":\"\",\"secretKey\":\"\"}', 1, ''),
(18, 'Payeer', 'ownsmmpanel/img/payments/payeer.svg', 'Payeer', 'payeer', 1, 1000, 0, 0, 0, 'USD', '0', '{\"shopId\":\"\",\"secretKey\":\"\"}', 2, ''),
(22, 'bharatpe', 'ownsmmpanel/img/payments/BharatPay.png', 'QR UPI ', 'bharatpe', 1, 100, 0, 0, 0, 'INR', '0', '{\"merchantId\":\"\",\"token\":\"\"}', 2, '&lt;p&gt;Wait&lt;/p&gt;'),
(24, 'Binance Pay', 'ownsmmpanel/img/payments/manual.svg', 'Binance Pay ( Auto )', 'binance', 5, 10000, 1, 0, 0, 'USD', '0', '{\"binance_pay_secret\":\"muwyrk2k68r841ptoemkkxsvgdhsv2izkzmyxwwzugcggfalfdtrfiywkfdzmytb\",\"binance_pay_key\":\"jhy2xe3rgsvsslydw8on72uzlplkoewroavxwwckzzhhpixcxhkyrvwtevlzwdja\",\"currency\":\"USDT\"}', 3, '&lt;p class=&quot;ql-align-justify&quot;&gt;Binance ဖြင့် အနည်းဆုံး &lt;span style=&quot;background-color: rgb(255, 235, 204);&quot;&gt;5$&lt;/span&gt; မှစထည့်နိုင်ပြီး Website အတွင်း Binance ဖြင့်ငွေခြေပြီးပါက Funds ချက်ချင်းတန်းရောက်ပါတယ်✅&lt;/p&gt;&lt;p class=&quot;ql-align-justify&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p class=&quot;ql-align-justify&quot;&gt;With Binance, you can deposit at least $5, and after making a deposit with Binance on the website, the funds are immediately available✅&lt;/p&gt;'),
(100, 'Manual One', 'ownsmmpanel/img/payments/manual.svg', 'Manual One', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 5, NULL),
(101, 'Manual Two', 'ownsmmpanel/img/payments/manual.svg', 'Binance ( Manual )', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 3, '&lt;p&gt;&lt;img src=&quot;data:image/png;base64,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&quot; height=&quot;100&quot; width=&quot;100&quot;&gt;&lt;/p&gt;&lt;p&gt;Binance ဖြင့်အနည်းဆုံး 5$ မှစထည့်နိုင်ပါသည်၊&lt;/p&gt;&lt;p&gt;You can pay directly to our &lt;span style=&quot;background-color: rgb(255, 255, 0);&quot;&gt;Binance account&lt;/span&gt; with &lt;span style=&quot;background-color: rgb(255, 255, 0);&quot;&gt;0%&lt;/span&gt; fee&lt;/p&gt;&lt;p&gt;We accept all &lt;span style=&quot;background-color: rgb(255, 255, 0);&quot;&gt;cryptocurrencies&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Add funds with this method can require up to 1 Hours&lt;/p&gt;&lt;p&gt;After sending Payment &lt;span style=&quot;background-color: rgb(255, 255, 0);&quot;&gt;Contact Telegram @officialmakeWorld&lt;/span&gt; and Inform us we will add funds in 0-1Hours&lt;/p&gt;&lt;p&gt;⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️⬇️&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;background-color: rgb(255, 255, 0);&quot;&gt;Binance Pay ID: &lt;/span&gt;903690161&lt;/p&gt;'),
(102, 'Manual Three', 'ownsmmpanel/img/payments/manual.svg', 'MANUL', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 4, ''),
(103, 'Manual Four', 'ownsmmpanel/img/payments/manual.svg', 'MANUL', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 1, ''),
(104, 'Manual Five', 'ownsmmpanel/img/payments/manual.svg', 'MANUL', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 2, ''),
(105, 'Manual Six', 'ownsmmpanel/img/payments/manual.svg', 'Manual Six', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 3, NULL),
(106, 'Manual Seven', 'ownsmmpanel/img/payments/manual.svg', 'MANUL', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 2, '&lt;h1&gt;&lt;br&gt;&lt;/h1&gt;'),
(107, 'Manual Eight', 'ownsmmpanel/img/payments/manual.svg', 'Manual Eight', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 3, NULL),
(108, 'Manual Nine', 'ownsmmpanel/img/payments/manual.svg', 'MANUL', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 4, '&lt;p&gt;MANUL&lt;/p&gt;'),
(109, 'Manual Ten', 'ownsmmpanel/img/payments/manual.svg', 'MANUL', NULL, 1, 1, 0, 0, 0, NULL, '0', NULL, 1, '&lt;p&gt;FEMO&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `payment_amount` decimal(15,4) NOT NULL,
  `payment_privatecode` double DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_status` enum('1','2','3') NOT NULL DEFAULT '1',
  `payment_delivery` enum('1','2') NOT NULL DEFAULT '1',
  `payment_note` varchar(255) NOT NULL DEFAULT 'No',
  `payment_mode` enum('Manual','Automatic') NOT NULL DEFAULT 'Automatic',
  `payment_create_date` datetime NOT NULL,
  `payment_update_date` datetime NOT NULL,
  `payment_ip` varchar(225) NOT NULL,
  `payment_extra` text NOT NULL,
  `payment_bank` int(11) NOT NULL,
  `t_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `referral_id` int(11) NOT NULL,
  `referral_client_id` int(11) NOT NULL,
  `referral_clicks` double NOT NULL DEFAULT 0,
  `referral_sign_up` double NOT NULL DEFAULT 0,
  `referral_totalFunds_byReffered` double NOT NULL DEFAULT 0,
  `referral_earned_commision` double DEFAULT 0,
  `referral_requested_commision` varchar(225) DEFAULT '0',
  `referral_total_commision` double DEFAULT 0,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `referral_code` text NOT NULL,
  `referral_rejected_commision` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_payouts`
--

CREATE TABLE `referral_payouts` (
  `r_p_id` int(11) NOT NULL,
  `r_p_code` text NOT NULL,
  `r_p_status` enum('1','2','3','4','0') NOT NULL DEFAULT '0',
  `r_p_amount_requested` double NOT NULL,
  `r_p_requested_at` datetime NOT NULL,
  `r_p_updated_at` datetime NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceapi_alert`
--

CREATE TABLE `serviceapi_alert` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `serviceapi_alert` text NOT NULL,
  `servicealert_extra` text NOT NULL,
  `servicealert_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_api` int(11) NOT NULL DEFAULT 0,
  `api_service` int(11) NOT NULL DEFAULT 0,
  `api_servicetype` enum('1','2') NOT NULL DEFAULT '2',
  `api_detail` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `service_line` double NOT NULL,
  `service_type` enum('1','2') NOT NULL DEFAULT '2',
  `service_package` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17') NOT NULL,
  `service_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `service_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `service_price` varchar(225) NOT NULL,
  `service_min` double NOT NULL,
  `service_max` double NOT NULL,
  `service_dripfeed` enum('1','2') NOT NULL DEFAULT '1',
  `service_autotime` double NOT NULL DEFAULT 0,
  `service_autopost` double NOT NULL DEFAULT 0,
  `service_speed` enum('1','2','3','4') NOT NULL,
  `want_username` enum('1','2') NOT NULL DEFAULT '1',
  `service_secret` enum('1','2') NOT NULL DEFAULT '2',
  `price_type` enum('normal','percent','amount') NOT NULL DEFAULT 'normal',
  `price_cal` text DEFAULT NULL,
  `instagram_second` enum('1','2') NOT NULL DEFAULT '2',
  `start_count` enum('none','instagram_follower','instagram_photo','') NOT NULL,
  `instagram_private` enum('1','2') NOT NULL,
  `name_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `description_lang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time_lang` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `time` varchar(225) NOT NULL DEFAULT 'Not enough data',
  `cancelbutton` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 -> ON, 2 -> OFF',
  `show_refill` enum('true','false') NOT NULL DEFAULT 'false',
  `service_profit` varchar(225) NOT NULL,
  `refill_days` varchar(225) NOT NULL DEFAULT '30',
  `refill_hours` varchar(225) NOT NULL DEFAULT '24',
  `avg_days` int(11) NOT NULL,
  `avg_hours` int(11) NOT NULL,
  `avg_minutes` int(11) NOT NULL,
  `avg_many` int(11) NOT NULL,
  `price_profit` int(11) NOT NULL,
  `service_overflow` int(11) NOT NULL DEFAULT 0,
  `service_sync` enum('0','1') NOT NULL DEFAULT '1',
  `service_deleted` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_api`
--

CREATE TABLE `service_api` (
  `id` int(11) NOT NULL,
  `api_name` varchar(225) NOT NULL,
  `api_url` text NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `api_type` int(11) NOT NULL,
  `api_limit` double NOT NULL DEFAULT 0,
  `currency` varchar(200) DEFAULT NULL,
  `api_alert` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> Gönder, 1 -> Gönderildi',
  `status` enum('1','2') NOT NULL DEFAULT '2',
  `api_sync` enum('0','1') NOT NULL DEFAULT '1',
  `api_login_credentials` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_seo` text NOT NULL,
  `site_title` text DEFAULT NULL,
  `site_description` text DEFAULT NULL,
  `site_keywords` text DEFAULT NULL,
  `site_logo` text DEFAULT NULL,
  `site_name` text DEFAULT NULL,
  `site_currency` varchar(2555) NOT NULL DEFAULT 'try',
  `site_base_currency` varchar(20) DEFAULT NULL,
  `site_currency_converter` tinyint(1) NOT NULL DEFAULT 0,
  `site_update_rates_automatically` int(11) NOT NULL DEFAULT 0,
  `last_updated_currency_rates` datetime DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `site_language` varchar(225) NOT NULL DEFAULT 'tr',
  `site_theme` text NOT NULL,
  `site_theme_alt` text DEFAULT NULL,
  `recaptcha` enum('1','2') NOT NULL DEFAULT '1',
  `recaptcha_key` text DEFAULT NULL,
  `recaptcha_secret` text DEFAULT NULL,
  `custom_header` text DEFAULT NULL,
  `custom_footer` text DEFAULT NULL,
  `ticket_system` enum('1','2') NOT NULL DEFAULT '2',
  `register_page` enum('1','2') NOT NULL DEFAULT '2',
  `service_speed` enum('1','2') NOT NULL,
  `service_list` enum('1','2') NOT NULL,
  `dolar_charge` double NOT NULL,
  `euro_charge` double NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pass` text NOT NULL,
  `smtp_server` text NOT NULL,
  `smtp_port` varchar(225) NOT NULL,
  `smtp_protocol` enum('0','ssl','tls') NOT NULL,
  `alert_type` enum('1','2','3') NOT NULL,
  `alert_apimail` enum('1','2') NOT NULL,
  `alert_newmanuelservice` enum('1','2') NOT NULL,
  `alert_newticket` enum('1','2') NOT NULL,
  `alert_apibalance` enum('1','2') NOT NULL,
  `alert_serviceapialert` enum('1','2') NOT NULL,
  `sms_provider` varchar(225) NOT NULL,
  `sms_title` varchar(225) NOT NULL,
  `sms_user` varchar(225) NOT NULL,
  `sms_pass` varchar(225) NOT NULL,
  `sms_validate` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1 -> OK, 0 -> NO',
  `admin_mail` varchar(225) NOT NULL,
  `admin_telephone` varchar(225) NOT NULL,
  `resetpass_page` enum('1','2') NOT NULL,
  `resetpass_sms` enum('1','2') NOT NULL,
  `resetpass_email` enum('1','2') NOT NULL,
  `site_maintenance` enum('1','2') NOT NULL DEFAULT '2',
  `servis_siralama` varchar(255) NOT NULL,
  `bronz_statu` int(11) NOT NULL,
  `silver_statu` int(11) NOT NULL,
  `gold_statu` int(11) NOT NULL,
  `bayi_statu` int(11) NOT NULL,
  `child_panel_nameservers` varchar(255) NOT NULL DEFAULT '{"ns1":"ns1.scriptlux.com","ns2":"ns2.scriptlux.com"}',
  `childpanel_price` double DEFAULT NULL,
  `snow_effect` enum('1','2') NOT NULL DEFAULT '2',
  `snow_colour` text NOT NULL,
  `promotion` enum('1','2') DEFAULT '2',
  `referral_commision` double NOT NULL,
  `referral_payout` double NOT NULL,
  `referral_status` enum('1','2') NOT NULL DEFAULT '1',
  `childpanel_selling` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> OFF , 2 -> ON',
  `tickets_per_user` double NOT NULL DEFAULT 5,
  `name_fileds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `skype_feilds` enum('1','2') NOT NULL DEFAULT '1' COMMENT '1 -> ON, 2 -> NO',
  `otp_login` enum('1','2','0') NOT NULL DEFAULT '0',
  `auto_deactivate_payment` enum('1','2') NOT NULL DEFAULT '1',
  `service_avg_time` enum('1','0') NOT NULL DEFAULT '0',
  `alert_orderfail` enum('1','2') NOT NULL DEFAULT '2',
  `alert_welcomemail` enum('1','2') NOT NULL DEFAULT '2',
  `freebalance` enum('1','2') NOT NULL DEFAULT '1',
  `freeamount` double DEFAULT 0,
  `alert_newmessage` enum('1','2') NOT NULL DEFAULT '1',
  `email_confirmation` enum('1','2') NOT NULL DEFAULT '2',
  `resend_max` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `fundstransfer_fees` varchar(10) NOT NULL,
  `permissions` text DEFAULT NULL,
  `fake_order_service_enabled` tinyint(1) NOT NULL DEFAULT 0,
  `fake_order_min` int(11) DEFAULT NULL,
  `fake_order_max` int(11) DEFAULT NULL,
  `panel_orders` int(11) DEFAULT NULL,
  `panel_orders_pattern` varchar(255) NOT NULL DEFAULT '{"panel_orders_prefix":"","panel_orders_suffix":""}',
  `downloaded_category_icons` tinyint(1) NOT NULL DEFAULT 0,
  `summary_card_background_color` varchar(500) DEFAULT 'theme_colour',
  `oldadminname` text NOT NULL,
  `google_login` varchar(500) NOT NULL DEFAULT '{"purchased":"1","status":"1"}',
  `services_average_time` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_seo`, `site_title`, `site_description`, `site_keywords`, `site_logo`, `site_name`, `site_currency`, `site_base_currency`, `site_currency_converter`, `site_update_rates_automatically`, `last_updated_currency_rates`, `favicon`, `site_language`, `site_theme`, `site_theme_alt`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `custom_header`, `custom_footer`, `ticket_system`, `register_page`, `service_speed`, `service_list`, `dolar_charge`, `euro_charge`, `smtp_user`, `smtp_pass`, `smtp_server`, `smtp_port`, `smtp_protocol`, `alert_type`, `alert_apimail`, `alert_newmanuelservice`, `alert_newticket`, `alert_apibalance`, `alert_serviceapialert`, `sms_provider`, `sms_title`, `sms_user`, `sms_pass`, `sms_validate`, `admin_mail`, `admin_telephone`, `resetpass_page`, `resetpass_sms`, `resetpass_email`, `site_maintenance`, `servis_siralama`, `bronz_statu`, `silver_statu`, `gold_statu`, `bayi_statu`, `child_panel_nameservers`, `childpanel_price`, `snow_effect`, `snow_colour`, `promotion`, `referral_commision`, `referral_payout`, `referral_status`, `childpanel_selling`, `tickets_per_user`, `name_fileds`, `skype_feilds`, `otp_login`, `auto_deactivate_payment`, `service_avg_time`, `alert_orderfail`, `alert_welcomemail`, `freebalance`, `freeamount`, `alert_newmessage`, `email_confirmation`, `resend_max`, `status`, `fundstransfer_fees`, `permissions`, `fake_order_service_enabled`, `fake_order_min`, `fake_order_max`, `panel_orders`, `panel_orders_pattern`, `downloaded_category_icons`, `summary_card_background_color`, `oldadminname`, `google_login`, `services_average_time`) VALUES
(1, 'SMM Panel', 'SMM Panel', 'SMM Panel', 'SMM Panel', 'ownsmmpanel/img/panel/9b8619251a19057cff70779273e95aa6.png', 'SMM PANEL', '', 'USD', 1, 1, '2024-12-24 20:58:40', 'ownsmmpanel/img/panel/49e3d046636e06b2d82ee046db8e6eb9a2e11e16.png', 'en', 'Simplify', 'Grapes', '1', '', NULL, '', '', '1', '2', '1', '2', 0, 0, '', '', '', '465', 'ssl', '2', '1', '1', '1', '1', '1', 'bizimsms', '', '', '', '1', '', '', '2', '1', '2', '2', 'asc', 0, 0, 0, 0, '{\"ns1\":\"ns1.ownwebhost.in\",\"ns2\":\"ns2.ownwebhost.in\"}', 5, '2', '', '1', 10, 10, '2', '2', 2, '2', '2', '0', '1', '1', '1', '1', '1', 0, '1', '1', 2, '0', '3', '{\"admin access\":{\"admin_access\":{\"name\":\"Admin Access\",\"value\":\"admin_access\"}},\"pages\":{\"users\":{\"name\":\"Users\",\"value\":\"users\"},\"services\":{\"name\":\"Services\",\"value\":\"services\"},\"update-prices\":{\"name\":\"Update Prices\",\"value\":\"update-prices\"},\"bulk\":{\"name\":\"Bulk Services Editor\",\"value\":\"bulk\"},\"bulkc\":{\"name\":\"Bulk Category Editor\",\"value\":\"services\"},\"synced-logs\":{\"name\":\"Seller Sync Logs\",\"value\":\"synced-logs\"},\"orders\":{\"name\":\"Orders\",\"value\":\"orders\"},\"subscriptions\":{\"name\":\"Subscriptions\",\"value\":\"subscriptions\"},\"dripfeed\":{\"name\":\"Dripfeed\",\"value\":\"dripfeed\"},\"tasks\":{\"name\":\"Order Refill and Cancel Tasks\",\"value\":\"tasks\"},\"payments\":{\"name\":\"Payments\",\"value\":\"payments\"},\"tickets\":{\"name\":\"Tickets\",\"value\":\"tickets\"}},\"additionals\":{\"additionals\":{\"name\":\"Additionals\",\"value\":\"additionals\"},\"referral\":{\"name\":\"Affiliates\",\"value\":\"referral\"},\"broadcast\":{\"name\":\"Broadcasts\",\"value\":\"broadcast\"},\"logs\":{\"name\":\"Panel Logs\",\"value\":\"logs\"},\"reports\":{\"name\":\"Reports\",\"value\":\"reports\"},\"videop\":{\"name\":\"Promotion\",\"value\":\"videop\"},\"coupon\":{\"name\":\"Coupons\",\"value\":\"coupon\"},\"child-panels\":{\"name\":\"Child Panels\",\"value\":\"child-panels\"},\"updates\":{\"name\":\"Updates\",\"value\":\"updates\"}},\"appearance\":{\"appearance\":{\"name\":\"Appearance\",\"value\":\"appearance\"},\"themes\":{\"name\":\"Themes\",\"value\":\"themes\"},\"new_year\":{\"name\":\"New Year\",\"value\":\"new_year\"},\"pages\":{\"name\":\"Pages\",\"value\":\"pages\"},\"news\":{\"name\":\"Announcements\",\"value\":\"news\"},\"meta\":{\"name\":\"Meta (SEO) Settings\",\"value\":\"meta\"},\"blog\":{\"name\":\"Blogs\",\"value\":\"blog\"},\"menu\":{\"name\":\"Menu\",\"value\":\"menu\"},\"inte\":{\"name\":\"Integrations\",\"value\":\"inte\"},\"language\":{\"name\":\"Languages\",\"value\":\"language\"},\"files\":{\"name\":\"Uploaded Images\",\"value\":\"files\"}},\"settings\":{\"settings\":{\"name\":\"Settings\",\"value\":\"settings\"},\"general_settings\":{\"name\":\"General Settings\",\"value\":\"general_settings\"},\"providers\":{\"name\":\"Sellers\",\"value\":\"providers\"},\"payments_settings\":{\"name\":\"Payment Methods\",\"value\":\"payments_settings\"},\"bank_accounts\":{\"name\":\"Bank Accounts\",\"value\":\"bank_accounts\"},\"modules\":{\"name\":\"Modules\",\"value\":\"modules\"},\"subject\":{\"name\":\"Support Settings\",\"value\":\"subject\"},\"payments_bonus\":{\"name\":\"Payment Bonuses\",\"value\":\"payments_bonus\"},\"currency-manager\":{\"name\":\"Site Currency Manager\",\"value\":\"currency-manager\"},\"alert_settings\":{\"name\":\"Notification Settings\",\"value\":\"alert_settings\"},\"site_count\":{\"name\":\"Fake Orders\",\"value\":\"site_count\"},\"manager\":{\"name\":\"Manager\",\"value\":\"manager\"}}}', 1, 1, 5, 1000, '{\"panel_orders_prefix\":\"\",\"panel_orders_suffix\":\"\"}', 1, 'theme_colour', 'aadmin', '{\"client_id\":\"\",\"client_secret\":\"\",\"status\":\"2\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sync_logs`
--

CREATE TABLE `sync_logs` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) NOT NULL,
  `api_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `task_api` int(11) DEFAULT NULL,
  `task_type` varchar(225) DEFAULT NULL,
  `task_status` varchar(225) DEFAULT 'pending',
  `task_response` text DEFAULT NULL,
  `task_created_at` datetime DEFAULT NULL,
  `task_updated_at` datetime DEFAULT NULL,
  `task_by` text DEFAULT NULL,
  `check_refill_status` int(11) DEFAULT NULL,
  `refill_orderid` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_name` text NOT NULL,
  `theme_dirname` text NOT NULL,
  `theme_extras` text NOT NULL,
  `last_modified` datetime NOT NULL,
  `newpage` text NOT NULL,
  `colour` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_name`, `theme_dirname`, `theme_extras`, `last_modified`, `newpage`, `colour`) VALUES
(5, 'QuickPanel', 'Simplify', '{\"stylesheets\":[\"ownsmmpanel/public/Simplify/bootstrap.css\",\"ownsmmpanel/public/Simplify/red.css\"]}', '2024-08-10 15:12:32', '', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `time` datetime NOT NULL,
  `lastupdate_time` datetime NOT NULL,
  `client_new` enum('1','2') NOT NULL DEFAULT '2',
  `status` enum('pending','answered','closed') NOT NULL DEFAULT 'pending',
  `support_new` enum('1','2') NOT NULL DEFAULT '1',
  `canmessage` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `support` enum('1','2') NOT NULL DEFAULT '1',
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `readed` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects`
--

CREATE TABLE `ticket_subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `content` text DEFAULT NULL,
  `auto_reply` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ticket_subjects`
--

INSERT INTO `ticket_subjects` (`subject_id`, `subject`, `content`, `auto_reply`) VALUES
(1, 'Order', '', '0'),
(2, 'Payment', '', '0'),
(4, 'Complaint & Suggestion', '', '0'),
(6, 'Others', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `units_per_page`
--

CREATE TABLE `units_per_page` (
  `id` int(11) NOT NULL,
  `unit` int(11) NOT NULL,
  `page` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `units_per_page`
--

INSERT INTO `units_per_page` (`id`, `unit`, `page`) VALUES
(1, 50, 'clients'),
(2, 50, 'orders'),
(3, 50, 'payments'),
(4, 50, 'refill'),
(5, 50, 'bulk'),
(6, 50, 'services');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `u_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT 'Not enough data'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `admin_constants`
--
ALTER TABLE `admin_constants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulkedit`
--
ALTER TABLE `bulkedit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `childpanels`
--
ALTER TABLE `childpanels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `clients_category`
--
ALTER TABLE `clients_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_price`
--
ALTER TABLE `clients_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_service`
--
ALTER TABLE `clients_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_report`
--
ALTER TABLE `client_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decoration`
--
ALTER TABLE `decoration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `earn`
--
ALTER TABLE `earn`
  ADD PRIMARY KEY (`earn_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `General_options`
--
ALTER TABLE `General_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `integrations`
--
ALTER TABLE `integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuponlar`
--
ALTER TABLE `kuponlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mailforms`
--
ALTER TABLE `Mailforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `panel_categories`
--
ALTER TABLE `panel_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panel_info`
--
ALTER TABLE `panel_info`
  ADD PRIMARY KEY (`panel_id`);

--
-- Indexes for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`methodId`),
  ADD KEY `methodId` (`methodId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`referral_id`);

--
-- Indexes for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  ADD PRIMARY KEY (`r_p_id`);

--
-- Indexes for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_api`
--
ALTER TABLE `service_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sync_logs`
--
ALTER TABLE `sync_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `units_per_page`
--
ALTER TABLE `units_per_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bulkedit`
--
ALTER TABLE `bulkedit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `childpanels`
--
ALTER TABLE `childpanels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_category`
--
ALTER TABLE `clients_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_price`
--
ALTER TABLE `clients_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_service`
--
ALTER TABLE `clients_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_report`
--
ALTER TABLE `client_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `earn`
--
ALTER TABLE `earn`
  MODIFY `earn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `General_options`
--
ALTER TABLE `General_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `integrations`
--
ALTER TABLE `integrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kuponlar`
--
ALTER TABLE `kuponlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kupon_kullananlar`
--
ALTER TABLE `kupon_kullananlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Mailforms`
--
ALTER TABLE `Mailforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications_popup`
--
ALTER TABLE `notifications_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=937;

--
-- AUTO_INCREMENT for table `panel_categories`
--
ALTER TABLE `panel_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panel_info`
--
ALTER TABLE `panel_info`
  MODIFY `panel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `methodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_payouts`
--
ALTER TABLE `referral_payouts`
  MODIFY `r_p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53367;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_api`
--
ALTER TABLE `service_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sync_logs`
--
ALTER TABLE `sync_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `units_per_page`
--
ALTER TABLE `units_per_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
