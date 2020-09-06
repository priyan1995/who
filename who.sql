-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2020 at 12:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `who`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-05 04:23:24', '2020-09-05 04:23:24', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/who', 'yes'),
(2, 'home', 'http://localhost/who', 'yes'),
(3, 'blogname', 'who', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'priyan1995darshana@gmail.com', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:154:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:18:\"courses__events/?$\";s:35:\"index.php?post_type=courses__events\";s:48:\"courses__events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=courses__events&feed=$matches[1]\";s:43:\"courses__events/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=courses__events&feed=$matches[1]\";s:35:\"courses__events/page/([0-9]{1,})/?$\";s:53:\"index.php?post_type=courses__events&paged=$matches[1]\";s:18:\"membership_info/?$\";s:35:\"index.php?post_type=membership_info\";s:48:\"membership_info/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=membership_info&feed=$matches[1]\";s:43:\"membership_info/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=membership_info&feed=$matches[1]\";s:35:\"membership_info/page/([0-9]{1,})/?$\";s:53:\"index.php?post_type=membership_info&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"courses__events/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"courses__events/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"courses__events/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"courses__events/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"courses__events/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"courses__events/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"courses__events/(.+?)/embed/?$\";s:48:\"index.php?courses__events=$matches[1]&embed=true\";s:34:\"courses__events/(.+?)/trackback/?$\";s:42:\"index.php?courses__events=$matches[1]&tb=1\";s:54:\"courses__events/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?courses__events=$matches[1]&feed=$matches[2]\";s:49:\"courses__events/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?courses__events=$matches[1]&feed=$matches[2]\";s:42:\"courses__events/(.+?)/page/?([0-9]{1,})/?$\";s:55:\"index.php?courses__events=$matches[1]&paged=$matches[2]\";s:49:\"courses__events/(.+?)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?courses__events=$matches[1]&cpage=$matches[2]\";s:38:\"courses__events/(.+?)(?:/([0-9]+))?/?$\";s:54:\"index.php?courses__events=$matches[1]&page=$matches[2]\";s:43:\"membership_info/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"membership_info/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"membership_info/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"membership_info/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"membership_info/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"membership_info/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"membership_info/([^/]+)/embed/?$\";s:48:\"index.php?membership_info=$matches[1]&embed=true\";s:36:\"membership_info/([^/]+)/trackback/?$\";s:42:\"index.php?membership_info=$matches[1]&tb=1\";s:56:\"membership_info/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?membership_info=$matches[1]&feed=$matches[2]\";s:51:\"membership_info/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?membership_info=$matches[1]&feed=$matches[2]\";s:44:\"membership_info/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?membership_info=$matches[1]&paged=$matches[2]\";s:51:\"membership_info/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?membership_info=$matches[1]&cpage=$matches[2]\";s:40:\"membership_info/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?membership_info=$matches[1]&page=$matches[2]\";s:32:\"membership_info/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"membership_info/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"membership_info/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"membership_info/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"membership_info/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"membership_info/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"resourse_menu/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"resourse_menu/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"resourse_menu/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"resourse_menu/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"resourse_menu/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"resourse_menu/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"resourse_menu/(.+?)/embed/?$\";s:46:\"index.php?resourse_menu=$matches[1]&embed=true\";s:32:\"resourse_menu/(.+?)/trackback/?$\";s:40:\"index.php?resourse_menu=$matches[1]&tb=1\";s:40:\"resourse_menu/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?resourse_menu=$matches[1]&paged=$matches[2]\";s:47:\"resourse_menu/(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?resourse_menu=$matches[1]&cpage=$matches[2]\";s:36:\"resourse_menu/(.+?)(?:/([0-9]+))?/?$\";s:52:\"index.php?resourse_menu=$matches[1]&page=$matches[2]\";s:41:\"resources_items/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"resources_items/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"resources_items/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"resources_items/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"resources_items/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"resources_items/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"resources_items/(.+?)/embed/?$\";s:48:\"index.php?resources_items=$matches[1]&embed=true\";s:34:\"resources_items/(.+?)/trackback/?$\";s:42:\"index.php?resources_items=$matches[1]&tb=1\";s:42:\"resources_items/(.+?)/page/?([0-9]{1,})/?$\";s:55:\"index.php?resources_items=$matches[1]&paged=$matches[2]\";s:49:\"resources_items/(.+?)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?resources_items=$matches[1]&cpage=$matches[2]\";s:38:\"resources_items/(.+?)(?:/([0-9]+))?/?$\";s:54:\"index.php?resources_items=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'who', 'yes'),
(41, 'stylesheet', 'who', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1614831796', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1599391409;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1599409409;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1599452607;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599452680;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599452687;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599971007;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"H7m3RsT624u33XHGKc9g1F\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BFoc6jrMiClypA9nLyQ8hjNFUhMPg/0\";s:10:\"created_at\";i:1599286414;}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1599366228;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1599366231;s:7:\"checked\";a:1:{s:3:\"who\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(122, '_site_transient_timeout_browser_0d7547ea912e3ce2a35572c8b9a755b1', '1599884683', 'no'),
(123, '_site_transient_browser_0d7547ea912e3ce2a35572c8b9a755b1', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"85.0.4183.83\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, '_site_transient_timeout_php_check_fce1f096719779a3888ef81259141e1f', '1599884684', 'no'),
(125, '_site_transient_php_check_fce1f096719779a3888ef81259141e1f', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(140, 'theme_mods_twentytwenty', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1599279903;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(141, 'current_theme', 'Sanito SPa', 'yes'),
(142, 'theme_mods_who', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;s:9:\"resources\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(146, 'finished_updating_comment_type', '1', 'yes'),
(147, 'recently_activated', 'a:0:{}', 'yes'),
(159, 'cptui_new_install', 'false', 'yes'),
(160, 'recovery_mode_email_last_sent', '1599286414', 'yes'),
(171, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1599366231;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.0\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.8.0\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.8.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(172, 'acf_version', '5.9.0', 'yes'),
(175, 'auto_update_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:19:\"akismet/akismet.php\";}', 'no'),
(177, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(184, 'cptui_post_types', 'a:4:{s:15:\"courses__events\";a:30:{s:4:\"name\";s:15:\"courses__events\";s:5:\"label\";s:20:\"Courses &amp; Events\";s:14:\"singular_label\";s:18:\"Course &amp; Event\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:18:\"dashicons-book-alt\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:15:\"membership_info\";a:30:{s:4:\"name\";s:15:\"membership_info\";s:5:\"label\";s:11:\"Memberships\";s:14:\"singular_label\";s:10:\"Membership\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:24:\"dashicons-businessperson\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:13:\"resourse_menu\";a:30:{s:4:\"name\";s:13:\"resourse_menu\";s:5:\"label\";s:14:\"Resources Menu\";s:14:\"singular_label\";s:13:\"Resource Menu\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:19:\"dashicons-menu-alt3\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:15:\"resources_items\";a:30:{s:4:\"name\";s:15:\"resources_items\";s:5:\"label\";s:9:\"Resources\";s:14:\"singular_label\";s:8:\"Resource\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:19:\"dashicons-portfolio\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(198, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(204, 'facebook_url', 'https://www.facebook.com/', 'yes'),
(207, 'twitter_url', 'https://twitter.com/?lang=en', 'yes'),
(210, 'footer_credit', '2017 WHO. All Rights Reserved', 'yes'),
(221, '_site_transient_timeout_theme_roots', '1599368024', 'no'),
(222, '_site_transient_theme_roots', 'a:1:{s:3:\"who\";s:7:\"/themes\";}', 'no'),
(223, '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":10,\"critical\":0}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1599280905'),
(5, 2, '_wp_desired_post_slug', 'sample-page'),
(6, 6, '_edit_lock', '1599312167:1'),
(7, 6, '_wp_page_template', 'front-page.php'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1599320796:1'),
(10, 8, '_wp_page_template', 'page2.php'),
(11, 10, '_edit_last', '1'),
(12, 10, '_edit_lock', '1599305943:1'),
(13, 10, '_wp_page_template', 'page-3.php'),
(14, 12, '_edit_last', '1'),
(15, 12, '_edit_lock', '1599315598:1'),
(16, 35, '_wp_attached_file', '2020/09/348x240.png'),
(17, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:348;s:6:\"height\";i:240;s:4:\"file\";s:19:\"2020/09/348x240.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"348x240-300x207.png\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"348x240-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 6, '_edit_last', '1'),
(19, 6, 'main_title', '<h1 class=\"site-banner__title \">All The latest\r\ninformation &amp; resources\r\n<span class=\"txt-highlight-2\">at your fingertips</span></h1>'),
(20, 6, '_main_title', 'field_5f53788fa9a33'),
(21, 6, 'title_card_1', 'MEMBERSHIP'),
(22, 6, '_title_card_1', 'field_5f537a046a4c5'),
(23, 6, 'image_m_card', '35'),
(24, 6, '_image_m_card', 'field_5f537a1d6a4c6'),
(25, 6, 'card_desc_m_card', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.'),
(26, 6, '_card_desc_m_card', 'field_5f537a4a6a4c7'),
(27, 6, 'button_text_m_card', 'Membership'),
(28, 6, '_button_text_m_card', 'field_5f537abd6a4c8'),
(29, 6, 'button_link_m_card', '#'),
(30, 6, '_button_link_m_card', 'field_5f537ae46a4c9'),
(31, 6, 'title_card_2', 'ELECTIONS'),
(32, 6, '_title_card_2', 'field_5f537b353b3aa'),
(33, 6, 'image_m_card_2', '35'),
(34, 6, '_image_m_card_2', 'field_5f537c38af1c7'),
(35, 6, 'card_desc_m_card_2', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.'),
(36, 6, '_card_desc_m_card_2', 'field_5f537c52af1c8'),
(37, 6, 'button_text_m_card_2', 'Cast Your Vote'),
(38, 6, '_button_text_m_card_2', 'field_5f537c80af1c9'),
(39, 6, 'button_link_m_card_2', ''),
(40, 6, '_button_link_m_card_2', 'field_5f537ca5af1ca'),
(41, 6, 'card_section_2_title', 'UPCOMING COURSES & EVENTS YOU WON\'T WANT TO MISS'),
(42, 6, '_card_section_2_title', 'field_5f537da3aec16'),
(43, 36, 'main_title', 'All The latest\r\ninformation &amp; resources\r\n<span class=\"txt-highlight-2\">at your fingertips</span>'),
(44, 36, '_main_title', 'field_5f53788fa9a33'),
(45, 36, 'title_card_1', 'WHO TRANING & EDUCATION'),
(46, 36, '_title_card_1', 'field_5f537a046a4c5'),
(47, 36, 'image_m_card', '35'),
(48, 36, '_image_m_card', 'field_5f537a1d6a4c6'),
(49, 36, 'card_desc_m_card', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.'),
(50, 36, '_card_desc_m_card', 'field_5f537a4a6a4c7'),
(51, 36, 'button_text_m_card', 'Membership'),
(52, 36, '_button_text_m_card', 'field_5f537abd6a4c8'),
(53, 36, 'button_link_m_card', '#'),
(54, 36, '_button_link_m_card', 'field_5f537ae46a4c9'),
(55, 36, 'title_card_2', 'ELECTIONS'),
(56, 36, '_title_card_2', 'field_5f537b353b3aa'),
(57, 36, 'image_m_card_2', '35'),
(58, 36, '_image_m_card_2', 'field_5f537c38af1c7'),
(59, 36, 'card_desc_m_card_2', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.'),
(60, 36, '_card_desc_m_card_2', 'field_5f537c52af1c8'),
(61, 36, 'button_text_m_card_2', 'Cast Your Vote'),
(62, 36, '_button_text_m_card_2', 'field_5f537c80af1c9'),
(63, 36, 'button_link_m_card_2', ''),
(64, 36, '_button_link_m_card_2', 'field_5f537ca5af1ca'),
(65, 36, 'card_section_2_title', 'UPCOMING COURSES & EVENTS YOU WON\'T WANT TO MISS'),
(66, 36, '_card_section_2_title', 'field_5f537da3aec16'),
(67, 37, 'main_title', '<h1 class=\"site-banner__title \">\r\n        All The latest<br> information &amp; resources<br> <span class=\"txt-highlight-2\">at your fingertips</span>        \r\n    </h1>'),
(68, 37, '_main_title', 'field_5f53788fa9a33'),
(69, 37, 'title_card_1', 'WHO TRANING & EDUCATION'),
(70, 37, '_title_card_1', 'field_5f537a046a4c5'),
(71, 37, 'image_m_card', '35'),
(72, 37, '_image_m_card', 'field_5f537a1d6a4c6'),
(73, 37, 'card_desc_m_card', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.'),
(74, 37, '_card_desc_m_card', 'field_5f537a4a6a4c7'),
(75, 37, 'button_text_m_card', 'Membership'),
(76, 37, '_button_text_m_card', 'field_5f537abd6a4c8'),
(77, 37, 'button_link_m_card', '#'),
(78, 37, '_button_link_m_card', 'field_5f537ae46a4c9'),
(79, 37, 'title_card_2', 'ELECTIONS'),
(80, 37, '_title_card_2', 'field_5f537b353b3aa'),
(81, 37, 'image_m_card_2', '35'),
(82, 37, '_image_m_card_2', 'field_5f537c38af1c7'),
(83, 37, 'card_desc_m_card_2', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.'),
(84, 37, '_card_desc_m_card_2', 'field_5f537c52af1c8'),
(85, 37, 'button_text_m_card_2', 'Cast Your Vote'),
(86, 37, '_button_text_m_card_2', 'field_5f537c80af1c9'),
(87, 37, 'button_link_m_card_2', ''),
(88, 37, '_button_link_m_card_2', 'field_5f537ca5af1ca'),
(89, 37, 'card_section_2_title', 'UPCOMING COURSES & EVENTS YOU WON\'T WANT TO MISS'),
(90, 37, '_card_section_2_title', 'field_5f537da3aec16'),
(91, 38, '_wp_trash_meta_status', 'publish'),
(92, 38, '_wp_trash_meta_time', '1599310906'),
(93, 39, 'main_title', '<h1 class=\"site-banner__title \">All The latest\r\ninformation &amp; resources\r\n<span class=\"txt-highlight-2\">at your fingertips</span></h1>'),
(94, 39, '_main_title', 'field_5f53788fa9a33'),
(95, 39, 'title_card_1', 'MEMBERSHIP'),
(96, 39, '_title_card_1', 'field_5f537a046a4c5'),
(97, 39, 'image_m_card', '35'),
(98, 39, '_image_m_card', 'field_5f537a1d6a4c6'),
(99, 39, 'card_desc_m_card', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.'),
(100, 39, '_card_desc_m_card', 'field_5f537a4a6a4c7'),
(101, 39, 'button_text_m_card', 'Membership'),
(102, 39, '_button_text_m_card', 'field_5f537abd6a4c8'),
(103, 39, 'button_link_m_card', '#'),
(104, 39, '_button_link_m_card', 'field_5f537ae46a4c9'),
(105, 39, 'title_card_2', 'ELECTIONS'),
(106, 39, '_title_card_2', 'field_5f537b353b3aa'),
(107, 39, 'image_m_card_2', '35'),
(108, 39, '_image_m_card_2', 'field_5f537c38af1c7'),
(109, 39, 'card_desc_m_card_2', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.'),
(110, 39, '_card_desc_m_card_2', 'field_5f537c52af1c8'),
(111, 39, 'button_text_m_card_2', 'Cast Your Vote'),
(112, 39, '_button_text_m_card_2', 'field_5f537c80af1c9'),
(113, 39, 'button_link_m_card_2', ''),
(114, 39, '_button_link_m_card_2', 'field_5f537ca5af1ca'),
(115, 39, 'card_section_2_title', 'UPCOMING COURSES & EVENTS YOU WON\'T WANT TO MISS'),
(116, 39, '_card_section_2_title', 'field_5f537da3aec16'),
(117, 40, '_edit_last', '1'),
(118, 40, '_edit_lock', '1599315208:1'),
(119, 45, '_edit_last', '1'),
(120, 45, '_edit_lock', '1599312483:1'),
(121, 47, '_edit_last', '1'),
(122, 47, '_edit_lock', '1599314132:1'),
(123, 47, 'link_url', ''),
(124, 47, '_link_url', 'field_5f5390f1c5381'),
(125, 47, 'image', '35'),
(126, 47, '_image', 'field_5f53915ec5382'),
(127, 47, 'category', 'Course'),
(128, 47, '_category', 'field_5f539175c5383'),
(129, 49, '_edit_last', '1'),
(130, 49, '_edit_lock', '1599314834:1'),
(131, 49, 'link_url', ''),
(132, 49, '_link_url', 'field_5f5390f1c5381'),
(133, 49, 'image', '35'),
(134, 49, '_image', 'field_5f53915ec5382'),
(135, 49, 'category', 'Event'),
(136, 49, '_category', 'field_5f539175c5383'),
(137, 49, 'category_link', ''),
(138, 49, '_category_link', 'field_5f5397f20608c'),
(139, 50, '_edit_last', '1'),
(140, 50, 'link_url', ''),
(141, 50, '_link_url', 'field_5f5390f1c5381'),
(142, 50, 'image', '35'),
(143, 50, '_image', 'field_5f53915ec5382'),
(144, 50, 'category', 'Course'),
(145, 50, '_category', 'field_5f539175c5383'),
(146, 50, 'category_link', ''),
(147, 50, '_category_link', 'field_5f5397f20608c'),
(148, 50, '_edit_lock', '1599315207:1'),
(149, 51, '_edit_last', '1'),
(150, 51, 'link_url', ''),
(151, 51, '_link_url', 'field_5f5390f1c5381'),
(152, 51, 'image', '35'),
(153, 51, '_image', 'field_5f53915ec5382'),
(154, 51, 'category', 'Course'),
(155, 51, '_category', 'field_5f539175c5383'),
(156, 51, 'category_link', ''),
(157, 51, '_category_link', 'field_5f5397f20608c'),
(158, 51, '_edit_lock', '1599315240:1'),
(159, 52, '_edit_last', '1'),
(160, 52, '_edit_lock', '1599321453:1'),
(161, 8, 'main_heading', '<h1 class=\"site-banner__title\">WHO number\r\nis open to both\r\n<span class=\"txt-light\">organisations &amp; individuals</span></h1>'),
(162, 8, '_main_heading', 'field_5f539ef1b6f90'),
(163, 54, 'main_heading', '<h1 class=\"site-banner__title\">WHO number\r\nis open to both\r\n<span class=\"txt-light\">organisations &amp; individuals</span></h1>'),
(164, 54, '_main_heading', 'field_5f539ef1b6f90'),
(165, 56, '_edit_last', '1'),
(166, 56, '_edit_lock', '1599322494:1'),
(167, 59, '_edit_last', '1'),
(168, 59, '_edit_lock', '1599321006:1'),
(169, 59, 'link_text', 'Renew'),
(170, 59, '_link_text', 'field_5f53b38de3f52'),
(171, 59, 'link_url', ''),
(172, 59, '_link_url', 'field_5f53b398e3f53'),
(173, 60, '_edit_last', '1'),
(174, 60, '_edit_lock', '1599321030:1'),
(175, 60, 'link_text', 'Enter'),
(176, 60, '_link_text', 'field_5f53b38de3f52'),
(177, 60, 'link_url', ''),
(178, 60, '_link_url', 'field_5f53b398e3f53'),
(179, 61, '_edit_last', '1'),
(180, 61, '_edit_lock', '1599321107:1'),
(181, 61, 'link_text', 'Take a Look'),
(182, 61, '_link_text', 'field_5f53b38de3f52'),
(183, 61, 'link_url', ''),
(184, 61, '_link_url', 'field_5f53b398e3f53'),
(185, 62, '_edit_last', '1'),
(186, 62, '_edit_lock', '1599321247:1'),
(187, 62, 'link_text', 'View'),
(188, 62, '_link_text', 'field_5f53b38de3f52'),
(189, 62, 'link_url', ''),
(190, 62, '_link_url', 'field_5f53b398e3f53'),
(191, 63, '_menu_item_type', 'custom'),
(192, 63, '_menu_item_menu_item_parent', '0'),
(193, 63, '_menu_item_object_id', '63'),
(194, 63, '_menu_item_object', 'custom'),
(195, 63, '_menu_item_target', ''),
(196, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 63, '_menu_item_xfn', ''),
(198, 63, '_menu_item_url', '#'),
(200, 64, '_menu_item_type', 'custom'),
(201, 64, '_menu_item_menu_item_parent', '0'),
(202, 64, '_menu_item_object_id', '64'),
(203, 64, '_menu_item_object', 'custom'),
(204, 64, '_menu_item_target', ''),
(205, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(206, 64, '_menu_item_xfn', ''),
(207, 64, '_menu_item_url', '#'),
(209, 65, '_menu_item_type', 'custom'),
(210, 65, '_menu_item_menu_item_parent', '63'),
(211, 65, '_menu_item_object_id', '65'),
(212, 65, '_menu_item_object', 'custom'),
(213, 65, '_menu_item_target', ''),
(214, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(215, 65, '_menu_item_xfn', ''),
(216, 65, '_menu_item_url', '#'),
(218, 66, '_menu_item_type', 'custom'),
(219, 66, '_menu_item_menu_item_parent', '63'),
(220, 66, '_menu_item_object_id', '66'),
(221, 66, '_menu_item_object', 'custom'),
(222, 66, '_menu_item_target', ''),
(223, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(224, 66, '_menu_item_xfn', ''),
(225, 66, '_menu_item_url', '#'),
(227, 67, '_menu_item_type', 'custom'),
(228, 67, '_menu_item_menu_item_parent', '63'),
(229, 67, '_menu_item_object_id', '67'),
(230, 67, '_menu_item_object', 'custom'),
(231, 67, '_menu_item_target', ''),
(232, 67, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(233, 67, '_menu_item_xfn', ''),
(234, 67, '_menu_item_url', '#'),
(236, 68, '_menu_item_type', 'custom'),
(237, 68, '_menu_item_menu_item_parent', '64'),
(238, 68, '_menu_item_object_id', '68'),
(239, 68, '_menu_item_object', 'custom'),
(240, 68, '_menu_item_target', ''),
(241, 68, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(242, 68, '_menu_item_xfn', ''),
(243, 68, '_menu_item_url', '#'),
(245, 69, '_menu_item_type', 'custom'),
(246, 69, '_menu_item_menu_item_parent', '64'),
(247, 69, '_menu_item_object_id', '69'),
(248, 69, '_menu_item_object', 'custom'),
(249, 69, '_menu_item_target', ''),
(250, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(251, 69, '_menu_item_xfn', ''),
(252, 69, '_menu_item_url', '#'),
(254, 70, '_menu_item_type', 'custom'),
(255, 70, '_menu_item_menu_item_parent', '64'),
(256, 70, '_menu_item_object_id', '70'),
(257, 70, '_menu_item_object', 'custom'),
(258, 70, '_menu_item_target', ''),
(259, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(260, 70, '_menu_item_xfn', ''),
(261, 70, '_menu_item_url', '#'),
(263, 71, '_menu_item_type', 'custom'),
(264, 71, '_menu_item_menu_item_parent', '0'),
(265, 71, '_menu_item_object_id', '71'),
(266, 71, '_menu_item_object', 'custom'),
(267, 71, '_menu_item_target', ''),
(268, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(269, 71, '_menu_item_xfn', ''),
(270, 71, '_menu_item_url', '#'),
(272, 72, '_menu_item_type', 'custom'),
(273, 72, '_menu_item_menu_item_parent', '0'),
(274, 72, '_menu_item_object_id', '72'),
(275, 72, '_menu_item_object', 'custom'),
(276, 72, '_menu_item_target', ''),
(277, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(278, 72, '_menu_item_xfn', ''),
(279, 72, '_menu_item_url', '#'),
(281, 73, '_menu_item_type', 'custom'),
(282, 73, '_menu_item_menu_item_parent', '0'),
(283, 73, '_menu_item_object_id', '73'),
(284, 73, '_menu_item_object', 'custom'),
(285, 73, '_menu_item_target', ''),
(286, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(287, 73, '_menu_item_xfn', ''),
(288, 73, '_menu_item_url', '#'),
(290, 74, '_wp_attached_file', '2020/09/caret-down-white.png'),
(291, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:12;s:6:\"height\";i:6;s:4:\"file\";s:28:\"2020/09/caret-down-white.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(292, 75, '_edit_last', '1'),
(293, 75, '_edit_lock', '1599386239:1'),
(411, 90, '_edit_last', '1'),
(412, 90, '_edit_lock', '1599387957:1'),
(413, 95, '_edit_last', '1'),
(414, 95, '_edit_lock', '1599388907:1'),
(415, 95, 'resource_menu_link', '#'),
(416, 95, '_resource_menu_link', 'field_5f54b352b6f6b'),
(417, 95, 'sub_menu', '1'),
(418, 95, '_sub_menu', 'field_5f54b376b6f6c'),
(419, 95, 'sub_menus', '<ul class=\"sub-menu\">\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">Sub menu item</a></li>\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">Sub menu item</a></li>\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">Sub menu item</a></li>\r\n</ul>'),
(420, 95, '_sub_menus', 'field_5f54b3c4b6f6e'),
(421, 98, '_edit_last', '1'),
(422, 98, 'resource_menu_link', ''),
(423, 98, '_resource_menu_link', 'field_5f54b352b6f6b'),
(424, 98, 'sub_menu', '0'),
(425, 98, '_sub_menu', 'field_5f54b376b6f6c'),
(426, 98, '_edit_lock', '1599388336:1'),
(427, 99, '_edit_last', '1'),
(428, 99, '_edit_lock', '1599388349:1'),
(429, 99, 'resource_menu_link', ''),
(430, 99, '_resource_menu_link', 'field_5f54b352b6f6b'),
(431, 99, 'sub_menu', '0'),
(432, 99, '_sub_menu', 'field_5f54b376b6f6c'),
(433, 100, '_edit_last', '1'),
(434, 100, '_edit_lock', '1599388023:1'),
(435, 101, '_edit_last', '1'),
(436, 101, '_edit_lock', '1599388380:1'),
(437, 101, 'resource_menu_link', ''),
(438, 101, '_resource_menu_link', 'field_5f54b352b6f6b'),
(439, 101, 'sub_menu', '1'),
(440, 101, '_sub_menu', 'field_5f54b376b6f6c'),
(441, 101, 'sub_menus', '<ul class=\"sub-menu\">\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">Tuberculosis</a></li>\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">HIV</a></li>\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">Adult & Child Lung Health</a></li>\r\n        <li class=\"sub-menu-item\"><a href=\"#\">Tobacco Control</a></li>\r\n</ul>'),
(442, 101, '_sub_menus', 'field_5f54b3c4b6f6e'),
(443, 102, '_edit_last', '1'),
(444, 102, '_edit_lock', '1599388385:1'),
(445, 102, 'resource_menu_link', ''),
(446, 102, '_resource_menu_link', 'field_5f54b352b6f6b'),
(447, 102, 'sub_menu', '1'),
(448, 102, '_sub_menu', 'field_5f54b376b6f6c'),
(449, 102, 'sub_menus', '<ul class=\"sub-menu\">\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">Sub menu item</a></li>\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">Sub menu item</a></li>\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">Sub menu item</a></li>\r\n</ul>'),
(450, 102, '_sub_menus', 'field_5f54b3c4b6f6e'),
(451, 100, '_wp_trash_meta_status', 'draft'),
(452, 100, '_wp_trash_meta_time', '1599388226'),
(453, 100, '_wp_desired_post_slug', ''),
(454, 103, '_edit_last', '1'),
(455, 103, '_edit_lock', '1599389525:1'),
(456, 105, '_edit_last', '1'),
(457, 105, '_edit_lock', '1599389222:1'),
(458, 105, 'link_resources', '#'),
(459, 105, '_link_resources', 'field_5f54be76df6d5'),
(460, 106, '_edit_last', '1'),
(461, 106, 'link_resources', ''),
(462, 106, '_link_resources', 'field_5f54be76df6d5'),
(463, 106, '_edit_lock', '1599389240:1'),
(464, 107, '_edit_last', '1'),
(465, 107, 'link_resources', ''),
(466, 107, '_link_resources', 'field_5f54be76df6d5'),
(467, 107, '_edit_lock', '1599389249:1'),
(468, 108, '_edit_last', '1'),
(469, 108, 'link_resources', ''),
(470, 108, '_link_resources', 'field_5f54be76df6d5'),
(471, 108, '_edit_lock', '1599389568:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-05 04:23:24', '2020-09-05 04:23:24', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-05 04:23:24', '2020-09-05 04:23:24', '', 0, 'http://localhost/who/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-05 04:23:24', '2020-09-05 04:23:24', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/who/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-09-05 04:41:45', '2020-09-05 04:41:45', '', 0, 'http://localhost/who/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-05 04:23:24', '2020-09-05 04:23:24', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/who.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-05 04:23:24', '2020-09-05 04:23:24', '', 0, 'http://localhost/who/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-09-05 04:24:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-05 04:24:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/who/?p=4', 0, 'post', '', 0),
(5, 1, '2020-09-05 04:41:45', '2020-09-05 04:41:45', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/who/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-05 04:41:45', '2020-09-05 04:41:45', '', 2, 'http://localhost/who/2020/09/05/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2020-09-05 04:42:17', '2020-09-05 04:42:17', '', 'Home Page', '', 'publish', 'closed', 'closed', '', 'home-page', '', '', '2020-09-05 13:09:21', '2020-09-05 13:09:21', '', 0, 'http://localhost/who/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-09-05 04:42:17', '2020-09-05 04:42:17', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-09-05 04:42:17', '2020-09-05 04:42:17', '', 6, 'http://localhost/who/2020/09/05/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-09-05 08:03:26', '2020-09-05 08:03:26', '', 'page-2', '', 'publish', 'closed', 'closed', '', 'page-2', '', '', '2020-09-05 14:22:39', '2020-09-05 14:22:39', '', 0, 'http://localhost/who/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-09-05 08:03:26', '2020-09-05 08:03:26', '', 'page-2', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-09-05 08:03:26', '2020-09-05 08:03:26', '', 8, 'http://localhost/who/2020/09/05/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-09-05 08:05:32', '2020-09-05 08:05:32', '', 'page-3', '', 'publish', 'closed', 'closed', '', 'page-3', '', '', '2020-09-05 08:05:32', '2020-09-05 08:05:32', '', 0, 'http://localhost/who/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-09-05 08:05:32', '2020-09-05 08:05:32', '', 'page-3', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-05 08:05:32', '2020-09-05 08:05:32', '', 10, 'http://localhost/who/2020/09/05/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-09-05 11:41:11', '2020-09-05 11:41:11', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"front-page.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Page Content', 'home-page-content', 'publish', 'closed', 'closed', '', 'group_5f537873d93c3', '', '', '2020-09-05 12:41:58', '2020-09-05 12:41:58', '', 0, 'http://localhost/who/?post_type=acf-field-group&#038;p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2020-09-05 11:41:11', '2020-09-05 11:41:11', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Main Title', 'main_title', 'publish', 'closed', 'closed', '', 'field_5f53788fa9a33', '', '', '2020-09-05 12:10:42', '2020-09-05 12:10:42', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=13', 0, 'acf-field', '', 0),
(15, 1, '2020-09-05 11:42:52', '2020-09-05 11:42:52', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:0;}', 'Card 1', '', 'publish', 'closed', 'closed', '', 'field_5f5379a608844', '', '', '2020-09-05 11:57:47', '2020-09-05 11:57:47', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=15', 1, 'acf-field', '', 0),
(17, 1, '2020-09-05 11:48:23', '2020-09-05 11:48:23', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:23:\"WHO TRANING & EDUCATION\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title_card_1', 'publish', 'closed', 'closed', '', 'field_5f537a046a4c5', '', '', '2020-09-05 11:57:47', '2020-09-05 11:57:47', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=17', 2, 'acf-field', '', 0),
(18, 1, '2020-09-05 11:48:23', '2020-09-05 11:48:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image_m_card', 'publish', 'closed', 'closed', '', 'field_5f537a1d6a4c6', '', '', '2020-09-05 11:57:47', '2020-09-05 11:57:47', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=18', 3, 'acf-field', '', 0),
(19, 1, '2020-09-05 11:48:24', '2020-09-05 11:48:24', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:74:\"Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Card Description', 'card_desc_m_card', 'publish', 'closed', 'closed', '', 'field_5f537a4a6a4c7', '', '', '2020-09-05 11:57:47', '2020-09-05 11:57:47', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=19', 4, 'acf-field', '', 0),
(20, 1, '2020-09-05 11:48:24', '2020-09-05 11:48:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:10:\"Membership\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button Text', 'button_text_m_card', 'publish', 'closed', 'closed', '', 'field_5f537abd6a4c8', '', '', '2020-09-05 11:57:47', '2020-09-05 11:57:47', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=20', 5, 'acf-field', '', 0),
(21, 1, '2020-09-05 11:48:24', '2020-09-05 11:48:24', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:1:\"#\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button Link', 'button_link_m_card', 'publish', 'closed', 'closed', '', 'field_5f537ae46a4c9', '', '', '2020-09-05 11:57:47', '2020-09-05 11:57:47', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=21', 6, 'acf-field', '', 0),
(22, 1, '2020-09-05 11:49:37', '2020-09-05 11:49:37', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Card 2', '', 'publish', 'closed', 'closed', '', 'field_5f537b183b3a9', '', '', '2020-09-05 11:57:48', '2020-09-05 11:57:48', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=22', 7, 'acf-field', '', 0),
(23, 1, '2020-09-05 11:49:37', '2020-09-05 11:49:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"ELECTIONS\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titlle', 'title_card_2', 'publish', 'closed', 'closed', '', 'field_5f537b353b3aa', '', '', '2020-09-05 12:01:11', '2020-09-05 12:01:11', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=23', 8, 'acf-field', '', 0),
(25, 1, '2020-09-05 11:55:37', '2020-09-05 11:55:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image_m_card_2', 'publish', 'closed', 'closed', '', 'field_5f537c38af1c7', '', '', '2020-09-05 12:01:11', '2020-09-05 12:01:11', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=25', 9, 'acf-field', '', 0),
(26, 1, '2020-09-05 11:55:37', '2020-09-05 11:55:37', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:74:\"Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Card Description', 'card_desc_m_card_2', 'publish', 'closed', 'closed', '', 'field_5f537c52af1c8', '', '', '2020-09-05 12:01:11', '2020-09-05 12:01:11', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=26', 10, 'acf-field', '', 0),
(27, 1, '2020-09-05 11:55:37', '2020-09-05 11:55:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:14:\"Cast Your Vote\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button Text', 'button_text_m_card_2', 'publish', 'closed', 'closed', '', 'field_5f537c80af1c9', '', '', '2020-09-05 12:01:11', '2020-09-05 12:01:11', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=27', 11, 'acf-field', '', 0),
(28, 1, '2020-09-05 11:55:37', '2020-09-05 11:55:37', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Button Link', 'button_link_m_card_2', 'publish', 'closed', 'closed', '', 'field_5f537ca5af1ca', '', '', '2020-09-05 12:01:11', '2020-09-05 12:01:11', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=28', 12, 'acf-field', '', 0),
(29, 1, '2020-09-05 12:00:18', '2020-09-05 12:00:18', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Card List', 'card_list_', 'publish', 'closed', 'closed', '', 'field_5f537d62aec14', '', '', '2020-09-05 12:01:12', '2020-09-05 12:01:12', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=29', 14, 'acf-field', '', 0),
(30, 1, '2020-09-05 12:00:18', '2020-09-05 12:00:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:48:\"UPCOMING COURSES & EVENTS YOU WON\'T WANT TO MISS\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Card Section 2 Title', 'card_section_2_title', 'publish', 'closed', 'closed', '', 'field_5f537da3aec16', '', '', '2020-09-05 12:01:12', '2020-09-05 12:01:12', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=30', 15, 'acf-field', '', 0),
(31, 1, '2020-09-05 12:00:18', '2020-09-05 12:00:18', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', '', '', 'publish', 'closed', 'closed', '', 'field_5f537d7faec15', '', '', '2020-09-05 12:01:12', '2020-09-05 12:01:12', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=31', 16, 'acf-field', '', 0),
(32, 1, '2020-09-05 12:01:11', '2020-09-05 12:01:11', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:4:\"left\";s:8:\"endpoint\";i:1;}', '', '', 'publish', 'closed', 'closed', '', 'field_5f537dfab9760', '', '', '2020-09-05 12:02:00', '2020-09-05 12:02:00', '', 12, 'http://localhost/who/?post_type=acf-field&#038;p=32', 13, 'acf-field', '', 0),
(34, 1, '2020-09-05 12:10:52', '2020-09-05 12:10:52', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2020-09-05 12:10:52', '2020-09-05 12:10:52', '', 6, 'http://localhost/who/2020/09/05/6-autosave-v1/', 0, 'revision', '', 0),
(35, 1, '2020-09-05 12:13:38', '2020-09-05 12:13:38', '', '348x240', '', 'inherit', 'open', 'closed', '', '348x240', '', '', '2020-09-05 12:13:38', '2020-09-05 12:13:38', '', 6, 'http://localhost/who/wp-content/uploads/2020/09/348x240.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2020-09-05 12:13:51', '2020-09-05 12:13:51', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-09-05 12:13:51', '2020-09-05 12:13:51', '', 6, 'http://localhost/who/2020/09/05/6-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-09-05 12:21:25', '2020-09-05 12:21:25', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-09-05 12:21:25', '2020-09-05 12:21:25', '', 6, 'http://localhost/who/2020/09/05/6-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-09-05 13:01:45', '2020-09-05 13:01:45', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-05 13:01:45\"\n    },\n    \"page_on_front\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-05 13:01:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0498b6a1-edb0-4fa4-a2b1-5ae4fd24ebb4', '', '', '2020-09-05 13:01:45', '2020-09-05 13:01:45', '', 0, 'http://localhost/who/0498b6a1-edb0-4fa4-a2b1-5ae4fd24ebb4/', 0, 'customize_changeset', '', 0),
(39, 1, '2020-09-05 13:09:21', '2020-09-05 13:09:21', '', 'Home Page', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-09-05 13:09:21', '2020-09-05 13:09:21', '', 6, 'http://localhost/who/6-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-09-05 13:25:00', '2020-09-05 13:25:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"courses__events\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Courses & Events', 'courses-events', 'publish', 'closed', 'closed', '', 'group_5f5390cb779d1', '', '', '2020-09-05 13:52:00', '2020-09-05 13:52:00', '', 0, 'http://localhost/who/?post_type=acf-field-group&#038;p=40', 0, 'acf-field-group', '', 0),
(42, 1, '2020-09-05 13:25:00', '2020-09-05 13:25:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link Url', 'link_url', 'publish', 'closed', 'closed', '', 'field_5f5390f1c5381', '', '', '2020-09-05 13:28:25', '2020-09-05 13:28:25', '', 40, 'http://localhost/who/?post_type=acf-field&#038;p=42', 0, 'acf-field', '', 0),
(43, 1, '2020-09-05 13:25:00', '2020-09-05 13:25:00', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5f53915ec5382', '', '', '2020-09-05 13:28:25', '2020-09-05 13:28:25', '', 40, 'http://localhost/who/?post_type=acf-field&#038;p=43', 1, 'acf-field', '', 0),
(44, 1, '2020-09-05 13:25:00', '2020-09-05 13:25:00', 'a:12:{s:4:\"type\";s:5:\"radio\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:6:\"Course\";s:6:\"Course\";s:5:\"Event\";s:5:\"Event\";}s:10:\"allow_null\";i:0;s:12:\"other_choice\";i:0;s:13:\"default_value\";s:0:\"\";s:6:\"layout\";s:8:\"vertical\";s:13:\"return_format\";s:5:\"label\";s:17:\"save_other_choice\";i:0;}', 'Category', 'category', 'publish', 'closed', 'closed', '', 'field_5f539175c5383', '', '', '2020-09-05 13:29:18', '2020-09-05 13:29:18', '', 40, 'http://localhost/who/?post_type=acf-field&#038;p=44', 2, 'acf-field', '', 0),
(45, 1, '2020-09-05 13:28:03', '0000-00-00 00:00:00', '', 'WHO TRANING & EDUCATION', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-05 13:28:03', '2020-09-05 13:28:03', '', 0, 'http://localhost/who/?post_type=courses__events&#038;p=45', 0, 'courses__events', '', 0),
(46, 1, '2020-09-05 13:28:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-05 13:28:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/who/?post_type=courses__events&p=46', 0, 'courses__events', '', 0),
(47, 1, '2020-09-05 13:28:43', '2020-09-05 13:28:43', '', 'WHO TRANING & EDUCATION', '', 'publish', 'closed', 'closed', '', 'who-traning-education', '', '', '2020-09-05 13:28:43', '2020-09-05 13:28:43', '', 0, 'http://localhost/who/?post_type=courses__events&#038;p=47', 0, 'courses__events', '', 0),
(48, 1, '2020-09-05 13:52:00', '2020-09-05 13:52:00', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Category Link', 'category_link', 'publish', 'closed', 'closed', '', 'field_5f5397f20608c', '', '', '2020-09-05 13:52:00', '2020-09-05 13:52:00', '', 40, 'http://localhost/who/?post_type=acf-field&p=48', 3, 'acf-field', '', 0),
(49, 1, '2020-09-05 13:58:19', '2020-09-05 13:58:19', '', '6TH PRESIDENT\'S CENTINNIAL DINNER', '', 'publish', 'closed', 'closed', '', '6th-presidents-centinnial-dinner', '', '', '2020-09-05 13:58:19', '2020-09-05 13:58:19', '', 0, 'http://localhost/who/?post_type=courses__events&#038;p=49', 0, 'courses__events', '', 0),
(50, 1, '2020-09-05 14:09:48', '2020-09-05 14:09:48', '', 'WHO CONFERENCE', '', 'publish', 'closed', 'closed', '', 'afgsdfg', '', '', '2020-09-05 14:14:10', '2020-09-05 14:14:10', '', 0, 'http://localhost/who/?post_type=courses__events&#038;p=50', 0, 'courses__events', '', 0),
(51, 1, '2020-09-05 14:10:02', '2020-09-05 14:10:02', '', 'WHO CONFERENCE', '', 'publish', 'closed', 'closed', '', 'wefgwegtwe', '', '', '2020-09-05 14:14:00', '2020-09-05 14:14:00', '', 0, 'http://localhost/who/?post_type=courses__events&#038;p=51', 0, 'courses__events', '', 0),
(52, 1, '2020-09-05 14:22:03', '2020-09-05 14:22:03', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"page2.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Page 2', 'page-2', 'publish', 'closed', 'closed', '', 'group_5f539ee4c999f', '', '', '2020-09-05 14:22:04', '2020-09-05 14:22:04', '', 0, 'http://localhost/who/?post_type=acf-field-group&#038;p=52', 0, 'acf-field-group', '', 0),
(53, 1, '2020-09-05 14:22:04', '2020-09-05 14:22:04', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Main Heading', 'main_heading', 'publish', 'closed', 'closed', '', 'field_5f539ef1b6f90', '', '', '2020-09-05 14:22:04', '2020-09-05 14:22:04', '', 52, 'http://localhost/who/?post_type=acf-field&p=53', 0, 'acf-field', '', 0),
(54, 1, '2020-09-05 14:22:39', '2020-09-05 14:22:39', '', 'page-2', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-09-05 14:22:39', '2020-09-05 14:22:39', '', 8, 'http://localhost/who/8-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-09-05 15:49:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-05 15:49:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/who/?post_type=membership_info&p=55', 0, 'membership_info', '', 0),
(56, 1, '2020-09-05 15:49:56', '2020-09-05 15:49:56', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"membership_info\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Membership', 'membership', 'publish', 'closed', 'closed', '', 'group_5f53b384724f6', '', '', '2020-09-05 15:49:56', '2020-09-05 15:49:56', '', 0, 'http://localhost/who/?post_type=acf-field-group&#038;p=56', 0, 'acf-field-group', '', 0),
(57, 1, '2020-09-05 15:49:56', '2020-09-05 15:49:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link Text', 'link_text', 'publish', 'closed', 'closed', '', 'field_5f53b38de3f52', '', '', '2020-09-05 15:49:56', '2020-09-05 15:49:56', '', 56, 'http://localhost/who/?post_type=acf-field&p=57', 0, 'acf-field', '', 0),
(58, 1, '2020-09-05 15:49:56', '2020-09-05 15:49:56', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link Url', 'link_url', 'publish', 'closed', 'closed', '', 'field_5f53b398e3f53', '', '', '2020-09-05 15:49:56', '2020-09-05 15:49:56', '', 56, 'http://localhost/who/?post_type=acf-field&p=58', 1, 'acf-field', '', 0),
(59, 1, '2020-09-05 15:52:26', '2020-09-05 15:52:26', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.', 'RENEW MEMBERSHIP', '', 'publish', 'closed', 'closed', '', 'renew-membership', '', '', '2020-09-05 15:52:26', '2020-09-05 15:52:26', '', 0, 'http://localhost/who/?post_type=membership_info&#038;p=59', 0, 'membership_info', '', 0),
(60, 1, '2020-09-05 15:52:47', '2020-09-05 15:52:47', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.', 'MEMBERS ONLY SPACE', '', 'publish', 'closed', 'closed', '', 'members-only-space', '', '', '2020-09-05 15:52:47', '2020-09-05 15:52:47', '', 0, 'http://localhost/who/?post_type=membership_info&#038;p=60', 0, 'membership_info', '', 0),
(61, 1, '2020-09-05 15:54:01', '2020-09-05 15:54:01', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.', 'MEMBERS DIRECTOR', '', 'publish', 'closed', 'closed', '', 'members-director', '', '', '2020-09-05 15:54:01', '2020-09-05 15:54:01', '', 0, 'http://localhost/who/?post_type=membership_info&#038;p=61', 0, 'membership_info', '', 0),
(62, 1, '2020-09-05 15:54:24', '2020-09-05 15:54:24', 'Sed accumsan tincidunt, feugait suscipit, consequat nisl veniam enim duis.', 'MY MEMBERSHIP DETAILS', '', 'publish', 'closed', 'closed', '', 'my-membership-details', '', '', '2020-09-05 15:54:24', '2020-09-05 15:54:24', '', 0, 'http://localhost/who/?post_type=membership_info&#038;p=62', 0, 'membership_info', '', 0),
(63, 1, '2020-09-05 16:20:13', '2020-09-05 16:20:13', '', 'School', '', 'publish', 'closed', 'closed', '', 'school', '', '', '2020-09-06 07:47:52', '2020-09-06 07:47:52', '', 0, 'http://localhost/who/?p=63', 1, 'nav_menu_item', '', 0),
(64, 1, '2020-09-05 16:20:14', '2020-09-05 16:20:14', '', 'Elections', '', 'publish', 'closed', 'closed', '', 'elections', '', '', '2020-09-06 07:47:52', '2020-09-06 07:47:52', '', 0, 'http://localhost/who/?p=64', 5, 'nav_menu_item', '', 0),
(65, 1, '2020-09-05 16:20:13', '2020-09-05 16:20:13', '', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-09-06 07:47:52', '2020-09-06 07:47:52', '', 0, 'http://localhost/who/?p=65', 2, 'nav_menu_item', '', 0),
(66, 1, '2020-09-05 16:20:13', '2020-09-05 16:20:13', '', 'My Directory', '', 'publish', 'closed', 'closed', '', 'my-directory', '', '', '2020-09-06 07:47:52', '2020-09-06 07:47:52', '', 0, 'http://localhost/who/?p=66', 3, 'nav_menu_item', '', 0),
(67, 1, '2020-09-05 16:20:14', '2020-09-05 16:20:14', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources', '', '', '2020-09-06 07:47:52', '2020-09-06 07:47:52', '', 0, 'http://localhost/who/?p=67', 4, 'nav_menu_item', '', 0),
(68, 1, '2020-09-05 16:20:14', '2020-09-05 16:20:14', '', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account-2', '', '', '2020-09-06 07:47:52', '2020-09-06 07:47:52', '', 0, 'http://localhost/who/?p=68', 6, 'nav_menu_item', '', 0),
(69, 1, '2020-09-05 16:20:14', '2020-09-05 16:20:14', '', 'My Directory', '', 'publish', 'closed', 'closed', '', 'my-directory-2', '', '', '2020-09-06 07:47:52', '2020-09-06 07:47:52', '', 0, 'http://localhost/who/?p=69', 7, 'nav_menu_item', '', 0),
(70, 1, '2020-09-05 16:20:14', '2020-09-05 16:20:14', '', 'Resources', '', 'publish', 'closed', 'closed', '', 'resources-2', '', '', '2020-09-06 07:47:53', '2020-09-06 07:47:53', '', 0, 'http://localhost/who/?p=70', 8, 'nav_menu_item', '', 0),
(71, 1, '2020-09-05 16:22:46', '2020-09-05 16:22:46', '', 'Terms & Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2020-09-05 16:22:46', '2020-09-05 16:22:46', '', 0, 'http://localhost/who/?p=71', 1, 'nav_menu_item', '', 0),
(72, 1, '2020-09-05 16:22:46', '2020-09-05 16:22:46', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2020-09-05 16:22:46', '2020-09-05 16:22:46', '', 0, 'http://localhost/who/?p=72', 2, 'nav_menu_item', '', 0),
(73, 1, '2020-09-05 16:22:46', '2020-09-05 16:22:46', '', 'WHO Website', '', 'publish', 'closed', 'closed', '', 'who-website', '', '', '2020-09-05 16:22:46', '2020-09-05 16:22:46', '', 0, 'http://localhost/who/?p=73', 3, 'nav_menu_item', '', 0),
(74, 1, '2020-09-06 05:50:43', '2020-09-06 05:50:43', '', 'caret-down-white', '', 'inherit', 'open', 'closed', '', 'caret-down-white', '', '', '2020-09-06 05:50:43', '2020-09-06 05:50:43', '', 0, 'http://localhost/who/wp-content/uploads/2020/09/caret-down-white.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2020-09-06 07:54:43', '2020-09-06 07:54:43', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"page-3.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Page 3', 'page-3', 'publish', 'closed', 'closed', '', 'group_5f5495a4cda4b', '', '', '2020-09-06 07:54:43', '2020-09-06 07:54:43', '', 0, 'http://localhost/who/?post_type=acf-field-group&#038;p=75', 0, 'acf-field-group', '', 0),
(76, 1, '2020-09-06 07:54:43', '2020-09-06 07:54:43', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"RESOURCES\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Main Title', 'main_title', 'publish', 'closed', 'closed', '', 'field_5f5495b0472a4', '', '', '2020-09-06 07:54:43', '2020-09-06 07:54:43', '', 75, 'http://localhost/who/?post_type=acf-field&p=76', 0, 'acf-field', '', 0),
(90, 1, '2020-09-06 10:03:12', '2020-09-06 10:03:12', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"resourse_menu\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Resourse Menu', 'resourse-menu', 'publish', 'closed', 'closed', '', 'group_5f54b342891eb', '', '', '2020-09-06 10:28:18', '2020-09-06 10:28:18', '', 0, 'http://localhost/who/?post_type=acf-field-group&#038;p=90', 0, 'acf-field-group', '', 0),
(91, 1, '2020-09-06 10:03:12', '2020-09-06 10:03:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Resource Menu Link', 'resource_menu_link', 'publish', 'closed', 'closed', '', 'field_5f54b352b6f6b', '', '', '2020-09-06 10:03:12', '2020-09-06 10:03:12', '', 90, 'http://localhost/who/?post_type=acf-field&p=91', 0, 'acf-field', '', 0),
(92, 1, '2020-09-06 10:03:12', '2020-09-06 10:03:12', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Sub Menu', 'sub_menu', 'publish', 'closed', 'closed', '', 'field_5f54b376b6f6c', '', '', '2020-09-06 10:25:01', '2020-09-06 10:25:01', '', 90, 'http://localhost/who/?post_type=acf-field&#038;p=92', 1, 'acf-field', '', 0),
(93, 1, '2020-09-06 10:03:12', '2020-09-06 10:03:12', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"field\";s:19:\"field_5f54b376b6f6c\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"1\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:220:\"<ul class=\"sub-menu\">\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">Sub menu item</a></li>\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">Sub menu item</a></li>\r\n 	<li class=\"sub-menu-item\"><a href=\"#\">Sub menu item</a></li>\r\n</ul>\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Sub Menu', 'sub_menus', 'publish', 'closed', 'closed', '', 'field_5f54b3c4b6f6e', '', '', '2020-09-06 10:28:18', '2020-09-06 10:28:18', '', 90, 'http://localhost/who/?post_type=acf-field&#038;p=93', 2, 'acf-field', '', 0),
(94, 1, '2020-09-06 10:03:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-06 10:03:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/who/?post_type=resourse_menu&p=94', 0, 'resourse_menu', '', 0),
(95, 1, '2020-09-06 10:10:14', '2020-09-06 10:10:14', '', 'Official Documents', '', 'publish', 'closed', 'closed', '', 'official-documents', '', '', '2020-09-06 10:32:51', '2020-09-06 10:32:51', '', 0, 'http://localhost/who/?post_type=resourse_menu&#038;p=95', 0, 'resourse_menu', '', 0),
(96, 1, '2020-09-06 10:23:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-06 10:23:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/who/?post_type=acf-field-group&p=96', 0, 'acf-field-group', '', 0),
(97, 1, '2020-09-06 10:24:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-06 10:24:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/who/?post_type=resourse_menu&p=97', 0, 'resourse_menu', '', 0),
(98, 1, '2020-09-06 10:00:15', '2020-09-06 10:00:15', '', 'About WHO', '', 'publish', 'closed', 'closed', '', 'about-who', '', '', '2020-09-06 10:32:16', '2020-09-06 10:32:16', '', 0, 'http://localhost/who/?post_type=resourse_menu&#038;p=98', 0, 'resourse_menu', '', 0),
(99, 1, '2020-09-06 10:05:35', '2020-09-06 10:05:35', '', 'Webinars', '', 'publish', 'closed', 'closed', '', 'webinars', '', '', '2020-09-06 10:32:29', '2020-09-06 10:32:29', '', 0, 'http://localhost/who/?post_type=resourse_menu&#038;p=99', 0, 'resourse_menu', '', 0),
(100, 1, '2020-09-06 10:30:26', '2020-09-06 10:30:26', '', 'Scientific Sections', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-09-06 10:30:26', '2020-09-06 10:30:26', '', 0, 'http://localhost/who/?post_type=resourse_menu&#038;p=100', 0, 'resourse_menu', '', 0),
(101, 1, '2020-09-06 10:20:29', '2020-09-06 10:20:29', '', 'Scientific Sections', '', 'publish', 'closed', 'closed', '', 'scientific-sections', '', '', '2020-09-06 10:33:00', '2020-09-06 10:33:00', '', 0, 'http://localhost/who/?post_type=resourse_menu&#038;p=101', 0, 'resourse_menu', '', 0),
(102, 1, '2020-09-06 10:30:09', '2020-09-06 10:30:09', '', 'WHO Regions', '', 'publish', 'closed', 'closed', '', 'who-regions', '', '', '2020-09-06 10:33:04', '2020-09-06 10:33:04', '', 0, 'http://localhost/who/?post_type=resourse_menu&#038;p=102', 0, 'resourse_menu', '', 0),
(103, 1, '2020-09-06 10:48:33', '2020-09-06 10:48:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"resources_items\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Resources', 'resources', 'publish', 'closed', 'closed', '', 'group_5f54be6a72b65', '', '', '2020-09-06 10:48:33', '2020-09-06 10:48:33', '', 0, 'http://localhost/who/?post_type=acf-field-group&#038;p=103', 0, 'acf-field-group', '', 0),
(104, 1, '2020-09-06 10:48:33', '2020-09-06 10:48:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link', 'link_resources', 'publish', 'closed', 'closed', '', 'field_5f54be76df6d5', '', '', '2020-09-06 10:48:33', '2020-09-06 10:48:33', '', 103, 'http://localhost/who/?post_type=acf-field&p=104', 0, 'acf-field', '', 0),
(105, 1, '2020-09-06 10:48:52', '2020-09-06 10:48:52', '', 'Citizen News - Webinar on new shorter, cheaper and possibly better MDR-TB treatment', '', 'publish', 'closed', 'closed', '', 'citizen-news-webinar-on-new-shorter-cheaper-and-possibly-better-mdr-tb-treatment', '', '', '2020-09-06 10:48:52', '2020-09-06 10:48:52', '', 0, 'http://localhost/who/?post_type=resources_items&#038;p=105', 0, 'resources_items', '', 0),
(106, 1, '2020-09-06 10:49:40', '2020-09-06 10:49:40', '', 'Citizen News – Webinar on new shorter, cheaper and possibly better MDR-TB treatment', '', 'publish', 'closed', 'closed', '', 'citizen-news-webinar-on-new-shorter-cheaper-and-possibly-better-mdr-tb-treatment-2', '', '', '2020-09-06 10:49:40', '2020-09-06 10:49:40', '', 0, 'http://localhost/who/?post_type=resources_items&#038;p=106', 0, 'resources_items', '', 0),
(107, 1, '2020-09-06 10:49:49', '2020-09-06 10:49:49', '', 'Citizen News – Webinar on new shorter, cheaper and possibly better MDR-TB treatment', '', 'publish', 'closed', 'closed', '', 'citizen-news-webinar-on-new-shorter-cheaper-and-possibly-better-mdr-tb-treatment-3', '', '', '2020-09-06 10:49:49', '2020-09-06 10:49:49', '', 0, 'http://localhost/who/?post_type=resources_items&#038;p=107', 0, 'resources_items', '', 0),
(108, 1, '2020-09-06 10:49:58', '2020-09-06 10:49:58', '', 'Citizen News – Webinar on new shorter, cheaper and possibly better MDR-TB treatment', '', 'publish', 'closed', 'closed', '', 'citizen-news-webinar-on-new-shorter-cheaper-and-possibly-better-mdr-tb-treatment-4', '', '', '2020-09-06 10:52:47', '2020-09-06 10:52:47', '', 0, 'http://localhost/who/?post_type=resources_items&#038;p=108', 0, 'resources_items', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(63, 2, 0),
(64, 2, 0),
(65, 2, 0),
(66, 2, 0),
(67, 2, 0),
(68, 2, 0),
(69, 2, 0),
(70, 2, 0),
(71, 3, 0),
(72, 3, 0),
(73, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 8),
(3, 3, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"3c696b78172f488868290917833c4fbc263aece84b4d9a94012ec0d98ccaa2ea\";a:4:{s:10:\"expiration\";i:1599452678;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36\";s:5:\"login\";i:1599279878;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_page', 'a:0:{}'),
(19, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(20, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1599316102'),
(22, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(23, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:29:\"add-post-type-courses__events\";i:1;s:29:\"add-post-type-membership_info\";i:2;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BiNIVn8piFWkMSlXnFF6RsVxTeTlo8.', 'admin', 'priyan1995darshana@gmail.com', 'http://localhost/who', '2020-09-05 04:23:22', '', 0, 'admin');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
