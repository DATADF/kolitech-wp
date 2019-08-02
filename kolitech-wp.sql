-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2019 at 05:21 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kolitech-wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://kolitech-wp.dev', 'yes'),
(2, 'home', 'https://kolitech-wp.dev', 'yes'),
(3, 'blogname', 'kolitech', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'klaytonfantin@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:33:\"post-expirator/post-expirator.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'kolitech1', 'yes'),
(41, 'stylesheet', 'kolitech1', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '15', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'en_AU', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;s:9:\"show_date\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:17:\"recent-comments-2\";i:1;s:10:\"archives-2\";i:2;s:12:\"categories-2\";i:3;s:6:\"meta-2\";}s:7:\"sidebar\";a:1:{i:0;s:14:\"recent-posts-2\";}s:12:\"sidebar-site\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:8:{i:1564768642;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1564774065;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1564775817;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1564808242;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1564851442;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1564851465;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1567134000;a:1:{s:19:\"postExpiratorExpire\";a:1:{s:32:\"e89add14f078e55562eecf656f174a96\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:203;}}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(150, 'theme_mods_twentynineteen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1563988232;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(151, 'current_theme', 'kolitech1', 'yes'),
(152, 'theme_mods_kolitech1', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:9:\"secondary\";i:32;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(156, 'new_admin_email', 'klaytonfantin@gmail.com', 'yes'),
(192, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(209, 'recently_activated', 'a:0:{}', 'yes'),
(214, 'acf_version', '5.8.2', 'yes'),
(234, 'recovery_mode_email_last_sent', '1564416186', 'yes'),
(273, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"3\",\"critical\":\"2\"}', 'yes'),
(330, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1564484873;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(338, 'expirationdateDefaultDateFormat', 'l F jS, Y', 'yes'),
(339, 'expirationdateDefaultTimeFormat', 'g:ia', 'yes'),
(340, 'expirationdateFooterContents', 'Post expires at EXPIRATIONTIME on EXPIRATIONDATE', 'yes'),
(341, 'expirationdateFooterStyle', 'font-style: italic;', 'yes'),
(342, 'expirationdateDisplayFooter', '0', 'yes'),
(343, 'expirationdateDebug', '0', 'yes'),
(344, 'expirationdateDefaultDate', 'null', 'yes'),
(345, 'postexpiratorVersion', '2.4.0.1', 'yes'),
(346, 'expirationdateEmailNotification', '0', 'yes'),
(347, 'expirationdateEmailNotificationAdmins', '0', 'yes'),
(348, 'expirationdateEmailNotificationList', '', 'yes'),
(349, 'expirationdateCategoryDefaults', 'a:1:{i:0;s:1:\"1\";}', 'yes'),
(442, '_site_transient_timeout_browser_5eaddbe64bb311a7ba788adfd9ffdfcb', '1565201682', 'no'),
(443, '_site_transient_browser_5eaddbe64bb311a7ba788adfd9ffdfcb', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.142\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(444, '_site_transient_timeout_php_check_c6e81a88aa62f0eea87d84f96662ea28', '1565201683', 'no'),
(445, '_site_transient_php_check_c6e81a88aa62f0eea87d84f96662ea28', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(475, 'types_children', 'a:0:{}', 'yes'),
(483, 'category_children', 'a:0:{}', 'yes'),
(493, '_transient_timeout_plugin_slugs', '1564775845', 'no'),
(494, '_transient_plugin_slugs', 'a:5:{i:0;s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:33:\"post-expirator/post-expirator.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'no'),
(500, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"en_AU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1564765061;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(502, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1564765065;s:7:\"checked\";a:2:{s:9:\"kolitech1\";s:3:\"1.0\";s:14:\"twentynineteen\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(503, 'wpseo', 'a:20:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:4:\"11.7\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1564689416;s:13:\"myyoast-oauth\";b:0;}', 'yes'),
(504, 'wpseo_titles', 'a:131:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:11:\"person_logo\";s:0:\"\";s:14:\"person_logo_id\";i:0;s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:15:\"company_logo_id\";i:0;s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:7:\"company\";s:25:\"company_or_person_user_id\";b:0;s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:11:\"title-about\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:14:\"metadesc-about\";s:0:\"\";s:13:\"noindex-about\";b:0;s:14:\"showdate-about\";b:0;s:24:\"display-metabox-pt-about\";b:1;s:24:\"post_types-about-maintax\";i:0;s:21:\"title-ptarchive-about\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-ptarchive-about\";s:0:\"\";s:23:\"bctitle-ptarchive-about\";s:0:\"\";s:23:\"noindex-ptarchive-about\";b:0;s:19:\"title-certification\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:22:\"metadesc-certification\";s:0:\"\";s:21:\"noindex-certification\";b:0;s:22:\"showdate-certification\";b:0;s:32:\"display-metabox-pt-certification\";b:1;s:32:\"post_types-certification-maintax\";i:0;s:29:\"title-ptarchive-certification\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:32:\"metadesc-ptarchive-certification\";s:0:\"\";s:31:\"bctitle-ptarchive-certification\";s:0:\"\";s:31:\"noindex-ptarchive-certification\";b:0;s:11:\"title-skill\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:14:\"metadesc-skill\";s:0:\"\";s:13:\"noindex-skill\";b:0;s:14:\"showdate-skill\";b:0;s:24:\"display-metabox-pt-skill\";b:1;s:24:\"post_types-skill-maintax\";i:0;s:21:\"title-ptarchive-skill\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-ptarchive-skill\";s:0:\"\";s:23:\"bctitle-ptarchive-skill\";s:0:\"\";s:23:\"noindex-ptarchive-skill\";b:0;s:13:\"title-courses\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-courses\";s:0:\"\";s:15:\"noindex-courses\";b:0;s:16:\"showdate-courses\";b:0;s:26:\"display-metabox-pt-courses\";b:1;s:26:\"post_types-courses-maintax\";i:0;s:23:\"title-ptarchive-courses\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-courses\";s:0:\"\";s:25:\"bctitle-ptarchive-courses\";s:0:\"\";s:25:\"noindex-ptarchive-courses\";b:0;s:13:\"title-contact\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:16:\"metadesc-contact\";s:0:\"\";s:15:\"noindex-contact\";b:0;s:16:\"showdate-contact\";b:0;s:26:\"display-metabox-pt-contact\";b:1;s:26:\"post_types-contact-maintax\";i:0;s:23:\"title-ptarchive-contact\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:26:\"metadesc-ptarchive-contact\";s:0:\"\";s:25:\"bctitle-ptarchive-contact\";s:0:\"\";s:25:\"noindex-ptarchive-contact\";b:0;s:15:\"title-telephone\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:18:\"metadesc-telephone\";s:0:\"\";s:17:\"noindex-telephone\";b:0;s:18:\"showdate-telephone\";b:0;s:28:\"display-metabox-pt-telephone\";b:1;s:28:\"post_types-telephone-maintax\";i:0;s:25:\"title-ptarchive-telephone\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:28:\"metadesc-ptarchive-telephone\";s:0:\"\";s:27:\"bctitle-ptarchive-telephone\";s:0:\"\";s:27:\"noindex-ptarchive-telephone\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;}', 'yes'),
(505, 'wpseo_social', 'a:19:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:13:\"wikipedia_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(506, 'wpseo_flush_rewrite', '1', 'yes'),
(507, '_transient_timeout_wpseo_link_table_inaccessible', '1596225417', 'no'),
(508, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(509, '_transient_timeout_wpseo_meta_table_inaccessible', '1596225417', 'no'),
(510, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(512, '_transient_timeout_yoast_i18n_wordpress-seo_en_AU', '1564775822', 'no'),
(513, '_transient_yoast_i18n_wordpress-seo_en_AU', 'O:8:\"stdClass\":12:{s:2:\"id\";s:6:\"396137\";s:4:\"name\";s:19:\"English (Australia)\";s:4:\"slug\";s:7:\"default\";s:10:\"project_id\";s:4:\"3158\";s:6:\"locale\";s:5:\"en-au\";s:13:\"current_count\";i:1152;s:18:\"untranslated_count\";i:0;s:13:\"waiting_count\";i:0;s:11:\"fuzzy_count\";i:0;s:18:\"percent_translated\";i:100;s:9:\"wp_locale\";s:5:\"en_AU\";s:13:\"last_modified\";s:19:\"2019-07-23 07:07:48\";}', 'no'),
(514, '_transient_timeout_wpseo_site_information', '1564775834', 'no'),
(515, '_transient_wpseo_site_information', 'O:8:\"stdClass\":2:{s:3:\"url\";s:23:\"https://kolitech-wp.dev\";s:13:\"subscriptions\";a:0:{}}', 'no'),
(518, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1564765065;s:7:\"checked\";a:5:{s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";s:5:\"2.3.0\";s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.2\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:33:\"post-expirator/post-expirator.php\";s:7:\"2.4.0.1\";s:24:\"wordpress-seo/wp-seo.php\";s:4:\"11.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/acf-content-analysis-for-yoast-seo\";s:4:\"slug\";s:34:\"acf-content-analysis-for-yoast-seo\";s:6:\"plugin\";s:57:\"acf-content-analysis-for-yoast-seo/yoast-acf-analysis.php\";s:11:\"new_version\";s:5:\"2.3.0\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/acf-content-analysis-for-yoast-seo/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/acf-content-analysis-for-yoast-seo.2.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/icon-256x256.png?rev=1717503\";s:2:\"1x\";s:87:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/icon-128x128.png?rev=1717503\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/banner-1544x500.png?rev=1717503\";s:2:\"1x\";s:89:\"https://ps.w.org/acf-content-analysis-for-yoast-seo/assets/banner-772x250.png?rev=1717503\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"post-expirator/post-expirator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/post-expirator\";s:4:\"slug\";s:14:\"post-expirator\";s:6:\"plugin\";s:33:\"post-expirator/post-expirator.php\";s:11:\"new_version\";s:7:\"2.4.0.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/post-expirator/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/post-expirator.2.4.0.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/post-expirator/assets/icon-128x128.png?rev=1666720\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/post-expirator/assets/banner-1544x500.png?rev=1666713\";s:2:\"1x\";s:69:\"https://ps.w.org/post-expirator/assets/banner-772x250.png?rev=1666713\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:4:\"11.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wordpress-seo.11.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(519, 'rewrite_rules', 'a:280:{s:8:\"about/?$\";s:25:\"index.php?post_type=about\";s:38:\"about/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=about&feed=$matches[1]\";s:33:\"about/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=about&feed=$matches[1]\";s:25:\"about/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=about&paged=$matches[1]\";s:16:\"certification/?$\";s:33:\"index.php?post_type=certification\";s:46:\"certification/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=certification&feed=$matches[1]\";s:41:\"certification/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=certification&feed=$matches[1]\";s:33:\"certification/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=certification&paged=$matches[1]\";s:8:\"skill/?$\";s:25:\"index.php?post_type=skill\";s:38:\"skill/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=skill&feed=$matches[1]\";s:33:\"skill/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=skill&feed=$matches[1]\";s:25:\"skill/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=skill&paged=$matches[1]\";s:10:\"courses/?$\";s:27:\"index.php?post_type=courses\";s:40:\"courses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=courses&feed=$matches[1]\";s:35:\"courses/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=courses&feed=$matches[1]\";s:27:\"courses/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=courses&paged=$matches[1]\";s:10:\"contact/?$\";s:27:\"index.php?post_type=contact\";s:40:\"contact/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=contact&feed=$matches[1]\";s:35:\"contact/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=contact&feed=$matches[1]\";s:27:\"contact/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=contact&paged=$matches[1]\";s:12:\"telephone/?$\";s:29:\"index.php?post_type=telephone\";s:42:\"telephone/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=telephone&feed=$matches[1]\";s:37:\"telephone/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=telephone&feed=$matches[1]\";s:29:\"telephone/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=telephone&paged=$matches[1]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:39:\"index.php?yoast-sitemap-xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:33:\"about/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"about/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"about/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"about/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"about/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"about/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"about/([^/]+)/embed/?$\";s:38:\"index.php?about=$matches[1]&embed=true\";s:26:\"about/([^/]+)/trackback/?$\";s:32:\"index.php?about=$matches[1]&tb=1\";s:46:\"about/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?about=$matches[1]&feed=$matches[2]\";s:41:\"about/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?about=$matches[1]&feed=$matches[2]\";s:34:\"about/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?about=$matches[1]&paged=$matches[2]\";s:41:\"about/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?about=$matches[1]&cpage=$matches[2]\";s:30:\"about/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?about=$matches[1]&page=$matches[2]\";s:22:\"about/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"about/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"about/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"about/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"about/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"about/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"certification/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"certification/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"certification/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"certification/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"certification/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"certification/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"certification/([^/]+)/embed/?$\";s:46:\"index.php?certification=$matches[1]&embed=true\";s:34:\"certification/([^/]+)/trackback/?$\";s:40:\"index.php?certification=$matches[1]&tb=1\";s:54:\"certification/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?certification=$matches[1]&feed=$matches[2]\";s:49:\"certification/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?certification=$matches[1]&feed=$matches[2]\";s:42:\"certification/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?certification=$matches[1]&paged=$matches[2]\";s:49:\"certification/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?certification=$matches[1]&cpage=$matches[2]\";s:38:\"certification/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?certification=$matches[1]&page=$matches[2]\";s:30:\"certification/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"certification/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"certification/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"certification/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"certification/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"certification/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"skill/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"skill/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"skill/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"skill/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"skill/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"skill/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"skill/([^/]+)/embed/?$\";s:38:\"index.php?skill=$matches[1]&embed=true\";s:26:\"skill/([^/]+)/trackback/?$\";s:32:\"index.php?skill=$matches[1]&tb=1\";s:46:\"skill/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?skill=$matches[1]&feed=$matches[2]\";s:41:\"skill/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?skill=$matches[1]&feed=$matches[2]\";s:34:\"skill/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?skill=$matches[1]&paged=$matches[2]\";s:41:\"skill/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?skill=$matches[1]&cpage=$matches[2]\";s:30:\"skill/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?skill=$matches[1]&page=$matches[2]\";s:22:\"skill/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"skill/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"skill/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"skill/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"skill/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"skill/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"courses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"courses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"courses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"courses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"courses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"courses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"courses/([^/]+)/embed/?$\";s:40:\"index.php?courses=$matches[1]&embed=true\";s:28:\"courses/([^/]+)/trackback/?$\";s:34:\"index.php?courses=$matches[1]&tb=1\";s:48:\"courses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?courses=$matches[1]&feed=$matches[2]\";s:43:\"courses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?courses=$matches[1]&feed=$matches[2]\";s:36:\"courses/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?courses=$matches[1]&paged=$matches[2]\";s:43:\"courses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?courses=$matches[1]&cpage=$matches[2]\";s:32:\"courses/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?courses=$matches[1]&page=$matches[2]\";s:24:\"courses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"courses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"courses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"courses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"courses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"courses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"contact/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"contact/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"contact/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"contact/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"contact/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"contact/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"contact/([^/]+)/embed/?$\";s:40:\"index.php?contact=$matches[1]&embed=true\";s:28:\"contact/([^/]+)/trackback/?$\";s:34:\"index.php?contact=$matches[1]&tb=1\";s:48:\"contact/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?contact=$matches[1]&feed=$matches[2]\";s:43:\"contact/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?contact=$matches[1]&feed=$matches[2]\";s:36:\"contact/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?contact=$matches[1]&paged=$matches[2]\";s:43:\"contact/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?contact=$matches[1]&cpage=$matches[2]\";s:32:\"contact/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?contact=$matches[1]&page=$matches[2]\";s:24:\"contact/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"contact/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"contact/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"contact/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"contact/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"contact/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"telephone/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"telephone/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"telephone/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"telephone/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"telephone/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"telephone/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"telephone/([^/]+)/embed/?$\";s:42:\"index.php?telephone=$matches[1]&embed=true\";s:30:\"telephone/([^/]+)/trackback/?$\";s:36:\"index.php?telephone=$matches[1]&tb=1\";s:50:\"telephone/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?telephone=$matches[1]&feed=$matches[2]\";s:45:\"telephone/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?telephone=$matches[1]&feed=$matches[2]\";s:38:\"telephone/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?telephone=$matches[1]&paged=$matches[2]\";s:45:\"telephone/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?telephone=$matches[1]&cpage=$matches[2]\";s:34:\"telephone/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?telephone=$matches[1]&page=$matches[2]\";s:26:\"telephone/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"telephone/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"telephone/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"telephone/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"telephone/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"telephone/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"home-emails/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"home-emails/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"home-emails/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home-emails/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"home-emails/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"home-emails/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"home-emails/([^/]+)/embed/?$\";s:44:\"index.php?home-emails=$matches[1]&embed=true\";s:32:\"home-emails/([^/]+)/trackback/?$\";s:38:\"index.php?home-emails=$matches[1]&tb=1\";s:40:\"home-emails/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?home-emails=$matches[1]&paged=$matches[2]\";s:47:\"home-emails/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?home-emails=$matches[1]&cpage=$matches[2]\";s:36:\"home-emails/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?home-emails=$matches[1]&page=$matches[2]\";s:28:\"home-emails/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"home-emails/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"home-emails/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home-emails/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"home-emails/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"home-emails/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"social-medias/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"social-medias/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"social-medias/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"social-medias/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"social-medias/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"social-medias/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"social-medias/([^/]+)/embed/?$\";s:46:\"index.php?social-medias=$matches[1]&embed=true\";s:34:\"social-medias/([^/]+)/trackback/?$\";s:40:\"index.php?social-medias=$matches[1]&tb=1\";s:42:\"social-medias/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?social-medias=$matches[1]&paged=$matches[2]\";s:49:\"social-medias/([^/]+)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?social-medias=$matches[1]&cpage=$matches[2]\";s:38:\"social-medias/([^/]+)(?:/([0-9]+))?/?$\";s:52:\"index.php?social-medias=$matches[1]&page=$matches[2]\";s:30:\"social-medias/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"social-medias/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"social-medias/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"social-medias/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"social-medias/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"social-medias/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"publicity/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"publicity/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"publicity/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"publicity/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"publicity/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"publicity/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"publicity/([^/]+)/embed/?$\";s:42:\"index.php?publicity=$matches[1]&embed=true\";s:30:\"publicity/([^/]+)/trackback/?$\";s:36:\"index.php?publicity=$matches[1]&tb=1\";s:38:\"publicity/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?publicity=$matches[1]&paged=$matches[2]\";s:45:\"publicity/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?publicity=$matches[1]&cpage=$matches[2]\";s:34:\"publicity/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?publicity=$matches[1]&page=$matches[2]\";s:26:\"publicity/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"publicity/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"publicity/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"publicity/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"publicity/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"publicity/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=15&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(548, '_site_transient_timeout_available_translations', '1564772527', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(549, '_site_transient_available_translations', 'a:117:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.0.4\";s:7:\"updated\";s:19:\"2019-05-16 12:52:45\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.4/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-01 19:39:44\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-14 14:59:20\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.10/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-06-10 20:13:25\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-25 02:28:24\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-24 05:22:45\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-26 14:27:28\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-02 05:01:03\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-21 08:32:15\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-08 20:19:38\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-22 22:30:56\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 09:55:37\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-19 09:56:19\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.2.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"5.2\";s:7:\"updated\";s:19:\"2019-05-07 21:15:55\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-22 22:31:16\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-13 16:40:55\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 11:31:40\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 23:50:40\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-25 07:12:29\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 16:48:55\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 20:46:03\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-22 16:47:50\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-01 01:18:38\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-19 10:47:50\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-07 18:38:30\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.10/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-21 11:52:29\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-29 05:00:30\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-30 17:08:47\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-19 18:52:09\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-28 14:23:29\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-29 15:57:31\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-09 17:11:32\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-23 20:53:56\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-22 05:57:39\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-24 13:42:24\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-02-21 08:17:32\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.10\";s:7:\"updated\";s:19:\"2019-05-08 04:00:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.10/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 14:27:41\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-28 18:51:05\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.13\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.13/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:54:41\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-29 18:32:08\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-18 12:30:37\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-30 14:24:29\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-18 12:37:38\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-20 11:47:07\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-07 06:24:50\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-22 05:41:06\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-02 08:07:52\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-02 07:58:03\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-28 20:02:31\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-02 10:04:28\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-22 10:38:09\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-10 14:50:59\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-04-02 15:10:17\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.2.1\";s:7:\"updated\";s:19:\"2019-05-21 18:58:08\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-29 10:20:07\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-30 02:47:32\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-17 22:35:45\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-25 22:13:47\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.1/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-08 01:07:41\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-06-30 05:27:18\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-29 00:33:56\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"5.2\";s:7:\"updated\";s:19:\"2019-05-09 17:07:08\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no'),
(556, '_site_transient_timeout_theme_roots', '1564766863', 'no'),
(557, '_site_transient_theme_roots', 'a:2:{s:9:\"kolitech1\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 1, '_edit_lock', '1564668844:1'),
(8, 1, '_edit_last', '1'),
(11, 1, '_wp_old_slug', 'hello-world'),
(12, 13, '_edit_last', '1'),
(13, 13, '_edit_lock', '1563997720:1'),
(14, 15, '_edit_lock', '1564603508:1'),
(15, 15, '_wp_page_template', 'page-principal.php'),
(16, 17, '_edit_lock', '1564753555:1'),
(17, 17, '_wp_page_template', 'index.php'),
(36, 21, '_wp_attached_file', '2019/07/home-office.jpg'),
(37, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2019/07/home-office.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"home-office-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"home-office-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"home-office-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"home-office-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 28, '_edit_lock', '1564490301:1'),
(47, 30, '_edit_lock', '1564490287:1'),
(50, 32, '_edit_lock', '1564681505:1'),
(53, 35, '_wp_attached_file', '2019/07/avatar.png'),
(54, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1179;s:4:\"file\";s:18:\"2019/07/avatar.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"avatar-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"avatar-300x276.png\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"avatar-768x707.png\";s:5:\"width\";i:768;s:6:\"height\";i:707;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"avatar-1024x943.png\";s:5:\"width\";i:1024;s:6:\"height\";i:943;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 34, '_edit_last', '1'),
(56, 34, '_edit_lock', '1564065615:1'),
(57, 34, '_thumbnail_id', '35'),
(67, 38, '_edit_last', '1'),
(68, 38, '_edit_lock', '1564764669:1'),
(69, 38, '_thumbnail_id', '35'),
(70, 34, '_wp_trash_meta_status', 'publish'),
(71, 34, '_wp_trash_meta_time', '1564065762'),
(72, 34, '_wp_desired_post_slug', 'about-us'),
(73, 2, '_edit_lock', '1564065642:1'),
(74, 39, '_edit_last', '1'),
(75, 39, '_edit_lock', '1564069334:1'),
(76, 41, '_edit_last', '1'),
(77, 41, '_edit_lock', '1564069562:1'),
(78, 38, 'skills', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus suscipit tortor eget felis porttitor volutpat.\r\nSed porttitor lectus nibh. Proin eget tortor risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\nQuisque velit nisi, pretium ut lacinia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Nulla porttitor accumsan tincidunt.'),
(79, 38, '_skills', 'field_5d39ce1099d73'),
(80, 38, 'short_text', 'Quisque velit nisi, pretium ut lacinia in, elementum id enim. Pellentesque in ipsum id orci porta dapibus. Nulla porttitor accumsan tincidunt.'),
(81, 38, '_short_text', 'field_5d39ce8458812'),
(82, 38, 'company', 'Empresa 01'),
(83, 38, '_company', 'field_5d39cea958813'),
(84, 38, 'input', '20010705'),
(85, 38, '_input', 'field_5d39ced858814'),
(86, 38, 'exit', '20030724'),
(87, 38, '_exit', 'field_5d39cf1058815'),
(88, 46, '_edit_last', '1'),
(89, 46, '_edit_lock', '1564069892:1'),
(90, 38, 'teste_entrada', '2019-07-06 00:00:00'),
(91, 38, '_teste_entrada', 'field_5d39d0064ebf9'),
(92, 38, 'teste_saida', '20190712'),
(93, 38, '_teste_saida', 'field_5d39d01d4ebfa'),
(94, 38, 'teste', ''),
(95, 38, '_teste', 'field_5d39cfdc4ebf8'),
(96, 41, '_wp_trash_meta_status', 'publish'),
(97, 41, '_wp_trash_meta_time', '1564070103'),
(98, 41, '_wp_desired_post_slug', 'group_5d39ce6714b5c'),
(99, 42, '_wp_trash_meta_status', 'publish'),
(100, 42, '_wp_trash_meta_time', '1564070104'),
(101, 42, '_wp_desired_post_slug', 'field_5d39ce8458812'),
(102, 43, '_wp_trash_meta_status', 'publish'),
(103, 43, '_wp_trash_meta_time', '1564070104'),
(104, 43, '_wp_desired_post_slug', 'field_5d39cea958813'),
(105, 44, '_wp_trash_meta_status', 'publish'),
(106, 44, '_wp_trash_meta_time', '1564070104'),
(107, 44, '_wp_desired_post_slug', 'field_5d39ced858814'),
(108, 45, '_wp_trash_meta_status', 'publish'),
(109, 45, '_wp_trash_meta_time', '1564070104'),
(110, 45, '_wp_desired_post_slug', 'field_5d39cf1058815'),
(111, 39, '_wp_trash_meta_status', 'publish'),
(112, 39, '_wp_trash_meta_time', '1564070105'),
(113, 39, '_wp_desired_post_slug', 'group_5d39cdf366194'),
(114, 40, '_wp_trash_meta_status', 'publish'),
(115, 40, '_wp_trash_meta_time', '1564070105'),
(116, 40, '_wp_desired_post_slug', 'field_5d39ce1099d73'),
(117, 46, '_wp_trash_meta_status', 'publish'),
(118, 46, '_wp_trash_meta_time', '1564070105'),
(119, 46, '_wp_desired_post_slug', 'group_5d39cfc05f1ef'),
(120, 47, '_wp_trash_meta_status', 'publish'),
(121, 47, '_wp_trash_meta_time', '1564070105'),
(122, 47, '_wp_desired_post_slug', 'field_5d39cfdc4ebf8'),
(123, 50, '_wp_trash_meta_status', 'publish'),
(124, 50, '_wp_trash_meta_time', '1564070106'),
(125, 50, '_wp_desired_post_slug', 'field_5d39d07d5e283'),
(126, 53, '_edit_last', '1'),
(127, 53, '_edit_lock', '1564763108:1'),
(128, 63, '_edit_last', '1'),
(129, 63, 'company_nane', 'Empresa tal'),
(130, 63, '_company_nane', 'field_5d39d2205fc82'),
(131, 63, 'input', '20190101'),
(132, 63, '_input', 'field_5d39d26a5fc83'),
(133, 63, 'exit', '20190105'),
(134, 63, '_exit', 'field_5d39d27b5fc84'),
(135, 63, 'function', 'Tech'),
(136, 63, '_function', 'field_5d39d34c9ff5d'),
(137, 63, 'summary', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.\r\n\r\nVivamus suscipit tortor eget felis porttitor volutpat. Cras ultricies ligula sed magna dictum porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nCras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat.'),
(138, 63, '_summary', 'field_5d39d3659ff5e'),
(139, 63, '_edit_lock', '1564074282:1'),
(140, 63, '_wp_old_slug', 'auto-draft'),
(141, 64, '_edit_last', '1'),
(142, 64, '_edit_lock', '1564071300:1'),
(143, 64, 'input', '20190201'),
(144, 64, '_input', 'field_5d39d26a5fc83'),
(145, 64, 'exit', '20190228'),
(146, 64, '_exit', 'field_5d39d27b5fc84'),
(147, 64, 'function', 'Tech 02'),
(148, 64, '_function', 'field_5d39d34c9ff5d'),
(149, 64, 'summary', 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.\r\n\r\nPellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Nulla porttitor accumsan tincidunt.'),
(150, 64, '_summary', 'field_5d39d3659ff5e'),
(151, 65, '_edit_last', '1'),
(152, 65, '_edit_lock', '1564149220:1'),
(153, 38, 'skill', 'Donec sollicitudin molestie malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Sed porttitor lectus nibh.'),
(154, 38, '_skill', 'field_5d39df30e3218'),
(155, 67, '_edit_last', '1'),
(156, 67, '_edit_lock', '1564074569:1'),
(157, 67, 'input', '20190701'),
(158, 67, '_input', 'field_5d39d26a5fc83'),
(159, 67, 'exit', '20190731'),
(160, 67, '_exit', 'field_5d39d27b5fc84'),
(161, 67, 'function', 'Tech 02'),
(162, 67, '_function', 'field_5d39d34c9ff5d'),
(163, 67, 'summary', 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Cras ultricies ligula sed magna dictum porta.\r\n\r\nQuisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Quisque velit nisi, pretium ut lacinia in, elementum id enim.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sollicitudin molestie malesuada. Pellentesque in ipsum id orci porta dapibus.'),
(164, 67, '_summary', 'field_5d39d3659ff5e'),
(165, 69, '_edit_lock', '1564680988:1'),
(168, 71, '_edit_last', '1'),
(169, 71, '_edit_lock', '1564076508:1'),
(170, 71, 'input', '20190709'),
(171, 71, '_input', 'field_5d39d26a5fc83'),
(172, 71, 'exit', '20190720'),
(173, 71, '_exit', 'field_5d39d27b5fc84'),
(174, 71, 'function', 'Outra Função'),
(175, 71, '_function', 'field_5d39d34c9ff5d'),
(176, 71, 'summary', 'Cras ultricies ligula sed magna dictum porta. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec sollicitudin molestie malesuada.\r\n\r\nDonec sollicitudin molestie malesuada. Proin eget tortor risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
(177, 71, '_summary', 'field_5d39d3659ff5e'),
(186, 76, '_edit_last', '1'),
(187, 76, '_edit_lock', '1564145711:1'),
(188, 77, '_edit_last', '1'),
(189, 77, '_edit_lock', '1564142086:1'),
(190, 77, 'certification', 'Microsoft Power BI'),
(191, 77, '_certification', 'field_5d39d26a5fc83'),
(192, 77, 'date', '20190703'),
(193, 77, '_date', 'field_5d3ae74e2473d'),
(194, 77, 'logo_certification', ''),
(195, 77, '_logo_certification', 'field_5d3ae7a62473e'),
(196, 77, 'details', 'Cras ultricies ligula sed magna dictum porta. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus.\r\n\r\nMauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus suscipit tortor eget felis porttitor volutpat. Sed porttitor lectus nibh.'),
(197, 77, '_details', 'field_5d3ae7db2473f'),
(198, 83, '_edit_last', '1'),
(199, 83, '_edit_lock', '1564144093:1'),
(200, 84, '_edit_last', '1'),
(201, 84, '_edit_lock', '1564145649:1'),
(202, 84, 'skill', 'Server'),
(203, 84, '_skill', 'field_5d39df30e3218'),
(204, 84, 'icon', 'fas fa-server'),
(205, 84, '_icon', 'field_5d3af0435ade2'),
(206, 84, 'icon_color', '#212121'),
(207, 84, '_icon_color', 'field_5d3af1365ade3'),
(208, 84, 'skill_percentage', '80'),
(209, 84, '_skill_percentage', 'field_5d3af18c5ade4'),
(210, 83, '_wp_trash_meta_status', 'draft'),
(211, 83, '_wp_trash_meta_time', '1564144240'),
(212, 83, '_wp_desired_post_slug', ''),
(213, 84, 'short_text', 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vivamus suscipit tortor eget felis porttitor volutpat. Donec rutrum congue leo eget malesuada.'),
(214, 84, '_short_text', 'field_5d3af3371b171'),
(215, 86, '_edit_last', '1'),
(216, 86, '_edit_lock', '1564145499:1'),
(217, 86, 'skill', 'html5'),
(218, 86, '_skill', 'field_5d39df30e3218'),
(219, 86, 'icon', 'fab fa-html5'),
(220, 86, '_icon', 'field_5d3af0435ade2'),
(221, 86, 'icon_color', '#dd8500'),
(222, 86, '_icon_color', 'field_5d3af1365ade3'),
(223, 86, 'skill_percentage', '60'),
(224, 86, '_skill_percentage', 'field_5d3af18c5ade4'),
(225, 86, 'short_text', 'Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Nulla porttitor accumsan tincidunt. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.'),
(226, 86, '_short_text', 'field_5d3af3371b171'),
(227, 88, '_edit_last', '1'),
(228, 88, '_edit_lock', '1564751226:1'),
(229, 38, 'short_text_skills', 'Check out my Skills below.'),
(230, 38, '_short_text_skills', 'field_5d3af73889914'),
(231, 76, '_wp_trash_meta_status', 'draft'),
(232, 76, '_wp_trash_meta_time', '1564145855'),
(233, 76, '_wp_desired_post_slug', ''),
(234, 90, '_edit_last', '1'),
(235, 90, '_edit_lock', '1564679182:1'),
(236, 90, 'certification', 'Adobe Photoshop'),
(237, 90, '_certification', 'field_5d39d26a5fc83'),
(238, 90, 'date', '20190720'),
(239, 90, '_date', 'field_5d3ae74e2473d'),
(240, 90, 'logo_certification', ''),
(241, 90, '_logo_certification', 'field_5d3ae7a62473e'),
(242, 90, 'details', 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla porttitor accumsan tincidunt. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.\r\n\r\nDonec rutrum congue leo eget malesuada. Nulla porttitor accumsan tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nPraesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Quisque velit nisi, pretium ut lacinia in, elementum id enim.\r\n\r\nProin eget tortor risus. Nulla quis lorem ut libero malesuada feugiat. Vivamus suscipit tortor eget felis porttitor volutpat.'),
(243, 90, '_details', 'field_5d3ae7db2473f'),
(244, 91, '_edit_last', '1'),
(245, 91, '_edit_lock', '1564147831:1'),
(246, 91, 'skill', 'Css3'),
(247, 91, '_skill', 'field_5d39df30e3218'),
(248, 91, 'icon', 'fab fa-css3'),
(249, 91, '_icon', 'field_5d3af0435ade2'),
(250, 91, 'icon_color', '#1e73be'),
(251, 91, '_icon_color', 'field_5d3af1365ade3'),
(252, 91, 'skill_percentage', '50'),
(253, 91, '_skill_percentage', 'field_5d3af18c5ade4'),
(254, 38, 'short_text_certifications', 'Check out my Certifications below.'),
(255, 38, '_short_text_certifications', 'field_5d3b021b6f258'),
(256, 38, 'short_text_courses', 'Check out my education profile below.'),
(257, 38, '_short_text_courses', 'field_5d3b024eeadeb'),
(258, 94, '_edit_last', '1'),
(259, 94, '_edit_lock', '1564761504:1'),
(260, 99, '_edit_last', '1'),
(261, 99, '_edit_lock', '1564688251:1'),
(262, 99, 'course', 'PHP'),
(263, 99, '_course', 'field_5d3b06a3580d3'),
(264, 99, 'start', '20190701'),
(265, 99, '_start', 'field_5d3b06fc89702'),
(266, 99, 'end', '20190731'),
(267, 99, '_end', 'field_5d3b072189703'),
(268, 99, 'text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Cras ultricies ligula sed magna dictum porta.\r\n\r\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Pellentesque in ipsum id orci porta dapibus.\r\n\r\nQuisque velit nisi, pretium ut lacinia in, elementum id enim. Cras ultricies ligula sed magna dictum porta. Donec sollicitudin molestie malesuada.'),
(269, 99, '_text', 'field_5d3b07a589704'),
(270, 100, '_edit_last', '1'),
(271, 100, '_edit_lock', '1564688124:1'),
(272, 100, 'course', 'Wordpress'),
(273, 100, '_course', 'field_5d3b06a3580d3'),
(274, 100, 'start', '20190703'),
(275, 100, '_start', 'field_5d3b06fc89702'),
(276, 100, 'end', '20190712'),
(277, 100, '_end', 'field_5d3b072189703'),
(278, 100, 'text', ''),
(279, 100, '_text', 'field_5d3b07a589704'),
(280, 101, '_edit_last', '1'),
(281, 101, '_edit_lock', '1564687996:1'),
(282, 101, 'course', 'JavaScript'),
(283, 101, '_course', 'field_5d3b06a3580d3'),
(284, 101, 'start', '20190710'),
(285, 101, '_start', 'field_5d3b06fc89702'),
(286, 101, 'end', '20190720'),
(287, 101, '_end', 'field_5d3b072189703'),
(288, 101, 'text', 'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Donec sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nVivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.\r\n\r\nVivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Sed porttitor lectus nibh.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat.'),
(289, 101, '_text', 'field_5d3b07a589704'),
(290, 102, '_edit_last', '1'),
(291, 102, '_edit_lock', '1564685729:1'),
(292, 102, 'certification', 'Cisco'),
(293, 102, '_certification', 'field_5d39d26a5fc83'),
(294, 102, 'date', '20190718'),
(295, 102, '_date', 'field_5d3ae74e2473d'),
(296, 102, 'logo_certification', '21'),
(297, 102, '_logo_certification', 'field_5d3ae7a62473e'),
(298, 102, 'details', 'Cras ultricies ligula sed magna dictum porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eget tortor risus.\r\n\r\nNulla porttitor accumsan tincidunt. Proin eget tortor risus. Curabitur aliquet quam id dui posuere blandit.\r\n\r\nCurabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Vivamus suscipit tortor eget felis porttitor volutpat.\r\n\r\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla porttitor accumsan tincidunt. Donec sollicitudin molestie malesuada.'),
(299, 102, '_details', 'field_5d3ae7db2473f'),
(300, 104, '_edit_last', '1'),
(301, 104, '_edit_lock', '1564679194:1'),
(302, 104, 'skill', 'Safety'),
(303, 104, '_skill', 'field_5d39df30e3218'),
(304, 104, 'icon', 'fas fa-lock'),
(305, 104, '_icon', 'field_5d3af0435ade2'),
(306, 104, 'icon_color', '#209b2a'),
(307, 104, '_icon_color', 'field_5d3af1365ade3'),
(308, 104, 'skill_percentage', '90'),
(309, 104, '_skill_percentage', 'field_5d3af18c5ade4'),
(310, 2, '_wp_trash_meta_status', 'publish'),
(311, 2, '_wp_trash_meta_time', '1564156528'),
(312, 2, '_wp_desired_post_slug', 'sample-page'),
(313, 3, '_wp_trash_meta_status', 'draft'),
(314, 3, '_wp_trash_meta_time', '1564156531'),
(315, 3, '_wp_desired_post_slug', 'privacy-policy'),
(316, 107, '_edit_last', '1'),
(317, 107, '_edit_lock', '1564156733:1'),
(318, 109, '_edit_last', '1'),
(319, 109, '_edit_lock', '1564679140:1'),
(320, 109, 'text', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet ex eaque earum nulla reiciendis quas, rem \r\ntempore eius corporis distinctio illum voluptas! Quaerat, amet nihil! Eos saepe dolore provident fugiat \r\nfacilis laudantium fuga ipsam distinctio, alias hic voluptate velit assumenda accusamus? Iusto dolorem \r\ndoloremque similique deleniti incidunt? Quod, fugit quas.'),
(321, 109, '_text', 'field_5d3b23a02b178'),
(322, 110, '_edit_last', '1'),
(323, 110, '_edit_lock', '1564158358:1'),
(324, 114, '_edit_last', '1'),
(325, 114, '_edit_lock', '1564158791:1'),
(326, 114, 'type', 'Cell Phone'),
(327, 114, '_type', 'field_5d3b25fa3b8ed'),
(328, 114, 'ddd', '61 2'),
(329, 114, '_ddd', 'field_5d3b26953b8ee'),
(330, 114, 'number', '8695-2365'),
(331, 114, '_number', 'field_5d3b26df3b8ef'),
(332, 115, '_edit_last', '1'),
(333, 115, '_edit_lock', '1564679152:1'),
(334, 115, 'type', 'Fixed'),
(335, 115, '_type', 'field_5d3b25fa3b8ed'),
(336, 115, 'ddd', '61 2'),
(337, 115, '_ddd', 'field_5d3b26953b8ee'),
(338, 115, 'number', '3562-3256'),
(339, 115, '_number', 'field_5d3b26df3b8ef'),
(340, 114, 'cod_pais', '+43'),
(341, 114, '_cod_pais', 'field_5d3b29ff124f7'),
(342, 115, 'cod_pais', '+43'),
(343, 115, '_cod_pais', 'field_5d3b29ff124f7'),
(344, 120, '_edit_last', '1'),
(345, 120, '_edit_lock', '1564159407:1'),
(346, 123, '_edit_last', '1'),
(347, 123, '_edit_lock', '1564160017:1'),
(348, 123, 'type', 'Private'),
(349, 123, '_type', 'field_5d3b2c952fa62'),
(350, 123, 'e-mail', 'kleberoliveira@gmail.com'),
(351, 123, '_e-mail', 'field_5d3b2cb82fa63'),
(352, 124, '_edit_last', '1'),
(353, 124, '_edit_lock', '1564679156:1'),
(354, 124, 'type', 'Business'),
(355, 124, '_type', 'field_5d3b2c952fa62'),
(356, 124, 'e-mail', 'kleber@koli.tech'),
(357, 124, '_e-mail', 'field_5d3b2cb82fa63'),
(358, 125, '_edit_last', '1'),
(359, 125, '_edit_lock', '1564160622:1'),
(360, 128, '_edit_last', '1'),
(361, 128, '_edit_lock', '1564160664:1'),
(362, 128, 'link_social_media', 'https://www.facebook.com'),
(363, 128, '_link_social_media', 'field_5d3b31fbe2e6e'),
(364, 128, 'icon_social_media', 'fab fa-facebook-square'),
(365, 128, '_icon_social_media', 'field_5d3b3245e2e6f'),
(366, 129, '_edit_last', '1'),
(367, 129, '_edit_lock', '1564160712:1'),
(368, 129, 'link_social_media', 'https://www.linkedin.com'),
(369, 129, '_link_social_media', 'field_5d3b31fbe2e6e'),
(370, 129, 'icon_social_media', 'fab fa-linkedin'),
(371, 129, '_icon_social_media', 'field_5d3b3245e2e6f'),
(372, 130, '_edit_last', '1'),
(373, 130, '_edit_lock', '1564160803:1'),
(374, 130, 'link_social_media', 'https://www.instagram.com'),
(375, 130, '_link_social_media', 'field_5d3b31fbe2e6e'),
(376, 130, 'icon_social_media', 'fab fa-instagram'),
(377, 130, '_icon_social_media', 'field_5d3b3245e2e6f'),
(423, 136, '_menu_item_type', 'post_type'),
(424, 136, '_menu_item_menu_item_parent', '0'),
(425, 136, '_menu_item_object_id', '17'),
(426, 136, '_menu_item_object', 'page'),
(427, 136, '_menu_item_target', ''),
(428, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(429, 136, '_menu_item_xfn', ''),
(430, 136, '_menu_item_url', ''),
(431, 136, '_menu_item_orphaned', '1564166727'),
(432, 137, '_menu_item_type', 'taxonomy'),
(433, 137, '_menu_item_menu_item_parent', '0'),
(434, 137, '_menu_item_object_id', '1'),
(435, 137, '_menu_item_object', 'category'),
(436, 137, '_menu_item_target', ''),
(437, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(438, 137, '_menu_item_xfn', ''),
(439, 137, '_menu_item_url', ''),
(440, 137, '_menu_item_orphaned', '1564166738'),
(459, 140, '_menu_item_type', 'post_type'),
(460, 140, '_menu_item_menu_item_parent', '0'),
(461, 140, '_menu_item_object_id', '15'),
(462, 140, '_menu_item_object', 'page'),
(463, 140, '_menu_item_target', ''),
(464, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(465, 140, '_menu_item_xfn', ''),
(466, 140, '_menu_item_url', ''),
(477, 142, '_edit_lock', '1564402078:1'),
(505, 147, '_edit_lock', '1564402360:1'),
(506, 142, '_wp_trash_meta_status', 'publish'),
(507, 142, '_wp_trash_meta_time', '1564402514'),
(508, 142, '_wp_desired_post_slug', 'categories'),
(509, 147, '_wp_trash_meta_status', 'publish'),
(510, 147, '_wp_trash_meta_time', '1564402514'),
(511, 147, '_wp_desired_post_slug', 'tech'),
(530, 151, '_edit_lock', '1564680971:1'),
(627, 163, '_menu_item_type', 'custom'),
(628, 163, '_menu_item_menu_item_parent', '0'),
(629, 163, '_menu_item_object_id', '163'),
(630, 163, '_menu_item_object', 'custom'),
(631, 163, '_menu_item_target', ''),
(632, 163, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(633, 163, '_menu_item_xfn', ''),
(634, 163, '_menu_item_url', '#'),
(635, 163, '_menu_item_orphaned', '1564411785'),
(786, 180, '_menu_item_type', 'post_type'),
(787, 180, '_menu_item_menu_item_parent', '0'),
(788, 180, '_menu_item_object_id', '17'),
(789, 180, '_menu_item_object', 'page'),
(790, 180, '_menu_item_target', ''),
(791, 180, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(792, 180, '_menu_item_xfn', ''),
(793, 180, '_menu_item_url', ''),
(803, 182, '_form', '<div class=\"form-group\">\n  <label for=\"your-name\">Your Name * : </label>\n  [text* your-name class:form-control id:your-name]\n</div>\n<div class=\"form-group\">\n  <label for=\"your-email\">Your Email * : </label>\n  [email* your-email  class:form-control id:your-email]\n</div>\n<div class=\"form-group\">\n  <label for=\"your-subject\">Subject : </label>\n  [text your-subject class:form-control id:your-subject]\n</div>\n<div class=\"form-group\">\n  <label for=\"your-message\">Your Message : </label>\n  [textarea your-message  class:form-control id:your-message]\n</div>\n<div class=\"form-group\">\n  [submit class:btn class:btn-primary class:btn-lg \"Send\"]\n</div>'),
(804, 182, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:25:\"kolitech \"[your-subject]\"\";s:6:\"sender\";s:36:\"kolitech <wordpress@kolitech-wp.dev>\";s:9:\"recipient\";s:23:\"klaytonfantin@gmail.com\";s:4:\"body\";s:169:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis email was sent from a contact form on kolitech (https://kolitech-wp.dev)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(805, 182, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:25:\"kolitech \"[your-subject]\"\";s:6:\"sender\";s:36:\"kolitech <wordpress@kolitech-wp.dev>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:111:\"Message Body:\n[your-message]\n\n-- \nThis email was sent from a contact form on kolitech (https://kolitech-wp.dev)\";s:18:\"additional_headers\";s:33:\"Reply-To: klaytonfantin@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(806, 182, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:37:\"The email address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(807, 182, '_additional_settings', ''),
(808, 182, '_locale', 'en_AU'),
(809, 183, '_edit_last', '1'),
(810, 183, '_edit_lock', '1564679161:1'),
(811, 183, 'link_social_media', 'https://www.twitter.com'),
(812, 183, '_link_social_media', 'field_5d3b31fbe2e6e'),
(813, 183, 'icon_social_media', 'fab fa-twitter-square'),
(814, 183, '_icon_social_media', 'field_5d3b3245e2e6f'),
(817, 32, '_edit_last', '1'),
(822, 32, '_expiration-date-status', 'saved'),
(897, 184, '_edit_lock', '1564489787:1'),
(898, 185, '_wp_attached_file', '2019/07/architecture-2804083_1280.jpg'),
(899, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:37:\"2019/07/architecture-2804083_1280.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"architecture-2804083_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"architecture-2804083_1280-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"architecture-2804083_1280-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"architecture-2804083_1280-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(900, 186, '_wp_attached_file', '2019/07/computer-1149148_1280.jpg'),
(901, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:33:\"2019/07/computer-1149148_1280.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"computer-1149148_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"computer-1149148_1280-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"computer-1149148_1280-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"computer-1149148_1280-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(902, 187, '_wp_attached_file', '2019/07/office-620822_1280.jpg'),
(903, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:850;s:4:\"file\";s:30:\"2019/07/office-620822_1280.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"office-620822_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"office-620822_1280-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"office-620822_1280-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"office-620822_1280-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(904, 188, '_wp_attached_file', '2019/07/sunset-3325080_1280.jpg'),
(905, 188, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:585;s:4:\"file\";s:31:\"2019/07/sunset-3325080_1280.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"sunset-3325080_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"sunset-3325080_1280-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"sunset-3325080_1280-768x351.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"sunset-3325080_1280-1024x468.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:468;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(908, 151, '_thumbnail_id', '189'),
(909, 151, '_edit_last', '1'),
(912, 151, '_expiration-date-status', 'saved'),
(919, 69, '_thumbnail_id', '187'),
(920, 69, '_edit_last', '1'),
(923, 69, '_expiration-date-status', 'saved'),
(926, 32, '_thumbnail_id', '186'),
(933, 30, '_thumbnail_id', '185'),
(934, 30, '_edit_last', '1'),
(937, 30, '_expiration-date-status', 'saved'),
(940, 28, '_thumbnail_id', '21'),
(941, 28, '_edit_last', '1'),
(944, 28, '_expiration-date-status', 'saved'),
(947, 1, '_thumbnail_id', '187'),
(950, 1, '_expiration-date-status', 'saved'),
(951, 189, '_wp_attached_file', '2019/07/elephant-1822636_1280.jpg'),
(952, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:873;s:4:\"file\";s:33:\"2019/07/elephant-1822636_1280.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"elephant-1822636_1280-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"elephant-1822636_1280-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"elephant-1822636_1280-768x524.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:524;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"elephant-1822636_1280-1024x698.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:698;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(965, 190, '_edit_lock', '1564506983:1'),
(966, 191, '_edit_lock', '1564755527:1'),
(975, 191, '_wp_page_template', 'page-certification.php'),
(976, 191, '_edit_last', '1'),
(977, 191, '_expiration-date-status', 'saved'),
(987, 102, '_expiration-date-status', 'saved'),
(988, 101, '_expiration-date-status', 'saved'),
(990, 94, '_expiration-date-status', 'saved'),
(991, 101, 'details', 'Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.\r\nVestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Sed porttitor lectus nibh.\r\nSed porttitor lectus nibh. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.\r\nMauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt. Proin eget tortor risus.\r\n\r\nCras ultricies ligula sed magna dictum porta. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.\r\nVestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Cras ultricies ligula sed magna dictum porta.\r\nCurabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus suscipit tortor eget felis porttitor volutpat. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.'),
(992, 101, '_details', 'field_5d3b07a589704'),
(994, 101, 'logo_courses', '187'),
(995, 101, '_logo_courses', 'field_5d408b4699933'),
(1005, 197, '_menu_item_type', 'post_type'),
(1006, 197, '_menu_item_menu_item_parent', '0'),
(1007, 197, '_menu_item_object_id', '15'),
(1008, 197, '_menu_item_object', 'page'),
(1009, 197, '_menu_item_target', ''),
(1010, 197, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1011, 197, '_menu_item_xfn', ''),
(1012, 197, '_menu_item_url', ''),
(1014, 198, '_edit_lock', '1564755062:1'),
(1015, 198, '_edit_last', '1'),
(1016, 198, '_expiration-date-status', 'saved'),
(1026, 201, '_menu_item_type', 'post_type'),
(1027, 201, '_menu_item_menu_item_parent', '0'),
(1028, 201, '_menu_item_object_id', '109'),
(1029, 201, '_menu_item_object', 'contact'),
(1030, 201, '_menu_item_target', ''),
(1031, 201, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1032, 201, '_menu_item_xfn', ''),
(1033, 201, '_menu_item_url', ''),
(1035, 202, '_menu_item_type', 'post_type'),
(1036, 202, '_menu_item_menu_item_parent', '0'),
(1037, 202, '_menu_item_object_id', '17'),
(1038, 202, '_menu_item_object', 'page'),
(1039, 202, '_menu_item_target', ''),
(1040, 202, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1041, 202, '_menu_item_xfn', ''),
(1042, 202, '_menu_item_url', ''),
(1044, 203, '_edit_lock', '1564680801:1'),
(1047, 203, '_thumbnail_id', '188'),
(1048, 203, '_edit_last', '1'),
(1051, 203, '_expiration-date', '1567134000'),
(1052, 203, '_expiration-date-options', 'a:4:{s:10:\"expireType\";s:15:\"category-remove\";s:2:\"id\";i:203;s:8:\"category\";a:1:{i:0;s:1:\"1\";}s:16:\"categoryTaxonomy\";s:8:\"category\";}'),
(1053, 203, '_expiration-date-status', 'saved'),
(1058, 17, '_edit_last', '1'),
(1059, 17, '_expiration-date-status', 'saved'),
(1060, 15, '_edit_last', '1'),
(1061, 15, '_expiration-date-status', 'saved'),
(1064, 205, '_menu_item_type', 'post_type'),
(1065, 205, '_menu_item_menu_item_parent', '0'),
(1066, 205, '_menu_item_object_id', '191'),
(1067, 205, '_menu_item_object', 'page'),
(1068, 205, '_menu_item_target', ''),
(1069, 205, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1070, 205, '_menu_item_xfn', ''),
(1071, 205, '_menu_item_url', ''),
(1073, 206, '_edit_lock', '1564675825:1'),
(1074, 206, '_wp_page_template', 'page-certifications.php'),
(1075, 206, '_edit_last', '1'),
(1076, 206, '_expiration-date-status', 'saved'),
(1077, 206, '_wp_trash_meta_status', 'publish'),
(1078, 206, '_wp_trash_meta_time', '1564675974'),
(1079, 206, '_wp_desired_post_slug', 'tag'),
(1088, 109, '_expiration-date-status', 'saved'),
(1089, 115, '_expiration-date-status', 'saved'),
(1090, 90, '_expiration-date-status', 'saved'),
(1091, 104, '_expiration-date-status', 'saved'),
(1093, 53, '_expiration-date-status', 'saved'),
(1094, 102, '_thumbnail_id', '21'),
(1113, 32, '_pingme', '1'),
(1114, 32, '_encloseme', '1'),
(1115, 208, '_edit_last', '1'),
(1116, 208, '_edit_lock', '1564683601:1'),
(1117, 209, '_wp_attached_file', '2019/08/klayton.png'),
(1118, 209, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:450;s:4:\"file\";s:19:\"2019/08/klayton.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"klayton-100x150.png\";s:5:\"width\";i:100;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"klayton-200x300.png\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1119, 208, '_thumbnail_id', '209'),
(1120, 208, '_expiration-date-status', 'saved'),
(1121, 210, '_edit_last', '1'),
(1122, 211, '_expiration-date-status', 'saved'),
(1123, 210, '_expiration-date-status', 'saved'),
(1124, 210, '_edit_lock', '1564683521:1'),
(1125, 208, 'link', 'https://www.klaytonfantin.com'),
(1126, 208, '_link', 'field_5d432cf9babb5'),
(1127, 213, '_edit_lock', '1564754603:1'),
(1128, 213, '_wp_page_template', ''),
(1129, 213, '_edit_last', '1'),
(1130, 213, '_expiration-date-status', 'saved'),
(1131, 215, '_menu_item_type', 'post_type'),
(1132, 215, '_menu_item_menu_item_parent', '0'),
(1133, 215, '_menu_item_object_id', '213'),
(1134, 215, '_menu_item_object', 'page'),
(1135, 215, '_menu_item_target', ''),
(1136, 215, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1137, 215, '_menu_item_xfn', ''),
(1138, 215, '_menu_item_url', ''),
(1140, 216, '_wp_attached_file', '2019/07/technology-1283624_1280.jpg'),
(1141, 216, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:35:\"2019/07/technology-1283624_1280.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"technology-1283624_1280-150x84.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:84;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"technology-1283624_1280-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"technology-1283624_1280-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"technology-1283624_1280-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"single\";a:4:{s:4:\"file\";s:36:\"technology-1283624_1280-1200x720.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1142, 101, '_thumbnail_id', '216'),
(1144, 101, 'excerpt', 'Proin eget tortor risus. Cras ultricies ligula sed magna dictum porta. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.\r\nVestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Sed porttitor lectus nibh.'),
(1145, 101, '_excerpt', 'field_5d4332c824d51'),
(1146, 73, '_expiration-date-status', 'saved'),
(1147, 96, '_expiration-date-status', 'saved'),
(1149, 219, '_wp_attached_file', '2019/07/wordpress-589121_1280.jpg'),
(1150, 219, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:847;s:4:\"file\";s:33:\"2019/07/wordpress-589121_1280.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"wordpress-589121_1280-150x99.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:99;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"wordpress-589121_1280-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"wordpress-589121_1280-768x508.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"wordpress-589121_1280-1024x678.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"single\";a:4:{s:4:\"file\";s:34:\"wordpress-589121_1280-1200x847.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:847;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1151, 100, '_thumbnail_id', '219'),
(1152, 100, '_expiration-date-status', 'saved'),
(1153, 220, '_wp_attached_file', '2019/07/php-2066704_1280.jpg'),
(1154, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:28:\"2019/07/php-2066704_1280.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"php-2066704_1280-150x100.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"php-2066704_1280-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"php-2066704_1280-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"php-2066704_1280-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"single\";a:4:{s:4:\"file\";s:29:\"php-2066704_1280-1200x853.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:853;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1155, 99, '_thumbnail_id', '220'),
(1156, 99, '_expiration-date-status', 'saved'),
(1157, 221, '_edit_last', '1'),
(1158, 221, '_edit_lock', '1564761197:1'),
(1159, 222, '_wp_attached_file', '2019/08/photoshop.jpg'),
(1160, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:886;s:4:\"file\";s:21:\"2019/08/photoshop.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"photoshop-150x104.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:104;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"photoshop-300x208.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"photoshop-768x532.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:532;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"photoshop-1024x709.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:709;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"single\";a:4:{s:4:\"file\";s:22:\"photoshop-1200x886.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:886;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1162, 221, 'start', '20190801'),
(1163, 221, '_start', 'field_5d3b06fc89702'),
(1164, 221, 'end', '20190831'),
(1165, 221, '_end', 'field_5d3b072189703'),
(1166, 221, '_expiration-date-status', 'saved'),
(1167, 221, '_yoast_wpseo_metadesc', 'Desenvolvimento de sites com qualidade e agilidade. Site entregue em até 5 dias.'),
(1168, 221, '_yoast_wpseo_content_score', '30'),
(1169, 224, '_edit_lock', '1564689681:1'),
(1170, 38, '_expiration-date-status', 'saved'),
(1171, 38, '_yoast_wpseo_content_score', '30'),
(1172, 226, '_expiration-date-status', 'saved'),
(1173, 88, '_expiration-date-status', 'saved'),
(1174, 38, 'short_text_about', 'I have a Bachelors degree in Systems Analysis, a postgraduate qualification in Information Security Management and MBA (Information Technology Management). I have worked in the IT industry for more than 15 years focusing on infrastructure.'),
(1175, 38, '_short_text_about', 'field_5d4435d49b7ea'),
(1176, 227, '_edit_lock', '1564757531:1'),
(1177, 227, '_wp_page_template', 'page-about.php'),
(1178, 227, '_edit_last', '1'),
(1179, 227, '_expiration-date-status', 'saved'),
(1180, 227, '_yoast_wpseo_content_score', '30'),
(1181, 191, '_yoast_wpseo_content_score', '30'),
(1182, 213, '_yoast_wpseo_content_score', '30'),
(1183, 229, '_menu_item_type', 'post_type'),
(1184, 229, '_menu_item_menu_item_parent', '0'),
(1185, 229, '_menu_item_object_id', '227'),
(1186, 229, '_menu_item_object', 'page'),
(1187, 229, '_menu_item_target', ''),
(1188, 229, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1189, 229, '_menu_item_xfn', ''),
(1190, 229, '_menu_item_url', ''),
(1192, 221, '_wp_trash_meta_status', 'publish'),
(1193, 221, '_wp_trash_meta_time', '1564761347'),
(1194, 221, '_wp_desired_post_slug', 'adobe-photoshop'),
(1195, 101, '_wp_trash_meta_status', 'publish'),
(1196, 101, '_wp_trash_meta_time', '1564761347'),
(1197, 101, '_wp_desired_post_slug', 'javascript'),
(1198, 100, '_wp_trash_meta_status', 'publish'),
(1199, 100, '_wp_trash_meta_time', '1564761348'),
(1200, 100, '_wp_desired_post_slug', 'wordpress'),
(1201, 99, '_wp_trash_meta_status', 'publish'),
(1202, 99, '_wp_trash_meta_time', '1564761348'),
(1203, 99, '_wp_desired_post_slug', 'php'),
(1204, 233, '_expiration-date-status', 'saved'),
(1205, 234, '_expiration-date-status', 'saved'),
(1206, 235, '_expiration-date-status', 'saved'),
(1207, 236, '_edit_last', '1'),
(1208, 236, '_edit_lock', '1564763009:1'),
(1209, 236, 'year', '20140805'),
(1210, 236, '_year', 'field_5d3b06fc89702'),
(1211, 236, 'instituition', 'FIAP'),
(1212, 236, '_instituition', 'field_5d445daa4ee3e'),
(1213, 236, 'local', 'São Paulo'),
(1214, 236, '_local', 'field_5d445dc24ee3f'),
(1215, 236, 'parents', 'Brazil'),
(1216, 236, '_parents', 'field_5d445dd14ee40'),
(1217, 236, '_expiration-date-status', 'saved'),
(1218, 236, '_yoast_wpseo_content_score', '30'),
(1219, 102, '_wp_trash_meta_status', 'publish'),
(1220, 102, '_wp_trash_meta_time', '1564763186'),
(1221, 102, '_wp_desired_post_slug', 'cisco'),
(1222, 90, '_wp_trash_meta_status', 'publish'),
(1223, 90, '_wp_trash_meta_time', '1564763187'),
(1224, 90, '_wp_desired_post_slug', 'adobe-photoshop'),
(1225, 77, '_wp_trash_meta_status', 'publish'),
(1226, 77, '_wp_trash_meta_time', '1564763187'),
(1227, 77, '_wp_desired_post_slug', 'power-bi'),
(1228, 237, '_edit_last', '1'),
(1229, 237, '_edit_lock', '1564763959:1'),
(1230, 237, 'theme', 'Windows 7 - Configuring '),
(1231, 237, '_theme', 'field_5d3ae74e2473d'),
(1232, 237, '_expiration-date-status', 'saved'),
(1233, 237, '_yoast_wpseo_content_score', '30'),
(1234, 239, '_edit_lock', '1564764387:1'),
(1235, 239, '_wp_page_template', 'page-skills.php'),
(1236, 239, '_edit_last', '1'),
(1237, 239, '_expiration-date-status', 'saved'),
(1238, 239, '_yoast_wpseo_content_score', '30'),
(1239, 241, '_menu_item_type', 'post_type'),
(1240, 241, '_menu_item_menu_item_parent', '0'),
(1241, 241, '_menu_item_object_id', '239'),
(1242, 241, '_menu_item_object', 'page'),
(1243, 241, '_menu_item_target', ''),
(1244, 241, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1245, 241, '_menu_item_xfn', ''),
(1246, 241, '_menu_item_url', ''),
(1248, 104, '_wp_trash_meta_status', 'publish'),
(1249, 104, '_wp_trash_meta_time', '1564764823'),
(1250, 104, '_wp_desired_post_slug', 'safety'),
(1251, 91, '_wp_trash_meta_status', 'publish'),
(1252, 91, '_wp_trash_meta_time', '1564764823'),
(1253, 91, '_wp_desired_post_slug', 'css3'),
(1254, 86, '_wp_trash_meta_status', 'publish'),
(1255, 86, '_wp_trash_meta_time', '1564764823'),
(1256, 86, '_wp_desired_post_slug', 'html5');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1257, 84, '_wp_trash_meta_status', 'publish'),
(1258, 84, '_wp_trash_meta_time', '1564764823'),
(1259, 84, '_wp_desired_post_slug', 'server'),
(1260, 242, '_edit_last', '1'),
(1261, 242, '_edit_lock', '1564766273:1'),
(1262, 242, 'skill', 'Windows Server 2008 / 2008 R2 / 2012 / 2012 R2 / 2016 '),
(1263, 242, '_skill', 'field_5d39df30e3218'),
(1264, 242, 'icon', 'fab fa-windows'),
(1265, 242, '_icon', 'field_5d3af0435ade2'),
(1266, 242, 'icon_color', '#20a7c9'),
(1267, 242, '_icon_color', 'field_5d3af1365ade3'),
(1268, 242, 'skill_percentage', '80'),
(1269, 242, '_skill_percentage', 'field_5d3af18c5ade4'),
(1270, 242, '_expiration-date-status', 'saved'),
(1271, 242, '_yoast_wpseo_content_score', '30');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-07-24 16:57:06', '2019-07-24 19:57:06', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\n<!-- /wp:paragraph -->', 'Article 01', 'Proin eget tortor risus. Lorem ipsum dolor sit amet.', 'publish', 'open', 'open', '', 'article-01', '', '', '2019-08-01 11:14:04', '2019-08-01 14:14:04', '', 0, 'https://kolitech-wp.dev/?p=1', 0, 'post', '', 0),
(2, 1, '2019-07-24 16:57:06', '2019-07-24 16:57:06', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://kolitech-wp.dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2019-07-26 15:55:28', '2019-07-26 15:55:28', '', 0, 'https://kolitech-wp.dev/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-07-24 16:57:06', '2019-07-24 16:57:06', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://kolitech-wp.dev.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-07-26 15:55:31', '2019-07-26 15:55:31', '', 0, 'https://kolitech-wp.dev/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-07-24 16:58:57', '2019-07-24 16:58:57', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Article 01', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-07-24 16:58:57', '2019-07-24 16:58:57', '', 1, 'https://kolitech-wp.dev/?p=5', 0, 'revision', '', 0),
(7, 1, '2019-07-24 17:00:23', '2019-07-24 17:00:23', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\n<!-- /wp:paragraph -->', 'Article 01', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-07-24 17:00:23', '2019-07-24 17:00:23', '', 1, 'https://kolitech-wp.dev/?p=7', 0, 'revision', '', 0),
(13, 1, '2019-07-24 19:50:34', '2019-07-24 19:50:34', 'teste', 'Teste', '', 'publish', 'open', 'closed', '', 'teste', '', '', '2019-07-24 19:50:48', '2019-07-24 19:50:48', '', 0, 'https://kolitech-wp.dev/?post_type=news&#038;p=13', 0, 'news', '', 0),
(14, 1, '2019-07-24 19:50:34', '2019-07-24 19:50:34', 'teste', 'Teste', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-07-24 19:50:34', '2019-07-24 19:50:34', '', 13, 'https://kolitech-wp.dev/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-07-25 11:42:03', '2019-07-25 11:42:03', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur 1. </p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-07-31 16:12:44', '2019-07-31 19:12:44', '', 0, 'https://kolitech-wp.dev/?page_id=15', 0, 'page', '', 0),
(16, 1, '2019-07-25 11:42:03', '2019-07-25 11:42:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-07-25 11:42:03', '2019-07-25 11:42:03', '', 15, 'https://kolitech-wp.dev/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-07-25 11:43:40', '2019-07-25 11:43:40', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-07-31 16:12:31', '2019-07-31 19:12:31', '', 0, 'https://kolitech-wp.dev/?page_id=17', 0, 'page', '', 0),
(18, 1, '2019-07-25 11:43:40', '2019-07-25 11:43:40', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-07-25 11:43:40', '2019-07-25 11:43:40', '', 17, 'https://kolitech-wp.dev/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-07-25 12:18:46', '2019-07-25 12:18:46', '', 'home-office', '', 'inherit', 'open', 'closed', '', 'home-office', '', '', '2019-07-25 12:18:46', '2019-07-25 12:18:46', '', 1, 'https://kolitech-wp.dev/wp-content/uploads/2019/07/home-office.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-07-25 12:30:31', '2019-07-25 12:30:31', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet consectetur.\n\n</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-07-25 12:30:31', '2019-07-25 12:30:31', '', 15, 'https://kolitech-wp.dev/15-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2019-07-25 12:31:20', '2019-07-25 12:31:20', '<!-- wp:paragraph -->\n<p> Lorem ipsum dolor sit amet consectetur 1. </p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-07-25 12:31:20', '2019-07-25 12:31:20', '', 15, 'https://kolitech-wp.dev/15-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-07-25 12:48:28', '2019-07-25 12:48:28', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2></h2>\n<!-- /wp:heading -->', 'Article 01', 'Proin eget tortor risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-07-25 12:48:28', '2019-07-25 12:48:28', '', 1, 'https://kolitech-wp.dev/1-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2019-07-25 12:48:37', '2019-07-25 12:48:37', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\n<!-- /wp:paragraph -->', 'Article 01', 'Proin eget tortor risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-07-25 12:48:37', '2019-07-25 12:48:37', '', 1, 'https://kolitech-wp.dev/1-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-07-25 12:49:00', '2019-07-25 12:49:00', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque in ipsum id orci porta dapibus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\n<!-- /wp:paragraph -->', 'Article 01', 'Proin eget tortor risus. Lorem ipsum dolor sit amet.', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-07-25 12:49:00', '2019-07-25 12:49:00', '', 1, 'https://kolitech-wp.dev/1-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-07-25 12:51:21', '2019-07-25 12:51:21', '<!-- wp:paragraph -->\n<p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec sollicitudin molestie malesuada.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque in ipsum id orci porta dapibus. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec sollicitudin molestie malesuada. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->', 'Article 02', 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'publish', 'open', 'open', '', 'article-02', '', '', '2019-07-30 09:38:20', '2019-07-30 12:38:20', '', 0, 'https://kolitech-wp.dev/?p=28', 0, 'post', '', 0),
(29, 1, '2019-07-25 12:51:21', '2019-07-25 12:51:21', '<!-- wp:paragraph -->\n<p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Donec sollicitudin molestie malesuada.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pellentesque in ipsum id orci porta dapibus. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec sollicitudin molestie malesuada. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->', 'Article 02', 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-07-25 12:51:21', '2019-07-25 12:51:21', '', 28, 'https://kolitech-wp.dev/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-07-25 12:51:53', '2019-07-25 12:51:53', '<!-- wp:paragraph -->\n<p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec rutrum congue leo eget malesuada. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus.</p>\n<!-- /wp:paragraph -->', 'Article 03', 'Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.', 'publish', 'open', 'open', '', 'article-03', '', '', '2019-07-30 09:38:07', '2019-07-30 12:38:07', '', 0, 'https://kolitech-wp.dev/?p=30', 0, 'post', '', 0),
(31, 1, '2019-07-25 12:51:53', '2019-07-25 12:51:53', '<!-- wp:paragraph -->\n<p>Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Donec rutrum congue leo eget malesuada. Quisque velit nisi, pretium ut lacinia in, elementum id enim.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras ultricies ligula sed magna dictum porta. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras ultricies ligula sed magna dictum porta. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Pellentesque in ipsum id orci porta dapibus.</p>\n<!-- /wp:paragraph -->', 'Article 03', 'Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-07-25 12:51:53', '2019-07-25 12:51:53', '', 30, 'https://kolitech-wp.dev/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-07-25 13:50:55', '2019-07-25 13:50:55', '<!-- wp:paragraph -->\n<p>Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Proin eget tortor risus. Donec rutrum congue leo eget malesuada.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->', 'Article 04', 'Curabitur arcu erat, accumsan id imperdiet et.', 'publish', 'open', 'open', '', 'article-04', '', '', '2019-08-01 14:38:15', '2019-08-01 17:38:15', '', 0, 'https://kolitech-wp.dev/?p=32', 0, 'post', '', 0),
(33, 1, '2019-07-25 13:50:55', '2019-07-25 13:50:55', '<!-- wp:paragraph -->\n<p>Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Proin eget tortor risus. Donec rutrum congue leo eget malesuada.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur aliquet quam id dui posuere blandit. Sed porttitor lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->', 'Article 04', 'Curabitur arcu erat, accumsan id imperdiet et.', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-07-25 13:50:55', '2019-07-25 13:50:55', '', 32, 'https://kolitech-wp.dev/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-07-25 14:16:37', '2019-07-25 14:16:37', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet ex eaque earum nulla reiciendis quas, rem tempore eius corporis distinctio illum voluptas! Quaerat, amet nihil! Eos saepe dolore provident fugiat facilis laudantium fuga ipsam distinctio, alias hic voluptate velit assumenda accusamus? Iusto dolorem doloremque similique deleniti incidunt? Quod, fugit quas.', 'About US', '', 'trash', 'closed', 'closed', '', 'about-us__trashed', '', '', '2019-07-25 14:42:43', '2019-07-25 14:42:43', '', 0, 'https://kolitech-wp.dev/?post_type=about&#038;p=34', 0, 'about', '', 0),
(35, 1, '2019-07-25 14:15:10', '2019-07-25 14:15:10', '', 'avatar', '', 'inherit', 'open', 'closed', '', 'avatar', '', '', '2019-07-25 14:15:10', '2019-07-25 14:15:10', '', 34, 'https://kolitech-wp.dev/wp-content/uploads/2019/07/avatar.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2019-07-25 14:16:37', '2019-07-25 14:16:37', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eveniet ex eaque earum nulla reiciendis quas, rem tempore eius corporis distinctio illum voluptas! Quaerat, amet nihil! Eos saepe dolore provident fugiat facilis laudantium fuga ipsam distinctio, alias hic voluptate velit assumenda accusamus? Iusto dolorem doloremque similique deleniti incidunt? Quod, fugit quas.', 'About US', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-07-25 14:16:37', '2019-07-25 14:16:37', '', 34, 'https://kolitech-wp.dev/34-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2019-07-25 14:37:47', '2019-07-25 14:37:47', 'I have a Bachelors degree in Systems Analysis, a postgraduate qualification in Information Security Management and MBA (Information Technology Management). I have worked in the IT industry for more than 15 years focusing on infrastructure.\r\n\r\nI have worked with several operating system platforms including: Microsoft Windows and Windows Server, Hyper V, SQL, System Center Datacenter, Exchange Server, Skype for Business, Lync Server, Office 365 and Azure. I also have experience in VMware, AWS and some Linux operating systems. I have implemented migration projects, consolidation and integration with the most diverse management systems for companies like Oracle, SAP and Microsoft.\r\n\r\nI am currently studying for AWS Architect certification and improving my skills in DevOps, navigating between Azure and AWS and on-premises systems. I am also studying a Diploma of Project Management.\r\n\r\nAs testimony to my industry experience, in my last project in Brazil I was one of the responsible for consolidating two companies in the education sector. I was responsible for transporting all cloud and on-premises servers from X Company to Y Company. I managed this process keeping all historical data integrity. After the consolidation process more than 40 systems were rationalised, achieving optimisation of resources and reducing operating costs.\r\n\r\nI have demonstrated experience in infrastructure management. In 20XX I managed six month project migrating 10,000 Active Directory accesses and resources from X Company to Y Company including all file structures, business applications and messaging services. This provided a seamless transition for the company to resume its business operations.\r\n\r\nI have cross-sectoral IT experience working on projects across education, retail, automotive and health industries in Brazil. I am a mature, professional, responsible and dynamic team player. I enjoy new challenges and hard work. I am passionate about working on IT projects and delivering exceptional quality to the client.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-08-02 13:53:24', '2019-08-02 16:53:24', '', 0, 'https://kolitech-wp.dev/?post_type=about&#038;p=38', 0, 'about', '', 0),
(39, 1, '2019-07-25 15:44:27', '2019-07-25 15:44:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"about\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About skills', 'about-skills', 'trash', 'closed', 'closed', '', 'group_5d39cdf366194__trashed', '', '', '2019-07-25 15:55:05', '2019-07-25 15:55:05', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2019-07-25 15:44:27', '2019-07-25 15:44:27', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Skills', 'skills', 'trash', 'closed', 'closed', '', 'field_5d39ce1099d73__trashed', '', '', '2019-07-25 15:55:05', '2019-07-25 15:55:05', '', 39, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=40', 0, 'acf-field', '', 0),
(41, 1, '2019-07-25 15:48:13', '2019-07-25 15:48:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"about\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About Experiences', 'about-experiences', 'trash', 'closed', 'closed', '', 'group_5d39ce6714b5c__trashed', '', '', '2019-07-25 15:55:03', '2019-07-25 15:55:03', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0),
(42, 1, '2019-07-25 15:48:13', '2019-07-25 15:48:13', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";i:255;s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Short Text', 'short_text', 'trash', 'closed', 'closed', '', 'field_5d39ce8458812__trashed', '', '', '2019-07-25 15:55:04', '2019-07-25 15:55:04', '', 41, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=42', 0, 'acf-field', '', 0),
(43, 1, '2019-07-25 15:48:14', '2019-07-25 15:48:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Company', 'company', 'trash', 'closed', 'closed', '', 'field_5d39cea958813__trashed', '', '', '2019-07-25 15:55:04', '2019-07-25 15:55:04', '', 41, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=43', 1, 'acf-field', '', 0),
(44, 1, '2019-07-25 15:48:14', '2019-07-25 15:48:14', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'Input', 'input', 'trash', 'closed', 'closed', '', 'field_5d39ced858814__trashed', '', '', '2019-07-25 15:55:04', '2019-07-25 15:55:04', '', 41, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=44', 2, 'acf-field', '', 0),
(45, 1, '2019-07-25 15:48:14', '2019-07-25 15:48:14', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'Exit', 'exit', 'trash', 'closed', 'closed', '', 'field_5d39cf1058815__trashed', '', '', '2019-07-25 15:55:05', '2019-07-25 15:55:05', '', 41, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=45', 3, 'acf-field', '', 0),
(46, 1, '2019-07-25 15:52:23', '2019-07-25 15:52:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"about\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'teste', 'teste', 'trash', 'closed', 'closed', '', 'group_5d39cfc05f1ef__trashed', '', '', '2019-07-25 15:55:05', '2019-07-25 15:55:05', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=46', 0, 'acf-field-group', '', 0),
(47, 1, '2019-07-25 15:52:23', '2019-07-25 15:52:23', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'teste', 'teste', 'trash', 'closed', 'closed', '', 'field_5d39cfdc4ebf8__trashed', '', '', '2019-07-25 15:55:05', '2019-07-25 15:55:05', '', 46, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=47', 0, 'acf-field', '', 0),
(48, 1, '2019-07-25 15:52:23', '2019-07-25 15:52:23', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:11:\"d/m/Y g:i a\";s:13:\"return_format\";s:11:\"d/m/Y g:i a\";s:9:\"first_day\";i:1;}', 'entrada', 'entrada', 'publish', 'closed', 'closed', '', 'field_5d39d0064ebf9', '', '', '2019-07-25 15:52:23', '2019-07-25 15:52:23', '', 47, 'https://kolitech-wp.dev/?post_type=acf-field&p=48', 0, 'acf-field', '', 0),
(49, 1, '2019-07-25 15:52:23', '2019-07-25 15:52:23', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'saida', 'saida', 'publish', 'closed', 'closed', '', 'field_5d39d01d4ebfa', '', '', '2019-07-25 15:52:23', '2019-07-25 15:52:23', '', 47, 'https://kolitech-wp.dev/?post_type=acf-field&p=49', 1, 'acf-field', '', 0),
(50, 1, '2019-07-25 15:53:53', '2019-07-25 15:53:53', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'teste (copy)', 'teste_copy', 'trash', 'closed', 'closed', '', 'field_5d39d07d5e283__trashed', '', '', '2019-07-25 15:55:06', '2019-07-25 15:55:06', '', 46, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=50', 1, 'acf-field', '', 0),
(51, 1, '2019-07-25 15:53:53', '2019-07-25 15:53:53', 'a:8:{s:4:\"type\";s:16:\"date_time_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:11:\"d/m/Y g:i a\";s:13:\"return_format\";s:11:\"d/m/Y g:i a\";s:9:\"first_day\";i:1;}', 'entrada', 'entrada', 'publish', 'closed', 'closed', '', 'field_5d39d07d5e284', '', '', '2019-07-25 15:53:53', '2019-07-25 15:53:53', '', 50, 'https://kolitech-wp.dev/?post_type=acf-field&p=51', 0, 'acf-field', '', 0),
(52, 1, '2019-07-25 15:53:53', '2019-07-25 15:53:53', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:5:\"d/m/Y\";s:9:\"first_day\";i:1;}', 'saida', 'saida', 'publish', 'closed', 'closed', '', 'field_5d39d07d5e285', '', '', '2019-07-25 15:53:53', '2019-07-25 15:53:53', '', 50, 'https://kolitech-wp.dev/?post_type=acf-field&p=52', 1, 'acf-field', '', 0),
(53, 1, '2019-07-25 16:02:20', '2019-07-25 16:02:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"certification\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About Certifications', 'about-certifications', 'publish', 'closed', 'closed', '', 'group_5d39d20767226', '', '', '2019-08-02 13:27:27', '2019-08-02 16:27:27', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=53', 0, 'acf-field-group', '', 0),
(63, 1, '2019-07-25 16:12:18', '2019-07-25 16:12:18', '', 'Empresa tal', '', 'publish', 'closed', 'closed', '', 'empresa-tal', '', '', '2019-07-25 16:16:23', '2019-07-25 16:16:23', '', 0, 'https://kolitech-wp.dev/?post_type=experience&#038;p=63', 0, 'experience', '', 0),
(64, 1, '2019-07-25 16:17:20', '2019-07-25 16:17:20', '', 'Outra Empresa', '', 'publish', 'closed', 'closed', '', 'outra-empresa', '', '', '2019-07-25 16:17:20', '2019-07-25 16:17:20', '', 0, 'https://kolitech-wp.dev/?post_type=experience&#038;p=64', 0, 'experience', '', 0),
(65, 1, '2019-07-25 16:56:35', '2019-07-25 16:56:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"skill\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About Skills', 'about-skills', 'publish', 'closed', 'closed', '', 'group_5d39df1d2ac52', '', '', '2019-07-26 12:53:39', '2019-07-26 12:53:39', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2019-07-25 16:56:35', '2019-07-25 16:56:35', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Skill', 'skill', 'publish', 'closed', 'closed', '', 'field_5d39df30e3218', '', '', '2019-07-26 12:29:02', '2019-07-26 12:29:02', '', 65, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=66', 0, 'acf-field', '', 0),
(67, 1, '2019-07-25 17:07:52', '2019-07-25 17:07:52', '', 'Mais uma empresa', '', 'publish', 'closed', 'closed', '', 'mais-uma-empresa', '', '', '2019-07-25 17:07:52', '2019-07-25 17:07:52', '', 0, 'https://kolitech-wp.dev/?post_type=experience&#038;p=67', 0, 'experience', '', 0),
(68, 1, '2019-07-25 17:13:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 17:13:21', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?post_type=about&p=68', 0, 'about', '', 0),
(69, 1, '2019-07-25 17:15:59', '2019-07-25 17:15:59', '<!-- wp:paragraph -->\n<p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec sollicitudin molestie malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->', 'New Article', 'Donec sollicitudin molestie malesuada.', 'publish', 'open', 'open', '', 'new-article', '', '', '2019-08-01 14:36:27', '2019-08-01 17:36:27', '', 0, 'https://kolitech-wp.dev/?p=69', 0, 'post', '', 0),
(70, 1, '2019-07-25 17:15:59', '2019-07-25 17:15:59', '<!-- wp:paragraph -->\n<p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Donec sollicitudin molestie malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Pellentesque in ipsum id orci porta dapibus. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<!-- /wp:paragraph -->', 'New Article', 'Donec sollicitudin molestie malesuada.', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2019-07-25 17:15:59', '2019-07-25 17:15:59', '', 69, 'https://kolitech-wp.dev/69-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-07-25 17:31:53', '2019-07-25 17:31:53', '', 'Empresa 04', '', 'publish', 'closed', 'closed', '', 'empresa-04', '', '', '2019-07-25 17:31:53', '2019-07-25 17:31:53', '', 0, 'https://kolitech-wp.dev/?post_type=experience&#038;p=71', 0, 'experience', '', 0),
(72, 1, '2019-07-26 11:41:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-26 11:41:13', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?post_type=certification&p=72', 0, 'certification', '', 0),
(73, 1, '2019-07-26 11:46:22', '2019-07-26 11:46:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Theme', 'theme', 'publish', 'closed', 'closed', '', 'field_5d3ae74e2473d', '', '', '2019-08-02 13:27:27', '2019-08-02 16:27:27', '', 53, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=73', 0, 'acf-field', '', 0),
(76, 1, '2019-07-26 12:57:35', '2019-07-26 12:57:35', '', 'Microsoft Power BI', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-07-26 12:57:35', '2019-07-26 12:57:35', '', 0, 'https://kolitech-wp.dev/?post_type=certification&#038;p=76', 0, 'certification', '', 0),
(77, 1, '2019-07-26 11:49:29', '2019-07-26 11:49:29', '', 'Power BI', '', 'trash', 'closed', 'closed', '', 'power-bi__trashed', '', '', '2019-08-02 13:26:27', '2019-08-02 16:26:27', '', 0, 'https://kolitech-wp.dev/?post_type=certification&#038;p=77', 0, 'certification', '', 0),
(78, 1, '2019-07-26 11:57:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-26 11:57:12', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?post_type=skill&p=78', 0, 'skill', '', 0),
(79, 1, '2019-07-26 12:20:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-26 12:20:45', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&p=79', 0, 'acf-field-group', '', 0),
(80, 1, '2019-07-26 12:28:32', '2019-07-26 12:28:32', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:113:\"Acessar o endereço https://fontawesome.com/icons?d=gallery e copiar o nome do ícone desejado. Ex.: fab fa-html5\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:26:\"Cole aqui o nome do ícone\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'icon', 'icon', 'publish', 'closed', 'closed', '', 'field_5d3af0435ade2', '', '', '2019-07-26 12:53:39', '2019-07-26 12:53:39', '', 65, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=80', 1, 'acf-field', '', 0),
(81, 1, '2019-07-26 12:28:32', '2019-07-26 12:28:32', 'a:6:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:27:\"Escolha a cor para o ícone\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";}', 'Icon Color', 'icon_color', 'publish', 'closed', 'closed', '', 'field_5d3af1365ade3', '', '', '2019-07-26 12:28:32', '2019-07-26 12:28:32', '', 65, 'https://kolitech-wp.dev/?post_type=acf-field&p=81', 2, 'acf-field', '', 0),
(82, 1, '2019-07-26 12:28:32', '2019-07-26 12:28:32', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:24:\"Incluir valor de 0 a 100\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:10;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Skill Percentage', 'skill_percentage', 'publish', 'closed', 'closed', '', 'field_5d3af18c5ade4', '', '', '2019-07-26 12:28:32', '2019-07-26 12:28:32', '', 65, 'https://kolitech-wp.dev/?post_type=acf-field&p=82', 3, 'acf-field', '', 0),
(83, 1, '2019-07-26 12:30:40', '2019-07-26 12:30:40', '', 'Server', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-07-26 12:30:40', '2019-07-26 12:30:40', '', 0, 'https://kolitech-wp.dev/?post_type=skill&#038;p=83', 0, 'skill', '', 0),
(84, 1, '2019-07-26 12:30:22', '2019-07-26 12:30:22', '', 'Server', '', 'trash', 'closed', 'closed', '', 'server__trashed', '', '', '2019-08-02 13:53:43', '2019-08-02 16:53:43', '', 0, 'https://kolitech-wp.dev/?post_type=skill&#038;p=84', 0, 'skill', '', 0),
(86, 1, '2019-07-26 12:46:01', '2019-07-26 12:46:01', '', 'Html5', '', 'trash', 'closed', 'closed', '', 'html5__trashed', '', '', '2019-08-02 13:53:43', '2019-08-02 16:53:43', '', 0, 'https://kolitech-wp.dev/?post_type=skill&#038;p=86', 0, 'skill', '', 0),
(87, 1, '2019-07-26 12:50:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-26 12:50:27', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&p=87', 0, 'acf-field-group', '', 0),
(88, 1, '2019-07-26 12:51:35', '2019-07-26 12:51:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"about\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Texts About', 'texts-about', 'publish', 'closed', 'closed', '', 'group_5d3af7284ba76', '', '', '2019-08-02 10:09:01', '2019-08-02 13:09:01', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2019-07-26 12:51:35', '2019-07-26 12:51:35', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Short Text Skills', 'short_text_skills', 'publish', 'closed', 'closed', '', 'field_5d3af73889914', '', '', '2019-07-26 12:51:35', '2019-07-26 12:51:35', '', 88, 'https://kolitech-wp.dev/?post_type=acf-field&p=89', 0, 'acf-field', '', 0),
(90, 1, '2019-07-26 12:58:07', '2019-07-26 12:58:07', '', 'Adobe Photoshop', '', 'trash', 'closed', 'closed', '', 'adobe-photoshop__trashed', '', '', '2019-08-02 13:26:27', '2019-08-02 16:26:27', '', 0, 'https://kolitech-wp.dev/?post_type=certification&#038;p=90', 0, 'certification', '', 0),
(91, 1, '2019-07-26 13:00:04', '2019-07-26 13:00:04', '', 'CSS3', '', 'trash', 'closed', 'closed', '', 'css3__trashed', '', '', '2019-08-02 13:53:43', '2019-08-02 16:53:43', '', 0, 'https://kolitech-wp.dev/?post_type=skill&#038;p=91', 0, 'skill', '', 0),
(92, 1, '2019-07-26 13:37:50', '2019-07-26 13:37:50', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Short Text Certifications', 'short_text_certifications', 'publish', 'closed', 'closed', '', 'field_5d3b021b6f258', '', '', '2019-07-26 13:37:50', '2019-07-26 13:37:50', '', 88, 'https://kolitech-wp.dev/?post_type=acf-field&p=92', 1, 'acf-field', '', 0),
(93, 1, '2019-07-26 13:38:35', '2019-07-26 13:38:35', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Short Text Courses', 'short_text_courses', 'publish', 'closed', 'closed', '', 'field_5d3b024eeadeb', '', '', '2019-07-26 13:38:35', '2019-07-26 13:38:35', '', 88, 'https://kolitech-wp.dev/?post_type=acf-field&p=93', 2, 'acf-field', '', 0),
(94, 1, '2019-07-26 13:57:23', '2019-07-26 13:57:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"courses\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'About EDUCATION PROFILE', 'about-education-profile', 'publish', 'closed', 'closed', '', 'group_5d3b0698e34a6', '', '', '2019-08-02 13:00:43', '2019-08-02 16:00:43', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=94', 0, 'acf-field-group', '', 0),
(96, 1, '2019-07-26 14:01:36', '2019-07-26 14:01:36', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:1:\"Y\";s:13:\"return_format\";s:1:\"Y\";s:9:\"first_day\";i:1;}', 'Year', 'year', 'publish', 'closed', 'closed', '', 'field_5d3b06fc89702', '', '', '2019-08-02 12:57:42', '2019-08-02 15:57:42', '', 94, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=96', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(99, 1, '2019-07-26 14:02:21', '2019-07-26 14:02:21', 'Curabitur aliquet quam id dui posuere blandit. Curabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.\r\n\r\nMauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.\r\n\r\nCurabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Quisque velit nisi, pretium ut lacinia in, elementum id enim.\r\n\r\nPraesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Quisque velit nisi, pretium ut lacinia in, elementum id enim.', 'PHP', 'Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.', 'trash', 'closed', 'closed', '', 'php__trashed', '', '', '2019-08-02 12:55:48', '2019-08-02 15:55:48', '', 0, 'https://kolitech-wp.dev/?post_type=courses&#038;p=99', 0, 'courses', '', 0),
(100, 1, '2019-07-26 14:03:12', '2019-07-26 14:03:12', 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nPellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat. Nulla porttitor accumsan tincidunt.\r\n\r\nCras ultricies ligula sed magna dictum porta. Donec rutrum congue leo eget malesuada. Proin eget tortor risus.\r\n\r\nNulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.', 'Wordpress', 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla quis lorem ut libero malesuada feugiat.', 'trash', 'closed', 'closed', '', 'wordpress__trashed', '', '', '2019-08-02 12:55:48', '2019-08-02 15:55:48', '', 0, 'https://kolitech-wp.dev/?post_type=courses&#038;p=100', 0, 'courses', '', 0),
(101, 1, '2019-07-26 14:03:41', '2019-07-26 14:03:41', 'Sed porttitor lectus nibh. Proin eget tortor risus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.\r\n\r\nPellentesque in ipsum id orci porta dapibus. Cras ultricies ligula sed magna dictum porta. Nulla quis lorem ut libero malesuada feugiat.\r\n\r\nNulla porttitor accumsan tincidunt. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla porttitor accumsan tincidunt.\r\n\r\nCurabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.', 'JavaScript', 'Curabitur aliquet quam id dui posuere blandit. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.', 'trash', 'closed', 'closed', '', 'javascript__trashed', '', '', '2019-08-02 12:55:47', '2019-08-02 15:55:47', '', 0, 'https://kolitech-wp.dev/?post_type=courses&#038;p=101', 0, 'courses', '', 0),
(102, 1, '2019-07-26 14:23:09', '2019-07-26 14:23:09', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla porttitor accumsan tincidunt. Proin eget tortor risus.\r\n\r\nDonec sollicitudin molestie malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.\r\n\r\nPraesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi.\r\n\r\nCurabitur aliquet quam id dui posuere blandit. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.', 'Cisco', 'Donec sollicitudin molestie malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.', 'trash', 'closed', 'closed', '', 'cisco__trashed', '', '', '2019-08-02 13:26:27', '2019-08-02 16:26:27', '', 0, 'https://kolitech-wp.dev/?post_type=certification&#038;p=102', 0, 'certification', '', 0),
(103, 1, '2019-07-26 14:23:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-26 14:23:38', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?post_type=certification&p=103', 0, 'certification', '', 0),
(104, 1, '2019-07-26 14:27:59', '2019-07-26 14:27:59', '', 'Safety', '', 'trash', 'closed', 'closed', '', 'safety__trashed', '', '', '2019-08-02 13:53:43', '2019-08-02 16:53:43', '', 0, 'https://kolitech-wp.dev/?post_type=skill&#038;p=104', 0, 'skill', '', 0),
(105, 1, '2019-07-26 15:55:28', '2019-07-26 15:55:28', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://kolitech-wp.dev/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-07-26 15:55:28', '2019-07-26 15:55:28', '', 2, 'https://kolitech-wp.dev/2-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-07-26 15:55:31', '2019-07-26 15:55:31', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: https://kolitech-wp.dev.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-07-26 15:55:31', '2019-07-26 15:55:31', '', 3, 'https://kolitech-wp.dev/3-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-07-26 16:01:11', '2019-07-26 16:01:11', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"contact\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contact Section', 'contact-section', 'publish', 'closed', 'closed', '', 'group_5d3b238cf1743', '', '', '2019-07-26 16:01:11', '2019-07-26 16:01:11', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=107', 0, 'acf-field-group', '', 0),
(108, 1, '2019-07-26 16:01:11', '2019-07-26 16:01:11', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_5d3b23a02b178', '', '', '2019-07-26 16:01:11', '2019-07-26 16:01:11', '', 107, 'https://kolitech-wp.dev/?post_type=acf-field&p=108', 0, 'acf-field', '', 0),
(109, 1, '2019-07-26 16:02:13', '2019-07-26 16:02:13', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-08-01 14:08:02', '2019-08-01 17:08:02', '', 0, 'https://kolitech-wp.dev/?post_type=contact&#038;p=109', 0, 'contact', '', 0),
(110, 1, '2019-07-26 16:15:12', '2019-07-26 16:15:12', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"telephone\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Telephones Contact', 'telephones-contact', 'publish', 'closed', 'closed', '', 'group_5d3b25e797939', '', '', '2019-07-26 16:28:11', '2019-07-26 16:28:11', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=110', 0, 'acf-field-group', '', 0),
(111, 1, '2019-07-26 16:15:12', '2019-07-26 16:15:12', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:5:\"Fixed\";s:5:\"Fixed\";s:10:\"Cell Phone\";s:10:\"Cell Phone\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Type', 'type', 'publish', 'closed', 'closed', '', 'field_5d3b25fa3b8ed', '', '', '2019-07-26 16:15:12', '2019-07-26 16:15:12', '', 110, 'https://kolitech-wp.dev/?post_type=acf-field&p=111', 0, 'acf-field', '', 0),
(112, 1, '2019-07-26 16:15:12', '2019-07-26 16:15:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'DDD', 'ddd', 'publish', 'closed', 'closed', '', 'field_5d3b26953b8ee', '', '', '2019-07-26 16:17:46', '2019-07-26 16:17:46', '', 110, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=112', 1, 'acf-field', '', 0),
(113, 1, '2019-07-26 16:15:12', '2019-07-26 16:15:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Number', 'number', 'publish', 'closed', 'closed', '', 'field_5d3b26df3b8ef', '', '', '2019-07-26 16:18:02', '2019-07-26 16:18:02', '', 110, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=113', 2, 'acf-field', '', 0),
(114, 1, '2019-07-26 16:18:49', '2019-07-26 16:18:49', '', 'Telephone 01', '', 'publish', 'closed', 'closed', '', 'telephone-01', '', '', '2019-07-26 16:29:04', '2019-07-26 16:29:04', '', 0, 'https://kolitech-wp.dev/?post_type=telephone&#038;p=114', 0, 'telephone', '', 0),
(115, 1, '2019-07-26 16:19:23', '2019-07-26 16:19:23', '', 'Telephone 02', '', 'publish', 'closed', 'closed', '', 'telephone-02', '', '', '2019-08-01 14:08:12', '2019-08-01 17:08:12', '', 0, 'https://kolitech-wp.dev/?post_type=telephone&#038;p=115', 0, 'telephone', '', 0),
(116, 1, '2019-07-26 16:28:11', '2019-07-26 16:28:11', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Cod País', 'cod_pais', 'publish', 'closed', 'closed', '', 'field_5d3b29ff124f7', '', '', '2019-07-26 16:28:11', '2019-07-26 16:28:11', '', 110, 'https://kolitech-wp.dev/?post_type=acf-field&p=116', 3, 'acf-field', '', 0),
(117, 1, '2019-07-26 16:35:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-26 16:35:41', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?post_type=home-emails&p=117', 0, 'home-emails', '', 0),
(118, 1, '2019-07-26 16:36:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-26 16:36:29', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?post_type=home-emails&p=118', 0, 'home-emails', '', 0),
(119, 1, '2019-07-26 16:36:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-26 16:36:56', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&p=119', 0, 'acf-field-group', '', 0),
(120, 1, '2019-07-26 16:39:59', '2019-07-26 16:39:59', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"home-emails\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'E-mails Contact', 'e-mails-contact', 'publish', 'closed', 'closed', '', 'group_5d3b2c81f2ab0', '', '', '2019-07-26 16:45:49', '2019-07-26 16:45:49', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=120', 0, 'acf-field-group', '', 0),
(121, 1, '2019-07-26 16:39:59', '2019-07-26 16:39:59', 'a:13:{s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:8:\"Business\";s:8:\"Business\";s:7:\"Private\";s:7:\"Private\";}s:13:\"default_value\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:0;s:2:\"ui\";i:0;s:13:\"return_format\";s:5:\"value\";s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Type', 'type', 'publish', 'closed', 'closed', '', 'field_5d3b2c952fa62', '', '', '2019-07-26 16:41:52', '2019-07-26 16:41:52', '', 120, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=121', 0, 'acf-field', '', 0),
(122, 1, '2019-07-26 16:40:00', '2019-07-26 16:40:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'E-mail', 'e-mail', 'publish', 'closed', 'closed', '', 'field_5d3b2cb82fa63', '', '', '2019-07-26 16:45:49', '2019-07-26 16:45:49', '', 120, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=122', 1, 'acf-field', '', 0),
(123, 1, '2019-07-26 16:42:29', '2019-07-26 16:42:29', '', 'E-mail Pessoal', '', 'publish', 'closed', 'closed', '', 'e-mail-pessoal', '', '', '2019-07-26 16:42:29', '2019-07-26 16:42:29', '', 0, 'https://kolitech-wp.dev/?post_type=home-emails&#038;p=123', 0, 'home-emails', '', 0),
(124, 1, '2019-07-26 16:43:15', '2019-07-26 16:43:15', '', 'E-mail Kolitech', '', 'publish', 'closed', 'closed', '', 'e-mail-kolitech', '', '', '2019-07-26 16:45:57', '2019-07-26 16:45:57', '', 0, 'https://kolitech-wp.dev/?post_type=home-emails&#038;p=124', 0, 'home-emails', '', 0),
(125, 1, '2019-07-26 17:06:00', '2019-07-26 17:06:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"social-medias\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Social Media Contact', 'social-media-contact', 'publish', 'closed', 'closed', '', 'group_5d3b31f258a01', '', '', '2019-07-26 17:06:01', '2019-07-26 17:06:01', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=125', 0, 'acf-field-group', '', 0),
(126, 1, '2019-07-26 17:06:00', '2019-07-26 17:06:00', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:52:\"Cole aqui o endereço de sua página na midia social\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link Social Media', 'link_social_media', 'publish', 'closed', 'closed', '', 'field_5d3b31fbe2e6e', '', '', '2019-07-26 17:06:00', '2019-07-26 17:06:00', '', 125, 'https://kolitech-wp.dev/?post_type=acf-field&p=126', 0, 'acf-field', '', 0),
(127, 1, '2019-07-26 17:06:01', '2019-07-26 17:06:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:109:\"Acessar o site https://fontawesome.com/icons?d=gallery e copiar o nome do ícone. Ex.: fab fa-facebook-square\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Icon Social Media', 'icon_social_media', 'publish', 'closed', 'closed', '', 'field_5d3b3245e2e6f', '', '', '2019-07-26 17:06:01', '2019-07-26 17:06:01', '', 125, 'https://kolitech-wp.dev/?post_type=acf-field&p=127', 1, 'acf-field', '', 0),
(128, 1, '2019-07-26 17:06:46', '2019-07-26 17:06:46', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2019-07-26 17:06:46', '2019-07-26 17:06:46', '', 0, 'https://kolitech-wp.dev/?post_type=social-medias&#038;p=128', 0, 'social-medias', '', 0),
(129, 1, '2019-07-26 17:07:31', '2019-07-26 17:07:31', '', 'Linkedin', '', 'publish', 'closed', 'closed', '', 'linkedin', '', '', '2019-07-26 17:07:31', '2019-07-26 17:07:31', '', 0, 'https://kolitech-wp.dev/?post_type=social-medias&#038;p=129', 0, 'social-medias', '', 0),
(130, 1, '2019-07-26 17:08:20', '2019-07-26 17:08:20', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2019-07-26 17:08:20', '2019-07-26 17:08:20', '', 0, 'https://kolitech-wp.dev/?post_type=social-medias&#038;p=130', 0, 'social-medias', '', 0),
(136, 1, '2019-07-26 18:45:26', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-26 18:45:26', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?p=136', 1, 'nav_menu_item', '', 0),
(137, 1, '2019-07-26 18:45:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-26 18:45:38', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?p=137', 1, 'nav_menu_item', '', 0),
(140, 1, '2019-07-26 19:12:06', '2019-07-26 19:12:06', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2019-07-30 14:55:53', '2019-07-30 17:55:53', '', 0, 'https://kolitech-wp.dev/?p=140', 1, 'nav_menu_item', '', 0),
(142, 1, '2019-07-29 12:10:13', '2019-07-29 12:10:13', '', 'Categories', '', 'trash', 'closed', 'closed', '', 'categories__trashed', '', '', '2019-07-29 12:15:14', '2019-07-29 12:15:14', '', 0, 'https://kolitech-wp.dev/?page_id=142', 0, 'page', '', 0),
(143, 1, '2019-07-29 12:10:13', '2019-07-29 12:10:13', '', 'Categories', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2019-07-29 12:10:13', '2019-07-29 12:10:13', '', 142, 'https://kolitech-wp.dev/142-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2019-07-29 12:14:33', '2019-07-29 12:14:33', '', 'Tech', '', 'trash', 'closed', 'closed', '', 'tech__trashed', '', '', '2019-07-29 12:15:14', '2019-07-29 12:15:14', '', 142, 'https://kolitech-wp.dev/?page_id=147', 0, 'page', '', 0),
(148, 1, '2019-07-29 12:14:33', '2019-07-29 12:14:33', '', 'Tech', '', 'inherit', 'closed', 'closed', '', '147-revision-v1', '', '', '2019-07-29 12:14:33', '2019-07-29 12:14:33', '', 147, 'https://kolitech-wp.dev/147-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2019-07-29 12:39:38', '2019-07-29 12:39:38', '<!-- wp:paragraph -->\n<p>Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec rutrum congue leo eget malesuada. Nulla porttitor accumsan tincidunt.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus suscipit tortor eget felis porttitor volutpat. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec rutrum congue leo eget malesuada. Pellentesque in ipsum id orci porta dapibus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n<!-- /wp:paragraph -->', 'Post 01', 'Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec rutrum congue leo eget malesuada. Nulla porttitor accumsan tincidunt.', 'publish', 'open', 'open', '', 'post-01', '', '', '2019-08-01 14:36:10', '2019-08-01 17:36:10', '', 0, 'https://kolitech-wp.dev/?p=151', 0, 'post', '', 0),
(152, 1, '2019-07-29 12:39:38', '2019-07-29 12:39:38', '', 'Post 01', '', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2019-07-29 12:39:38', '2019-07-29 12:39:38', '', 151, 'https://kolitech-wp.dev/151-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2019-07-29 14:49:44', '0000-00-00 00:00:00', '', 'Categories', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-29 14:49:44', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?p=163', 1, 'nav_menu_item', '', 0),
(180, 1, '2019-07-29 19:05:42', '2019-07-29 19:05:42', ' ', '', '', 'publish', 'closed', 'closed', '', '180', '', '', '2019-07-30 14:55:53', '2019-07-30 17:55:53', '', 0, 'https://kolitech-wp.dev/?p=180', 2, 'nav_menu_item', '', 0),
(181, 1, '2019-07-29 19:59:34', '2019-07-29 19:59:34', '<!-- wp:paragraph -->\n<p>Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec rutrum congue leo eget malesuada. Nulla porttitor accumsan tincidunt.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus suscipit tortor eget felis porttitor volutpat. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Cras ultricies ligula sed magna dictum porta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur aliquet quam id dui posuere blandit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Donec rutrum congue leo eget malesuada. Pellentesque in ipsum id orci porta dapibus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n<!-- /wp:paragraph -->', 'Post 01', 'Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Donec rutrum congue leo eget malesuada. Nulla porttitor accumsan tincidunt.', 'inherit', 'closed', 'closed', '', '151-revision-v1', '', '', '2019-07-29 19:59:34', '2019-07-29 19:59:34', '', 151, 'https://kolitech-wp.dev/151-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2019-07-30 11:07:53', '2019-07-30 11:07:53', '<div class=\"form-group\">\r\n  <label for=\"your-name\">Your Name * : </label>\r\n  [text* your-name class:form-control id:your-name]\r\n</div>\r\n<div class=\"form-group\">\r\n  <label for=\"your-email\">Your Email * : </label>\r\n  [email* your-email  class:form-control id:your-email]\r\n</div>\r\n<div class=\"form-group\">\r\n  <label for=\"your-subject\">Subject : </label>\r\n  [text your-subject class:form-control id:your-subject]\r\n</div>\r\n<div class=\"form-group\">\r\n  <label for=\"your-message\">Your Message : </label>\r\n  [textarea your-message  class:form-control id:your-message]\r\n</div>\r\n<div class=\"form-group\">\r\n  [submit class:btn class:btn-primary class:btn-lg \"Send\"]\r\n</div>\n1\nkolitech \"[your-subject]\"\nkolitech <wordpress@kolitech-wp.dev>\nklaytonfantin@gmail.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email was sent from a contact form on kolitech (https://kolitech-wp.dev)\nReply-To: [your-email]\n\n\n\n\nkolitech \"[your-subject]\"\nkolitech <wordpress@kolitech-wp.dev>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email was sent from a contact form on kolitech (https://kolitech-wp.dev)\nReply-To: klaytonfantin@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe email address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact Index', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-07-30 11:39:23', '2019-07-30 11:39:23', '', 0, 'https://kolitech-wp.dev/?post_type=wpcf7_contact_form&#038;p=182', 0, 'wpcf7_contact_form', '', 0),
(183, 1, '2019-07-30 11:47:04', '2019-07-30 11:47:04', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2019-07-30 11:47:04', '2019-07-30 11:47:04', '', 0, 'https://kolitech-wp.dev/?post_type=social-medias&#038;p=183', 0, 'social-medias', '', 0),
(184, 1, '2019-07-30 09:32:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-30 09:32:00', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?p=184', 0, 'wp_block', '', 0),
(185, 1, '2019-07-30 09:36:53', '2019-07-30 12:36:53', '', 'architecture-2804083_1280', '', 'inherit', 'open', 'closed', '', 'architecture-2804083_1280', '', '', '2019-07-30 09:36:53', '2019-07-30 12:36:53', '', 151, 'https://kolitech-wp.dev/wp-content/uploads/2019/07/architecture-2804083_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2019-07-30 09:36:54', '2019-07-30 12:36:54', '', 'computer-1149148_1280', '', 'inherit', 'open', 'closed', '', 'computer-1149148_1280', '', '', '2019-07-30 09:36:54', '2019-07-30 12:36:54', '', 151, 'https://kolitech-wp.dev/wp-content/uploads/2019/07/computer-1149148_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2019-07-30 09:36:55', '2019-07-30 12:36:55', '', 'office-620822_1280', '', 'inherit', 'open', 'closed', '', 'office-620822_1280', '', '', '2019-07-30 09:36:55', '2019-07-30 12:36:55', '', 151, 'https://kolitech-wp.dev/wp-content/uploads/2019/07/office-620822_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2019-07-30 09:36:56', '2019-07-30 12:36:56', '', 'sunset-3325080_1280', '', 'inherit', 'open', 'closed', '', 'sunset-3325080_1280', '', '', '2019-07-30 09:36:56', '2019-07-30 12:36:56', '', 151, 'https://kolitech-wp.dev/wp-content/uploads/2019/07/sunset-3325080_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(189, 1, '2019-07-30 10:33:17', '2019-07-30 13:33:17', '', 'elephant-1822636_1280', '', 'inherit', 'open', 'closed', '', 'elephant-1822636_1280', '', '', '2019-07-30 10:33:17', '2019-07-30 13:33:17', '', 151, 'https://kolitech-wp.dev/wp-content/uploads/2019/07/elephant-1822636_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2019-07-30 14:18:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-30 14:18:33', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?page_id=190', 0, 'page', '', 0),
(191, 1, '2019-07-30 14:19:01', '2019-07-30 17:19:01', '', 'Certifications', '', 'publish', 'closed', 'closed', '', 'certification', '', '', '2019-08-02 11:17:53', '2019-08-02 14:17:53', '', 15, 'https://kolitech-wp.dev/?page_id=191', 0, 'page', '', 0),
(193, 1, '2019-07-30 14:19:01', '2019-07-30 17:19:01', '', 'Certification', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2019-07-30 14:19:01', '2019-07-30 17:19:01', '', 191, 'https://kolitech-wp.dev/191-revision-v1/', 0, 'revision', '', 0),
(197, 1, '2019-07-30 15:58:07', '2019-07-30 18:58:07', ' ', '', '', 'publish', 'closed', 'closed', '', '197', '', '', '2019-08-02 13:49:07', '2019-08-02 16:49:07', '', 0, 'https://kolitech-wp.dev/?p=197', 1, 'nav_menu_item', '', 0),
(198, 1, '2019-07-30 16:12:00', '2019-07-30 19:12:00', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-07-30 16:12:01', '2019-07-30 19:12:01', '', 0, 'https://kolitech-wp.dev/?page_id=198', 0, 'page', '', 0),
(199, 1, '2019-07-30 16:12:00', '2019-07-30 19:12:00', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '198-revision-v1', '', '', '2019-07-30 16:12:00', '2019-07-30 19:12:00', '', 198, 'https://kolitech-wp.dev/198-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2019-07-30 16:21:37', '2019-07-30 19:21:37', ' ', '', '', 'publish', 'closed', 'closed', '', '201', '', '', '2019-08-02 13:49:08', '2019-08-02 16:49:08', '', 0, 'https://kolitech-wp.dev/?p=201', 6, 'nav_menu_item', '', 0),
(202, 1, '2019-07-30 16:29:02', '2019-07-30 19:29:02', ' ', '', '', 'publish', 'closed', 'closed', '', '202', '', '', '2019-08-02 13:49:08', '2019-08-02 16:49:08', '', 0, 'https://kolitech-wp.dev/?p=202', 7, 'nav_menu_item', '', 0),
(203, 1, '2019-07-31 10:18:30', '2019-07-31 13:18:30', '<!-- wp:paragraph -->\n<p>Cras ultricies ligula sed magna dictum porta. Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras ultricies ligula sed magna dictum porta. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n<!-- /wp:paragraph -->', 'Mais um artigo', 'Cras ultricies ligula sed magna dictum porta. Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.', 'publish', 'open', 'open', '', 'mais-um-artigo', '', '', '2019-08-01 14:34:15', '2019-08-01 17:34:15', '', 0, 'https://kolitech-wp.dev/?p=203', 0, 'post', '', 0),
(204, 1, '2019-07-31 10:18:30', '2019-07-31 13:18:30', '<!-- wp:paragraph -->\n<p>Cras ultricies ligula sed magna dictum porta. Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla porttitor accumsan tincidunt.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cras ultricies ligula sed magna dictum porta. Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.</p>\n<!-- /wp:paragraph -->', 'Mais um artigo', 'Cras ultricies ligula sed magna dictum porta. Proin eget tortor risus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus.', 'inherit', 'closed', 'closed', '', '203-revision-v1', '', '', '2019-07-31 10:18:30', '2019-07-31 13:18:30', '', 203, 'https://kolitech-wp.dev/203-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2019-08-01 12:04:41', '2019-08-01 15:04:41', ' ', '', '', 'publish', 'closed', 'closed', '', '205', '', '', '2019-08-02 13:49:07', '2019-08-02 16:49:07', '', 15, 'https://kolitech-wp.dev/?p=205', 4, 'nav_menu_item', '', 0),
(206, 1, '2019-08-01 13:11:32', '2019-08-01 16:11:32', '', 'Tag', '', 'trash', 'closed', 'closed', '', 'tag__trashed', '', '', '2019-08-01 13:12:54', '2019-08-01 16:12:54', '', 0, 'https://kolitech-wp.dev/?page_id=206', 0, 'page', '', 0),
(207, 1, '2019-08-01 13:11:32', '2019-08-01 16:11:32', '', 'Tag', '', 'inherit', 'closed', 'closed', '', '206-revision-v1', '', '', '2019-08-01 13:11:32', '2019-08-01 16:11:32', '', 206, 'https://kolitech-wp.dev/206-revision-v1/', 0, 'revision', '', 0),
(208, 1, '2019-08-01 14:59:35', '2019-08-01 17:59:35', '', 'Klayton Fantin', '', 'publish', 'closed', 'closed', '', 'klayton-fantin', '', '', '2019-08-01 15:21:15', '2019-08-01 18:21:15', '', 0, 'https://kolitech-wp.dev/?post_type=publicity&#038;p=208', 0, 'publicity', '', 0),
(209, 1, '2019-08-01 14:59:26', '2019-08-01 17:59:26', '', 'klayton', '', 'inherit', 'open', 'closed', '', 'klayton', '', '', '2019-08-01 14:59:26', '2019-08-01 17:59:26', '', 208, 'https://kolitech-wp.dev/wp-content/uploads/2019/08/klayton.png', 0, 'attachment', 'image/png', 0),
(210, 1, '2019-08-01 15:19:00', '2019-08-01 18:19:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"publicity\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Publicity', 'publicity', 'publish', 'closed', 'closed', '', 'group_5d432cee7be80', '', '', '2019-08-01 15:21:00', '2019-08-01 18:21:00', '', 0, 'https://kolitech-wp.dev/?post_type=acf-field-group&#038;p=210', 0, 'acf-field-group', '', 0),
(211, 1, '2019-08-01 15:19:00', '2019-08-01 18:19:00', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:31:\"Deve constar o prefixo https://\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_5d432cf9babb5', '', '', '2019-08-01 15:21:00', '2019-08-01 18:21:00', '', 210, 'https://kolitech-wp.dev/?post_type=acf-field&#038;p=211', 0, 'acf-field', '', 0),
(212, 1, '2019-08-01 15:22:34', '2019-08-01 18:22:34', '', 'Certifications', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2019-08-01 15:22:34', '2019-08-01 18:22:34', '', 191, 'https://kolitech-wp.dev/191-revision-v1/', 0, 'revision', '', 0),
(213, 1, '2019-08-01 15:36:15', '2019-08-01 18:36:15', '', 'Courses', '', 'publish', 'closed', 'closed', '', 'courses', '', '', '2019-08-02 11:03:41', '2019-08-02 14:03:41', '', 15, 'https://kolitech-wp.dev/?page_id=213', 0, 'page', '', 0),
(214, 1, '2019-08-01 15:36:15', '2019-08-01 18:36:15', '', 'Courses', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2019-08-01 15:36:15', '2019-08-01 18:36:15', '', 213, 'https://kolitech-wp.dev/213-revision-v1/', 0, 'revision', '', 0),
(215, 1, '2019-08-01 15:37:13', '2019-08-01 18:37:13', ' ', '', '', 'publish', 'closed', 'closed', '', '215', '', '', '2019-08-02 13:49:07', '2019-08-02 16:49:07', '', 15, 'https://kolitech-wp.dev/?p=215', 5, 'nav_menu_item', '', 0),
(216, 1, '2019-08-01 15:41:25', '2019-08-01 18:41:25', '', 'technology-1283624_1280', '', 'inherit', 'open', 'closed', '', 'technology-1283624_1280', '', '', '2019-08-01 15:41:25', '2019-08-01 18:41:25', '', 101, 'https://kolitech-wp.dev/wp-content/uploads/2019/07/technology-1283624_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2019-08-01 16:36:44', '2019-08-01 19:36:44', 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla quis lorem ut libero malesuada feugiat.\n\nPellentesque in ipsum id orci porta dapibus. Vivamus suscipit tortor eget felis porttitor volutpat. Nulla porttitor accumsan tincidunt.\n\nCras ultricies ligula sed magna dictum porta. Donec rutrum congue leo eget malesuada. Proin eget tortor risus.\n\nNulla quis lorem ut libero malesuada feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem.', 'Wordpress', 'Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Nulla quis lorem ut libero malesuada feugiat.', 'inherit', 'closed', 'closed', '', '100-autosave-v1', '', '', '2019-08-01 16:36:44', '2019-08-01 19:36:44', '', 100, 'https://kolitech-wp.dev/100-autosave-v1/', 0, 'revision', '', 0),
(219, 1, '2019-08-01 16:36:54', '2019-08-01 19:36:54', '', 'wordpress-589121_1280', '', 'inherit', 'open', 'closed', '', 'wordpress-589121_1280', '', '', '2019-08-01 16:36:54', '2019-08-01 19:36:54', '', 100, 'https://kolitech-wp.dev/wp-content/uploads/2019/07/wordpress-589121_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2019-08-01 16:38:18', '2019-08-01 19:38:18', '', 'php-2066704_1280', '', 'inherit', 'open', 'closed', '', 'php-2066704_1280', '', '', '2019-08-01 16:38:18', '2019-08-01 19:38:18', '', 99, 'https://kolitech-wp.dev/wp-content/uploads/2019/07/php-2066704_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2019-08-01 16:40:40', '2019-08-01 19:40:40', '', 'MBA Management and Governance of Information Technology - FIAP, São Paulo', '', 'trash', 'closed', 'closed', '', 'adobe-photoshop__trashed', '', '', '2019-08-02 12:55:47', '2019-08-02 15:55:47', '', 0, 'https://kolitech-wp.dev/?post_type=courses&#038;p=221', 0, 'courses', '', 0),
(222, 1, '2019-08-01 16:40:36', '2019-08-01 19:40:36', '', 'photoshop', '', 'inherit', 'open', 'closed', '', 'photoshop', '', '', '2019-08-01 16:40:36', '2019-08-01 19:40:36', '', 221, 'https://kolitech-wp.dev/wp-content/uploads/2019/08/photoshop.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2019-08-01 16:54:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-01 16:54:38', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?p=223', 0, 'post', '', 0),
(224, 1, '2019-08-01 17:03:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-08-01 17:03:37', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?p=224', 0, 'post', '', 0),
(225, 1, '2019-08-02 10:02:50', '2019-08-02 13:02:50', 'I have a Bachelors degree in Systems Analysis, a postgraduate qualification in Information Security Management and MBA (Information Technology Management). I have worked in the IT industry for more than 15 years focusing on infrastructure.\n\nI have worked with several operating system platforms including: Microsoft Windows and Windows Server, Hyper V, SQL, System Center Datacenter, Exchange Server, Skype for Business, Lync Server, Office 365 and Azure. I also have experience in VMware, AWS and some Linux operating systems. I have implemented migration projects, consolidation and integration with the most diverse management systems for companies like Oracle, SAP and Microsoft.\n\nI am currently studying for AWS Architect certification and improving my skills in DevOps, navigating between Azure and AWS and on-premises systems. I am also studying a Diploma of Project Management.\n\nAs testimony to my industry experience, in my last project in Brazil I was one of the responsible for consolidating two companies in the education sector. I was responsible for transporting all cloud and on-premises servers from X Company to Y Company. I managed this process keeping all historical data integrity. After the consolidation process more than 40 systems were rationalised, achieving optimisation of resources and reducing operating costs.\n\nI have demonstrated experience in infrastructure management. In 20XX I managed six month project migrating 10,000 Active Directory accesses and resources from X Company to Y Company including all file structures, business applications and messaging services. This provided a seamless transition for the company to resume its business operations.\n\nI have cross-sectoral IT experience working on projects across education, retail, automotive and health industries in Brazil. I am a mature, professional, responsible and dynamic team player. I enjoy new challenges and hard work. I am passionate about working on IT projects and delivering exceptional quality to the client.', 'About', '', 'inherit', 'closed', 'closed', '', '38-autosave-v1', '', '', '2019-08-02 10:02:50', '2019-08-02 13:02:50', '', 38, 'https://kolitech-wp.dev/38-autosave-v1/', 0, 'revision', '', 0),
(226, 1, '2019-08-02 10:09:01', '2019-08-02 13:09:01', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Short Text About', 'short_text_about', 'publish', 'closed', 'closed', '', 'field_5d4435d49b7ea', '', '', '2019-08-02 10:09:01', '2019-08-02 13:09:01', '', 88, 'https://kolitech-wp.dev/?post_type=acf-field&p=226', 3, 'acf-field', '', 0),
(227, 1, '2019-08-02 10:21:25', '2019-08-02 13:21:25', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-08-02 11:17:39', '2019-08-02 14:17:39', '', 15, 'https://kolitech-wp.dev/?page_id=227', 0, 'page', '', 0),
(228, 1, '2019-08-02 10:21:25', '2019-08-02 13:21:25', '', 'About', '', 'inherit', 'closed', 'closed', '', '227-revision-v1', '', '', '2019-08-02 10:21:25', '2019-08-02 13:21:25', '', 227, 'https://kolitech-wp.dev/227-revision-v1/', 0, 'revision', '', 0),
(229, 1, '2019-08-02 11:00:12', '2019-08-02 14:00:12', ' ', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2019-08-02 13:49:07', '2019-08-02 16:49:07', '', 15, 'https://kolitech-wp.dev/?p=229', 2, 'nav_menu_item', '', 0),
(230, 1, '2019-08-02 12:53:29', '2019-08-02 15:53:29', '', 'EDUCATION PROFILE', 'Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Curabitur aliquet quam id dui posuere blandit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'inherit', 'closed', 'closed', '', '221-autosave-v1', '', '', '2019-08-02 12:53:29', '2019-08-02 15:53:29', '', 221, 'https://kolitech-wp.dev/221-autosave-v1/', 0, 'revision', '', 0),
(231, 1, '2019-08-02 12:55:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-02 12:55:55', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?post_type=courses&p=231', 0, 'courses', '', 0),
(232, 1, '2019-08-02 12:57:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-08-02 12:57:55', '0000-00-00 00:00:00', '', 0, 'https://kolitech-wp.dev/?post_type=courses&p=232', 0, 'courses', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(233, 1, '2019-08-02 13:00:43', '2019-08-02 16:00:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Instituition', 'instituition', 'publish', 'closed', 'closed', '', 'field_5d445daa4ee3e', '', '', '2019-08-02 13:00:43', '2019-08-02 16:00:43', '', 94, 'https://kolitech-wp.dev/?post_type=acf-field&p=233', 1, 'acf-field', '', 0),
(234, 1, '2019-08-02 13:00:43', '2019-08-02 16:00:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Local', 'local', 'publish', 'closed', 'closed', '', 'field_5d445dc24ee3f', '', '', '2019-08-02 13:00:43', '2019-08-02 16:00:43', '', 94, 'https://kolitech-wp.dev/?post_type=acf-field&p=234', 2, 'acf-field', '', 0),
(235, 1, '2019-08-02 13:00:43', '2019-08-02 16:00:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Parents', 'parents', 'publish', 'closed', 'closed', '', 'field_5d445dd14ee40', '', '', '2019-08-02 13:00:43', '2019-08-02 16:00:43', '', 94, 'https://kolitech-wp.dev/?post_type=acf-field&p=235', 3, 'acf-field', '', 0),
(236, 1, '2019-08-02 13:02:04', '2019-08-02 16:02:04', '', 'MBA Management and Governance of Information Technology', '', 'publish', 'closed', 'closed', '', 'mba-management-and-governance-of-information-technology', '', '', '2019-08-02 13:02:04', '2019-08-02 16:02:04', '', 0, 'https://kolitech-wp.dev/?post_type=courses&#038;p=236', 0, 'courses', '', 0),
(237, 1, '2019-08-02 13:27:42', '2019-08-02 16:27:42', '', 'Microsoft Specialist', '', 'publish', 'closed', 'closed', '', 'microsoft-specialist-windows-7', '', '', '2019-08-02 13:34:35', '2019-08-02 16:34:35', '', 0, 'https://kolitech-wp.dev/?post_type=certification&#038;p=237', 0, 'certification', '', 0),
(238, 1, '2019-08-02 13:34:30', '2019-08-02 16:34:30', '', 'Microsoft Specialist', '', 'inherit', 'closed', 'closed', '', '237-autosave-v1', '', '', '2019-08-02 13:34:30', '2019-08-02 16:34:30', '', 237, 'https://kolitech-wp.dev/237-autosave-v1/', 0, 'revision', '', 0),
(239, 1, '2019-08-02 13:42:01', '2019-08-02 16:42:01', '', 'Skills', '', 'publish', 'closed', 'closed', '', 'skills', '', '', '2019-08-02 13:42:02', '2019-08-02 16:42:02', '', 15, 'https://kolitech-wp.dev/?page_id=239', 0, 'page', '', 0),
(240, 1, '2019-08-02 13:42:01', '2019-08-02 16:42:01', '', 'Skills', '', 'inherit', 'closed', 'closed', '', '239-revision-v1', '', '', '2019-08-02 13:42:01', '2019-08-02 16:42:01', '', 239, 'https://kolitech-wp.dev/239-revision-v1/', 0, 'revision', '', 0),
(241, 1, '2019-08-02 13:49:07', '2019-08-02 16:49:07', ' ', '', '', 'publish', 'closed', 'closed', '', '241', '', '', '2019-08-02 13:49:07', '2019-08-02 16:49:07', '', 15, 'https://kolitech-wp.dev/?p=241', 3, 'nav_menu_item', '', 0),
(242, 1, '2019-08-02 13:56:35', '2019-08-02 16:56:35', '', 'Windows Server 2008 / 2008 R2 / 2012 / 2012 R2 / 2016', '', 'publish', 'closed', 'closed', '', 'windows-server-2008-2008-r2-2012-2012-r2-2016', '', '', '2019-08-02 13:56:35', '2019-08-02 16:56:35', '', 0, 'https://kolitech-wp.dev/?post_type=skill&#038;p=242', 0, 'skill', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Destaque', 'destaque', 0),
(2, 'menu_principal', 'menu_principal', 0),
(3, 'About', 'about', 0),
(4, 'Company 01', 'company-01', 0),
(5, 'Empresa tal', 'empresa-tal', 0),
(6, 'Outra Empresa', 'outra-empresa', 0),
(7, 'Microsoft', 'microsoft', 0),
(8, 'power bi', 'power-bi', 0),
(9, 'server', 'server', 0),
(10, 'CSS3', 'css3', 0),
(11, 'php', 'php', 0),
(12, 'Wordpress', 'wordpress', 0),
(13, 'JavaScript', 'javascript', 0),
(14, 'cisco', 'cisco', 0),
(15, 'safety', 'safety', 0),
(16, 'contact kolitech', 'contact-kolitech', 0),
(17, 'telefone celular', 'telefone-celular', 0),
(18, 'telefone fixo', 'telefone-fixo', 0),
(19, 'kleberoliveira', 'kleberoliveira', 0),
(20, 'kleber kolitech', 'kleber-kolitech', 0),
(21, 'kleber facebook', 'kleber-facebook', 0),
(22, 'Tech', 'tech', 0),
(27, 'Categoria 001', 'categoria-001', 0),
(28, 'Categoria 002', 'categoria-002', 0),
(29, 'Teste', 'teste', 0),
(30, 'article01', 'article01', 0),
(31, 'modem', 'modem', 0),
(32, 'pages', 'pages', 0),
(33, 'tag teste', 'tag-teste', 0),
(34, 'Teste', 'teste', 0),
(36, 'Artigo', 'artigo', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 28, 0),
(1, 30, 0),
(28, 1, 0),
(30, 1, 0),
(32, 1, 0),
(32, 22, 0),
(32, 30, 0),
(32, 36, 0),
(38, 3, 0),
(63, 4, 0),
(63, 5, 0),
(64, 6, 0),
(69, 22, 0),
(69, 36, 0),
(77, 7, 0),
(77, 8, 0),
(84, 9, 0),
(91, 10, 0),
(99, 11, 0),
(100, 12, 0),
(101, 13, 0),
(102, 1, 0),
(102, 9, 0),
(102, 14, 0),
(102, 31, 0),
(102, 34, 0),
(104, 15, 0),
(109, 16, 0),
(114, 17, 0),
(115, 18, 0),
(123, 19, 0),
(124, 20, 0),
(128, 21, 0),
(140, 2, 0),
(151, 27, 0),
(151, 36, 0),
(180, 2, 0),
(197, 32, 0),
(201, 32, 0),
(202, 32, 0),
(203, 1, 0),
(203, 22, 0),
(203, 36, 0),
(205, 32, 0),
(215, 32, 0),
(229, 32, 0),
(241, 32, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'types', '', 0, 0),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1),
(7, 7, 'post_tag', '', 0, 1),
(8, 8, 'post_tag', '', 0, 1),
(9, 9, 'post_tag', '', 0, 2),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'post_tag', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'post_tag', '', 0, 1),
(19, 19, 'post_tag', '', 0, 1),
(20, 20, 'post_tag', '', 0, 1),
(21, 21, 'post_tag', '', 0, 1),
(22, 22, 'category', '', 0, 3),
(27, 27, 'category', '', 0, 1),
(28, 28, 'category', '', 0, 1),
(29, 29, 'post_tag', '', 0, 0),
(30, 30, 'post_tag', '', 0, 2),
(31, 31, 'post_tag', '', 0, 1),
(32, 32, 'nav_menu', '', 0, 7),
(33, 33, 'post_tag', '', 0, 0),
(34, 34, 'types', '', 0, 1),
(36, 36, 'post_tag', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'klayton'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '223'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(21, 1, 'closedpostboxes_news', 'a:0:{}'),
(22, 1, 'metaboxhidden_news', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:11:\"css-classes\";i:3;s:3:\"xfn\";i:4;s:11:\"description\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(25, 1, 'nav_menu_recently_edited', '32'),
(26, 1, 'wp_user-settings', 'libraryContent=browse&posts_list_mode=list'),
(27, 1, 'wp_user-settings-time', '1564764842'),
(28, 1, 'closedpostboxes_about', 'a:0:{}'),
(29, 1, 'metaboxhidden_about', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(30, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(31, 1, 'manageedit-acf-field-groupcolumnshidden', 'a:0:{}'),
(32, 1, 'meta-box-order_about', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:40:\"submitdiv,postimagediv,expirationdatediv\";s:6:\"normal\";s:42:\"wpseo_meta,acf-group_5d3af7284ba76,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(33, 1, 'screen_layout_about', '2'),
(34, 1, 'closedpostboxes_experience', 'a:0:{}'),
(35, 1, 'metaboxhidden_experience', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(36, 1, 'wpcf7_hide_welcome_panel_on', 'a:1:{i:0;s:3:\"5.1\";}'),
(37, 1, 'meta-box-order_post', 'a:4:{s:4:\"side\";s:17:\"expirationdatediv\";s:15:\"acf_after_title\";s:0:\"\";s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(38, 1, 'closedpostboxes_post', 'a:0:{}'),
(39, 1, 'metaboxhidden_post', 'a:0:{}'),
(40, 1, 'session_tokens', 'a:2:{s:64:\"244ca4f58d6cb388830f0c9e7199e744d88dbb4bccb2b2df1d6867d00a20a9f5\";a:4:{s:10:\"expiration\";i:1564839876;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564667076;}s:64:\"4d1e62839cfbbfae02f8b09309474cd8cccc9caf6ca567c1f8717d6d3cb53daa\";a:4:{s:10:\"expiration\";i:1564925831;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564753031;}}'),
(41, 1, 'meta-box-order_courses', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:40:\"expirationdatediv,submitdiv,postimagediv\";s:6:\"normal\";s:43:\"postexcerpt,acf-group_5d3b0698e34a6,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(42, 1, 'screen_layout_courses', '2'),
(43, 1, 'closedpostboxes_courses', 'a:0:{}'),
(44, 1, 'metaboxhidden_courses', 'a:2:{i:0;s:17:\"expirationdatediv\";i:1;s:7:\"slugdiv\";}'),
(45, 1, 'closedpostboxes_social-medias', 'a:0:{}'),
(46, 1, 'metaboxhidden_social-medias', 'a:2:{i:0;s:17:\"expirationdatediv\";i:1;s:7:\"slugdiv\";}'),
(47, 1, 'closedpostboxes_home-emails', 'a:0:{}'),
(48, 1, 'metaboxhidden_home-emails', 'a:2:{i:0;s:17:\"expirationdatediv\";i:1;s:7:\"slugdiv\";}'),
(49, 1, 'closedpostboxes_contact', 'a:0:{}'),
(50, 1, 'metaboxhidden_contact', 'a:2:{i:0;s:17:\"expirationdatediv\";i:1;s:7:\"slugdiv\";}'),
(51, 1, 'closedpostboxes_telephone', 'a:0:{}'),
(52, 1, 'metaboxhidden_telephone', 'a:2:{i:0;s:17:\"expirationdatediv\";i:1;s:7:\"slugdiv\";}'),
(53, 1, 'closedpostboxes_certification', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(54, 1, 'metaboxhidden_certification', 'a:2:{i:0;s:17:\"expirationdatediv\";i:1;s:7:\"slugdiv\";}'),
(55, 1, 'closedpostboxes_skill', 'a:0:{}'),
(56, 1, 'metaboxhidden_skill', 'a:2:{i:0;s:17:\"expirationdatediv\";i:1;s:7:\"slugdiv\";}'),
(57, 1, 'manageedit-postcolumnshidden', 'a:0:{}'),
(58, 1, 'meta-box-order_certification', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:51:\"submitdiv,expirationdatediv,postimagediv,wpseo_meta\";s:6:\"normal\";s:43:\"postexcerpt,acf-group_5d39d20767226,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(59, 1, 'screen_layout_certification', '2'),
(60, 1, 'edit_certification_per_page', '20'),
(62, 1, 'wp_yoast_promo_hide_premium_upsell_admin_block', '1'),
(66, 1, 'manageedit-skillcolumnshidden', 'a:1:{i:0;s:13:\"wpseo-focuskw\";}'),
(67, 1, 'edit_skill_per_page', '20');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'klayton', '$P$BXf8AE/zmRCu7tQ4kXNKputEEL3iY3.', 'klayton', 'klaytonfantin@gmail.com', '', '2019-07-24 16:57:05', '', 0, 'klayton');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(38, 0, 0),
(97, 0, 0),
(191, 0, 0),
(213, 0, 0),
(221, 0, 0),
(227, 0, 0),
(236, 0, 0),
(237, 0, 0),
(239, 0, 0),
(242, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1272;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
