-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 01:37 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tentenkidplaza`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-23 04:57:45', '2019-12-23 04:57:45', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
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
(1, 'siteurl', 'http://tentenkidplaza.co', 'yes'),
(2, 'home', 'http://tentenkidplaza.co', 'yes'),
(3, 'blogname', 'Tenten Kidplaza', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'truonggiang120795@gmail.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:158:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:56:"danh-muc-san-pham/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:51:"danh-muc-san-pham/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:32:"danh-muc-san-pham/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:44:"danh-muc-san-pham/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:26:"danh-muc-san-pham/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:57:"tu-khoa-san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:52:"tu-khoa-san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:33:"tu-khoa-san-pham/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:45:"tu-khoa-san-pham/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:27:"tu-khoa-san-pham/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:36:"san-pham/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"san-pham/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"san-pham/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"san-pham/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"san-pham/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"san-pham/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"san-pham/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:29:"san-pham/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:49:"san-pham/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:44:"san-pham/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:37:"san-pham/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:44:"san-pham/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:34:"san-pham/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:40:"san-pham/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:51:"san-pham/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:33:"san-pham/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:25:"san-pham/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"san-pham/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"san-pham/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"san-pham/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"san-pham/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"san-pham/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=8&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";i:1;s:23:"ml-slider/ml-slider.php";i:2;s:39:"siteorigin-panels/siteorigin-panels.php";i:3;s:27:"woocommerce/woocommerce.php";i:4;s:29:"wp-mail-smtp/wp_mail_smtp.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'tentenvn', 'yes'),
(41, 'stylesheet', 'tentenvn', 'yes'),
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
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'vi', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:0:{}s:8:"sidebar1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:7:"footer1";a:0:{}s:7:"footer2";a:0:{}s:7:"footer3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(103, 'cron', 'a:14:{i:1577363759;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:0:{}s:8:"interval";i:60;}}}i:1577365065;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1577365629;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1577367238;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1577379465;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1577404800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1577422665;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1577422757;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1577422759;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1577432038;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1577432048;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1577442838;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1578355200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'nonce_key', 'MgdkDF)35@0uLww5{O5@fN4KK&9=W8y&/bjPqyY_G.#6XrxZ9w:u|=FF>2eUSqLm', 'no'),
(111, 'nonce_salt', 'p.ce!QU]o=HUZW_Gb8fVqma]+U-St)!P&0sr*wmmMjWzFF1+~wC`nrjSvm[/y}_0', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(117, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:62:"https://downloads.wordpress.org/release/vi/wordpress-5.3.2.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/vi/wordpress-5.3.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.3.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.3.2";s:7:"version";s:5:"5.3.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.3";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1577346439;s:15:"version_checked";s:5:"5.2.5";s:12:"translations";a:0:{}}', 'no'),
(122, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1577346442;s:7:"checked";a:1:{s:8:"tentenvn";s:3:"1.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(124, 'auth_key', ']C4gw>uZ(iL}nK(9}H=eaRA3o_ub>7d}9,DI}/!6/7DKy?Ooh9_^Q ~SId+w!LKx', 'no'),
(125, 'auth_salt', 'Xa9?*J0oWVGb+=BDM$Y9^Ch@L+pG1m*Ev d#^z8/Lu0F}y;h/ZBPmFx3*eJWJ9dr', 'no'),
(126, 'logged_in_key', 'K5;;%U@A2~sHrvfIp;l`^W;MtsK^S+S=wdsIt0#J}[^4GkSoJ7:jN|6{WeT0(Sm[', 'no'),
(127, 'logged_in_salt', ',P:W0/v4ef{&le,DuW`&KBQ@-Jd/0W6*&uG+2nbmqVC*Ii0=Y3qL#)d<6{Vj^VmS', 'no'),
(128, '_site_transient_timeout_browser_237aa6249591b6a7ad6962bc73492c77', '1577681958', 'no'),
(129, '_site_transient_browser_237aa6249591b6a7ad6962bc73492c77', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"79.0.3945.88";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(130, '_site_transient_timeout_php_check_a10e539f660cc06b0ad46898f5988f88', '1577681959', 'no'),
(131, '_site_transient_php_check_a10e539f660cc06b0ad46898f5988f88', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:6:"5.6.20";s:12:"is_supported";b:0;s:9:"is_secure";b:0;s:13:"is_acceptable";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(146, 'theme_mods_twentynineteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1577077164;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(147, 'current_theme', 'Tenten Template', 'yes'),
(148, 'theme_mods_tentenvn', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:17;}s:18:"custom_css_post_id";i:-1;s:14:"lwp_link_color";s:7:"#fc474c";s:11:"custom_logo";i:23;}', 'yes'),
(149, 'theme_switched', '', 'yes'),
(153, 'recently_activated', 'a:0:{}', 'yes'),
(154, 'wp_mail_smtp_initial_version', '1.4.2', 'no'),
(155, 'wp_mail_smtp_version', '1.4.2', 'no'),
(156, 'wp_mail_smtp', 'a:2:{s:4:"mail";a:6:{s:10:"from_email";s:27:"truonggiang120795@gmail.com";s:9:"from_name";s:15:"Tenten Kidplaza";s:6:"mailer";s:4:"mail";s:11:"return_path";b:0;s:16:"from_email_force";b:0;s:15:"from_name_force";b:0;}s:4:"smtp";a:1:{s:7:"autotls";b:1;}}', 'no'),
(157, '_amn_smtp_last_checked', '1577059200', 'yes'),
(158, 'wooccm_update_notice', '0', 'yes'),
(159, 'wccs_settings', 'a:1:{s:9:"checkness";a:7:{s:8:"position";s:17:"after_order_notes";s:25:"wooccm_notification_email";s:27:"truonggiang120795@gmail.com";s:16:"payment_method_d";s:14:"Payment Method";s:16:"time_stamp_title";s:10:"Order Time";s:16:"payment_method_t";s:1:"1";s:17:"shipping_method_d";s:15:"Shipping Method";s:17:"shipping_method_t";s:1:"1";}}', 'yes'),
(160, 'wccs_settings2', 'a:1:{s:16:"shipping_buttons";a:9:{i:0;a:6:{s:5:"label";s:10:"Quốc gia";s:3:"cow";s:7:"country";s:8:"checkbox";s:4:"true";s:5:"order";i:1;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:1;a:6:{s:5:"label";s:4:"Tên";s:3:"cow";s:10:"first_name";s:8:"checkbox";s:4:"true";s:5:"order";i:2;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:2;a:7:{s:5:"label";s:4:"họ";s:3:"cow";s:9:"last_name";s:8:"checkbox";s:4:"true";s:5:"order";i:3;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:9:"clear_row";b:1;}i:3;a:6:{s:5:"label";s:12:"Company Name";s:3:"cow";s:7:"company";s:8:"checkbox";s:4:"true";s:5:"order";i:4;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:4;a:7:{s:5:"label";s:7:"Address";s:3:"cow";s:9:"address_1";s:8:"checkbox";s:4:"true";s:5:"order";i:5;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:14:"Street address";}i:5;a:7:{s:5:"label";b:0;s:3:"cow";s:9:"address_2";s:8:"checkbox";s:4:"true";s:5:"order";i:6;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";}i:6;a:7:{s:5:"label";s:10:"Town/ City";s:3:"cow";s:4:"city";s:8:"checkbox";s:4:"true";s:5:"order";i:7;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:11:"Town / City";}i:7;a:6:{s:5:"label";s:12:"nhà nước";s:3:"cow";s:5:"state";s:8:"checkbox";s:4:"true";s:5:"order";i:8;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:8;a:8:{s:5:"label";s:3:"Zip";s:3:"cow";s:8:"postcode";s:8:"checkbox";s:4:"true";s:5:"order";i:9;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:11:"placeholder";s:14:"Postcode / Zip";s:9:"clear_row";b:1;}}}', 'yes'),
(161, 'wccs_settings3', 'a:1:{s:15:"billing_buttons";a:11:{i:0;a:6:{s:5:"label";s:10:"Quốc gia";s:3:"cow";s:7:"country";s:8:"checkbox";s:4:"true";s:5:"order";i:1;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:1;a:6:{s:5:"label";s:4:"Tên";s:3:"cow";s:10:"first_name";s:8:"checkbox";s:4:"true";s:5:"order";i:2;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:2;a:7:{s:5:"label";s:4:"họ";s:3:"cow";s:9:"last_name";s:8:"checkbox";s:4:"true";s:5:"order";i:3;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:9:"clear_row";b:1;}i:3;a:6:{s:5:"label";s:12:"Company Name";s:3:"cow";s:7:"company";s:8:"checkbox";s:4:"true";s:5:"order";i:4;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";}i:4;a:7:{s:5:"label";s:7:"Address";s:3:"cow";s:9:"address_1";s:8:"checkbox";s:4:"true";s:5:"order";i:5;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:14:"Street address";}i:5;a:7:{s:5:"label";b:0;s:3:"cow";s:9:"address_2";s:8:"checkbox";s:4:"true";s:5:"order";i:6;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:38:"Apartment, suite, unit etc. (optional)";}i:6;a:7:{s:5:"label";s:10:"Town/ City";s:3:"cow";s:4:"city";s:8:"checkbox";s:4:"true";s:5:"order";i:7;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-wide";s:11:"placeholder";s:11:"Town / City";}i:7;a:6:{s:5:"label";s:12:"nhà nước";s:3:"cow";s:5:"state";s:8:"checkbox";s:4:"true";s:5:"order";i:8;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:8;a:8:{s:5:"label";s:3:"Zip";s:3:"cow";s:8:"postcode";s:8:"checkbox";s:4:"true";s:5:"order";i:9;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:11:"placeholder";s:14:"Postcode / Zip";s:9:"clear_row";b:1;}i:9;a:6:{s:5:"label";s:13:"Email Address";s:3:"cow";s:5:"email";s:8:"checkbox";s:4:"true";s:5:"order";i:10;s:4:"type";s:10:"wooccmtext";s:8:"position";s:14:"form-row-first";}i:10;a:7:{s:5:"label";s:16:"điện thoại";s:3:"cow";s:5:"phone";s:8:"checkbox";s:4:"true";s:5:"order";i:11;s:4:"type";s:10:"wooccmtext";s:8:"position";s:13:"form-row-last";s:9:"clear_row";b:1;}}}', 'yes'),
(164, 'woocommerce_store_address', '', 'yes'),
(165, 'woocommerce_store_address_2', '', 'yes'),
(166, 'woocommerce_store_city', '', 'yes'),
(167, 'woocommerce_default_country', 'GB', 'yes'),
(168, 'woocommerce_store_postcode', '', 'yes'),
(169, 'woocommerce_allowed_countries', 'all', 'yes'),
(170, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(171, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(172, 'woocommerce_ship_to_countries', '', 'yes'),
(173, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(174, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(175, 'woocommerce_calc_taxes', 'no', 'yes'),
(176, 'woocommerce_enable_coupons', 'yes', 'yes'),
(177, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(178, 'woocommerce_currency', 'VND', 'yes'),
(179, 'woocommerce_currency_pos', 'right', 'yes'),
(180, 'woocommerce_price_thousand_sep', '.', 'yes'),
(181, 'woocommerce_price_decimal_sep', ',', 'yes'),
(182, 'woocommerce_price_num_decimals', '0', 'yes'),
(183, 'woocommerce_shop_page_id', '', 'yes'),
(184, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(185, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(186, 'woocommerce_placeholder_image', '5', 'yes'),
(187, 'woocommerce_weight_unit', 'kg', 'yes'),
(188, 'woocommerce_dimension_unit', 'cm', 'yes'),
(189, 'woocommerce_enable_reviews', 'yes', 'yes'),
(190, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(191, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(192, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(193, 'woocommerce_review_rating_required', 'yes', 'no'),
(194, 'woocommerce_manage_stock', 'yes', 'yes'),
(195, 'woocommerce_hold_stock_minutes', '60', 'no'),
(196, 'woocommerce_notify_low_stock', 'yes', 'no'),
(197, 'woocommerce_notify_no_stock', 'yes', 'no'),
(198, 'woocommerce_stock_email_recipient', 'truonggiang120795@gmail.com', 'no'),
(199, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(200, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(201, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(202, 'woocommerce_stock_format', '', 'yes'),
(203, 'woocommerce_file_download_method', 'force', 'no'),
(204, 'woocommerce_downloads_require_login', 'no', 'no'),
(205, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(206, 'woocommerce_prices_include_tax', 'no', 'yes'),
(207, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(208, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(209, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(210, 'woocommerce_tax_classes', 'Giảm tỉ lệ\r\nTỉ lệ rỗng', 'yes'),
(211, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(212, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(213, 'woocommerce_price_display_suffix', '', 'yes'),
(214, 'woocommerce_tax_total_display', 'itemized', 'no'),
(215, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(216, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(217, 'woocommerce_ship_to_destination', 'billing', 'no'),
(218, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(219, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(220, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(221, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(222, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(223, 'woocommerce_registration_generate_username', 'yes', 'no'),
(224, 'woocommerce_registration_generate_password', 'yes', 'no'),
(225, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(226, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(227, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(228, 'woocommerce_registration_privacy_policy_text', 'Thông tin cá nhân của bạn sẽ được sử dụng để tăng trải nghiệm sử dụng website, quản lý truy cập vào tài khoản của bạn, và cho các mục đích cụ thể khác được mô tả trong [privacy_policy].', 'yes'),
(229, 'woocommerce_checkout_privacy_policy_text', 'Thông tin cá nhân của bạn sẽ được sử dụng để xử lý đơn hàng, tăng trải nghiệm sử dụng website, và cho các mục đích cụ thể khác đã được mô tả trong [privacy_policy].', 'yes'),
(230, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(231, 'woocommerce_trash_pending_orders', '', 'no'),
(232, 'woocommerce_trash_failed_orders', '', 'no'),
(233, 'woocommerce_trash_cancelled_orders', '', 'no'),
(234, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(235, 'woocommerce_email_from_name', 'Tenten Kidplaza', 'no'),
(236, 'woocommerce_email_from_address', 'truonggiang120795@gmail.com', 'no'),
(237, 'woocommerce_email_header_image', '', 'no'),
(238, 'woocommerce_email_footer_text', '{site_title}<br/>Built with <a href="https://woocommerce.com/">WooCommerce</a>', 'no'),
(239, 'woocommerce_email_base_color', '#96588a', 'no'),
(240, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(241, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(242, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(243, 'woocommerce_cart_page_id', '', 'yes'),
(244, 'woocommerce_checkout_page_id', '', 'yes'),
(245, 'woocommerce_myaccount_page_id', '', 'yes'),
(246, 'woocommerce_terms_page_id', '', 'no'),
(247, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(248, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(249, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(250, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(251, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(252, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(253, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(254, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(255, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(256, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(257, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(258, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(259, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(260, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(261, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(262, 'woocommerce_api_enabled', 'no', 'yes'),
(263, 'woocommerce_allow_tracking', 'no', 'no'),
(264, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(265, 'woocommerce_single_image_width', '600', 'yes'),
(266, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(267, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(268, 'woocommerce_demo_store', 'no', 'no'),
(269, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:9:"/san-pham";s:13:"category_base";s:17:"danh-muc-san-pham";s:8:"tag_base";s:16:"tu-khoa-san-pham";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(270, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(271, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(272, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(274, 'default_product_cat', '15', 'yes'),
(277, 'woocommerce_version', '3.6.3', 'yes'),
(278, 'woocommerce_db_version', '3.6.3', 'yes'),
(279, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(280, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(281, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(282, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(283, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(284, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(285, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(287, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(288, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(289, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(290, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(291, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(292, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(295, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:1;s:3:"all";i:1;s:8:"approved";s:1:"1";s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(296, '_transient_as_comment_count', 'O:8:"stdClass":7:{s:8:"approved";s:1:"1";s:14:"total_comments";i:1;s:3:"all";i:1;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(297, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(298, '_transient_timeout_external_ip_address_127.0.0.1', '1577691240', 'no'),
(299, '_transient_external_ip_address_127.0.0.1', '118.70.170.88', 'no'),
(311, 'siteorigin_panels_settings', 'a:0:{}', 'yes'),
(312, 'siteorigin_panels_initial_version', '2.10.5', 'no'),
(313, 'siteorigin_panels_active_version', '2.10.13', 'yes'),
(314, 'widget_siteorigin-panels-post-content', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(315, 'widget_siteorigin-panels-postloop', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(316, 'widget_siteorigin-panels-builder', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(317, 'widget_metaslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(324, 'widget_black-studio-tinymce', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(328, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1577346442;s:7:"checked";a:7:{s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";s:5:"2.6.9";s:45:"taxonomy-terms-order/taxonomy-terms-order.php";s:7:"1.5.7.1";s:23:"ml-slider/ml-slider.php";s:6:"3.15.3";s:39:"siteorigin-panels/siteorigin-panels.php";s:7:"2.10.13";s:27:"woocommerce/woocommerce.php";s:5:"3.6.3";s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";s:3:"4.3";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:5:"1.8.1";}s:8:"response";a:2:{s:27:"woocommerce/woocommerce.php";O:8:"stdClass":12:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.8.1";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.8.1.zip";s:5:"icons";a:2:{s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035";s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035";}s:7:"banners";a:2:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.3.2";s:12:"requires_php";s:3:"5.6";s:13:"compatibility";O:8:"stdClass":0:{}}s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";O:8:"stdClass":12:{s:2:"id";s:42:"w.org/plugins/woocommerce-checkout-manager";s:4:"slug";s:28:"woocommerce-checkout-manager";s:6:"plugin";s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";s:11:"new_version";s:5:"4.8.5";s:3:"url";s:59:"https://wordpress.org/plugins/woocommerce-checkout-manager/";s:7:"package";s:77:"https://downloads.wordpress.org/plugin/woocommerce-checkout-manager.4.8.5.zip";s:5:"icons";a:2:{s:2:"2x";s:81:"https://ps.w.org/woocommerce-checkout-manager/assets/icon-256x256.jpg?rev=2148599";s:2:"1x";s:81:"https://ps.w.org/woocommerce-checkout-manager/assets/icon-128x128.jpg?rev=2148599";}s:7:"banners";a:2:{s:2:"2x";s:84:"https://ps.w.org/woocommerce-checkout-manager/assets/banner-1544x500.jpg?rev=2148599";s:2:"1x";s:83:"https://ps.w.org/woocommerce-checkout-manager/assets/banner-772x250.jpg?rev=2148599";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.3.2";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";O:8:"stdClass":9:{s:2:"id";s:41:"w.org/plugins/black-studio-tinymce-widget";s:4:"slug";s:27:"black-studio-tinymce-widget";s:6:"plugin";s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";s:11:"new_version";s:5:"2.6.9";s:3:"url";s:58:"https://wordpress.org/plugins/black-studio-tinymce-widget/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/black-studio-tinymce-widget.2.6.9.zip";s:5:"icons";a:2:{s:2:"2x";s:80:"https://ps.w.org/black-studio-tinymce-widget/assets/icon-256x256.png?rev=1002774";s:2:"1x";s:80:"https://ps.w.org/black-studio-tinymce-widget/assets/icon-128x128.png?rev=1002774";}s:7:"banners";a:2:{s:2:"2x";s:83:"https://ps.w.org/black-studio-tinymce-widget/assets/banner-1544x500.png?rev=1002774";s:2:"1x";s:82:"https://ps.w.org/black-studio-tinymce-widget/assets/banner-772x250.png?rev=1002774";}s:11:"banners_rtl";a:0:{}}s:45:"taxonomy-terms-order/taxonomy-terms-order.php";O:8:"stdClass":9:{s:2:"id";s:34:"w.org/plugins/taxonomy-terms-order";s:4:"slug";s:20:"taxonomy-terms-order";s:6:"plugin";s:45:"taxonomy-terms-order/taxonomy-terms-order.php";s:11:"new_version";s:7:"1.5.7.1";s:3:"url";s:51:"https://wordpress.org/plugins/taxonomy-terms-order/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/taxonomy-terms-order.1.5.7.1.zip";s:5:"icons";a:2:{s:2:"2x";s:73:"https://ps.w.org/taxonomy-terms-order/assets/icon-256x256.png?rev=1564412";s:2:"1x";s:73:"https://ps.w.org/taxonomy-terms-order/assets/icon-128x128.png?rev=1564412";}s:7:"banners";a:2:{s:2:"2x";s:76:"https://ps.w.org/taxonomy-terms-order/assets/banner-1544x500.png?rev=1564412";s:2:"1x";s:75:"https://ps.w.org/taxonomy-terms-order/assets/banner-772x250.png?rev=1564412";}s:11:"banners_rtl";a:0:{}}s:23:"ml-slider/ml-slider.php";O:8:"stdClass":9:{s:2:"id";s:23:"w.org/plugins/ml-slider";s:4:"slug";s:9:"ml-slider";s:6:"plugin";s:23:"ml-slider/ml-slider.php";s:11:"new_version";s:6:"3.15.3";s:3:"url";s:40:"https://wordpress.org/plugins/ml-slider/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/ml-slider.3.15.3.zip";s:5:"icons";a:3:{s:2:"2x";s:62:"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=1837669";s:2:"1x";s:54:"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669";s:3:"svg";s:54:"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669";}s:7:"banners";a:2:{s:2:"2x";s:65:"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669";s:2:"1x";s:64:"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=1837669";}s:11:"banners_rtl";a:0:{}}s:39:"siteorigin-panels/siteorigin-panels.php";O:8:"stdClass":9:{s:2:"id";s:31:"w.org/plugins/siteorigin-panels";s:4:"slug";s:17:"siteorigin-panels";s:6:"plugin";s:39:"siteorigin-panels/siteorigin-panels.php";s:11:"new_version";s:7:"2.10.13";s:3:"url";s:48:"https://wordpress.org/plugins/siteorigin-panels/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/siteorigin-panels.2.10.13.zip";s:5:"icons";a:2:{s:2:"2x";s:70:"https://ps.w.org/siteorigin-panels/assets/icon-256x256.png?rev=1044755";s:2:"1x";s:70:"https://ps.w.org/siteorigin-panels/assets/icon-128x128.png?rev=1044755";}s:7:"banners";a:1:{s:2:"1x";s:72:"https://ps.w.org/siteorigin-panels/assets/banner-772x250.jpg?rev=1044755";}s:11:"banners_rtl";a:0:{}}s:29:"wp-mail-smtp/wp_mail_smtp.php";O:8:"stdClass":9:{s:2:"id";s:26:"w.org/plugins/wp-mail-smtp";s:4:"slug";s:12:"wp-mail-smtp";s:6:"plugin";s:29:"wp-mail-smtp/wp_mail_smtp.php";s:11:"new_version";s:5:"1.8.1";s:3:"url";s:43:"https://wordpress.org/plugins/wp-mail-smtp/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-mail-smtp.1.8.1.zip";s:5:"icons";a:2:{s:2:"2x";s:65:"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440";s:2:"1x";s:65:"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440";}s:7:"banners";a:2:{s:2:"2x";s:68:"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2120094";s:2:"1x";s:67:"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2120094";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(338, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(372, 'phone', '0363349096', 'yes'),
(373, 'address_header', 'Số 1 Đào Duy Anh', 'yes'),
(428, '_transient_product_query-transient-version', '1577269165', 'yes'),
(432, 'category_children', 'a:0:{}', 'yes'),
(437, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(509, 'ms_hide_all_ads_until', '1578370223', 'yes'),
(510, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'no'),
(549, 'ml-slider_children', 'a:0:{}', 'yes'),
(550, 'metaslider_tour_cancelled_on', 'add-slide', 'yes'),
(729, '_transient_product-transient-version', '1577269165', 'yes'),
(837, '_transient_shipping-transient-version', '1577247903', 'yes'),
(838, '_transient_timeout_wc_shipping_method_count_legacy', '1579839903', 'no'),
(839, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:"version";s:10:"1577247903";s:5:"value";i:0;}', 'no'),
(978, '_transient_timeout_wc_term_counts', '1579861142', 'no'),
(979, '_transient_wc_term_counts', 'a:36:{i:37;s:0:"";i:24;s:1:"8";i:22;s:1:"8";i:49;s:0:"";i:44;s:0:"";i:31;s:0:"";i:38;s:0:"";i:26;s:0:"";i:15;s:1:"8";i:27;s:0:"";i:19;s:0:"";i:23;s:0:"";i:53;s:0:"";i:39;s:0:"";i:40;s:0:"";i:47;s:0:"";i:48;s:0:"";i:50;s:0:"";i:51;s:0:"";i:32;s:0:"";i:42;s:0:"";i:36;s:0:"";i:41;s:0:"";i:29;s:0:"";i:28;s:0:"";i:25;s:0:"";i:43;s:0:"";i:20;s:0:"";i:33;s:0:"";i:52;s:0:"";i:18;s:1:"8";i:34;s:0:"";i:35;s:0:"";i:21;s:0:"";i:46;s:0:"";i:45;s:0:"";}', 'no'),
(982, '_site_transient_timeout_theme_roots', '1577348241', 'no'),
(983, '_site_transient_theme_roots', 'a:1:{s:8:"tentenvn";s:7:"/themes";}', 'no'),
(996, '_transient_timeout_plugin_slugs', '1577433985', 'no'),
(997, '_transient_plugin_slugs', 'a:7:{i:0;s:59:"black-studio-tinymce-widget/black-studio-tinymce-widget.php";i:1;s:45:"taxonomy-terms-order/taxonomy-terms-order.php";i:2;s:23:"ml-slider/ml-slider.php";i:3;s:39:"siteorigin-panels/siteorigin-panels.php";i:4;s:27:"woocommerce/woocommerce.php";i:5;s:61:"woocommerce-checkout-manager/woocommerce-checkout-manager.php";i:6;s:29:"wp-mail-smtp/wp_mail_smtp.php";}', 'no'),
(1022, 'taxonomy_22', 'a:2:{s:13:"wh_meta_title";s:3:"abc";s:12:"wh_meta_desc";s:3:"abc";}', 'yes'),
(1056, 'taxonomy_19', 'a:2:{s:12:"wh_meta_desc";s:4:"abcd";s:13:"wh_meta_title";s:3:"abc";}', 'yes'),
(1173, 'product_cat_children', 'a:7:{i:15;a:4:{i:0;i:18;i:1;i:19;i:2;i:20;i:3;i:21;}i:22;a:3:{i:0;i:23;i:1;i:24;i:2;i:25;}i:26;a:3:{i:0;i:27;i:1;i:28;i:2;i:29;}i:31;a:6:{i:0;i:32;i:1;i:33;i:2;i:34;i:3;i:35;i:4;i:36;i:5;i:37;}i:38;a:5:{i:0;i:39;i:1;i:40;i:2;i:41;i:3;i:42;i:4;i:43;}i:44;a:4:{i:0;i:45;i:1;i:46;i:2;i:47;i:3;i:48;}i:49;a:4:{i:0;i:50;i:1;i:51;i:2;i:52;i:3;i:53;}}', 'yes'),
(1184, '_transient_doing_cron', '1577363853.0105350017547607421875', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 3, '_wp_trash_meta_status', 'draft'),
(6, 3, '_wp_trash_meta_time', '1577086554'),
(7, 3, '_wp_desired_post_slug', 'chinh-sach-bao-mat'),
(8, 2, '_wp_trash_meta_status', 'publish'),
(9, 2, '_wp_trash_meta_time', '1577086554'),
(10, 2, '_wp_desired_post_slug', 'Trang mẫu'),
(11, 8, '_edit_last', '1'),
(12, 8, '_edit_lock', '1577086429:1'),
(13, 8, '_wp_page_template', 'page-template-trangchu.php'),
(14, 10, '_wp_trash_meta_status', 'publish'),
(15, 10, '_wp_trash_meta_time', '1577086735'),
(18, 12, '_wp_trash_meta_status', 'publish'),
(19, 12, '_wp_trash_meta_time', '1577089048'),
(20, 1, '_wp_trash_meta_status', 'publish'),
(21, 1, '_wp_trash_meta_time', '1577154432'),
(22, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(23, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(24, 14, '_edit_last', '1'),
(25, 14, '_edit_lock', '1577154561:1'),
(26, 14, '_wp_page_template', 'page-template-gioithieu.php'),
(27, 18, '_edit_last', '1'),
(28, 18, '_edit_lock', '1577154725:1'),
(29, 18, '_wp_page_template', 'page-template-huongdanthanhtoan.php'),
(30, 20, '_menu_item_type', 'post_type'),
(31, 20, '_menu_item_menu_item_parent', '0'),
(32, 20, '_menu_item_object_id', '18'),
(33, 20, '_menu_item_object', 'page'),
(34, 20, '_menu_item_target', ''),
(35, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(36, 20, '_menu_item_xfn', ''),
(37, 20, '_menu_item_url', ''),
(39, 21, '_menu_item_type', 'post_type'),
(40, 21, '_menu_item_menu_item_parent', '0'),
(41, 21, '_menu_item_object_id', '14'),
(42, 21, '_menu_item_object', 'page'),
(43, 21, '_menu_item_target', ''),
(44, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 21, '_menu_item_xfn', ''),
(46, 21, '_menu_item_url', ''),
(48, 22, '_menu_item_type', 'taxonomy'),
(49, 22, '_menu_item_menu_item_parent', '0'),
(50, 22, '_menu_item_object_id', '16'),
(51, 22, '_menu_item_object', 'category'),
(52, 22, '_menu_item_target', ''),
(53, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 22, '_menu_item_xfn', ''),
(55, 22, '_menu_item_url', ''),
(57, 23, '_wp_attached_file', '2019/12/logo_baby.png'),
(58, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:85;s:4:"file";s:21:"2019/12/logo_baby.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"logo_baby-300x85.png";s:5:"width";i:300;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:20:"logo_baby-300x85.png";s:5:"width";i:300;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:20:"logo_baby-100x85.png";s:5:"width";i:100;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"logo_baby-300x85.png";s:5:"width";i:300;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"logo_baby-100x85.png";s:5:"width";i:100;s:6:"height";i:85;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(59, 24, '_wp_trash_meta_status', 'publish'),
(60, 24, '_wp_trash_meta_time', '1577156464'),
(61, 25, 'ml-slider_settings', 'a:38:{s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:3:"965";s:6:"height";s:3:"422";s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";s:4:"3000";s:6:"sDelay";i:30;s:7:"opacity";d:0.69999999999999996;s:10:"titleSpeed";i:500;s:6:"effect";s:5:"slide";s:10:"navigation";s:4:"true";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:7:"default";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:8:"Previous";s:8:"nextText";s:4:"Next";s:6:"slices";i:15;s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:16:"firstSlideFadeIn";s:5:"false";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:17:"responsive_thumbs";s:5:"false";s:15:"thumb_min_width";i:100;s:9:"fullWidth";s:4:"true";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(62, 25, 'metaslider_slideshow_theme', ''),
(63, 26, '_wp_attached_file', '2019/12/slide1.jpg'),
(64, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:966;s:6:"height";i:423;s:4:"file";s:18:"2019/12/slide1.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide1-768x336.jpg";s:5:"width";i:768;s:6:"height";i:336;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"slide1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"slide1-600x263.jpg";s:5:"width";i:600;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"slide1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"slide1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"slide1-600x263.jpg";s:5:"width";i:600;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"slide1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-700x300";a:4:{s:4:"file";s:18:"slide1-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-620x266";a:4:{s:4:"file";s:18:"slide1-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x171";a:4:{s:4:"file";s:18:"slide1-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-965x422";a:4:{s:4:"file";s:18:"slide1-965x422.jpg";s:5:"width";i:965;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-620x271";a:4:{s:4:"file";s:18:"slide1-620x271.jpg";s:5:"width";i:620;s:6:"height";i:271;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x175";a:4:{s:4:"file";s:18:"slide1-400x175.jpg";s:5:"width";i:400;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(65, 27, '_thumbnail_id', '26'),
(66, 27, 'ml-slider_type', 'image'),
(67, 27, 'ml-slider_inherit_image_title', '1'),
(68, 27, 'ml-slider_inherit_image_alt', '1'),
(69, 27, 'ml-slider_crop_position', 'center-center'),
(70, 27, 'ml-slider_caption_source', 'image-caption'),
(71, 27, '_wp_attachment_image_alt', ''),
(72, 26, '_wp_attachment_backup_sizes', 'a:6:{s:15:"resized-700x300";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide1-700x300.jpg";s:4:"file";s:18:"slide1-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-620x266";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide1-620x266.jpg";s:4:"file";s:18:"slide1-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x171";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide1-400x171.jpg";s:4:"file";s:18:"slide1-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-965x422";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide1-965x422.jpg";s:4:"file";s:18:"slide1-965x422.jpg";s:5:"width";i:965;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-620x271";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide1-620x271.jpg";s:4:"file";s:18:"slide1-620x271.jpg";s:5:"width";i:620;s:6:"height";i:271;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x175";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide1-400x175.jpg";s:4:"file";s:18:"slide1-400x175.jpg";s:5:"width";i:400;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}'),
(73, 28, '_wp_attached_file', '2019/12/slide2.png'),
(74, 28, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:965;s:6:"height";i:422;s:4:"file";s:18:"2019/12/slide2.png";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide2-300x250.png";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"slide2-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide2-768x336.png";s:5:"width";i:768;s:6:"height";i:336;s:9:"mime-type";s:9:"image/png";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"slide2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"slide2-600x262.png";s:5:"width";i:600;s:6:"height";i:262;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"slide2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"slide2-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:18:"slide2-600x262.png";s:5:"width";i:600;s:6:"height";i:262;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"slide2-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:27:"meta-slider-resized-700x300";a:4:{s:4:"file";s:18:"slide2-700x300.png";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:27:"meta-slider-resized-620x266";a:4:{s:4:"file";s:18:"slide2-620x266.png";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:9:"image/png";}s:27:"meta-slider-resized-400x171";a:4:{s:4:"file";s:18:"slide2-400x171.png";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(75, 29, '_thumbnail_id', '28'),
(76, 29, 'ml-slider_type', 'image'),
(77, 29, 'ml-slider_inherit_image_title', '1'),
(78, 29, 'ml-slider_inherit_image_alt', '1'),
(79, 29, 'ml-slider_crop_position', 'center-center'),
(80, 29, 'ml-slider_caption_source', 'image-caption'),
(81, 29, '_wp_attachment_image_alt', ''),
(82, 28, '_wp_attachment_backup_sizes', 'a:3:{s:15:"resized-700x300";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide2-700x300.png";s:4:"file";s:18:"slide2-700x300.png";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:15:"resized-620x266";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide2-620x266.png";s:4:"file";s:18:"slide2-620x266.png";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:9:"image/png";}s:15:"resized-400x171";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide2-400x171.png";s:4:"file";s:18:"slide2-400x171.png";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:9:"image/png";}}'),
(83, 30, '_wp_attached_file', '2019/12/slide3.jpg'),
(84, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:966;s:6:"height";i:423;s:4:"file";s:18:"2019/12/slide3.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide3-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide3-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide3-768x336.jpg";s:5:"width";i:768;s:6:"height";i:336;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"slide3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"slide3-600x263.jpg";s:5:"width";i:600;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"slide3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"slide3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"slide3-600x263.jpg";s:5:"width";i:600;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"slide3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-700x300";a:4:{s:4:"file";s:18:"slide3-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-620x266";a:4:{s:4:"file";s:18:"slide3-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x171";a:4:{s:4:"file";s:18:"slide3-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-965x422";a:4:{s:4:"file";s:18:"slide3-965x422.jpg";s:5:"width";i:965;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-620x271";a:4:{s:4:"file";s:18:"slide3-620x271.jpg";s:5:"width";i:620;s:6:"height";i:271;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x175";a:4:{s:4:"file";s:18:"slide3-400x175.jpg";s:5:"width";i:400;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(85, 31, '_thumbnail_id', '30'),
(86, 31, 'ml-slider_type', 'image'),
(87, 31, 'ml-slider_inherit_image_title', '1'),
(88, 31, 'ml-slider_inherit_image_alt', '1'),
(89, 31, 'ml-slider_crop_position', 'center-center'),
(90, 31, 'ml-slider_caption_source', 'image-caption'),
(91, 31, '_wp_attachment_image_alt', ''),
(92, 30, '_wp_attachment_backup_sizes', 'a:6:{s:15:"resized-700x300";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide3-700x300.jpg";s:4:"file";s:18:"slide3-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-620x266";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide3-620x266.jpg";s:4:"file";s:18:"slide3-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x171";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide3-400x171.jpg";s:4:"file";s:18:"slide3-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-965x422";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide3-965x422.jpg";s:4:"file";s:18:"slide3-965x422.jpg";s:5:"width";i:965;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-620x271";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide3-620x271.jpg";s:4:"file";s:18:"slide3-620x271.jpg";s:5:"width";i:620;s:6:"height";i:271;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x175";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide3-400x175.jpg";s:4:"file";s:18:"slide3-400x175.jpg";s:5:"width";i:400;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}'),
(93, 32, '_wp_attached_file', '2019/12/slide4.jpg'),
(94, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:966;s:6:"height";i:423;s:4:"file";s:18:"2019/12/slide4.jpg";s:5:"sizes";a:15:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"slide4-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"slide4-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"slide4-768x336.jpg";s:5:"width";i:768;s:6:"height";i:336;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"slide4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"slide4-600x263.jpg";s:5:"width";i:600;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"slide4-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"slide4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:18:"slide4-600x263.jpg";s:5:"width";i:600;s:6:"height";i:263;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"slide4-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-700x300";a:4:{s:4:"file";s:18:"slide4-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-620x266";a:4:{s:4:"file";s:18:"slide4-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x171";a:4:{s:4:"file";s:18:"slide4-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-965x422";a:4:{s:4:"file";s:18:"slide4-965x422.jpg";s:5:"width";i:965;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-620x271";a:4:{s:4:"file";s:18:"slide4-620x271.jpg";s:5:"width";i:620;s:6:"height";i:271;s:9:"mime-type";s:10:"image/jpeg";}s:27:"meta-slider-resized-400x175";a:4:{s:4:"file";s:18:"slide4-400x175.jpg";s:5:"width";i:400;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(95, 33, '_thumbnail_id', '32'),
(96, 33, 'ml-slider_type', 'image'),
(97, 33, 'ml-slider_inherit_image_title', '1'),
(98, 33, 'ml-slider_inherit_image_alt', '1'),
(99, 33, 'ml-slider_crop_position', 'center-center'),
(100, 33, 'ml-slider_caption_source', 'image-caption'),
(101, 33, '_wp_attachment_image_alt', ''),
(102, 32, '_wp_attachment_backup_sizes', 'a:6:{s:15:"resized-700x300";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide4-700x300.jpg";s:4:"file";s:18:"slide4-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-620x266";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide4-620x266.jpg";s:4:"file";s:18:"slide4-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x171";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide4-400x171.jpg";s:4:"file";s:18:"slide4-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-965x422";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide4-965x422.jpg";s:4:"file";s:18:"slide4-965x422.jpg";s:5:"width";i:965;s:6:"height";i:422;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-620x271";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide4-620x271.jpg";s:4:"file";s:18:"slide4-620x271.jpg";s:5:"width";i:620;s:6:"height";i:271;s:9:"mime-type";s:10:"image/jpeg";}s:15:"resized-400x175";a:5:{s:4:"path";s:74:"C:xampphtdocstenten_kidplaza/wp-content/uploads/2019/12/slide4-400x175.jpg";s:4:"file";s:18:"slide4-400x175.jpg";s:5:"width";i:400;s:6:"height";i:175;s:9:"mime-type";s:10:"image/jpeg";}}'),
(103, 34, '_wp_trash_meta_status', 'publish'),
(104, 34, '_wp_trash_meta_time', '1577178812'),
(105, 35, '_edit_last', '1'),
(106, 35, '_edit_lock', '1577247045:1'),
(107, 35, '_sku', 'S01'),
(108, 35, '_regular_price', '540000'),
(109, 35, 'total_sales', '0'),
(110, 35, '_tax_status', 'taxable'),
(111, 35, '_tax_class', ''),
(112, 35, '_manage_stock', 'no'),
(113, 35, '_backorders', 'no'),
(114, 35, '_sold_individually', 'no'),
(115, 35, '_virtual', 'no'),
(116, 35, '_downloadable', 'no'),
(117, 35, '_download_limit', '-1'),
(118, 35, '_download_expiry', '-1'),
(119, 35, '_stock', NULL),
(120, 35, '_stock_status', 'instock'),
(121, 35, '_wc_average_rating', '0'),
(122, 35, '_wc_review_count', '0'),
(123, 35, '_product_version', '3.6.3'),
(124, 35, '_price', '540000'),
(125, 36, '_wp_attached_file', '2019/12/sua1.jpg'),
(126, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:16:"2019/12/sua1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"sua1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"sua1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:16:"sua1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:16:"sua1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"sua1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"sua1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"sua1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"sua1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(127, 35, '_thumbnail_id', '36'),
(128, 37, '_wp_attached_file', '2019/12/asd.jpg'),
(129, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:15:"2019/12/asd.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"asd-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"asd-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:15:"asd-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:15:"asd-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:15:"asd-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"asd-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:15:"asd-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"asd-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(130, 38, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1.jpg'),
(131, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:93:"2019/12/httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(132, 39, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1.jpg'),
(133, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:93:"2019/12/httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:93:"httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(134, 35, '_product_image_gallery', '37,38,39,36'),
(135, 41, '_sku', 'S02'),
(136, 41, '_regular_price', '540000'),
(137, 41, 'total_sales', '0'),
(138, 41, '_tax_status', 'taxable'),
(139, 41, '_tax_class', ''),
(140, 41, '_manage_stock', 'no'),
(141, 41, '_backorders', 'no'),
(142, 41, '_sold_individually', 'no'),
(143, 41, '_virtual', 'no'),
(144, 41, '_downloadable', 'no'),
(145, 41, '_product_image_gallery', '37,38,39,36'),
(146, 41, '_download_limit', '-1'),
(147, 41, '_download_expiry', '-1'),
(148, 41, '_thumbnail_id', '36'),
(149, 41, '_stock', NULL),
(150, 41, '_stock_status', 'instock'),
(151, 41, '_wc_average_rating', '0'),
(152, 41, '_wc_review_count', '0'),
(153, 41, '_product_version', '3.6.3'),
(154, 41, '_price', '540000'),
(155, 41, '_edit_lock', '1577263814:1'),
(156, 41, '_edit_last', '1'),
(157, 42, '_sku', 'S03'),
(158, 42, '_regular_price', '540000'),
(159, 42, 'total_sales', '0'),
(160, 42, '_tax_status', 'taxable'),
(161, 42, '_tax_class', ''),
(162, 42, '_manage_stock', 'no'),
(163, 42, '_backorders', 'no'),
(164, 42, '_sold_individually', 'no'),
(165, 42, '_virtual', 'no'),
(166, 42, '_downloadable', 'no'),
(167, 42, '_product_image_gallery', '37,38,39,36'),
(168, 42, '_download_limit', '-1'),
(169, 42, '_download_expiry', '-1'),
(170, 42, '_thumbnail_id', '43'),
(171, 42, '_stock', NULL),
(172, 42, '_stock_status', 'instock'),
(173, 42, '_wc_average_rating', '0'),
(174, 42, '_wc_review_count', '0'),
(175, 42, '_product_version', '3.6.3'),
(176, 42, '_price', '540000'),
(177, 42, '_edit_lock', '1577263827:1'),
(178, 43, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1.jpg'),
(179, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:98:"2019/12/httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(180, 42, '_edit_last', '1'),
(181, 42, '_wp_old_slug', 'sua-meiji-growing-up-formula-800g-1-3-tuoi-sao-chep'),
(182, 44, '_sku', 'S04'),
(183, 44, '_regular_price', '540000'),
(184, 44, 'total_sales', '0'),
(185, 44, '_tax_status', 'taxable'),
(186, 44, '_tax_class', ''),
(187, 44, '_manage_stock', 'no'),
(188, 44, '_backorders', 'no'),
(189, 44, '_sold_individually', 'no'),
(190, 44, '_virtual', 'no'),
(191, 44, '_downloadable', 'no'),
(192, 44, '_product_image_gallery', '37,38,39,36'),
(193, 44, '_download_limit', '-1'),
(194, 44, '_download_expiry', '-1'),
(195, 44, '_thumbnail_id', '45'),
(196, 44, '_stock', NULL),
(197, 44, '_stock_status', 'instock'),
(198, 44, '_wc_average_rating', '0'),
(199, 44, '_wc_review_count', '0'),
(200, 44, '_product_version', '3.6.3'),
(201, 44, '_price', '540000'),
(202, 44, '_edit_lock', '1577264309:1'),
(203, 45, '_wp_attached_file', '2019/12/sua4.jpg'),
(204, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:16:"2019/12/sua4.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"sua4-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"sua4-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:16:"sua4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:16:"sua4-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:16:"sua4-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"sua4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"sua4-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"sua4-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(205, 44, '_edit_last', '1'),
(206, 46, '_sku', 'S05'),
(207, 46, '_regular_price', '540000'),
(208, 46, 'total_sales', '0'),
(209, 46, '_tax_status', 'taxable'),
(210, 46, '_tax_class', ''),
(211, 46, '_manage_stock', 'no'),
(212, 46, '_backorders', 'no'),
(213, 46, '_sold_individually', 'no'),
(214, 46, '_virtual', 'no'),
(215, 46, '_downloadable', 'no'),
(217, 46, '_download_limit', '-1'),
(218, 46, '_download_expiry', '-1'),
(219, 46, '_thumbnail_id', '47'),
(220, 46, '_stock', NULL),
(221, 46, '_stock_status', 'instock'),
(222, 46, '_wc_average_rating', '0'),
(223, 46, '_wc_review_count', '0'),
(224, 46, '_product_version', '3.6.3'),
(225, 46, '_price', '540000'),
(226, 46, '_edit_lock', '1577264674:1'),
(227, 46, '_edit_last', '1'),
(228, 47, '_wp_attached_file', '2019/12/glico-icreo-so-0-101134-1_1.jpg'),
(229, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:39:"2019/12/glico-icreo-so-0-101134-1_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"glico-icreo-so-0-101134-1_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"glico-icreo-so-0-101134-1_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:39:"glico-icreo-so-0-101134-1_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:39:"glico-icreo-so-0-101134-1_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:39:"glico-icreo-so-0-101134-1_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"glico-icreo-so-0-101134-1_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:39:"glico-icreo-so-0-101134-1_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:39:"glico-icreo-so-0-101134-1_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(230, 48, '_sku', 'S06'),
(231, 48, '_regular_price', '540000'),
(232, 48, 'total_sales', '0'),
(233, 48, '_tax_status', 'taxable'),
(234, 48, '_tax_class', ''),
(235, 48, '_manage_stock', 'no'),
(236, 48, '_backorders', 'no'),
(237, 48, '_sold_individually', 'no'),
(238, 48, '_virtual', 'no'),
(239, 48, '_downloadable', 'no'),
(240, 48, '_download_limit', '-1'),
(241, 48, '_download_expiry', '-1'),
(242, 48, '_thumbnail_id', '49'),
(243, 48, '_stock', NULL),
(244, 48, '_stock_status', 'instock'),
(245, 48, '_wc_average_rating', '0'),
(246, 48, '_wc_review_count', '0'),
(247, 48, '_product_version', '3.6.3'),
(248, 48, '_price', '540000'),
(249, 48, '_edit_lock', '1577264711:1'),
(250, 49, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1.jpg'),
(251, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:81:"2019/12/httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:81:"httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:81:"httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:81:"httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:81:"httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:81:"httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:81:"httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:81:"httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:81:"httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(252, 48, '_edit_last', '1'),
(253, 50, '_sku', 'S07'),
(254, 50, '_regular_price', '540000'),
(255, 50, 'total_sales', '0'),
(256, 50, '_tax_status', 'taxable'),
(257, 50, '_tax_class', ''),
(258, 50, '_manage_stock', 'no'),
(259, 50, '_backorders', 'no'),
(260, 50, '_sold_individually', 'no'),
(261, 50, '_virtual', 'no'),
(262, 50, '_downloadable', 'no'),
(263, 50, '_download_limit', '-1'),
(264, 50, '_download_expiry', '-1'),
(265, 50, '_thumbnail_id', '51'),
(266, 50, '_stock', NULL),
(267, 50, '_stock_status', 'instock'),
(268, 50, '_wc_average_rating', '0'),
(269, 50, '_wc_review_count', '0'),
(270, 50, '_product_version', '3.6.3'),
(271, 50, '_price', '540000'),
(272, 50, '_edit_lock', '1577264723:1'),
(273, 51, '_wp_attached_file', '2019/12/sua-pediasure-900g-vani-101142.jpg'),
(274, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:42:"2019/12/sua-pediasure-900g-vani-101142.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:42:"sua-pediasure-900g-vani-101142-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:42:"sua-pediasure-900g-vani-101142-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:42:"sua-pediasure-900g-vani-101142-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:42:"sua-pediasure-900g-vani-101142-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:42:"sua-pediasure-900g-vani-101142-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:42:"sua-pediasure-900g-vani-101142-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:42:"sua-pediasure-900g-vani-101142-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:42:"sua-pediasure-900g-vani-101142-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(275, 50, '_edit_last', '1'),
(276, 52, '_sku', 'S08'),
(277, 52, '_regular_price', '540000'),
(278, 52, 'total_sales', '0'),
(279, 52, '_tax_status', 'taxable'),
(280, 52, '_tax_class', ''),
(281, 52, '_manage_stock', 'no'),
(282, 52, '_backorders', 'no'),
(283, 52, '_sold_individually', 'no'),
(284, 52, '_virtual', 'no'),
(285, 52, '_downloadable', 'no'),
(286, 52, '_download_limit', '-1'),
(287, 52, '_download_expiry', '-1'),
(288, 52, '_thumbnail_id', '53'),
(289, 52, '_stock', NULL),
(290, 52, '_stock_status', 'instock'),
(291, 52, '_wc_average_rating', '0'),
(292, 52, '_wc_review_count', '0'),
(293, 52, '_product_version', '3.6.3'),
(294, 52, '_price', '540000'),
(295, 52, '_edit_lock', '1577264737:1'),
(296, 53, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1.jpg'),
(297, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:80:"2019/12/httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:80:"httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:80:"httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:80:"httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:80:"httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:80:"httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:80:"httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:80:"httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:80:"httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(298, 52, '_edit_last', '1'),
(299, 54, '_sku', 'BAD1'),
(300, 54, '_regular_price', '540000'),
(301, 54, 'total_sales', '0'),
(302, 54, '_tax_status', 'taxable'),
(303, 54, '_tax_class', ''),
(304, 54, '_manage_stock', 'no'),
(305, 54, '_backorders', 'no'),
(306, 54, '_sold_individually', 'no'),
(307, 54, '_virtual', 'no'),
(308, 54, '_downloadable', 'no'),
(309, 54, '_download_limit', '-1'),
(310, 54, '_download_expiry', '-1'),
(311, 54, '_thumbnail_id', '55'),
(312, 54, '_stock', NULL),
(313, 54, '_stock_status', 'instock'),
(314, 54, '_wc_average_rating', '0'),
(315, 54, '_wc_review_count', '0'),
(316, 54, '_product_version', '3.6.3'),
(317, 54, '_price', '530000'),
(318, 54, '_edit_lock', '1577264754:1'),
(319, 54, '_edit_last', '1'),
(320, 55, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg'),
(321, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:98:"2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:98:"httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(322, 54, '_sale_price', '530000'),
(323, 56, '_sku', 'BAD2'),
(324, 56, '_regular_price', '540000'),
(325, 56, '_sale_price', '530000'),
(326, 56, 'total_sales', '0'),
(327, 56, '_tax_status', 'taxable'),
(328, 56, '_tax_class', ''),
(329, 56, '_manage_stock', 'no'),
(330, 56, '_backorders', 'no');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(331, 56, '_sold_individually', 'no'),
(332, 56, '_virtual', 'no'),
(333, 56, '_downloadable', 'no'),
(334, 56, '_download_limit', '-1'),
(335, 56, '_download_expiry', '-1'),
(336, 56, '_thumbnail_id', '57'),
(337, 56, '_stock', NULL),
(338, 56, '_stock_status', 'instock'),
(339, 56, '_wc_average_rating', '0'),
(340, 56, '_wc_review_count', '0'),
(341, 56, '_product_version', '3.6.3'),
(342, 56, '_price', '530000'),
(343, 56, '_edit_lock', '1577264862:1'),
(344, 56, '_edit_last', '1'),
(345, 57, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1.jpg'),
(346, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:106:"2019/12/httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:106:"httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:106:"httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:106:"httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:106:"httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:106:"httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:106:"httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:106:"httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:106:"httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(347, 58, '_sku', 'BAD3'),
(348, 58, '_regular_price', '540000'),
(350, 58, 'total_sales', '0'),
(351, 58, '_tax_status', 'taxable'),
(352, 58, '_tax_class', ''),
(353, 58, '_manage_stock', 'no'),
(354, 58, '_backorders', 'no'),
(355, 58, '_sold_individually', 'no'),
(356, 58, '_virtual', 'no'),
(357, 58, '_downloadable', 'no'),
(358, 58, '_download_limit', '-1'),
(359, 58, '_download_expiry', '-1'),
(360, 58, '_thumbnail_id', '59'),
(361, 58, '_stock', NULL),
(362, 58, '_stock_status', 'instock'),
(363, 58, '_wc_average_rating', '0'),
(364, 58, '_wc_review_count', '0'),
(365, 58, '_product_version', '3.6.3'),
(366, 58, '_price', '540000'),
(367, 58, '_edit_lock', '1577265746:1'),
(368, 58, '_edit_last', '1'),
(369, 59, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1.jpg'),
(370, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:100:"2019/12/httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:100:"httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:100:"httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:100:"httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:100:"httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:100:"httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:100:"httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:100:"httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:100:"httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(371, 60, '_sku', 'BAD4'),
(372, 60, '_regular_price', '540000'),
(374, 60, 'total_sales', '0'),
(375, 60, '_tax_status', 'taxable'),
(376, 60, '_tax_class', ''),
(377, 60, '_manage_stock', 'no'),
(378, 60, '_backorders', 'no'),
(379, 60, '_sold_individually', 'no'),
(380, 60, '_virtual', 'no'),
(381, 60, '_downloadable', 'no'),
(382, 60, '_download_limit', '-1'),
(383, 60, '_download_expiry', '-1'),
(384, 60, '_thumbnail_id', '61'),
(385, 60, '_stock', NULL),
(386, 60, '_stock_status', 'instock'),
(387, 60, '_wc_average_rating', '0'),
(388, 60, '_wc_review_count', '0'),
(389, 60, '_product_version', '3.6.3'),
(390, 60, '_price', '540000'),
(391, 60, '_edit_lock', '1577266347:1'),
(392, 61, '_wp_attached_file', '2019/12/banh-an-dam-hipp-baby-biscuit-100534.jpg'),
(393, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:48:"2019/12/banh-an-dam-hipp-baby-biscuit-100534.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:48:"banh-an-dam-hipp-baby-biscuit-100534-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:48:"banh-an-dam-hipp-baby-biscuit-100534-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:48:"banh-an-dam-hipp-baby-biscuit-100534-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:48:"banh-an-dam-hipp-baby-biscuit-100534-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:48:"banh-an-dam-hipp-baby-biscuit-100534-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:48:"banh-an-dam-hipp-baby-biscuit-100534-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:48:"banh-an-dam-hipp-baby-biscuit-100534-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:48:"banh-an-dam-hipp-baby-biscuit-100534-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(394, 60, '_edit_last', '1'),
(395, 62, '_sku', 'BAD5'),
(396, 62, '_regular_price', '540000'),
(397, 62, 'total_sales', '0'),
(398, 62, '_tax_status', 'taxable'),
(399, 62, '_tax_class', ''),
(400, 62, '_manage_stock', 'no'),
(401, 62, '_backorders', 'no'),
(402, 62, '_sold_individually', 'no'),
(403, 62, '_virtual', 'no'),
(404, 62, '_downloadable', 'no'),
(405, 62, '_download_limit', '-1'),
(406, 62, '_download_expiry', '-1'),
(407, 62, '_thumbnail_id', '63'),
(408, 62, '_stock', NULL),
(409, 62, '_stock_status', 'instock'),
(410, 62, '_wc_average_rating', '0'),
(411, 62, '_wc_review_count', '0'),
(412, 62, '_product_version', '3.6.3'),
(413, 62, '_price', '540000'),
(414, 62, '_edit_lock', '1577267816:1'),
(415, 63, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct2015040202561.jpg'),
(416, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:59:"2019/12/httpsmedia.bibomart.netubbmproduct2015040202561.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"httpsmedia.bibomart.netubbmproduct2015040202561-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"httpsmedia.bibomart.netubbmproduct2015040202561-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:59:"httpsmedia.bibomart.netubbmproduct2015040202561-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:59:"httpsmedia.bibomart.netubbmproduct2015040202561-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:59:"httpsmedia.bibomart.netubbmproduct2015040202561-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:59:"httpsmedia.bibomart.netubbmproduct2015040202561-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:59:"httpsmedia.bibomart.netubbmproduct2015040202561-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:59:"httpsmedia.bibomart.netubbmproduct2015040202561-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(417, 62, '_edit_last', '1'),
(418, 64, '_sku', 'BAD6'),
(419, 64, '_regular_price', '540000'),
(420, 64, 'total_sales', '0'),
(421, 64, '_tax_status', 'taxable'),
(422, 64, '_tax_class', ''),
(423, 64, '_manage_stock', 'no'),
(424, 64, '_backorders', 'no'),
(425, 64, '_sold_individually', 'no'),
(426, 64, '_virtual', 'no'),
(427, 64, '_downloadable', 'no'),
(428, 64, '_download_limit', '-1'),
(429, 64, '_download_expiry', '-1'),
(430, 64, '_thumbnail_id', '66'),
(431, 64, '_stock', NULL),
(432, 64, '_stock_status', 'instock'),
(433, 64, '_wc_average_rating', '0'),
(434, 64, '_wc_review_count', '0'),
(435, 64, '_product_version', '3.6.3'),
(436, 64, '_price', '540000'),
(437, 64, '_edit_lock', '1577267895:1'),
(440, 66, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1.jpg'),
(441, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:97:"2019/12/httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:97:"httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:97:"httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:97:"httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:97:"httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:97:"httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:97:"httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:97:"httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:97:"httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(442, 64, '_edit_last', '1'),
(443, 67, '_sku', 'BAD7'),
(444, 67, '_regular_price', '540000'),
(445, 67, 'total_sales', '0'),
(446, 67, '_tax_status', 'taxable'),
(447, 67, '_tax_class', ''),
(448, 67, '_manage_stock', 'no'),
(449, 67, '_backorders', 'no'),
(450, 67, '_sold_individually', 'no'),
(451, 67, '_virtual', 'no'),
(452, 67, '_downloadable', 'no'),
(453, 67, '_download_limit', '-1'),
(454, 67, '_download_expiry', '-1'),
(455, 67, '_thumbnail_id', '68'),
(456, 67, '_stock', NULL),
(457, 67, '_stock_status', 'instock'),
(458, 67, '_wc_average_rating', '0'),
(459, 67, '_wc_review_count', '0'),
(460, 67, '_product_version', '3.6.3'),
(461, 67, '_price', '540000'),
(462, 67, '_edit_lock', '1577268861:1'),
(463, 67, '_edit_last', '1'),
(464, 68, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1.jpg'),
(465, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:103:"2019/12/httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(466, 69, '_sku', 'BAD8'),
(467, 69, '_regular_price', '540000'),
(468, 69, 'total_sales', '0'),
(469, 69, '_tax_status', 'taxable'),
(470, 69, '_tax_class', ''),
(471, 69, '_manage_stock', 'no'),
(472, 69, '_backorders', 'no'),
(473, 69, '_sold_individually', 'no'),
(474, 69, '_virtual', 'no'),
(475, 69, '_downloadable', 'no'),
(476, 69, '_download_limit', '-1'),
(477, 69, '_download_expiry', '-1'),
(478, 69, '_thumbnail_id', '70'),
(479, 69, '_stock', NULL),
(480, 69, '_stock_status', 'instock'),
(481, 69, '_wc_average_rating', '0'),
(482, 69, '_wc_review_count', '0'),
(483, 69, '_product_version', '3.6.3'),
(484, 69, '_price', '540000'),
(485, 69, '_edit_lock', '1577349887:1'),
(486, 69, '_edit_last', '1'),
(487, 70, '_wp_attached_file', '2019/12/httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1.jpg'),
(488, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:700;s:4:"file";s:103:"2019/12/httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:103:"httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-23 04:57:45', '2019-12-23 04:57:45', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2019-12-24 02:27:12', '2019-12-24 02:27:12', '', 0, 'http://tentenkidplaza.co/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-23 04:57:45', '2019-12-23 04:57:45', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href="http://tentenkidplaza.co/wp-admin/">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'trash', 'closed', 'open', '', 'Trang mẫu__trashed', '', '', '2019-12-23 07:35:54', '2019-12-23 07:35:54', '', 0, 'http://tentenkidplaza.co/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-23 04:57:45', '2019-12-23 04:57:45', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://tentenkidplaza.co.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'trash', 'closed', 'open', '', 'chinh-sach-bao-mat__trashed', '', '', '2019-12-23 07:35:54', '2019-12-23 07:35:54', '', 0, 'http://tentenkidplaza.co/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-12-23 04:59:19', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-12-23 04:59:19', '0000-00-00 00:00:00', '', 0, 'http://tentenkidplaza.co/?p=4', 0, 'post', '', 0),
(6, 1, '2019-12-23 07:35:54', '2019-12-23 07:35:54', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://tentenkidplaza.co.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-12-23 07:35:54', '2019-12-23 07:35:54', '', 3, 'http://tentenkidplaza.co/2019/12/23/3-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-12-23 07:35:54', '2019-12-23 07:35:54', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href="http://tentenkidplaza.co/wp-admin/">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-12-23 07:35:54', '2019-12-23 07:35:54', '', 2, 'http://tentenkidplaza.co/2019/12/23/2-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-12-23 07:36:06', '2019-12-23 07:36:06', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2019-12-23 07:36:06', '2019-12-23 07:36:06', '', 0, 'http://tentenkidplaza.co/?page_id=8', 0, 'page', '', 0),
(9, 1, '2019-12-23 07:36:06', '2019-12-23 07:36:06', '', 'Trang chủ', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-12-23 07:36:06', '2019-12-23 07:36:06', '', 8, 'http://tentenkidplaza.co/2019/12/23/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-12-23 07:38:54', '2019-12-23 07:38:54', '{\n    "tentenvn::lwp_link_color": {\n        "value": "#4976d1",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-12-23 07:38:54"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '33e28b25-ed33-4764-885a-f2a54066cde6', '', '', '2019-12-23 07:38:54', '2019-12-23 07:38:54', '', 0, 'http://tentenkidplaza.co/2019/12/23/33e28b25-ed33-4764-885a-f2a54066cde6/', 0, 'customize_changeset', '', 0),
(12, 1, '2019-12-23 08:17:28', '2019-12-23 08:17:28', '{\n    "tentenvn::custom_logo": {\n        "value": 11,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-12-23 08:17:28"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '49ee99e8-b475-40d7-a1af-7d1f707cceec', '', '', '2019-12-23 08:17:28', '2019-12-23 08:17:28', '', 0, 'http://tentenkidplaza.co/2019/12/23/49ee99e8-b475-40d7-a1af-7d1f707cceec/', 0, 'customize_changeset', '', 0),
(13, 1, '2019-12-24 02:27:12', '2019-12-24 02:27:12', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-12-24 02:27:12', '2019-12-24 02:27:12', '', 1, 'http://tentenkidplaza.co/2019/12/24/1-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2019-12-24 02:30:31', '2019-12-24 02:30:31', '<strong>I. Tổng quan về Bibo Mart</strong>\r\n\r\nĐược thành lập vào năm 2006, Hệ thống cửa hàng Mẹ &amp; Bé Bibo Mart thuộc quyền quản lý của Công ty cổ phần Bibo Mart TM, chuyên cung cấp các sản phẩm dành cho các mẹ (trong giai đoạn thai kỳ và giai đoạn hậu sản) và các bé (trong độ tuổi từ 0~6 tuổi).\r\n\r\nTrải qua 13 năm hình thành và phát triển, Bibo Mart là Hệ thống cửa hàng Mẹ &amp; Bé uy tín nhất tại Việt Nam hiện nay, đã có mặt ở 22 tỉnh thành khắp cả nước. Tại Hà Nội, các cửa hàng của Bibo Mart đã có mặt tại tất cả các Quận trung tâm của thành phố. Tại TP Hồ Chí Minh, Bibo Mart đang tiếp tục mở rộng Hệ thống.\r\n\r\nBibo Mart cung cấp các sản phẩm vô cùng đa dạng đáp ứng tất cả các nhu cầu cho Mẹ và Bé trong giai đoạn từ 0 đến 6 tuổi. Các sản phẩm của các thương hiệu uy tín trên thế giới như: Combi, Chicco, Fisher-price, Farlin, Hipp, DrBrown...đều được kiểm tra và chứng nhận an toàn cho sức khỏe của Mẹ &amp; Bé\r\n\r\nBibo Mart chiếm được lòng tin của hơn 80.000 mẹ bầu bởi chúng tôi là Địa chỉ cung cấp đồ sơ sinh Số 1 tại Việt Nam hiện nay. Bibo Mart là nhà nhập khẩu và phân phối trực tiếp các dòng sản phẩm cao cấp cho bé từ Thái Lan, Hồng Kông, Pháp, Tây Ban Nha... Đặc biệt Bibo Mart có đội ngũ nhân viên tư vấn tại các quầy sơ sinh và tư vấn online là các y tá tốt nghiệp các trường đại học và cao đẳng chuyên nghành nhi - sản để cung cấp thông tin hữu ích nhất cho các mẹ.\r\n\r\nCác sản phẩm tại Bibo Mart luôn được sắp xếp theo đúng chuẩn trưng bày của Hệ thống. Các nhóm sản phẩm được phân thành các khu vực như khu sơ sinh, khu trưng bày xe - nôi - cũi, quầy sữa thực phẩm cho bé .... nhằm giúp các mẹ dễ dàng lựa chọn các sản phẩm cần thiết nhất cho bé yêu của mình.\r\n\r\n<strong>II. Tình yêu và sứ mệnh</strong>\r\n\r\nXuất phát từ tình yêu dành cho các bé thơ, sự cảm thông và chia sẻ với các mẹ trong suốt thời kỳ mang bầu và chăm sóc em bé, Hệ thống các cửa hàng Bibo Mart đã ra đời với mong muốn đem đến một thế giới tiện ích cho các mẹ nơi các mẹ có thể mua sắm cho con yêu những sản phẩm an toàn, thuận tiện, đẹp mắt và giá cả cạnh tranh.\r\n\r\nTừ tình yêu đó, chúng tôi mang Sứ mệnh: “TẬN TÂM CHĂM SÓC CHO MẸ VÀ BÉ” để cùng với các bà mẹ chăm sóc, ươm mầm cho các chồi non phát triển.\r\n\r\nVới mục tiêu trở thành Hệ thống cửa hàng Mẹ &amp; Bé Số 1 tại Việt Nam, chúng tôi cam kết:\r\n\r\n<strong>***</strong> Cung cấp 100% sản phẩm chính hãng. Các sản phẩm được kiểm duyệt chặt chẽ trước khi bày bán tại các cửa hàng trong Hệ thống và trên website https://bibomart.com.vn từ nguồn gốc, xuất xứ, chất liệu, màu sắc sản phẩm, độ an toàn... của từng sản phẩm.\r\n\r\n<strong>***</strong> Các sản phẩm của Hệ thống được bán ra với mức giá cạnh tranh nhất trên thị trường.\r\n\r\n<strong>***</strong> Các tiêu chuẩn sắp đặt và trưng bày, vệ sinh hàng hóa được áp dụng đồng nhất, thường xuyên trong toàn Hệ thống, với mong muốn đảm bảo cao nhất chất lượng sản phẩm và sự an toàn, vệ sinh cho các mẹ và em bé khi tham quan, mua sắm tại các cửa hàng.\r\n\r\n<strong>***</strong> Đội ngũ nhân sự của Hệ thống với luôn luôn tận tụy, nhiệt tình phục vụ Khách hàng, thực hiện đúng đắn tôn chỉ của Bibo Mart “Tận tâm chăm sóc cho mẹ và bé” nhằm đem đến cho Quý khách hàng sự hài lòng cao nhất về chất lượng dịch vụ, sản phẩm, giá cả hàng hóa... trong và sau quá trình mua hàng.', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2019-12-24 02:31:43', '2019-12-24 02:31:43', '', 0, 'http://tentenkidplaza.co/?page_id=14', 0, 'page', '', 0),
(15, 1, '2019-12-24 02:30:31', '2019-12-24 02:30:31', '<strong>I. Tổng quan về Bibo Mart</strong>\r\n\r\nĐược thành lập vào năm 2006, Hệ thống cửa hàng Mẹ &amp; Bé Bibo Mart thuộc quyền quản lý của Công ty cổ phần Bibo Mart TM, chuyên cung cấp các sản phẩm dành cho các mẹ (trong giai đoạn thai kỳ và giai đoạn hậu sản) và các bé (trong độ tuổi từ 0~6 tuổi).\r\n\r\nTrải qua 13 năm hình thành và phát triển, Bibo Mart là Hệ thống cửa hàng Mẹ &amp; Bé uy tín nhất tại Việt Nam hiện nay, đã có mặt ở 22 tỉnh thành khắp cả nước. Tại Hà Nội, các cửa hàng của Bibo Mart đã có mặt tại tất cả các Quận trung tâm của thành phố. Tại TP Hồ Chí Minh, Bibo Mart đang tiếp tục mở rộng Hệ thống.\r\n\r\nBibo Mart cung cấp các sản phẩm vô cùng đa dạng đáp ứng tất cả các nhu cầu cho Mẹ và Bé trong giai đoạn từ 0 đến 6 tuổi. Các sản phẩm của các thương hiệu uy tín trên thế giới như: Combi, Chicco, Fisher-price, Farlin, Hipp, DrBrown...đều được kiểm tra và chứng nhận an toàn cho sức khỏe của Mẹ &amp; Bé\r\n\r\nBibo Mart chiếm được lòng tin của hơn 80.000 mẹ bầu bởi chúng tôi là Địa chỉ cung cấp đồ sơ sinh Số 1 tại Việt Nam hiện nay. Bibo Mart là nhà nhập khẩu và phân phối trực tiếp các dòng sản phẩm cao cấp cho bé từ Thái Lan, Hồng Kông, Pháp, Tây Ban Nha... Đặc biệt Bibo Mart có đội ngũ nhân viên tư vấn tại các quầy sơ sinh và tư vấn online là các y tá tốt nghiệp các trường đại học và cao đẳng chuyên nghành nhi - sản để cung cấp thông tin hữu ích nhất cho các mẹ.\r\n\r\nCác sản phẩm tại Bibo Mart luôn được sắp xếp theo đúng chuẩn trưng bày của Hệ thống. Các nhóm sản phẩm được phân thành các khu vực như khu sơ sinh, khu trưng bày xe - nôi - cũi, quầy sữa thực phẩm cho bé .... nhằm giúp các mẹ dễ dàng lựa chọn các sản phẩm cần thiết nhất cho bé yêu của mình.', 'Về Bibomart', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-24 02:30:31', '2019-12-24 02:30:31', '', 14, 'http://tentenkidplaza.co/2019/12/24/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-12-24 02:31:02', '2019-12-24 02:31:02', '<strong>I. Tổng quan về Bibo Mart</strong>\r\n\r\nĐược thành lập vào năm 2006, Hệ thống cửa hàng Mẹ &amp; Bé Bibo Mart thuộc quyền quản lý của Công ty cổ phần Bibo Mart TM, chuyên cung cấp các sản phẩm dành cho các mẹ (trong giai đoạn thai kỳ và giai đoạn hậu sản) và các bé (trong độ tuổi từ 0~6 tuổi).\r\n\r\nTrải qua 13 năm hình thành và phát triển, Bibo Mart là Hệ thống cửa hàng Mẹ &amp; Bé uy tín nhất tại Việt Nam hiện nay, đã có mặt ở 22 tỉnh thành khắp cả nước. Tại Hà Nội, các cửa hàng của Bibo Mart đã có mặt tại tất cả các Quận trung tâm của thành phố. Tại TP Hồ Chí Minh, Bibo Mart đang tiếp tục mở rộng Hệ thống.\r\n\r\nBibo Mart cung cấp các sản phẩm vô cùng đa dạng đáp ứng tất cả các nhu cầu cho Mẹ và Bé trong giai đoạn từ 0 đến 6 tuổi. Các sản phẩm của các thương hiệu uy tín trên thế giới như: Combi, Chicco, Fisher-price, Farlin, Hipp, DrBrown...đều được kiểm tra và chứng nhận an toàn cho sức khỏe của Mẹ &amp; Bé\r\n\r\nBibo Mart chiếm được lòng tin của hơn 80.000 mẹ bầu bởi chúng tôi là Địa chỉ cung cấp đồ sơ sinh Số 1 tại Việt Nam hiện nay. Bibo Mart là nhà nhập khẩu và phân phối trực tiếp các dòng sản phẩm cao cấp cho bé từ Thái Lan, Hồng Kông, Pháp, Tây Ban Nha... Đặc biệt Bibo Mart có đội ngũ nhân viên tư vấn tại các quầy sơ sinh và tư vấn online là các y tá tốt nghiệp các trường đại học và cao đẳng chuyên nghành nhi - sản để cung cấp thông tin hữu ích nhất cho các mẹ.\r\n\r\nCác sản phẩm tại Bibo Mart luôn được sắp xếp theo đúng chuẩn trưng bày của Hệ thống. Các nhóm sản phẩm được phân thành các khu vực như khu sơ sinh, khu trưng bày xe - nôi - cũi, quầy sữa thực phẩm cho bé .... nhằm giúp các mẹ dễ dàng lựa chọn các sản phẩm cần thiết nhất cho bé yêu của mình.\r\n\r\n<strong>II. Tình yêu và sứ mệnh</strong>\r\n\r\nXuất phát từ tình yêu dành cho các bé thơ, sự cảm thông và chia sẻ với các mẹ trong suốt thời kỳ mang bầu và chăm sóc em bé, Hệ thống các cửa hàng Bibo Mart đã ra đời với mong muốn đem đến một thế giới tiện ích cho các mẹ nơi các mẹ có thể mua sắm cho con yêu những sản phẩm an toàn, thuận tiện, đẹp mắt và giá cả cạnh tranh.\r\n\r\nTừ tình yêu đó, chúng tôi mang Sứ mệnh: “TẬN TÂM CHĂM SÓC CHO MẸ VÀ BÉ” để cùng với các bà mẹ chăm sóc, ươm mầm cho các chồi non phát triển.\r\n\r\nVới mục tiêu trở thành Hệ thống cửa hàng Mẹ &amp; Bé Số 1 tại Việt Nam, chúng tôi cam kết:\r\n\r\n<strong>***</strong> Cung cấp 100% sản phẩm chính hãng. Các sản phẩm được kiểm duyệt chặt chẽ trước khi bày bán tại các cửa hàng trong Hệ thống và trên website https://bibomart.com.vn từ nguồn gốc, xuất xứ, chất liệu, màu sắc sản phẩm, độ an toàn... của từng sản phẩm.\r\n\r\n<strong>***</strong> Các sản phẩm của Hệ thống được bán ra với mức giá cạnh tranh nhất trên thị trường.\r\n\r\n<strong>***</strong> Các tiêu chuẩn sắp đặt và trưng bày, vệ sinh hàng hóa được áp dụng đồng nhất, thường xuyên trong toàn Hệ thống, với mong muốn đảm bảo cao nhất chất lượng sản phẩm và sự an toàn, vệ sinh cho các mẹ và em bé khi tham quan, mua sắm tại các cửa hàng.\r\n\r\n<strong>***</strong> Đội ngũ nhân sự của Hệ thống với luôn luôn tận tụy, nhiệt tình phục vụ Khách hàng, thực hiện đúng đắn tôn chỉ của Bibo Mart “Tận tâm chăm sóc cho mẹ và bé” nhằm đem đến cho Quý khách hàng sự hài lòng cao nhất về chất lượng dịch vụ, sản phẩm, giá cả hàng hóa... trong và sau quá trình mua hàng.', 'Về Bibomart', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-24 02:31:02', '2019-12-24 02:31:02', '', 14, 'http://tentenkidplaza.co/2019/12/24/14-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2019-12-24 02:31:43', '2019-12-24 02:31:43', '<strong>I. Tổng quan về Bibo Mart</strong>\r\n\r\nĐược thành lập vào năm 2006, Hệ thống cửa hàng Mẹ &amp; Bé Bibo Mart thuộc quyền quản lý của Công ty cổ phần Bibo Mart TM, chuyên cung cấp các sản phẩm dành cho các mẹ (trong giai đoạn thai kỳ và giai đoạn hậu sản) và các bé (trong độ tuổi từ 0~6 tuổi).\r\n\r\nTrải qua 13 năm hình thành và phát triển, Bibo Mart là Hệ thống cửa hàng Mẹ &amp; Bé uy tín nhất tại Việt Nam hiện nay, đã có mặt ở 22 tỉnh thành khắp cả nước. Tại Hà Nội, các cửa hàng của Bibo Mart đã có mặt tại tất cả các Quận trung tâm của thành phố. Tại TP Hồ Chí Minh, Bibo Mart đang tiếp tục mở rộng Hệ thống.\r\n\r\nBibo Mart cung cấp các sản phẩm vô cùng đa dạng đáp ứng tất cả các nhu cầu cho Mẹ và Bé trong giai đoạn từ 0 đến 6 tuổi. Các sản phẩm của các thương hiệu uy tín trên thế giới như: Combi, Chicco, Fisher-price, Farlin, Hipp, DrBrown...đều được kiểm tra và chứng nhận an toàn cho sức khỏe của Mẹ &amp; Bé\r\n\r\nBibo Mart chiếm được lòng tin của hơn 80.000 mẹ bầu bởi chúng tôi là Địa chỉ cung cấp đồ sơ sinh Số 1 tại Việt Nam hiện nay. Bibo Mart là nhà nhập khẩu và phân phối trực tiếp các dòng sản phẩm cao cấp cho bé từ Thái Lan, Hồng Kông, Pháp, Tây Ban Nha... Đặc biệt Bibo Mart có đội ngũ nhân viên tư vấn tại các quầy sơ sinh và tư vấn online là các y tá tốt nghiệp các trường đại học và cao đẳng chuyên nghành nhi - sản để cung cấp thông tin hữu ích nhất cho các mẹ.\r\n\r\nCác sản phẩm tại Bibo Mart luôn được sắp xếp theo đúng chuẩn trưng bày của Hệ thống. Các nhóm sản phẩm được phân thành các khu vực như khu sơ sinh, khu trưng bày xe - nôi - cũi, quầy sữa thực phẩm cho bé .... nhằm giúp các mẹ dễ dàng lựa chọn các sản phẩm cần thiết nhất cho bé yêu của mình.\r\n\r\n<strong>II. Tình yêu và sứ mệnh</strong>\r\n\r\nXuất phát từ tình yêu dành cho các bé thơ, sự cảm thông và chia sẻ với các mẹ trong suốt thời kỳ mang bầu và chăm sóc em bé, Hệ thống các cửa hàng Bibo Mart đã ra đời với mong muốn đem đến một thế giới tiện ích cho các mẹ nơi các mẹ có thể mua sắm cho con yêu những sản phẩm an toàn, thuận tiện, đẹp mắt và giá cả cạnh tranh.\r\n\r\nTừ tình yêu đó, chúng tôi mang Sứ mệnh: “TẬN TÂM CHĂM SÓC CHO MẸ VÀ BÉ” để cùng với các bà mẹ chăm sóc, ươm mầm cho các chồi non phát triển.\r\n\r\nVới mục tiêu trở thành Hệ thống cửa hàng Mẹ &amp; Bé Số 1 tại Việt Nam, chúng tôi cam kết:\r\n\r\n<strong>***</strong> Cung cấp 100% sản phẩm chính hãng. Các sản phẩm được kiểm duyệt chặt chẽ trước khi bày bán tại các cửa hàng trong Hệ thống và trên website https://bibomart.com.vn từ nguồn gốc, xuất xứ, chất liệu, màu sắc sản phẩm, độ an toàn... của từng sản phẩm.\r\n\r\n<strong>***</strong> Các sản phẩm của Hệ thống được bán ra với mức giá cạnh tranh nhất trên thị trường.\r\n\r\n<strong>***</strong> Các tiêu chuẩn sắp đặt và trưng bày, vệ sinh hàng hóa được áp dụng đồng nhất, thường xuyên trong toàn Hệ thống, với mong muốn đảm bảo cao nhất chất lượng sản phẩm và sự an toàn, vệ sinh cho các mẹ và em bé khi tham quan, mua sắm tại các cửa hàng.\r\n\r\n<strong>***</strong> Đội ngũ nhân sự của Hệ thống với luôn luôn tận tụy, nhiệt tình phục vụ Khách hàng, thực hiện đúng đắn tôn chỉ của Bibo Mart “Tận tâm chăm sóc cho mẹ và bé” nhằm đem đến cho Quý khách hàng sự hài lòng cao nhất về chất lượng dịch vụ, sản phẩm, giá cả hàng hóa... trong và sau quá trình mua hàng.', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-12-24 02:31:43', '2019-12-24 02:31:43', '', 14, 'http://tentenkidplaza.co/2019/12/24/14-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-12-24 02:34:13', '2019-12-24 02:34:13', '<div class="sp_tab tabhd">\r\n\r\nKhi đăng ký và sử dụng dịch vụ tại TENTEN , Quý khách có thể thanh toán theo 1 trong các hình thức sau:\r\n\r\n</div>\r\n<div class="sp_hd">\r\n<ul>\r\n 	<li><strong>Thanh toán trực tuyến qua cổng thanh toán VNPay (Kích hoạt tự động nhanh chóng):</strong>\r\n<div class="hdtt">\r\n\r\n<b>Bước 1:</b> – Chọn <b>“Thanh toán bằng VNPAY” </b>.Tích chọn <b>“không xuất hóa đơn”</b> hoặc <b>“có xuất hóa đơn”.</b>\r\n\r\n<b>Bước 2:</b> – Click <b>“Tiếp tục”</b>. Sau đó thông tin xác nhận của đơn hàng sẽ được hiển thị.\r\n\r\n<b>Bước 3:</b> – Click <b>“Tiếp tục”</b>. Các phương thức thanh toán sẽ được hiển thị.\r\n\r\n<b>Bước 4:</b> – Chọn “<b>Ứng dụng Mobile Banking quét mã VNPAY-QR</b>”. Màn hình hiển thị mã QRCode sẽ được hiển thị\r\n\r\n<b>Bước 5:</b> – Mở ứng dụng Mobile Banking trên điện thoại của bạn và quét mã QRCode.\r\n\r\n<b>Bước 6:</b> – Kiểm tra thông tin và chọn <b>“Xác nhận”</b> để hoàn tất giao dịch.\r\n\r\n</div></li>\r\n 	<li><strong>Thanh toán trực tuyến qua cổng thanh toán Momo (Kích hoạt tự động nhanh chóng):</strong>\r\n<div class="hdtt">\r\n\r\n<b>Bước 1:</b> – Chọn <b>“Thanh toán bằng Momo” </b>.\r\n\r\n<b>Bước 2:</b> – Click “Tiếp tục”.\r\n\r\n<b>Bước 3:</b> – Sau đó thông tin <b>QRCODE </b>của đơn hàng sẽ được hiển thị.\r\n\r\n<b>Bước 4:</b> – Chọn biểu tượng <b>QRCODE </b>ở góc phải màn hình.\r\n\r\n<b>Bước 5:</b> – Quét mã <b>QRCODE </b>đang hiển thị trên tenten.vn.\r\n\r\n<b>Bước 6:</b> – Chọn Xác nhận để hoàn tất giao dịch *.\r\n<p class="clred"><b>* Lưu ý:</b></p>\r\n+ Chi tiết quý khách xem hướng dẫn <a href="https://img.tenten.vn/k/lp/tentenvn/images/add_momo/huong-dan-thanh-toan-momo.jpg" target="_blank" rel="noopener noreferrer">tại đây</a>\r\n\r\n</div></li>\r\n 	<li><strong>Thanh toán trực tuyến qua cổng thanh toán Smartlink:</strong>\r\n<div class="hdtt">\r\n\r\n<b>Bước 1:</b> – Khách hàng đăng nhập Website www.tenten.vn và lựa chọn dịch vụ Tên miền/Hosting/VPS phù hợp\r\n\r\n<b>Bước 2:</b> – Nhập các thông tin cần thiết và chọn hình thức thanh toán qua cổng thanh toán nội địa Smartlink.\r\n\r\n<b>Bước 3:</b> – Nhập thông tin thẻ tại cổng thanh toán nội địa Smartlink.\r\n\r\n<b>Bước 4:</b> – Xác thực OTP để hoàn thành giao dịch.\r\n<p class="clred"><b>* Lưu ý:</b></p>\r\n+ Dịch vụ sẽ được active tự động và gửi mail cho khách hàng ngay sau khi hoàn thành bước thanh toán cuối cùng.\r\n\r\n+ Chi tiết quý khách xem hướng dẫn <a href="https://tenten.vn/tin-tuc/135-tenten-mo-cong-thanh-toan-dich-vu-tu-dong-smartlink" target="_blank" rel="noopener noreferrer">tại đây</a>\r\n\r\n</div></li>\r\n 	<li><strong>Thanh toán trực tiếp tại văn phòng của TENTEN (Kích hoạt thủ công):</strong>\r\n<div class="hdtt">\r\n<h4>CÔNG TY CỔ PHẦN GMO-Z.COM RUNSYSTEM</h4>\r\n<h5>Tại Hà Nội:</h5>\r\n<div>Địa chỉ: Tầng 6, Tòa nhà Ocean Park, Số 01 Đào Duy Anh, phường Phương Mai, Quận Đống Đa, Hà Nội.</div>\r\n<div>Điện thoại: (024)3550.1630</div>\r\n<h5>Tại Hồ Chí Minh:</h5>\r\n<div>Địa chỉ: Lầu 7, tòa nhà Hà Đô, số 2, Đường Hồng Hà, Phường 2, Quận Tân Bình, TP. Hồ Chí Minh</div>\r\n<div>Điện thoại: (028) 73 086 086</div>\r\n<h5>Thời gian làm việc:</h5>\r\n<div>Từ thứ 2 đến thứ 6: 8h30 đến 18h</div>\r\n</div></li>\r\n 	<li><strong>Thanh toán qua ngân hàng (Kích hoạt thủ công):</strong>Quý khách có thể chuyển tiền thanh toán tới một trong các tài khoản sau:\r\n<p class="clred"><b>Chủ tài khoản:</b> Công ty cổ phần GMO-Z.com RUNSYSTEM</p>\r\n+ Số tài khoản tại Ngân hàng <b>Vietcombank</b> – Sở giao dịch: 0011004049424\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Đông Á</b> – Phòng giao dịch Kim Liên: 008926260001\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Agribank</b> – Chi nhánh Thanh Xuân: 1505201039234\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Techcombank</b> – CN THĂNG LONG: 19022397051018\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Vietinbank</b> – Chi nhánh Thanh Xuân: 119000086840\r\n\r\n+ Số tài khoản tại Ngân hàng <b>ACB</b> – PGD Nam Hà Nội – CN Thăng Long: 187884909\r\n\r\n+ Số tài khoản tại Ngân hàng <b>BIDV</b> – Chi nhánh Cầu Giấy: 21510000948415\r\n<p class="clred"><b>* Lưu ý:</b></p>\r\n+ Ngay cả khi không có tài khoản ngân hàng, quý khách vẫn có thể chuyển tiền.\r\n\r\n+ Trên ủy nhiệm chi, tại mục Nội dung chuyển tiền, quý khách hãy chèn thêm cú pháp:\r\n\r\n[Đơn hàng “XXYY”,Tên dịch vụ ] Trong đó: XXYY là Mã đơn hàng\r\n\r\nVí dụ: [Đơn hàng 2454689,tên miền abc.com]</li>\r\n 	<li><strong>Thanh toán qua ATM:</strong>Quý khách có thể đến cột ATM bất kỳ của các ngân hàng dưới đây và chuyển tiền thanh toán tới một trong các tài khoản sau:\r\n<p class="clred"><b>Chủ tài khoản:</b> Công ty cổ phần GMO-Z.com RUNSYSTEM</p>\r\n+ Số tài khoản tại Ngân hàng <b>Vietcombank</b> – Sở giao dịch: 0011004049424\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Đông Á</b> – Phòng giao dịch Kim Liên: 008926260001\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Agribank</b> – Chi nhánh Thanh Xuân: 1505201039234\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Techcombank</b> – CN THĂNG LONG: 19022397051018\r\n\r\n+ Số tài khoản tại Ngân hàng <b>BIDV</b> – Chi nhánh Cầu Giấy: 21510000948415\r\n\r\n+ Số tài khoản tại Ngân hàng <b>ACB</b> – PGD Nam Hà Nội – CN Thăng Long: 187884909\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Vietinbank</b> – Chi nhánh Thanh Xuân: 119000086840</li>\r\n 	<li><strong>Thanh toán trực tuyến qua cổng thanh toán BảoKim.vn</strong>Quý khách có thể thực hiện thanh toán trực tuyến nhanh chóng và an toàn qua các hình thức sau:- Thanh toán bằng thẻ tín dụng quốc tế: Visa, Master card …- Thanh toán bằng thẻ ATM online- Thanh toán bằng internet banking- Thanh toán bằng số dư khả dụng trên tài khoản Bảo KimQuý khách lưu ý khi thanh toán qua các loại thẻ ngân hàng: Điền đúng nội dung chuyển tiền theo hướng dẫn của Bảo Kim.Chi tiết quý khách xem hướng dẫn <a href="https://www.baokim.vn/uploads/payment_guide/7zpluscom.html" target="_blank" rel="noopener noreferrer">tại đây</a>Chứng nhận đảm bảo của Bảo Kim cho các giao dịch trên website <b class="clred">Tenten.vn</b>:\r\n<p align="center"><img src="https://tenten.vn/Content/Support/images/k_payment.png" /></p>\r\nKhi thực hiện thanh toán qua tài khoản BẢO KIM, Quý khách vui lòng nhập chính xác các thông tin sau:\r\n\r\n<b>Email người nhận:</b> <a href="mailto:Billing@tenten.vn">billing@tenten.vn</a>\r\n\r\nThông điệp của người chuyển: [Đơn hàng “XXYY”,Tên dịch vụ ]\r\n\r\nTrong đó: XXYY là Mã đơn hàng.\r\n\r\nVí dụ: [Đơn hàng 2454689,tên miền abc.com]</li>\r\n 	<li><strong>Thanh toán qua Ngân Lượng</strong>Quý khách Chọn hình thức <b>“Thanh toán qua Ngân Lượng”</b>, hoàn thành bước xác nhận cuối cùng, giao diện sẽ tự động chuyển sang link thanh toán của Ngân Lượng. Quý khách lựa chọn hình thức thanh toán phù hợp trong 5 phương thức và thực hiện theo các bước hướng dẫn tiếp theo của Ngân Lượng.Trường hợp Quý khách có tài khoản Ngân Lượng, và không thanh toán ngay tại thời điểm đăng ký đơn hàng, Quý khách hãy làm theo các bước sau:+ Đăng nhập vào ngân lượng.+ Sau đó chọn chuyển tiền, nhập thông tin người nhận là:<b>Email:</b> billing@tenten.vn<b>Tên:</b> Công ty cổ phần GMO-Z.com RUNSYSTEM.<b>Nội dung chuyển:</b> [Đơn hàng “XXYY”,Tên dịch vụ ]Trong đó: XXYY là mã đơn hàng.\r\n\r\nVí dụ: [Đơn hàng 2454689,tên miền abc.com]</li>\r\n 	<li><strong>Thanh toán qua Paypal (Kích hoạt tự động nhanh chóng)</strong>Quý khách Chọn hình thức <b>“Thanh toán qua Paypal”</b>, hoàn thành bước xác nhận cuối cùng, giao diện sẽ tự động chuyển sang link: <a href="https://www.paypal.com/vn/cgi-bin/webscr?" target="_blank" rel="noopener noreferrer">https://www.paypal.com/vn/cgi-bin/webscr?</a>+ Nếu Quý khách đã có tài khoản Paypal: vui lòng nhập email và password đã đăng ký trên Paypal, chọn “Login”. Sau đó chọn lệnh “Pay now”.+ Nếu Quý khách Không có tài khoản Paypal: Quý khách có thể thanh toán bằng Debit Card (thẻ ghi nợ) hoặc Credit Card (thẻ tín dụng).+ Nếu Quý khách không thanh toán ngay tại thời điểm đăng ký: xin vui lòng chuyển tiền thanh toán đến tài khoản Paypal (Người nhận):<b>Email người nhận:</b> <a href="mailto:paypal@runsystem.net">paypal@runsystem.net</a></li>\r\n 	<li><strong>Một số lưu ý</strong>Nếu Quý khách chọn thanh toán qua chuyển khoản ngân hàng, vui lòng gửi email đến <a href="mailto:Billing@tenten.vn">billing@tenten.vn</a> hoặc gọi điện đến số <b class="clred">(024)3550.1630</b> kèm theo thông báo tên người gửi, ngân hàng thực hiện chuyển tiền, dịch vụ đăng ký để TENTEN kích hoạt dịch vụ cho Quý khách một cách nhanh chóng.Nếu Quý khách chọn thanh toán qua chuyển khoản ATM, vui lòng scan Hóa đơn của ATM và gửi đến hộp thư <a href="mailto:Billing@tenten.vn">billing@tenten.vn</a> để chúng tôi kích hoạt dịch vụ cho Quý khách.</li>\r\n</ul>\r\n</div>', 'Hướng dẫn thanh toán', '', 'publish', 'closed', 'closed', '', 'huong-dan-thanh-toan', '', '', '2019-12-24 02:34:13', '2019-12-24 02:34:13', '', 0, 'http://tentenkidplaza.co/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-12-24 02:34:13', '2019-12-24 02:34:13', '<div class="sp_tab tabhd">\r\n\r\nKhi đăng ký và sử dụng dịch vụ tại TENTEN , Quý khách có thể thanh toán theo 1 trong các hình thức sau:\r\n\r\n</div>\r\n<div class="sp_hd">\r\n<ul>\r\n 	<li><strong>Thanh toán trực tuyến qua cổng thanh toán VNPay (Kích hoạt tự động nhanh chóng):</strong>\r\n<div class="hdtt">\r\n\r\n<b>Bước 1:</b> – Chọn <b>“Thanh toán bằng VNPAY” </b>.Tích chọn <b>“không xuất hóa đơn”</b> hoặc <b>“có xuất hóa đơn”.</b>\r\n\r\n<b>Bước 2:</b> – Click <b>“Tiếp tục”</b>. Sau đó thông tin xác nhận của đơn hàng sẽ được hiển thị.\r\n\r\n<b>Bước 3:</b> – Click <b>“Tiếp tục”</b>. Các phương thức thanh toán sẽ được hiển thị.\r\n\r\n<b>Bước 4:</b> – Chọn “<b>Ứng dụng Mobile Banking quét mã VNPAY-QR</b>”. Màn hình hiển thị mã QRCode sẽ được hiển thị\r\n\r\n<b>Bước 5:</b> – Mở ứng dụng Mobile Banking trên điện thoại của bạn và quét mã QRCode.\r\n\r\n<b>Bước 6:</b> – Kiểm tra thông tin và chọn <b>“Xác nhận”</b> để hoàn tất giao dịch.\r\n\r\n</div></li>\r\n 	<li><strong>Thanh toán trực tuyến qua cổng thanh toán Momo (Kích hoạt tự động nhanh chóng):</strong>\r\n<div class="hdtt">\r\n\r\n<b>Bước 1:</b> – Chọn <b>“Thanh toán bằng Momo” </b>.\r\n\r\n<b>Bước 2:</b> – Click “Tiếp tục”.\r\n\r\n<b>Bước 3:</b> – Sau đó thông tin <b>QRCODE </b>của đơn hàng sẽ được hiển thị.\r\n\r\n<b>Bước 4:</b> – Chọn biểu tượng <b>QRCODE </b>ở góc phải màn hình.\r\n\r\n<b>Bước 5:</b> – Quét mã <b>QRCODE </b>đang hiển thị trên tenten.vn.\r\n\r\n<b>Bước 6:</b> – Chọn Xác nhận để hoàn tất giao dịch *.\r\n<p class="clred"><b>* Lưu ý:</b></p>\r\n+ Chi tiết quý khách xem hướng dẫn <a href="https://img.tenten.vn/k/lp/tentenvn/images/add_momo/huong-dan-thanh-toan-momo.jpg" target="_blank" rel="noopener noreferrer">tại đây</a>\r\n\r\n</div></li>\r\n 	<li><strong>Thanh toán trực tuyến qua cổng thanh toán Smartlink:</strong>\r\n<div class="hdtt">\r\n\r\n<b>Bước 1:</b> – Khách hàng đăng nhập Website www.tenten.vn và lựa chọn dịch vụ Tên miền/Hosting/VPS phù hợp\r\n\r\n<b>Bước 2:</b> – Nhập các thông tin cần thiết và chọn hình thức thanh toán qua cổng thanh toán nội địa Smartlink.\r\n\r\n<b>Bước 3:</b> – Nhập thông tin thẻ tại cổng thanh toán nội địa Smartlink.\r\n\r\n<b>Bước 4:</b> – Xác thực OTP để hoàn thành giao dịch.\r\n<p class="clred"><b>* Lưu ý:</b></p>\r\n+ Dịch vụ sẽ được active tự động và gửi mail cho khách hàng ngay sau khi hoàn thành bước thanh toán cuối cùng.\r\n\r\n+ Chi tiết quý khách xem hướng dẫn <a href="https://tenten.vn/tin-tuc/135-tenten-mo-cong-thanh-toan-dich-vu-tu-dong-smartlink" target="_blank" rel="noopener noreferrer">tại đây</a>\r\n\r\n</div></li>\r\n 	<li><strong>Thanh toán trực tiếp tại văn phòng của TENTEN (Kích hoạt thủ công):</strong>\r\n<div class="hdtt">\r\n<h4>CÔNG TY CỔ PHẦN GMO-Z.COM RUNSYSTEM</h4>\r\n<h5>Tại Hà Nội:</h5>\r\n<div>Địa chỉ: Tầng 6, Tòa nhà Ocean Park, Số 01 Đào Duy Anh, phường Phương Mai, Quận Đống Đa, Hà Nội.</div>\r\n<div>Điện thoại: (024)3550.1630</div>\r\n<h5>Tại Hồ Chí Minh:</h5>\r\n<div>Địa chỉ: Lầu 7, tòa nhà Hà Đô, số 2, Đường Hồng Hà, Phường 2, Quận Tân Bình, TP. Hồ Chí Minh</div>\r\n<div>Điện thoại: (028) 73 086 086</div>\r\n<h5>Thời gian làm việc:</h5>\r\n<div>Từ thứ 2 đến thứ 6: 8h30 đến 18h</div>\r\n</div></li>\r\n 	<li><strong>Thanh toán qua ngân hàng (Kích hoạt thủ công):</strong>Quý khách có thể chuyển tiền thanh toán tới một trong các tài khoản sau:\r\n<p class="clred"><b>Chủ tài khoản:</b> Công ty cổ phần GMO-Z.com RUNSYSTEM</p>\r\n+ Số tài khoản tại Ngân hàng <b>Vietcombank</b> – Sở giao dịch: 0011004049424\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Đông Á</b> – Phòng giao dịch Kim Liên: 008926260001\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Agribank</b> – Chi nhánh Thanh Xuân: 1505201039234\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Techcombank</b> – CN THĂNG LONG: 19022397051018\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Vietinbank</b> – Chi nhánh Thanh Xuân: 119000086840\r\n\r\n+ Số tài khoản tại Ngân hàng <b>ACB</b> – PGD Nam Hà Nội – CN Thăng Long: 187884909\r\n\r\n+ Số tài khoản tại Ngân hàng <b>BIDV</b> – Chi nhánh Cầu Giấy: 21510000948415\r\n<p class="clred"><b>* Lưu ý:</b></p>\r\n+ Ngay cả khi không có tài khoản ngân hàng, quý khách vẫn có thể chuyển tiền.\r\n\r\n+ Trên ủy nhiệm chi, tại mục Nội dung chuyển tiền, quý khách hãy chèn thêm cú pháp:\r\n\r\n[Đơn hàng “XXYY”,Tên dịch vụ ] Trong đó: XXYY là Mã đơn hàng\r\n\r\nVí dụ: [Đơn hàng 2454689,tên miền abc.com]</li>\r\n 	<li><strong>Thanh toán qua ATM:</strong>Quý khách có thể đến cột ATM bất kỳ của các ngân hàng dưới đây và chuyển tiền thanh toán tới một trong các tài khoản sau:\r\n<p class="clred"><b>Chủ tài khoản:</b> Công ty cổ phần GMO-Z.com RUNSYSTEM</p>\r\n+ Số tài khoản tại Ngân hàng <b>Vietcombank</b> – Sở giao dịch: 0011004049424\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Đông Á</b> – Phòng giao dịch Kim Liên: 008926260001\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Agribank</b> – Chi nhánh Thanh Xuân: 1505201039234\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Techcombank</b> – CN THĂNG LONG: 19022397051018\r\n\r\n+ Số tài khoản tại Ngân hàng <b>BIDV</b> – Chi nhánh Cầu Giấy: 21510000948415\r\n\r\n+ Số tài khoản tại Ngân hàng <b>ACB</b> – PGD Nam Hà Nội – CN Thăng Long: 187884909\r\n\r\n+ Số tài khoản tại Ngân hàng <b>Vietinbank</b> – Chi nhánh Thanh Xuân: 119000086840</li>\r\n 	<li><strong>Thanh toán trực tuyến qua cổng thanh toán BảoKim.vn</strong>Quý khách có thể thực hiện thanh toán trực tuyến nhanh chóng và an toàn qua các hình thức sau:- Thanh toán bằng thẻ tín dụng quốc tế: Visa, Master card …- Thanh toán bằng thẻ ATM online- Thanh toán bằng internet banking- Thanh toán bằng số dư khả dụng trên tài khoản Bảo KimQuý khách lưu ý khi thanh toán qua các loại thẻ ngân hàng: Điền đúng nội dung chuyển tiền theo hướng dẫn của Bảo Kim.Chi tiết quý khách xem hướng dẫn <a href="https://www.baokim.vn/uploads/payment_guide/7zpluscom.html" target="_blank" rel="noopener noreferrer">tại đây</a>Chứng nhận đảm bảo của Bảo Kim cho các giao dịch trên website <b class="clred">Tenten.vn</b>:\r\n<p align="center"><img src="https://tenten.vn/Content/Support/images/k_payment.png" /></p>\r\nKhi thực hiện thanh toán qua tài khoản BẢO KIM, Quý khách vui lòng nhập chính xác các thông tin sau:\r\n\r\n<b>Email người nhận:</b> <a href="mailto:Billing@tenten.vn">billing@tenten.vn</a>\r\n\r\nThông điệp của người chuyển: [Đơn hàng “XXYY”,Tên dịch vụ ]\r\n\r\nTrong đó: XXYY là Mã đơn hàng.\r\n\r\nVí dụ: [Đơn hàng 2454689,tên miền abc.com]</li>\r\n 	<li><strong>Thanh toán qua Ngân Lượng</strong>Quý khách Chọn hình thức <b>“Thanh toán qua Ngân Lượng”</b>, hoàn thành bước xác nhận cuối cùng, giao diện sẽ tự động chuyển sang link thanh toán của Ngân Lượng. Quý khách lựa chọn hình thức thanh toán phù hợp trong 5 phương thức và thực hiện theo các bước hướng dẫn tiếp theo của Ngân Lượng.Trường hợp Quý khách có tài khoản Ngân Lượng, và không thanh toán ngay tại thời điểm đăng ký đơn hàng, Quý khách hãy làm theo các bước sau:+ Đăng nhập vào ngân lượng.+ Sau đó chọn chuyển tiền, nhập thông tin người nhận là:<b>Email:</b> billing@tenten.vn<b>Tên:</b> Công ty cổ phần GMO-Z.com RUNSYSTEM.<b>Nội dung chuyển:</b> [Đơn hàng “XXYY”,Tên dịch vụ ]Trong đó: XXYY là mã đơn hàng.\r\n\r\nVí dụ: [Đơn hàng 2454689,tên miền abc.com]</li>\r\n 	<li><strong>Thanh toán qua Paypal (Kích hoạt tự động nhanh chóng)</strong>Quý khách Chọn hình thức <b>“Thanh toán qua Paypal”</b>, hoàn thành bước xác nhận cuối cùng, giao diện sẽ tự động chuyển sang link: <a href="https://www.paypal.com/vn/cgi-bin/webscr?" target="_blank" rel="noopener noreferrer">https://www.paypal.com/vn/cgi-bin/webscr?</a>+ Nếu Quý khách đã có tài khoản Paypal: vui lòng nhập email và password đã đăng ký trên Paypal, chọn “Login”. Sau đó chọn lệnh “Pay now”.+ Nếu Quý khách Không có tài khoản Paypal: Quý khách có thể thanh toán bằng Debit Card (thẻ ghi nợ) hoặc Credit Card (thẻ tín dụng).+ Nếu Quý khách không thanh toán ngay tại thời điểm đăng ký: xin vui lòng chuyển tiền thanh toán đến tài khoản Paypal (Người nhận):<b>Email người nhận:</b> <a href="mailto:paypal@runsystem.net">paypal@runsystem.net</a></li>\r\n 	<li><strong>Một số lưu ý</strong>Nếu Quý khách chọn thanh toán qua chuyển khoản ngân hàng, vui lòng gửi email đến <a href="mailto:Billing@tenten.vn">billing@tenten.vn</a> hoặc gọi điện đến số <b class="clred">(024)3550.1630</b> kèm theo thông báo tên người gửi, ngân hàng thực hiện chuyển tiền, dịch vụ đăng ký để TENTEN kích hoạt dịch vụ cho Quý khách một cách nhanh chóng.Nếu Quý khách chọn thanh toán qua chuyển khoản ATM, vui lòng scan Hóa đơn của ATM và gửi đến hộp thư <a href="mailto:Billing@tenten.vn">billing@tenten.vn</a> để chúng tôi kích hoạt dịch vụ cho Quý khách.</li>\r\n</ul>\r\n</div>', 'Hướng dẫn thanh toán', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-24 02:34:13', '2019-12-24 02:34:13', '', 18, 'http://tentenkidplaza.co/2019/12/24/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-12-24 02:34:46', '2019-12-24 02:34:46', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-12-24 02:45:38', '2019-12-24 02:45:38', '', 0, 'http://tentenkidplaza.co/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2019-12-24 02:34:46', '2019-12-24 02:34:46', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-12-24 02:45:38', '2019-12-24 02:45:38', '', 0, 'http://tentenkidplaza.co/?p=21', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(22, 1, '2019-12-24 02:45:38', '2019-12-24 02:45:38', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-12-24 02:45:38', '2019-12-24 02:45:38', '', 0, 'http://tentenkidplaza.co/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2019-12-24 03:00:59', '2019-12-24 03:00:59', '', 'logo_baby', '', 'inherit', 'open', 'closed', '', 'logo_baby', '', '', '2019-12-24 03:00:59', '2019-12-24 03:00:59', '', 0, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/logo_baby.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2019-12-24 03:01:04', '2019-12-24 03:01:04', '{\n    "tentenvn::custom_logo": {\n        "value": 23,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-12-24 03:01:04"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5f010cfc-d703-486e-9816-9d98b19cb188', '', '', '2019-12-24 03:01:04', '2019-12-24 03:01:04', '', 0, 'http://tentenkidplaza.co/2019/12/24/5f010cfc-d703-486e-9816-9d98b19cb188/', 0, 'customize_changeset', '', 0),
(25, 1, '2019-12-24 04:45:20', '2019-12-24 04:45:20', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2019-12-24 07:48:33', '2019-12-24 07:48:33', '', 0, 'http://tentenkidplaza.co/?post_type=ml-slider&#038;p=25', 0, 'ml-slider', '', 0),
(26, 1, '2019-12-24 04:45:29', '2019-12-24 04:45:29', '', 'slide1', '', 'inherit', 'open', 'closed', '', 'slide1', '', '', '2019-12-24 04:45:29', '2019-12-24 04:45:29', '', 0, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/slide1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-12-24 04:45:30', '2019-12-24 04:45:30', '', 'Slider 25 - image', '', 'publish', 'closed', 'closed', '', 'slider-25-image', '', '', '2019-12-24 07:48:33', '2019-12-24 07:48:33', '', 0, 'http://tentenkidplaza.co/?post_type=ml-slide&#038;p=27', 0, 'ml-slide', '', 0),
(28, 1, '2019-12-24 04:45:35', '2019-12-24 04:45:35', '', 'slide2', '', 'inherit', 'open', 'closed', '', 'slide2', '', '', '2019-12-24 04:45:35', '2019-12-24 04:45:35', '', 0, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/slide2.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2019-12-24 04:45:36', '2019-12-24 04:45:36', '', 'Slider 25 - image', '', 'publish', 'closed', 'closed', '', 'slider-25-image-2', '', '', '2019-12-24 07:48:33', '2019-12-24 07:48:33', '', 0, 'http://tentenkidplaza.co/?post_type=ml-slide&#038;p=29', 1, 'ml-slide', '', 0),
(30, 1, '2019-12-24 04:45:42', '2019-12-24 04:45:42', '', 'slide3', '', 'inherit', 'open', 'closed', '', 'slide3', '', '', '2019-12-24 04:45:42', '2019-12-24 04:45:42', '', 0, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/slide3.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2019-12-24 04:45:43', '2019-12-24 04:45:43', '', 'Slider 25 - image', '', 'publish', 'closed', 'closed', '', 'slider-25-image-3', '', '', '2019-12-24 07:48:33', '2019-12-24 07:48:33', '', 0, 'http://tentenkidplaza.co/?post_type=ml-slide&#038;p=31', 2, 'ml-slide', '', 0),
(32, 1, '2019-12-24 04:45:48', '2019-12-24 04:45:48', '', 'slide4', '', 'inherit', 'open', 'closed', '', 'slide4', '', '', '2019-12-24 04:45:48', '2019-12-24 04:45:48', '', 0, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/slide4.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-12-24 04:45:49', '2019-12-24 04:45:49', '', 'Slider 25 - image', '', 'publish', 'closed', 'closed', '', 'slider-25-image-4', '', '', '2019-12-24 07:48:33', '2019-12-24 07:48:33', '', 0, 'http://tentenkidplaza.co/?post_type=ml-slide&#038;p=33', 3, 'ml-slide', '', 0),
(34, 1, '2019-12-24 09:13:32', '2019-12-24 09:13:32', '{\n    "tentenvn::lwp_link_color": {\n        "value": "#fc474c",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2019-12-24 09:13:32"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fd4472de-b5f8-442a-8e27-ec2a3ed41f5c', '', '', '2019-12-24 09:13:32', '2019-12-24 09:13:32', '', 0, 'http://tentenkidplaza.co/2019/12/24/fd4472de-b5f8-442a-8e27-ec2a3ed41f5c/', 0, 'customize_changeset', '', 0),
(35, 1, '2019-12-25 02:26:40', '2019-12-25 02:26:40', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-36 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/sua1.jpg" alt="" width="579" height="588" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-37 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/asd.jpg" alt="" width="553" height="602" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Sữa Meiji Infant Formula 800g (0 - 1 tuổi)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'sua-meiji-infant-formula-800g-0-1-tuoi', '', '', '2019-12-25 04:13:07', '2019-12-25 04:13:07', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=35', 0, 'product', '', 0),
(36, 1, '2019-12-25 02:27:05', '2019-12-25 02:27:05', '', 'sua1', '', 'inherit', 'open', 'closed', '', 'sua1', '', '', '2019-12-25 02:27:05', '2019-12-25 02:27:05', '', 35, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/sua1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-12-25 02:29:39', '2019-12-25 02:29:39', '', 'asd', '', 'inherit', 'open', 'closed', '', 'asd', '', '', '2019-12-25 02:29:39', '2019-12-25 02:29:39', '', 35, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/asd.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-12-25 02:29:45', '2019-12-25 02:29:45', '', 'httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1', '', '', '2019-12-25 02:29:45', '2019-12-25 02:29:45', '', 35, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-3_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-12-25 02:29:50', '2019-12-25 02:29:50', '', 'httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1', '', '', '2019-12-25 02:29:50', '2019-12-25 02:29:50', '', 35, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201903141608sua-meiji-infant-formula-113799-4_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-12-25 02:52:42', '2019-12-25 02:52:42', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\n\n<img class="wp-image-36 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/sua1.jpg" alt="" width="700" height="700" />\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\n<div></div>\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\n<div></div>\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\n<div></div>\n<div>\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\n<div>\n<div></div>\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\n<div></div>\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\n<div></div>\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\n<div></div>\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\n</div>\n</div>', 'Sữa Meiji Infant Formula 800g (0 - 1 tuổi)', '<ul>\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\n</ul>', 'inherit', 'closed', 'closed', '', '35-autosave-v1', '', '', '2019-12-25 02:52:42', '2019-12-25 02:52:42', '', 35, 'http://tentenkidplaza.co/2019/12/25/35-autosave-v1/', 0, 'revision', '', 0),
(41, 1, '2019-12-25 04:12:54', '2019-12-25 04:12:54', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-36 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/sua1.jpg" alt="" width="579" height="588" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-37 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/asd.jpg" alt="" width="553" height="602" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Sữa Meiji Growing Up Formula 800g (1 - 3 tuổi)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'sua-meiji-growing-up-formula-800g-1-3-tuoi', '', '', '2019-12-25 08:52:36', '2019-12-25 08:52:36', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=41', 0, 'product', '', 0),
(42, 1, '2019-12-25 04:17:08', '2019-12-25 04:17:08', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-36 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/sua1.jpg" alt="" width="579" height="588" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-37 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/asd.jpg" alt="" width="553" height="602" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Sữa Morinaga Hagukumi số 1 850g (0 - 6 tháng)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'sua-morinaga-hagukumi-so-1-850g-0-6-thang', '', '', '2019-12-25 08:52:49', '2019-12-25 08:52:49', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=42', 0, 'product', '', 0),
(43, 1, '2019-12-25 04:18:14', '2019-12-25 04:18:14', '', 'httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1', '', '', '2019-12-25 04:18:14', '2019-12-25 04:18:14', '', 42, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201903131953sua-morinaga-hagukumi-so-1-850g-101119_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2019-12-25 04:21:30', '2019-12-25 04:21:30', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-36 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/sua1.jpg" alt="" width="579" height="588" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-37 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/asd.jpg" alt="" width="553" height="602" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Sữa Morinaga Chimil số 2 850g (6 - 36 tháng)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'sua-morinaga-chimil-so-2-850g-6-36-thang', '', '', '2019-12-25 09:00:51', '2019-12-25 09:00:51', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=44', 0, 'product', '', 0),
(45, 1, '2019-12-25 04:21:50', '2019-12-25 04:21:50', '', 'sua4', '', 'inherit', 'open', 'closed', '', 'sua4', '', '', '2019-12-25 04:21:50', '2019-12-25 04:21:50', '', 44, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/sua4.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-12-25 04:30:52', '2019-12-25 04:30:52', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-36 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/sua1.jpg" alt="" width="579" height="588" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-37 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/asd.jpg" alt="" width="553" height="602" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Sữa Glico Icreo số 0 800g (0 - 12 tháng)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'sua-glico-icreo-so-0-800g-0-12-thang', '', '', '2019-12-25 09:01:04', '2019-12-25 09:01:04', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=46', 0, 'product', '', 0),
(47, 1, '2019-12-25 04:31:56', '2019-12-25 04:31:56', '', 'glico-icreo-so-0-101134-1_1', '', 'inherit', 'open', 'closed', '', 'glico-icreo-so-0-101134-1_1', '', '', '2019-12-25 04:31:56', '2019-12-25 04:31:56', '', 46, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/glico-icreo-so-0-101134-1_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-12-25 04:32:31', '2019-12-25 04:32:31', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-36 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/sua1.jpg" alt="" width="579" height="588" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-37 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/asd.jpg" alt="" width="553" height="602" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Sữa Glico Icreo số 1 820g (1 - 3 tuổi, có thể dùng cho bé từ 9 tháng tuổi)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'sua-glico-icreo-so-1-820g-1-3-tuoi-co-the-dung-cho-be-tu-9-thang-tuoi', '', '', '2019-12-25 10:19:25', '2019-12-25 10:19:25', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=48', 0, 'product', '', 0),
(49, 1, '2019-12-25 04:33:06', '2019-12-25 04:33:06', '', 'httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct201905061944glico-icreo-so-1-820g_1', '', '', '2019-12-25 04:33:06', '2019-12-25 04:33:06', '', 48, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201905061944glico-icreo-so-1-820g_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-12-25 04:33:16', '2019-12-25 04:33:16', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-36 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/sua1.jpg" alt="" width="579" height="588" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-37 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/asd.jpg" alt="" width="553" height="602" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Sữa PediaSure BA 850g (1 - 10 tuổi)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'sua-pediasure-ba-850g-1-10-tuoi', '', '', '2019-12-25 10:19:25', '2019-12-25 10:19:25', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=50', 0, 'product', '', 0),
(51, 1, '2019-12-25 04:39:09', '2019-12-25 04:39:09', '', 'sua-pediasure-900g-vani-101142', '', 'inherit', 'open', 'closed', '', 'sua-pediasure-900g-vani-101142', '', '', '2019-12-25 04:39:09', '2019-12-25 04:39:09', '', 50, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/sua-pediasure-900g-vani-101142.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-12-25 04:41:09', '2019-12-25 04:41:09', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-36 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/sua1.jpg" alt="" width="579" height="588" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-37 aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/asd.jpg" alt="" width="553" height="602" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Sữa Aptamil Anh số 3 900g (12 - 24 tháng)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'sua-aptamil-anh-so-3-900g-12-24-thang', '', '', '2019-12-25 09:07:57', '2019-12-25 09:07:57', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=52', 0, 'product', '', 0),
(53, 1, '2019-12-25 04:43:14', '2019-12-25 04:43:14', '', 'httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct201810091541sua-aptamil-anh-so-3_1', '', '', '2019-12-25 04:43:14', '2019-12-25 04:43:14', '', 52, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201810091541sua-aptamil-anh-so-3_1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(54, 1, '2019-12-25 08:40:53', '2019-12-25 08:40:53', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-55 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg" alt="" width="700" height="700" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-55 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg" alt="" width="700" height="700" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Bánh ăn dặm Pigeon vị rong biển 13366 (Trên 6 tháng)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'banh-an-dam-pigeon-vi-rong-bien-13366-tren-6-thang', '', '', '2019-12-25 10:19:21', '2019-12-25 10:19:21', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=54', 0, 'product', '', 0),
(55, 1, '2019-12-25 08:41:59', '2019-12-25 08:41:59', '', 'httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1', '', '', '2019-12-25 08:41:59', '2019-12-25 08:41:59', '', 54, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2019-12-25 08:42:59', '2019-12-25 08:42:59', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-57 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1.jpg" alt="" width="700" height="700" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-55 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg" alt="" width="700" height="700" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Bánh ăn dặm Pigeon vị cá cơm chiên giòn 13365 (Trên 6 tháng)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'banh-an-dam-pigeon-vi-ca-com-chien-gion-13365-tren-6-thang', '', '', '2019-12-25 09:10:03', '2019-12-25 09:10:03', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2019-12-25 09:09:43', '2019-12-25 09:09:43', '', 'httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1', '', '', '2019-12-25 09:09:43', '2019-12-25 09:09:43', '', 56, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021546banh-an-dam-pigeon-vi-ca-com-chien-gion-100396_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2019-12-25 09:10:11', '2019-12-25 09:10:11', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-59 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1.jpg" alt="" width="700" height="700" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-55 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg" alt="" width="700" height="700" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Bánh ăn dặm Nestle CERELAC Nutripuffs vị cam và chuối 50g (Trên 12 tháng)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'banh-an-dam-nestle-cerelac-nutripuffs-vi-cam-va-chuoi-50g-tren-12-thang', '', '', '2019-12-25 10:19:17', '2019-12-25 10:19:17', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=58', 0, 'product', '', 0),
(59, 1, '2019-12-25 09:15:14', '2019-12-25 09:15:14', '', 'httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1', '', '', '2019-12-25 09:15:14', '2019-12-25 09:15:14', '', 58, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201703281458banh-ad-puff-nestle-cam-chuoi-50g-115689_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-12-25 09:24:38', '2019-12-25 09:24:38', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-61 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/banh-an-dam-hipp-baby-biscuit-100534.jpg" alt="" width="700" height="700" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-55 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg" alt="" width="700" height="700" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Bánh ăn dặm HiPP Baby''s Biscuit (Từ 6 tháng)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'banh-an-dam-hipp-babys-biscuit-tu-6-thang', '', '', '2019-12-25 10:19:18', '2019-12-25 10:19:18', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=60', 0, 'product', '', 0),
(61, 1, '2019-12-25 09:34:25', '2019-12-25 09:34:25', '', 'banh-an-dam-hipp-baby-biscuit-100534', '', 'inherit', 'open', 'closed', '', 'banh-an-dam-hipp-baby-biscuit-100534', '', '', '2019-12-25 09:34:25', '2019-12-25 09:34:25', '', 60, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/banh-an-dam-hipp-baby-biscuit-100534.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2019-12-25 09:48:31', '2019-12-25 09:48:31', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-63 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct2015040202561.jpg" alt="" width="700" height="700" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-55 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg" alt="" width="700" height="700" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Bánh trẻ em Baby Ball mèo Nhật Bản 50g', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'banh-tre-em-baby-ball-meo-nhat-ban-50g', '', '', '2019-12-25 09:59:18', '2019-12-25 09:59:18', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=62', 0, 'product', '', 0),
(63, 1, '2019-12-25 09:49:19', '2019-12-25 09:49:19', '', 'httpsmedia.bibomart.netubbmproduct2015040202561', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct2015040202561', '', '', '2019-12-25 09:49:19', '2019-12-25 09:49:19', '', 62, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct2015040202561.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-12-25 09:59:23', '2019-12-25 09:59:23', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-66 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1.jpg" alt="" width="700" height="700" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-55 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg" alt="" width="700" height="700" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Bánh trẻ em Baby Ball Nhật (Dây 5 gói)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'banh-tre-em-baby-ball-nhat-day-5-goi', '', '', '2019-12-25 10:19:13', '2019-12-25 10:19:13', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=64', 0, 'product', '', 0),
(66, 1, '2019-12-25 10:00:02', '2019-12-25 10:00:02', '', 'httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1', '', '', '2019-12-25 10:00:02', '2019-12-25 10:00:02', '', 64, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201611261715banh-tre-em-baby-ball-nhat-day-100303_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-12-25 10:02:15', '2019-12-25 10:02:15', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-68 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1.jpg" alt="" width="700" height="700" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-55 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg" alt="" width="700" height="700" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Bánh ăn dặm Pigeon vị cà rốt, cà chua (Trên 7 tháng)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'banh-an-dam-pigeon-vi-ca-rot-ca-chua-tren-7-thang', '', '', '2019-12-25 10:16:40', '2019-12-25 10:16:40', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=67', 0, 'product', '', 0),
(68, 1, '2019-12-25 10:16:25', '2019-12-25 10:16:25', '', 'httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1', '', '', '2019-12-25 10:16:25', '2019-12-25 10:16:25', '', 67, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021556banh-an-dam-pigeon-vi-ca-rot-ca-chua-100402_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-12-25 10:16:48', '2019-12-25 10:16:48', 'Sữa mẹ là tốt nhất cho sự phát triển của trẻ sơ sinh và trẻ nhỏ, tuy nhiên trong những trường hợp mẹ bị thiếu sữa thì bé sẽ cần cung cấp nguồn sữa bên ngoài để đảm bảo cho bé sự phát triển tốt nhất.<strong> Sữa Meiji Infant Formula</strong> 800g dưới đây dành cho bé từ 0-1 tuổi được sản xuất dưới sự quản lý vệ sinh và chất lượng chặt chẽ tại nhà máy đã được cấp chứng nhận ISO9001, sử dụng các thiết bị hoàn toàn tự động để sản xuất sữa và đóng hộp sẽ là lựa chọn an tâm cho mẹ. Các thành phần dinh dưỡng trong sữa không chỉ cung cấp nguồn dinh dưỡng một cách tự nhiên cho bé mà còn hỗ trợ bé phát triển trí não, tăng cường sức đề kháng trong giai đoạn non nớt đầu đời.\r\n\r\n<img class="wp-image-70 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1.jpg" alt="" width="700" height="700" />\r\n<p style="text-align: center;"><em>Sữa Meiji Infant Formula</em></p>\r\n&nbsp;\r\n<h3><strong>Đặc điểm nổi bật của sản phẩm</strong></h3>\r\n<div><em><strong>Cung cấp nguồn dinh dưỡng và năng lượng</strong></em></div>\r\n<div></div>\r\n<div>- Sữa Meiji Infant Formula có hàm lượng Protein thấp hơn các sản phẩm Meiji trước đây cùng các dưỡng chất thiết yếu như chất béo, carbonhydrate,...có nồng độ nằm trong phạm vi thích hợp, do đó mang đến nồng độ năng lượng (sữa Meiji đạt 68 Kcalo/100ml) giúp bé sơ sinh hấp thu và phát triển một cách tự nhiên.</div>\r\n<div></div>\r\n<div>- Sữa Meiji có nồng độ các vitamin cần thiết cho sự tăng trưởng và phát triển của trẻ được điều chỉnh để đáp ứng các quy định của Việt Nam đối với sản phẩm dinh dưỡng cho trẻ nhỏ và các tiêu chuẩn của FAO/WHO. Meiji Infant Formula bổ sung đến hơn 10 loại vitamin (A, C, D, K, E,...các vitamin nhóm B) giúp cân bằng dinh dưỡng, tăng cường sức khỏe và hỗ trợ quá trình phát triển toàn diện của bé.</div>\r\n<div></div>\r\n<div>\r\n<div><em><strong>Tăng cường sức đề kháng</strong></em></div>\r\n<div></div>\r\n<div>Meiji Infant Formula hỗ trợ tăng cường đề kháng cho bé nhờ việc bổ sung 5 loại Nucleotide có trong sữa mẹ ( Axit adenylic, Axit cytidylic, Axit inosinic, Axit guanylic, Axit uridylic ) cộng thêm vitamin C, vitamin E giúp bé phòng chống những bệnh thường gặp phải trong giai đoạn sức khỏe non nớt.</div>\r\n<div></div>\r\n<div></div>\r\n<div><em><strong>Tập trung phát triển não bộ</strong></em></div>\r\n<div></div>\r\n<div>Việc đặc biệt bổ sung DHA (100mg/100g) và ARA (100mg/100g) cùng sự hỗ trợ của Taurine, Acid Follic, vi chất sắt, kẽm, Meiji sẽ giúp não bộ của bé phát triển ngay từ giai đoạn này.</div>\r\n</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<div>\r\n<div><em><strong>Giúp hệ tiêu hóa khỏe mạnh</strong></em></div>\r\n<div></div>\r\n<div>FOS có trong sữa Meiji là chất xơ hòa tan giúp trẻ hấp thu dinh dưỡng một cách tối đa và tự nhiên nhất, đồng thời cho một hệ tiêu hóa khỏe mạnh khiến trẻ ăn ngon miệng hơn, nhanh chóng tăng cân.</div>\r\n</div>\r\n</div>\r\n<div><img class="wp-image-55 size-full aligncenter" src="http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201802021601banh-an-dam-pigeon-vi-rong-bien-100394_1.jpg" alt="" width="700" height="700" /></div>\r\n<div style="text-align: center;"><em>Thành phần dinh dưỡng của sữa</em></div>\r\n<div></div>\r\n<div>\r\n<h3><strong>Hướng dẫn sử dụng sản phẩm</strong></h3>\r\n<div>\r\n<div></div>\r\n<div>- Rửa tay trước khi pha sữa. Đảm bảo các đồ dùng và thiết bị sạch sẽ và được tiệt trùng trong nước sôi.</div>\r\n<div></div>\r\n<div>- Sử dụng thìa kèm trong hộp để lấy chính xác lượng sữa bột cần thiết và đổ vào bình đã được tiệt trùng. Gợi ý lượng pha chuẩn: 1 muỗng chuyên dụng gạt ngang (2,7g) pha được 20ml sữa.</div>\r\n<div></div>\r\n<div>- Đổ nước nóng (trên 70 độ C) vào bình khoảng 2/3 tổng khối lượng nước được chỉ định, cẩn thận không để bị bỏng. Đóng nắp bình và lắc nhẹ đến khi bột sữa tan hoàn toàn.</div>\r\n<div></div>\r\n<div>- Cho thêm nước sôi cho đủ khối lượng nước được chỉ định. Thay nắp bình và lắc nhẹ, sau đó làm nguội bình sữa bằng cách đặt dưới dòng nước mát. Trước khi cho trẻ ăn, đảm bảo sữa đang xấp xỉ nhiệt độ cơ thể.</div>\r\n</div>\r\n</div>', 'Bánh ăn dặm Pigeon vị cải xanh và bó xôi 13379 (Trên 7 tháng)', '<ul>\r\n 	<li>Bổ sung vitamin và nguồn năng lượng cần thiết</li>\r\n 	<li>Cung cấp 5 loại Nucleotide tăng cường đề kháng</li>\r\n 	<li>DHA, ARA hỗ trợ não bộ phát triển</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'banh-an-dam-pigeon-vi-cai-xanh-va-bo-xoi-13379-tren-7-thang', '', '', '2019-12-25 10:19:10', '2019-12-25 10:19:10', '', 0, 'http://tentenkidplaza.co/?post_type=product&#038;p=69', 0, 'product', '', 0),
(70, 1, '2019-12-25 10:18:13', '2019-12-25 10:18:13', '', 'httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1', '', 'inherit', 'open', 'closed', '', 'httpsmedia-bibomart-netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1', '', '', '2019-12-25 10:18:13', '2019-12-25 10:18:13', '', 69, 'http://tentenkidplaza.co/wp-content/uploads/2019/12/httpsmedia.bibomart.netubbmproduct201704212158banh-ad-pigeon-cai-xanh-va-bo-xoi-7m-103500_1.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'display_type', ''),
(2, 15, 'thumbnail_id', '0'),
(3, 18, 'order', '0'),
(4, 18, 'display_type', ''),
(5, 18, 'thumbnail_id', '0'),
(6, 19, 'order', '0'),
(7, 19, 'display_type', ''),
(8, 19, 'thumbnail_id', '0'),
(9, 20, 'order', '0'),
(10, 20, 'display_type', ''),
(11, 20, 'thumbnail_id', '0'),
(12, 21, 'order', '0'),
(13, 21, 'display_type', ''),
(14, 21, 'thumbnail_id', '0'),
(15, 22, 'order', '0'),
(16, 22, 'display_type', ''),
(17, 22, 'thumbnail_id', '0'),
(18, 23, 'order', '0'),
(19, 23, 'display_type', ''),
(20, 23, 'thumbnail_id', '0'),
(21, 24, 'order', '0'),
(22, 24, 'display_type', ''),
(23, 24, 'thumbnail_id', '0'),
(24, 25, 'order', '0'),
(25, 25, 'display_type', ''),
(26, 25, 'thumbnail_id', '0'),
(27, 26, 'order', '0'),
(28, 26, 'display_type', ''),
(29, 26, 'thumbnail_id', '0'),
(30, 27, 'order', '0'),
(31, 27, 'display_type', ''),
(32, 27, 'thumbnail_id', '0'),
(33, 28, 'order', '0'),
(34, 28, 'display_type', ''),
(35, 28, 'thumbnail_id', '0'),
(36, 29, 'order', '0'),
(37, 29, 'display_type', ''),
(38, 29, 'thumbnail_id', '0'),
(39, 31, 'order', '0'),
(40, 31, 'display_type', ''),
(41, 31, 'thumbnail_id', '0'),
(42, 32, 'order', '0'),
(43, 32, 'display_type', ''),
(44, 32, 'thumbnail_id', '0'),
(45, 33, 'order', '0'),
(46, 33, 'display_type', ''),
(47, 33, 'thumbnail_id', '0'),
(48, 34, 'order', '0'),
(49, 34, 'display_type', ''),
(50, 34, 'thumbnail_id', '0'),
(51, 35, 'order', '0'),
(52, 35, 'display_type', ''),
(53, 35, 'thumbnail_id', '0'),
(54, 36, 'order', '0'),
(55, 36, 'display_type', ''),
(56, 36, 'thumbnail_id', '0'),
(57, 37, 'order', '0'),
(58, 37, 'display_type', ''),
(59, 37, 'thumbnail_id', '0'),
(60, 38, 'order', '0'),
(61, 38, 'display_type', ''),
(62, 38, 'thumbnail_id', '0'),
(63, 39, 'order', '0'),
(64, 39, 'display_type', ''),
(65, 39, 'thumbnail_id', '0'),
(66, 40, 'order', '0'),
(67, 40, 'display_type', ''),
(68, 40, 'thumbnail_id', '0'),
(69, 41, 'order', '0'),
(70, 41, 'display_type', ''),
(71, 41, 'thumbnail_id', '0'),
(72, 42, 'order', '0'),
(73, 42, 'display_type', ''),
(74, 42, 'thumbnail_id', '0'),
(75, 43, 'order', '0'),
(76, 43, 'display_type', ''),
(77, 43, 'thumbnail_id', '0'),
(78, 44, 'order', '0'),
(79, 44, 'display_type', ''),
(80, 44, 'thumbnail_id', '0'),
(81, 45, 'order', '0'),
(82, 45, 'display_type', ''),
(83, 45, 'thumbnail_id', '0'),
(84, 46, 'order', '0'),
(85, 46, 'display_type', ''),
(86, 46, 'thumbnail_id', '0'),
(87, 47, 'order', '0'),
(88, 47, 'display_type', ''),
(89, 47, 'thumbnail_id', '0'),
(90, 48, 'order', '0'),
(91, 48, 'display_type', ''),
(92, 48, 'thumbnail_id', '0'),
(93, 49, 'order', '0'),
(94, 49, 'display_type', ''),
(95, 49, 'thumbnail_id', '0'),
(96, 50, 'order', '0'),
(97, 50, 'display_type', ''),
(98, 50, 'thumbnail_id', '0'),
(99, 51, 'order', '0'),
(100, 51, 'display_type', ''),
(101, 51, 'thumbnail_id', '0'),
(102, 52, 'order', '0'),
(103, 52, 'display_type', ''),
(104, 52, 'thumbnail_id', '0'),
(105, 53, 'order', '0'),
(106, 53, 'display_type', ''),
(107, 53, 'thumbnail_id', '0'),
(108, 15, 'product_count_product_cat', '8'),
(109, 18, 'product_count_product_cat', '8'),
(110, 24, 'product_count_product_cat', '8'),
(111, 22, 'product_count_product_cat', '8'),
(112, 19, 'wh_meta_title', 'abcd'),
(113, 19, 'wh_meta_desc', 'onsdasadsd'),
(114, 22, 'wh_meta_title', 'meta be an dam'),
(115, 22, 'wh_meta_desc', NULL),
(116, 25, 'wh_meta_title', ''),
(117, 25, 'wh_meta_desc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Bé uống sữa', 'be-uong-sua', 0),
(16, 'Tin tức', 'tin-tuc', 0),
(17, 'menu-top-header', 'menu-top-header', 0),
(18, 'Sữa bột các loại', 'sua-bot', 0),
(19, 'Bình sữa', 'binh-sua', 0),
(20, 'Núm ty', 'num-ty', 0),
(21, 'Vệ sinh bình sữa', 've-sinh-binh-sua', 0),
(22, 'Bé ăn dặm', 'be-an-dam', 0),
(23, 'Bột ăn dặm', 'bot-an-dam', 0),
(24, 'Bánh ăn dặm', 'banh-an-dam', 0),
(25, 'Mỳ - Cháo ăn dặm', 'my-chao-an-dam', 0),
(26, 'Bé tắm và vệ sinh', 'be-tam-va-ve-sinh', 0),
(27, 'Bỉm và tã giấy cho bé', 'bim-va-ta-giay-cho-be', 0),
(28, 'Khăn giấy ướt - Giấy khô', 'khan-giay-uot-giay-kho', 0),
(29, 'Kem hăm - Phấn rôm', 'kem-ham-phan-rom', 0),
(30, '25', '25', 0),
(31, 'Bé mặc', 'be-mac', 0),
(32, 'Đồ sơ sinh cho bé', 'do-so-sinh-cho-be', 0),
(33, 'Quần áo sơ sinh', 'quan-ao-so-sinh', 0),
(34, 'Thời trang bé gái', 'thoi-trang-be-gai', 0),
(35, 'Thời trang bé trai', 'thoi-trang-be-trai', 0),
(36, 'Giày - dép trẻ em', 'giay-dep-tre-em', 0),
(37, 'Balo cho bé', 'balo-cho-be', 0),
(38, 'Bé ngủ', 'be-ngu', 0),
(39, 'Chăn - Đệm - Ga - Gối', 'chan-dem-ga-goi', 0),
(40, 'Choàng bế', 'choang-be', 0),
(41, 'Giường - cũi và phụ kiện', 'giuong-cui-va-phu-kien', 0),
(42, 'Ghế rung cho bé', 'ghe-rung-cho-be', 0),
(43, 'Nôi cho bé', 'noi-cho-be', 0),
(44, 'Bé đi chơi và vận động', 'be-di-choi-va-van-dong', 0),
(45, 'Xe đẩy', 'xe-day', 0),
(46, 'Xe cho bé', 'xe-cho-be', 0),
(47, 'Địu - đai cho bé', 'diu-dai-cho-be', 0),
(48, 'Đồ chơi cho bé', 'do-choi-cho-be', 0),
(49, 'Bé chơi và học', 'be-choi-va-hoc', 0),
(50, 'Đồ chơi giáo dục', 'do-choi-giao-duc', 0),
(51, 'Đồ chơi gỗ', 'do-choi-go', 0),
(52, 'Sách - truyện - dụng cụ', 'sach-truyen-dung-cu', 0),
(53, 'Búp bê - thú bông', 'bup-be-thu-bong', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(20, 17, 0),
(21, 17, 0),
(22, 17, 0),
(27, 30, 0),
(29, 30, 0),
(31, 30, 0),
(33, 30, 0),
(35, 2, 0),
(35, 18, 0),
(41, 2, 0),
(41, 18, 0),
(42, 2, 0),
(42, 18, 0),
(44, 2, 0),
(44, 18, 0),
(46, 2, 0),
(46, 18, 0),
(48, 2, 0),
(48, 8, 0),
(48, 18, 0),
(50, 2, 0),
(50, 8, 0),
(50, 18, 0),
(52, 2, 0),
(52, 18, 0),
(54, 2, 0),
(54, 8, 0),
(54, 24, 0),
(56, 2, 0),
(56, 24, 0),
(58, 2, 0),
(58, 8, 0),
(58, 24, 0),
(60, 2, 0),
(60, 8, 0),
(60, 24, 0),
(62, 2, 0),
(62, 24, 0),
(64, 2, 0),
(64, 8, 0),
(64, 24, 0),
(67, 2, 0),
(67, 24, 0),
(69, 2, 0),
(69, 8, 0),
(69, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 16),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 7),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'category', '', 0, 0),
(17, 17, 'nav_menu', '', 0, 3),
(18, 18, 'product_cat', '', 15, 8),
(19, 19, 'product_cat', '', 15, 0),
(20, 20, 'product_cat', '', 15, 0),
(21, 21, 'product_cat', '', 15, 0),
(22, 22, 'product_cat', 'sadsadsadsadsd', 0, 0),
(23, 23, 'product_cat', '', 22, 0),
(24, 24, 'product_cat', '', 22, 8),
(25, 25, 'product_cat', 'mô tả mỳ cháo ăn dặm', 22, 0),
(26, 26, 'product_cat', '', 0, 0),
(27, 27, 'product_cat', '', 26, 0),
(28, 28, 'product_cat', '', 26, 0),
(29, 29, 'product_cat', '', 26, 0),
(30, 30, 'ml-slider', '', 0, 4),
(31, 31, 'product_cat', '', 0, 0),
(32, 32, 'product_cat', '', 31, 0),
(33, 33, 'product_cat', '', 31, 0),
(34, 34, 'product_cat', '', 31, 0),
(35, 35, 'product_cat', '', 31, 0),
(36, 36, 'product_cat', '', 31, 0),
(37, 37, 'product_cat', '', 31, 0),
(38, 38, 'product_cat', '', 0, 0),
(39, 39, 'product_cat', '', 38, 0),
(40, 40, 'product_cat', '', 38, 0),
(41, 41, 'product_cat', '', 38, 0),
(42, 42, 'product_cat', '', 38, 0),
(43, 43, 'product_cat', '', 38, 0),
(44, 44, 'product_cat', '', 0, 0),
(45, 45, 'product_cat', '', 44, 0),
(46, 46, 'product_cat', '', 44, 0),
(47, 47, 'product_cat', '', 44, 0),
(48, 48, 'product_cat', '', 44, 0),
(49, 49, 'product_cat', '', 0, 0),
(50, 50, 'product_cat', '', 49, 0),
(51, 51, 'product_cat', '', 49, 0),
(52, 52, 'product_cat', '', 49, 0),
(53, 53, 'product_cat', '', 49, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'kidplaza'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:"63df220938405f9409376b02181b8156a455423a0b63c23ab49f6edd5c660af3";a:4:{s:10:"expiration";i:1577413107;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36";s:5:"login";i:1577240307;}s:64:"f15ac73647a741416ffe082faf9b5a98a7a684dc689b29fb6ab524491976488a";a:4:{s:10:"expiration";i:1577519438;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36";s:5:"login";i:1577346638;}s:64:"5cee541efeeb0540feab4e5c17586c67f073ceb5ed67705151efdc08cceb4953";a:4:{s:10:"expiration";i:1577520335;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36";s:5:"login";i:1577347535;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:y9t+PJqKl5+eZt7CTAjeew4i'),
(21, 1, 'wc_last_active', '1577318400'),
(22, 1, 'wp_user-settings', 'siteorigin_panels_setting_tab=welcome&libraryContent=browse'),
(23, 1, 'wp_user-settings-time', '1577240831'),
(24, 1, 'wp_metaslider_user_saw_callout_unsplash', '1'),
(27, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:15:"add-product_cat";i:4;s:15:"add-product_tag";}'),
(29, 1, 'dismissed_template_files_notice', '1'),
(30, 1, 'dismissed_no_secure_connection_notice', '1'),
(33, 1, 'dismissed_install_notice', '1'),
(37, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(38, 1, 'wp_metaslider_user_saw_callout_toolbar', '1'),
(39, 1, 'edit_product_cat_per_page', '50');

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
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'bibotenten', '$P$BkYcR4Ufu9zrYJbktA5RFHVd.QuxU6/', 'kidplaza', 'truonggiang120795@gmail.com', '', '2019-12-23 04:57:45', '', 0, 'kidplaza');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(35, 'S01', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(41, 'S02', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(42, 'S03', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(44, 'S04', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(46, 'S05', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(48, 'S06', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(50, 'S07', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(52, 'S08', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(54, 'BAD1', 0, 0, '530000.00', '530000.00', 1, NULL, 'instock', 0, '0.00', 0),
(56, 'BAD2', 0, 0, '530000.00', '530000.00', 1, NULL, 'instock', 0, '0.00', 0),
(58, 'BAD3', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(60, 'BAD4', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(62, 'BAD5', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(64, 'BAD6', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(67, 'BAD7', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0),
(69, 'BAD8', 0, 0, '540000.00', '540000.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:3302:"a:8:{s:32:"1c383cd30b7c298ab50293adfecb7b18";a:11:{s:3:"key";s:32:"1c383cd30b7c298ab50293adfecb7b18";s:10:"product_id";i:35;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:540000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:540000;s:8:"line_tax";i:0;}s:32:"f7177163c833dff4b38fc8d2872f1ec6";a:11:{s:3:"key";s:32:"f7177163c833dff4b38fc8d2872f1ec6";s:10:"product_id";i:44;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:540000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:540000;s:8:"line_tax";i:0;}s:32:"a1d0c6e83f027327d8461063f4ac58a6";a:11:{s:3:"key";s:32:"a1d0c6e83f027327d8461063f4ac58a6";s:10:"product_id";i:42;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:540000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:540000;s:8:"line_tax";i:0;}s:32:"3416a75f4cea9109507cacd8e2f2aefc";a:11:{s:3:"key";s:32:"3416a75f4cea9109507cacd8e2f2aefc";s:10:"product_id";i:41;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:540000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:540000;s:8:"line_tax";i:0;}s:32:"66f041e16a60928b05a7e228a89c3799";a:11:{s:3:"key";s:32:"66f041e16a60928b05a7e228a89c3799";s:10:"product_id";i:58;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:540000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:540000;s:8:"line_tax";i:0;}s:32:"14bfa6bb14875e45bba028a21ed38046";a:11:{s:3:"key";s:32:"14bfa6bb14875e45bba028a21ed38046";s:10:"product_id";i:69;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:540000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:540000;s:8:"line_tax";i:0;}s:32:"735b90b4568125ed6c3f678819b6e058";a:11:{s:3:"key";s:32:"735b90b4568125ed6c3f678819b6e058";s:10:"product_id";i:67;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:540000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:540000;s:8:"line_tax";i:0;}s:32:"ea5d2f1c4608232e07d3aa3d998e5135";a:11:{s:3:"key";s:32:"ea5d2f1c4608232e07d3aa3d998e5135";s:10:"product_id";i:64;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:0:{}s:5:"total";a:0:{}}s:13:"line_subtotal";d:540000;s:17:"line_subtotal_tax";i:0;s:10:"line_total";d:540000;s:8:"line_tax";i:0;}}";s:8:"customer";s:715:"a:26:{s:2:"id";s:1:"1";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VN";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VN";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:27:"truonggiang120795@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1577420702);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

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
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1185;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
