-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table patchwork_laravel.bc_attrs
CREATE TABLE IF NOT EXISTS `bc_attrs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `hide_in_single` tinyint(4) DEFAULT NULL,
  `hide_in_filter_search` tinyint(4) DEFAULT NULL,
  `position` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_attrs: ~0 rows (approximately)
DELETE FROM `bc_attrs`;
/*!40000 ALTER TABLE `bc_attrs` DISABLE KEYS */;
INSERT INTO `bc_attrs` (`id`, `name`, `slug`, `service`, `create_user`, `update_user`, `created_at`, `updated_at`, `deleted_at`, `hide_in_single`, `hide_in_filter_search`, `position`) VALUES
	(1, 'Company size', 'company-size', 'company', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `bc_attrs` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_attrs_translations
CREATE TABLE IF NOT EXISTS `bc_attrs_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bc_attrs_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_attrs_translations: ~0 rows (approximately)
DELETE FROM `bc_attrs_translations`;
/*!40000 ALTER TABLE `bc_attrs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_attrs_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_bookings
CREATE TABLE IF NOT EXISTS `bc_bookings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `deposit_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL,
  `commission_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notes` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `object_child_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `pay_now` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_bookings: ~0 rows (approximately)
DELETE FROM `bc_bookings`;
/*!40000 ALTER TABLE `bc_bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_bookings` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_booking_meta
CREATE TABLE IF NOT EXISTS `bc_booking_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_booking_meta: ~0 rows (approximately)
DELETE FROM `bc_booking_meta`;
/*!40000 ALTER TABLE `bc_booking_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_booking_meta` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_booking_payments
CREATE TABLE IF NOT EXISTS `bc_booking_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) DEFAULT NULL,
  `payment_gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_amount` decimal(10,2) DEFAULT NULL,
  `converted_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,2) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_booking_payments: ~0 rows (approximately)
DELETE FROM `bc_booking_payments`;
/*!40000 ALTER TABLE `bc_booking_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_booking_payments` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_candidates
CREATE TABLE IF NOT EXISTS `bc_candidates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_search` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` text COLLATE utf8mb4_unicode_ci,
  `experience` text COLLATE utf8mb4_unicode_ci,
  `award` text COLLATE utf8mb4_unicode_ci,
  `social_media` text COLLATE utf8mb4_unicode_ci,
  `languages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience_year` int(11) DEFAULT NULL,
  `expected_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `map_lat` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_cover_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bc_candidates_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_candidates: ~0 rows (approximately)
DELETE FROM `bc_candidates`;
/*!40000 ALTER TABLE `bc_candidates` DISABLE KEYS */;
INSERT INTO `bc_candidates` (`id`, `title`, `website`, `gender`, `gallery`, `video`, `allow_search`, `education`, `experience`, `award`, `social_media`, `languages`, `education_level`, `experience_year`, `expected_salary`, `salary_type`, `location_id`, `map_lat`, `map_lng`, `map_zoom`, `city`, `country`, `address`, `create_user`, `update_user`, `slug`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `video_cover_id`) VALUES
	(2, 'UI Designer at Invision', NULL, 'female', '66,67,68,69,70,71', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 'publish', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"MBA from Harvard Business School","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Bachlors in Fine Arts","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Google","position":"Web Designer","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Facebook","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"Perfect Attendance Programs","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Top Performer Recognition","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '{"skype":"superio.test","facebook":"https:\\/\\/superio.test\\/","twitter":"https:\\/\\/superio.test\\/","instagram":"https:\\/\\/superio.test\\/","pinterest":"https:\\/\\/superio.test\\/","dribbble":"https:\\/\\/superio.test\\/","google":"https:\\/\\/superio.test\\/","linkedin":"https:\\/\\/superio.test\\/"}', 'English, German, Spanish', 'certificate', 4, '423', 'monthly', 5, '30.918411906603435', '-114.72952493625287', 16, 'New York', 'US', NULL, 2, NULL, 'ui-designer-at-invision-1', NULL, NULL, NULL, '2022-02-09 10:54:08', NULL, NULL),
	(4, 'UI Designer at Invision', NULL, 'female', '66,67,68,69,70,71', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 'publish', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"MBA from Harvard Business School","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Bachlors in Fine Arts","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Google","position":"Web Designer","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Facebook","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"Perfect Attendance Programs","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Top Performer Recognition","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '{"skype":"superio.test","facebook":"https:\\/\\/superio.test\\/","twitter":"https:\\/\\/superio.test\\/","instagram":"https:\\/\\/superio.test\\/","pinterest":"https:\\/\\/superio.test\\/","dribbble":"https:\\/\\/superio.test\\/","google":"https:\\/\\/superio.test\\/","linkedin":"https:\\/\\/superio.test\\/"}', 'English, German, Spanish', 'master', 0, '775', 'weekly', 4, '30.918411906603435', '-114.72952493625287', 16, 'New York', 'US', NULL, 4, NULL, 'ui-designer-at-invision-2', NULL, NULL, NULL, '2022-02-09 10:54:08', NULL, NULL),
	(5, 'UI Designer at Invision', NULL, 'female', '66,67,68,69,70,71', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 'publish', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"MBA from Harvard Business School","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Bachlors in Fine Arts","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Google","position":"Web Designer","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Facebook","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"Perfect Attendance Programs","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Top Performer Recognition","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '{"skype":"superio.test","facebook":"https:\\/\\/superio.test\\/","twitter":"https:\\/\\/superio.test\\/","instagram":"https:\\/\\/superio.test\\/","pinterest":"https:\\/\\/superio.test\\/","dribbble":"https:\\/\\/superio.test\\/","google":"https:\\/\\/superio.test\\/","linkedin":"https:\\/\\/superio.test\\/"}', 'English, German, Spanish', 'associate', 3, '275', 'weekly', 5, '30.918411906603435', '-114.72952493625287', 16, 'New York', 'US', NULL, 5, NULL, 'ui-designer-at-invision-3', NULL, NULL, NULL, '2022-02-09 10:54:09', NULL, NULL),
	(6, 'UI Designer at Invision', NULL, 'male', '66,67,68,69,70,71', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 'publish', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"MBA from Harvard Business School","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Bachlors in Fine Arts","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Google","position":"Web Designer","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Facebook","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"Perfect Attendance Programs","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Top Performer Recognition","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '{"skype":"superio.test","facebook":"https:\\/\\/superio.test\\/","twitter":"https:\\/\\/superio.test\\/","instagram":"https:\\/\\/superio.test\\/","pinterest":"https:\\/\\/superio.test\\/","dribbble":"https:\\/\\/superio.test\\/","google":"https:\\/\\/superio.test\\/","linkedin":"https:\\/\\/superio.test\\/"}', 'English, German, Spanish', 'bachelor', 3, '381', 'monthly', 5, '30.918411906603435', '-114.72952493625287', 16, 'New York', 'US', NULL, 6, NULL, 'ui-designer-at-invision-4', NULL, NULL, NULL, '2022-02-09 10:54:09', NULL, NULL),
	(7, 'UI Designer at Invision', NULL, 'female', '66,67,68,69,70,71', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 'publish', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"MBA from Harvard Business School","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Bachlors in Fine Arts","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Google","position":"Web Designer","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Facebook","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"Perfect Attendance Programs","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Top Performer Recognition","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '{"skype":"superio.test","facebook":"https:\\/\\/superio.test\\/","twitter":"https:\\/\\/superio.test\\/","instagram":"https:\\/\\/superio.test\\/","pinterest":"https:\\/\\/superio.test\\/","dribbble":"https:\\/\\/superio.test\\/","google":"https:\\/\\/superio.test\\/","linkedin":"https:\\/\\/superio.test\\/"}', 'English, German, Spanish', 'diploma', 1, '261', 'daily', 1, '30.918411906603435', '-114.72952493625287', 16, 'New York', 'US', NULL, 7, NULL, 'ui-designer-at-invision-5', NULL, NULL, NULL, '2022-02-09 10:54:09', NULL, NULL),
	(8, 'UI Designer at Invision', NULL, 'male', '66,67,68,69,70,71', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 'publish', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"MBA from Harvard Business School","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Bachlors in Fine Arts","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Google","position":"Web Designer","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Facebook","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"Perfect Attendance Programs","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Top Performer Recognition","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '{"skype":"superio.test","facebook":"https:\\/\\/superio.test\\/","twitter":"https:\\/\\/superio.test\\/","instagram":"https:\\/\\/superio.test\\/","pinterest":"https:\\/\\/superio.test\\/","dribbble":"https:\\/\\/superio.test\\/","google":"https:\\/\\/superio.test\\/","linkedin":"https:\\/\\/superio.test\\/"}', 'English, German, Spanish', 'associate', 2, '405', 'weekly', 5, '30.918411906603435', '-114.72952493625287', 16, 'New York', 'US', NULL, 8, NULL, 'ui-designer-at-invision-6', NULL, NULL, NULL, '2022-02-09 10:54:09', NULL, NULL),
	(9, 'UI Designer at Invision', NULL, 'male', '66,67,68,69,70,71', 'https://www.youtube.com/watch?v=bhOiLfkChPo', 'publish', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"MBA from Harvard Business School","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Bachlors in Fine Arts","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Google","position":"Web Designer","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Facebook","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","position":"CEO Founder","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '[{"from":"2015","to":"2019","location":"Harvard University","reward":"Perfect Attendance Programs","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."},{"from":"2011","to":"2015","location":"Tomms College","reward":"Top Performer Recognition","information": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin a ipsum tellus.<br/> Interdum et malesuada fames ac anteipsum primis in faucibus."}]', '{"skype":"superio.test","facebook":"https:\\/\\/superio.test\\/","twitter":"https:\\/\\/superio.test\\/","instagram":"https:\\/\\/superio.test\\/","pinterest":"https:\\/\\/superio.test\\/","dribbble":"https:\\/\\/superio.test\\/","google":"https:\\/\\/superio.test\\/","linkedin":"https:\\/\\/superio.test\\/"}', 'English, German, Spanish', 'certificate', 3, '478', 'monthly', 2, '30.918411906603435', '-114.72952493625287', 16, 'New York', 'US', NULL, 9, NULL, 'ui-designer-at-invision-7', NULL, NULL, NULL, '2022-02-09 10:54:09', NULL, NULL);
/*!40000 ALTER TABLE `bc_candidates` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_candidate_categories
CREATE TABLE IF NOT EXISTS `bc_candidate_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) unsigned NOT NULL,
  `cat_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_candidate_categories: ~0 rows (approximately)
DELETE FROM `bc_candidate_categories`;
/*!40000 ALTER TABLE `bc_candidate_categories` DISABLE KEYS */;
INSERT INTO `bc_candidate_categories` (`id`, `origin_id`, `cat_id`, `created_at`, `updated_at`) VALUES
	(1, 2, 4, '2022-02-09 10:54:08', NULL),
	(2, 2, 8, '2022-02-09 10:54:08', NULL),
	(3, 4, 5, '2022-02-09 10:54:09', NULL),
	(4, 4, 8, '2022-02-09 10:54:09', NULL),
	(5, 5, 4, '2022-02-09 10:54:09', NULL),
	(6, 5, 9, '2022-02-09 10:54:09', NULL),
	(7, 6, 4, '2022-02-09 10:54:09', NULL),
	(8, 6, 8, '2022-02-09 10:54:09', NULL),
	(9, 7, 5, '2022-02-09 10:54:09', NULL),
	(10, 7, 8, '2022-02-09 10:54:09', NULL),
	(11, 8, 5, '2022-02-09 10:54:09', NULL),
	(12, 8, 7, '2022-02-09 10:54:09', NULL),
	(13, 9, 3, '2022-02-09 10:54:10', NULL),
	(14, 9, 9, '2022-02-09 10:54:10', NULL);
/*!40000 ALTER TABLE `bc_candidate_categories` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_candidate_contact
CREATE TABLE IF NOT EXISTS `bc_candidate_contact` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_to` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_candidate_contact: ~0 rows (approximately)
DELETE FROM `bc_candidate_contact`;
/*!40000 ALTER TABLE `bc_candidate_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_candidate_contact` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_candidate_cvs
CREATE TABLE IF NOT EXISTS `bc_candidate_cvs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT NULL,
  `origin_id` int(10) unsigned NOT NULL,
  `is_default` tinyint(4) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_candidate_cvs: ~0 rows (approximately)
DELETE FROM `bc_candidate_cvs`;
/*!40000 ALTER TABLE `bc_candidate_cvs` DISABLE KEYS */;
INSERT INTO `bc_candidate_cvs` (`id`, `file_id`, `origin_id`, `is_default`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
	(1, 72, 2, 1, 2, NULL, '2022-02-09 10:54:08', NULL),
	(2, 73, 4, 1, 4, NULL, '2022-02-09 10:54:09', NULL),
	(3, 74, 5, 1, 5, NULL, '2022-02-09 10:54:09', NULL),
	(4, 75, 6, 1, 6, NULL, '2022-02-09 10:54:09', NULL),
	(5, 76, 7, 1, 7, NULL, '2022-02-09 10:54:09', NULL),
	(6, 77, 8, 1, 8, NULL, '2022-02-09 10:54:09', NULL),
	(7, 78, 9, 1, 9, NULL, '2022-02-09 10:54:10', NULL);
/*!40000 ALTER TABLE `bc_candidate_cvs` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_candidate_skills
CREATE TABLE IF NOT EXISTS `bc_candidate_skills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) unsigned NOT NULL,
  `skill_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_candidate_skills: ~0 rows (approximately)
DELETE FROM `bc_candidate_skills`;
/*!40000 ALTER TABLE `bc_candidate_skills` DISABLE KEYS */;
INSERT INTO `bc_candidate_skills` (`id`, `origin_id`, `skill_id`, `created_at`, `updated_at`) VALUES
	(1, 2, 2, '2022-02-09 10:54:08', NULL),
	(2, 2, 4, '2022-02-09 10:54:08', NULL),
	(3, 2, 5, '2022-02-09 10:54:08', NULL),
	(4, 2, 7, '2022-02-09 10:54:08', NULL),
	(5, 4, 1, '2022-02-09 10:54:09', NULL),
	(6, 4, 4, '2022-02-09 10:54:09', NULL),
	(7, 4, 6, '2022-02-09 10:54:09', NULL),
	(8, 4, 8, '2022-02-09 10:54:09', NULL),
	(9, 5, 2, '2022-02-09 10:54:09', NULL),
	(10, 5, 4, '2022-02-09 10:54:09', NULL),
	(11, 5, 5, '2022-02-09 10:54:09', NULL),
	(12, 5, 8, '2022-02-09 10:54:09', NULL),
	(13, 6, 1, '2022-02-09 10:54:09', NULL),
	(14, 6, 4, '2022-02-09 10:54:09', NULL),
	(15, 6, 6, '2022-02-09 10:54:09', NULL),
	(16, 6, 7, '2022-02-09 10:54:09', NULL),
	(17, 7, 2, '2022-02-09 10:54:09', NULL),
	(18, 7, 3, '2022-02-09 10:54:09', NULL),
	(19, 7, 6, '2022-02-09 10:54:09', NULL),
	(20, 7, 7, '2022-02-09 10:54:09', NULL),
	(21, 8, 1, '2022-02-09 10:54:09', NULL),
	(22, 8, 3, '2022-02-09 10:54:09', NULL),
	(23, 8, 6, '2022-02-09 10:54:09', NULL),
	(24, 8, 7, '2022-02-09 10:54:09', NULL),
	(25, 9, 2, '2022-02-09 10:54:10', NULL),
	(26, 9, 3, '2022-02-09 10:54:10', NULL),
	(27, 9, 6, '2022-02-09 10:54:10', NULL),
	(28, 9, 8, '2022-02-09 10:54:10', NULL);
/*!40000 ALTER TABLE `bc_candidate_skills` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_candidate_translation
CREATE TABLE IF NOT EXISTS `bc_candidate_translation` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bc_candidate_translation_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_candidate_translation: ~0 rows (approximately)
DELETE FROM `bc_candidate_translation`;
/*!40000 ALTER TABLE `bc_candidate_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_candidate_translation` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_categories
CREATE TABLE IF NOT EXISTS `bc_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) unsigned NOT NULL DEFAULT '0',
  `_rgt` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bc_categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_categories: ~0 rows (approximately)
DELETE FROM `bc_categories`;
/*!40000 ALTER TABLE `bc_categories` DISABLE KEYS */;
INSERT INTO `bc_categories` (`id`, `name`, `content`, `slug`, `status`, `origin_id`, `icon`, `lang`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Accounting / Finance', NULL, 'accounting-finance', 'publish', NULL, 'icon flaticon-money-1', NULL, 1, 2, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', '2022-02-09 10:54:08'),
	(2, 'Marketing', NULL, 'marketing', 'publish', NULL, 'icon flaticon-promotion', NULL, 3, 4, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', '2022-02-09 10:54:08'),
	(3, 'Design', NULL, 'design', 'publish', NULL, 'icon flaticon-vector', NULL, 5, 6, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', '2022-02-09 10:54:08'),
	(4, 'Development', NULL, 'development', 'publish', NULL, 'icon flaticon-web-programming', NULL, 7, 8, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', '2022-02-09 10:54:08'),
	(5, 'Human Resource', NULL, 'human-resource', 'publish', NULL, 'icon flaticon-headhunting', NULL, 9, 10, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', '2022-02-09 10:54:08'),
	(6, 'Project Management', NULL, 'project-management', 'publish', NULL, 'icon flaticon-rocket-ship', NULL, 11, 12, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', '2022-02-09 10:54:08'),
	(7, 'Customer Service', NULL, 'customer-service', 'publish', NULL, 'icon flaticon-support-1', NULL, 13, 14, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', '2022-02-09 10:54:08'),
	(8, 'Health and Care', NULL, 'health-and-care', 'publish', NULL, 'icon flaticon-first-aid-kit-1', NULL, 15, 16, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', '2022-02-09 10:54:08'),
	(9, 'Automotive Jobs', NULL, 'automotive-jobs', 'publish', NULL, 'icon flaticon-car', NULL, 17, 18, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', '2022-02-09 10:54:08');
/*!40000 ALTER TABLE `bc_categories` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_category_translations
CREATE TABLE IF NOT EXISTS `bc_category_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bc_category_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_category_translations: ~0 rows (approximately)
DELETE FROM `bc_category_translations`;
/*!40000 ALTER TABLE `bc_category_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_category_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_companies
CREATE TABLE IF NOT EXISTS `bc_companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint(20) DEFAULT NULL,
  `cover_id` bigint(20) DEFAULT NULL,
  `founded_in` date DEFAULT NULL,
  `allow_search` tinyint(4) DEFAULT '0',
  `is_featured` tinyint(4) DEFAULT '0',
  `owner_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `team_size` int(11) NOT NULL DEFAULT '0',
  `about` text COLLATE utf8mb4_unicode_ci,
  `social_media` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `map_lat` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bc_companies_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_companies: ~0 rows (approximately)
DELETE FROM `bc_companies`;
/*!40000 ALTER TABLE `bc_companies` DISABLE KEYS */;
INSERT INTO `bc_companies` (`id`, `name`, `email`, `phone`, `website`, `avatar_id`, `cover_id`, `founded_in`, `allow_search`, `is_featured`, `owner_id`, `location_id`, `category_id`, `team_size`, `about`, `social_media`, `city`, `state`, `country`, `zip_code`, `address`, `slug`, `status`, `create_user`, `update_user`, `map_lat`, `map_lng`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Netflix', 'employer@superio.test', '112 666 888', 'https://netflix.com', 82, 2, '2022-02-09', 1, 0, 3, 1, 4, 1, '<h4>Hello! This is my story.</h4>\n                        <p>Hello! I am a Seattle/Tacoma, Washington area graphic designer with over 6 years of graphic design experience. I specialize in designing infographics, icons, brochures, and flyers.</p>\n                        <ul class="instructor_estimate">\n                            <li>Included in my estimate:</li>\n                            <li>Custom illustrations</li>\n                            <li>Stock images</li>\n                            <li>Any final files you need</li>\n                        </ul>\n                        <p>If you have a specific budget or deadline, let me know and I will work with you!</p>', '{"skype":"bookingcore.org","facebook":"https:\\/\\/bookingcore.org\\/","twitter":"https:\\/\\/bookingcore.org\\/","instagram":"https:\\/\\/bookingcore.org\\/","pinterest":"https:\\/\\/bookingcore.org\\/","dribbble":"https:\\/\\/bookingcore.org\\/","google":"https:\\/\\/bookingcore.org\\/"}', 'London', NULL, 'UK', NULL, 'Washington', 'netflix', 'publish', NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:15', NULL),
	(2, 'Opendoor', 'williamson@superio.test', '112 666 888', 'https://opendoor.com', 83, 2, '2022-02-09', 1, 0, 10, 1, 4, 1, '<h4>Hello! This is my story.</h4>\n                        <p>Hello! I am a Seattle/Tacoma, Washington area graphic designer with over 6 years of graphic design experience. I specialize in designing infographics, icons, brochures, and flyers.</p>\n                        <ul class="instructor_estimate">\n                            <li>Included in my estimate:</li>\n                            <li>Custom illustrations</li>\n                            <li>Stock images</li>\n                            <li>Any final files you need</li>\n                        </ul>\n                        <p>If you have a specific budget or deadline, let me know and I will work with you!</p>', '{"skype":"bookingcore.org","facebook":"https:\\/\\/bookingcore.org\\/","twitter":"https:\\/\\/bookingcore.org\\/","instagram":"https:\\/\\/bookingcore.org\\/","pinterest":"https:\\/\\/bookingcore.org\\/","dribbble":"https:\\/\\/bookingcore.org\\/","google":"https:\\/\\/bookingcore.org\\/"}', 'London', NULL, 'UK', NULL, 'Washington', 'opendoor', 'publish', NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:15', NULL),
	(3, 'Checkr', 'fox@superio.test', '112 666 888', 'https://checkr.com', 84, 2, '2022-02-09', 1, 1, 11, 1, 5, 1, '<h4>Hello! This is my story.</h4>\n                        <p>Hello! I am a Seattle/Tacoma, Washington area graphic designer with over 6 years of graphic design experience. I specialize in designing infographics, icons, brochures, and flyers.</p>\n                        <ul class="instructor_estimate">\n                            <li>Included in my estimate:</li>\n                            <li>Custom illustrations</li>\n                            <li>Stock images</li>\n                            <li>Any final files you need</li>\n                        </ul>\n                        <p>If you have a specific budget or deadline, let me know and I will work with you!</p>', '{"skype":"bookingcore.org","facebook":"https:\\/\\/bookingcore.org\\/","twitter":"https:\\/\\/bookingcore.org\\/","instagram":"https:\\/\\/bookingcore.org\\/","pinterest":"https:\\/\\/bookingcore.org\\/","dribbble":"https:\\/\\/bookingcore.org\\/","google":"https:\\/\\/bookingcore.org\\/"}', 'London', NULL, 'UK', NULL, 'Washington', 'checkr', 'publish', NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:15', NULL),
	(4, 'Mural', 'hiddleston@superio.test', '112 666 888', 'https://mural.com', 85, 2, '2022-02-09', 1, 0, 12, 1, 3, 1, '<h4>Hello! This is my story.</h4>\n                        <p>Hello! I am a Seattle/Tacoma, Washington area graphic designer with over 6 years of graphic design experience. I specialize in designing infographics, icons, brochures, and flyers.</p>\n                        <ul class="instructor_estimate">\n                            <li>Included in my estimate:</li>\n                            <li>Custom illustrations</li>\n                            <li>Stock images</li>\n                            <li>Any final files you need</li>\n                        </ul>\n                        <p>If you have a specific budget or deadline, let me know and I will work with you!</p>', '{"skype":"bookingcore.org","facebook":"https:\\/\\/bookingcore.org\\/","twitter":"https:\\/\\/bookingcore.org\\/","instagram":"https:\\/\\/bookingcore.org\\/","pinterest":"https:\\/\\/bookingcore.org\\/","dribbble":"https:\\/\\/bookingcore.org\\/","google":"https:\\/\\/bookingcore.org\\/"}', 'London', NULL, 'UK', NULL, 'Washington', 'mural', 'publish', NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:15', NULL),
	(5, 'Astronomer', 'linda@superio.test', '112 666 888', 'https://astronomer.com', 86, 2, '2022-02-09', 1, 0, 13, 1, 6, 1, '<h4>Hello! This is my story.</h4>\n                        <p>Hello! I am a Seattle/Tacoma, Washington area graphic designer with over 6 years of graphic design experience. I specialize in designing infographics, icons, brochures, and flyers.</p>\n                        <ul class="instructor_estimate">\n                            <li>Included in my estimate:</li>\n                            <li>Custom illustrations</li>\n                            <li>Stock images</li>\n                            <li>Any final files you need</li>\n                        </ul>\n                        <p>If you have a specific budget or deadline, let me know and I will work with you!</p>', '{"skype":"bookingcore.org","facebook":"https:\\/\\/bookingcore.org\\/","twitter":"https:\\/\\/bookingcore.org\\/","instagram":"https:\\/\\/bookingcore.org\\/","pinterest":"https:\\/\\/bookingcore.org\\/","dribbble":"https:\\/\\/bookingcore.org\\/","google":"https:\\/\\/bookingcore.org\\/"}', 'London', NULL, 'UK', NULL, 'Washington', 'astronomer', 'publish', NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:15', NULL),
	(6, 'Figma', 'john@superio.test', '112 666 888', 'https://figma.com', 87, 2, '2022-02-09', 1, 1, 14, 1, 7, 1, '<h4>Hello! This is my story.</h4>\n                        <p>Hello! I am a Seattle/Tacoma, Washington area graphic designer with over 6 years of graphic design experience. I specialize in designing infographics, icons, brochures, and flyers.</p>\n                        <ul class="instructor_estimate">\n                            <li>Included in my estimate:</li>\n                            <li>Custom illustrations</li>\n                            <li>Stock images</li>\n                            <li>Any final files you need</li>\n                        </ul>\n                        <p>If you have a specific budget or deadline, let me know and I will work with you!</p>', '{"skype":"bookingcore.org","facebook":"https:\\/\\/bookingcore.org\\/","twitter":"https:\\/\\/bookingcore.org\\/","instagram":"https:\\/\\/bookingcore.org\\/","pinterest":"https:\\/\\/bookingcore.org\\/","dribbble":"https:\\/\\/bookingcore.org\\/","google":"https:\\/\\/bookingcore.org\\/"}', 'London', NULL, 'UK', NULL, 'Washington', 'figma', 'publish', NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:15', NULL),
	(7, 'Stripe', 'rebecca@superio.test', '112 666 888', 'https://stripe.com', 88, 2, '2022-02-09', 1, 0, 15, 1, 5, 1, '<h4>Hello! This is my story.</h4>\n                        <p>Hello! I am a Seattle/Tacoma, Washington area graphic designer with over 6 years of graphic design experience. I specialize in designing infographics, icons, brochures, and flyers.</p>\n                        <ul class="instructor_estimate">\n                            <li>Included in my estimate:</li>\n                            <li>Custom illustrations</li>\n                            <li>Stock images</li>\n                            <li>Any final files you need</li>\n                        </ul>\n                        <p>If you have a specific budget or deadline, let me know and I will work with you!</p>', '{"skype":"bookingcore.org","facebook":"https:\\/\\/bookingcore.org\\/","twitter":"https:\\/\\/bookingcore.org\\/","instagram":"https:\\/\\/bookingcore.org\\/","pinterest":"https:\\/\\/bookingcore.org\\/","dribbble":"https:\\/\\/bookingcore.org\\/","google":"https:\\/\\/bookingcore.org\\/"}', 'London', NULL, 'UK', NULL, 'Washington', 'stripe', 'publish', NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:15', NULL);
/*!40000 ALTER TABLE `bc_companies` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_company_translations
CREATE TABLE IF NOT EXISTS `bc_company_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bc_company_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_company_translations: ~0 rows (approximately)
DELETE FROM `bc_company_translations`;
/*!40000 ALTER TABLE `bc_company_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_company_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_contact
CREATE TABLE IF NOT EXISTS `bc_contact` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_contact: ~0 rows (approximately)
DELETE FROM `bc_contact`;
/*!40000 ALTER TABLE `bc_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_contact` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_gigs
CREATE TABLE IF NOT EXISTS `bc_gigs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` bigint(20) DEFAULT NULL,
  `cat2_id` bigint(20) DEFAULT NULL,
  `cat3_id` bigint(20) DEFAULT NULL,
  `basic_price` decimal(12,2) DEFAULT NULL,
  `standard_price` decimal(12,2) DEFAULT NULL,
  `premium_price` decimal(12,2) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci,
  `review_score` decimal(2,1) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packages` text COLLATE utf8mb4_unicode_ci,
  `package_compare` text COLLATE utf8mb4_unicode_ci,
  `faqs` text COLLATE utf8mb4_unicode_ci,
  `requirements` text COLLATE utf8mb4_unicode_ci,
  `basic_delivery_time` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bc_gigs_slug_unique` (`slug`),
  KEY `bc_gigs_status_cat2_id_index` (`status`,`cat2_id`),
  KEY `bc_gigs_status_cat3_id_index` (`status`,`cat3_id`),
  KEY `bc_gigs_status_author_id_index` (`status`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_gigs: ~0 rows (approximately)
DELETE FROM `bc_gigs`;
/*!40000 ALTER TABLE `bc_gigs` DISABLE KEYS */;
INSERT INTO `bc_gigs` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `is_featured`, `gallery`, `video_url`, `cat_id`, `cat2_id`, `cat3_id`, `basic_price`, `standard_price`, `premium_price`, `extra_price`, `review_score`, `status`, `packages`, `package_compare`, `faqs`, `requirements`, `basic_delivery_time`, `create_user`, `update_user`, `author_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'I will Quod corrupti veritatis', 'i-will-quod-corrupti-veritatis', 'Quidem sapiente quia eveniet tenetur ea laudantium consequatur. Ut qui in facilis inventore iusto autem velit doloremque. Veniam aut iste rem numquam.\n\nQuasi mollitia velit assumenda quam qui sit. Sit aspernatur id error natus. Temporibus aperiam ea dicta veniam hic et inventore. Iure natus inventore iure voluptatem reprehenderit aut.\n\nSed facere omnis incidunt vel deserunt expedita libero. Perspiciatis aut voluptatem rerum dolorem aliquam est aut. Voluptatem ut et delectus. Dolor id molestiae omnis deleniti tempora officia sed.\n\nEt sit iste ea nisi velit. Autem temporibus maiores est. Debitis est quibusdam accusamus culpa ex vel. Odio voluptas quo laborum quasi dignissimos.\n\nReprehenderit omnis error id veniam quidem quia tempora. Quam eius quis illum minus sunt animi. Adipisci doloremque labore impedit aut totam voluptas.\n\nLabore quia voluptatum et exercitationem reprehenderit voluptates non. Voluptates ullam quis qui ut. Rem sunt incidunt doloribus debitis ipsum voluptas.\n\nTenetur reprehenderit doloribus illum sint laboriosam vero aut et. Soluta ut non qui veritatis odit earum tenetur. Aut et doloremque praesentium harum qui sunt. Consequuntur omnis iste ut quia velit quo.\n\nDistinctio aliquam et minima iure neque rem rerum sequi. Saepe id dolorum totam quia. Iusto eum saepe ea tempora. Corrupti quibusdam expedita rem debitis in. Ad cum non sed id velit.\n\nEst quia ipsa numquam natus rerum omnis eum. Et beatae deleniti occaecati sint in. Corrupti cum laborum odit culpa sunt nisi. Molestias esse fuga architecto dolore exercitationem.\n\nAut optio sit quidem eligendi saepe aut. Eaque temporibus officia illo eveniet inventore accusantium. Voluptas quisquam eos magnam at ut iusto. Voluptatem sapiente occaecati eum sed quae. Exercitationem magnam et sit modi neque.', 136, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 1, 2, 3, 8.00, 44.00, 124.00, NULL, 4.7, 'publish', '[{"name":"Basic","key":"basic","desc":"Deserunt eaque labore quis voluptatem impedit.","delivery_time":1,"revision":3},{"name":"Standard","key":"standard","desc":"Ea quia fugiat neque animi aut porro saepe quasi.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Mollitia repellat aut mollitia ab dolor.","delivery_time":6,"revision":3}]', '[{"name":"Eum in sunt.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Et voluptate.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Quam aut et.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:21'),
	(2, 'I will Ipsam ipsam iste quisquam quae voluptatem.', 'i-will-ipsam-ipsam-iste-quisquam-quae-voluptatem', 'Quia ipsa voluptates architecto aliquid voluptas neque. Laudantium autem fugiat et laboriosam accusamus est. Expedita itaque optio exercitationem delectus in vero. Ut porro ratione delectus et.\n\nAnimi dolores magni rerum delectus accusantium. Qui voluptate praesentium placeat architecto. Aut vitae nam voluptates enim corporis voluptatem.\n\nQui qui natus debitis nemo. Possimus atque error nihil a nihil. Sapiente nulla at asperiores pariatur. Praesentium et ducimus architecto iste laboriosam.\n\nVelit ad tempora autem consequatur. Provident consequatur voluptatibus eum labore corrupti aperiam recusandae. Blanditiis excepturi omnis impedit eius sit. Inventore incidunt et quod et velit.\n\nDicta architecto quia consequatur eius aut omnis. Aspernatur perspiciatis ab quibusdam qui. Architecto et a doloribus ut et.\n\nEnim sed necessitatibus quisquam quis. Ut illo ut tempore iusto. Ut temporibus sequi cum.\n\nFacilis nihil mollitia eius. Et dolor architecto sed ut impedit earum. Alias odit aliquam qui voluptas. Aut sint ullam non tempore in unde.\n\nMaxime sit maiores omnis quia ab distinctio reprehenderit. Voluptatem debitis magnam modi perferendis ea voluptates rerum. Qui assumenda aut totam sed quia.\n\nIure deleniti est eos. Ea repellat nihil minima id cupiditate sint. Dolor et ullam ullam natus fuga at qui.\n\nQuia et alias corporis voluptatibus quia est amet similique. Esse laboriosam quos laborum odio aliquam tempora doloremque incidunt.', 134, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 17, 18, 19, 8.00, 32.00, 137.00, NULL, 4.7, 'publish', '[{"name":"Basic","key":"basic","desc":"Ut et qui autem iure nam eum.","delivery_time":3,"revision":3},{"name":"Standard","key":"standard","desc":"Omnis et aut quidem ducimus ut.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Debitis perferendis ea cum occaecati voluptates.","delivery_time":6,"revision":3}]', '[{"name":"Perferendis voluptates vel unde.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Sit consequatur officiis.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Qui repellat saepe aut.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 3, NULL, NULL, 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(3, 'I will Dolore nisi qui accusamus at.', 'i-will-dolore-nisi-qui-accusamus-at', 'Veritatis perspiciatis minus quis velit perspiciatis similique voluptatem. Error aut suscipit rem occaecati quis exercitationem. Molestiae sunt recusandae explicabo voluptatum in reiciendis tempore est.\n\nEt quod sunt hic optio corporis. Nam optio voluptas et sed possimus rerum. Minus beatae est veniam minima necessitatibus culpa. Perferendis et aut ut necessitatibus.\n\nIllo magnam est aut quam assumenda voluptas saepe. Repellendus quia minus ad exercitationem accusantium neque. Vero in qui numquam sit.\n\nNecessitatibus cupiditate autem reiciendis modi sed a. Eum natus accusantium a. Omnis at repellendus neque sit. Error officiis excepturi dolorem debitis in dolor.\n\nHic adipisci similique enim quo pariatur error inventore. Reprehenderit animi debitis dolor voluptates. Minima voluptatem ut fuga sed numquam corporis voluptatem tenetur.\n\nHarum aut dolor soluta et. Ab voluptatem ut quia quisquam nihil nulla non. Nemo eveniet enim quos autem.\n\nMagnam consequatur nisi repellendus illum non recusandae eveniet. Quia velit molestiae minima eveniet quia enim iste nihil. Exercitationem esse voluptas doloremque unde est maxime dolores. Iusto sit quibusdam id.\n\nVoluptatibus modi repudiandae esse similique autem inventore quis. Provident fugit impedit ut perferendis dolorem praesentium sapiente. Aut ipsum est nihil fugiat modi quia.\n\nConsectetur officiis hic ex consequatur. Consequatur voluptas nisi corporis. Consequatur quas quisquam iste sed. Et ullam ea eligendi explicabo maiores veritatis et.\n\nEius et magnam similique quo aut reprehenderit saepe. Ea illum recusandae praesentium ratione eligendi tempora. Mollitia est omnis sunt cumque repellat itaque voluptatem. Labore est voluptatibus qui officia quibusdam ut sapiente.', 134, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 17, 18, 19, 7.00, 22.00, 163.00, NULL, 4.7, 'publish', '[{"name":"Basic","key":"basic","desc":"Modi aperiam aut ut mollitia.","delivery_time":2,"revision":3},{"name":"Standard","key":"standard","desc":"Quas et doloremque occaecati vel qui.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Et laudantium quod debitis ullam aut accusantium in.","delivery_time":6,"revision":3}]', '[{"name":"Aperiam velit ut et.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Quia non iste.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Unde ratione aliquam.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 2, NULL, NULL, 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:22'),
	(4, 'I will Voluptatem fugit rerum ut qui officia aut.', 'i-will-voluptatem-fugit-rerum-ut-qui-officia-aut', 'Iure eos velit enim recusandae doloremque. Voluptas et non cupiditate omnis. Rerum atque voluptas qui dolor eos rerum. Earum doloribus eaque optio atque voluptatibus.\n\nItaque blanditiis dolores est culpa quo perspiciatis incidunt. Est sunt sit quo nihil cupiditate dicta suscipit. Omnis numquam et modi aut.\n\nAutem tenetur expedita veritatis officiis. In sequi impedit facere. Eligendi est quia officiis hic numquam tenetur et. Iure quod minima accusamus nostrum dolorem et et.\n\nVoluptate iste aliquid iure qui sed illo quasi. Corporis eos distinctio eius ipsum ab. Omnis adipisci et ut minus atque. Maiores eaque dolorem qui id architecto assumenda.\n\nOccaecati consequatur consequuntur harum consequatur. Nemo itaque et eum omnis quia et dolorum. Deleniti non blanditiis necessitatibus libero. Minus iusto tempore neque ullam.\n\nQui repellat aperiam aspernatur debitis ducimus placeat. Facilis veritatis assumenda quia cupiditate deleniti explicabo. Qui pariatur neque asperiores. Sint quis quia dolores rerum facilis incidunt perspiciatis. Dicta recusandae eum sunt harum maiores quaerat.\n\nDignissimos labore est eos ratione debitis. Quae totam laudantium aliquid quo nam et. Iusto doloribus optio consequatur hic officiis sit.\n\nSoluta sed vero deleniti reprehenderit ex sequi. Autem labore sit blanditiis quia quis voluptas. Nesciunt reprehenderit dolores est sit blanditiis officiis.\n\nSuscipit alias consequatur voluptatem. Perferendis amet ab quod nobis officiis libero dolor porro. Non debitis doloribus voluptas laborum. Sit et soluta ipsa doloribus quo consequatur consectetur.\n\nNihil excepturi sit ipsum ea et totam. Et amet illo illo consequatur eos quisquam. Quae repellat consequatur dolor reiciendis asperiores. Recusandae ut nihil voluptatem quod laborum.', 135, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 33, 34, 35, 6.00, 26.00, 119.00, NULL, 4.7, 'publish', '[{"name":"Basic","key":"basic","desc":"Ad commodi autem molestias non excepturi.","delivery_time":1,"revision":3},{"name":"Standard","key":"standard","desc":"Ducimus facere aut quis fugiat.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Veritatis quia laborum assumenda et.","delivery_time":6,"revision":3}]', '[{"name":"Eligendi sit aut magni.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Sunt repellendus et.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Assumenda fuga ut beatae.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(5, 'I will Minima ad aspernatur similique laboriosam et molestiae illum.', 'i-will-minima-ad-aspernatur-similique-laboriosam-et-molestiae-illum', 'Consequatur ipsum magni quia saepe. Minus id enim maxime dolor blanditiis deserunt non repellendus. Et tenetur id adipisci nihil sunt iure rerum.\n\nInventore aut aut illo quis asperiores. Nobis eum et qui veniam minus recusandae. Praesentium doloremque unde ut saepe beatae.\n\nCorrupti et ipsam aut fugit ipsum. Id eveniet sed vero eveniet amet. Ad tempora similique dolor necessitatibus.\n\nVoluptatem voluptatem est animi eum repellat consequatur sint eos. Beatae nisi laudantium deserunt quia quod natus blanditiis perspiciatis. Quia vitae quia quo.\n\nPlaceat quia dolor consequuntur eos eius perspiciatis. Odit aspernatur earum quo et. Porro quis molestias autem iure eos et voluptatem.\n\nCulpa voluptas sint aut quam in veniam. Cumque temporibus quia sint quisquam voluptas cupiditate est. Rerum autem asperiores molestiae sunt eligendi quos.\n\nNihil labore aut dolorum est porro asperiores. Laudantium ut similique perspiciatis beatae ad distinctio quidem. Et saepe quia sed qui officiis.\n\nQuisquam aperiam laborum fugiat velit dolorum. Totam reprehenderit temporibus in voluptatem labore occaecati. Eos quia maxime placeat reprehenderit et.\n\nHic rerum temporibus non aut laudantium voluptatibus. Dolores expedita qui iste hic voluptates ut qui. Qui labore laudantium sint consectetur sapiente harum laudantium. Rerum sunt minus molestiae ut odit labore voluptas.\n\nDeleniti nostrum amet labore quod quas labore rem. Sit quis doloremque sint illo. Qui ut quia natus eum optio modi ipsa.', 135, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 17, 18, 19, 8.00, 32.00, 225.00, NULL, 4.3, 'publish', '[{"name":"Basic","key":"basic","desc":"Iste quas labore occaecati numquam sint ratione dolor.","delivery_time":2,"revision":3},{"name":"Standard","key":"standard","desc":"Odit fuga enim rerum laboriosam reiciendis omnis eius non.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Quasi dolor eum est et dolores.","delivery_time":6,"revision":3}]', '[{"name":"Consectetur iste fugiat.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Cumque voluptatem.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Distinctio voluptas.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 2, NULL, NULL, 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(6, 'I will Quia deserunt et voluptatem nam quas aliquam.', 'i-will-quia-deserunt-et-voluptatem-nam-quas-aliquam', 'Rerum est aut dolorum beatae. Consequuntur ex iste dignissimos possimus voluptatem. Doloribus aut omnis voluptatem cupiditate quia earum eos.\n\nExercitationem rerum earum tempora. Non quos neque tempore. Et aut eum natus ullam totam quibusdam voluptate id.\n\nEt adipisci rerum maxime veritatis eaque voluptatem labore nisi. Et ut aut quia aperiam. Quia adipisci dolor sunt modi ut eos quia. Dolor facere rerum a ea impedit quis corporis. Nam numquam atque ipsum occaecati.\n\nRerum quaerat quia deserunt doloribus. Sit eum velit est amet natus optio ratione repudiandae. Et fuga praesentium facere explicabo.\n\nTemporibus minus et sit vero. Voluptatem ut consectetur numquam eveniet porro.\n\nConsequuntur illo quas voluptas culpa. Ut minima sint consequatur. Quis et doloremque ad eaque et harum porro. Voluptas voluptatem in voluptates eos odit et asperiores.\n\nVoluptates aut impedit ducimus minima. Delectus et minima vel. Qui quis veniam inventore aliquid.\n\nSaepe occaecati distinctio eum officia necessitatibus quidem quae. Aut ea inventore accusamus voluptatem voluptatem. Libero quis ab eum minus inventore. Voluptatem doloremque voluptatem harum aut et. Eum eaque ut itaque autem eum ex possimus non.\n\nSit culpa molestiae consequuntur deserunt mollitia corporis. Alias et autem quibusdam nulla numquam soluta. In ut in atque voluptas. Omnis sed aperiam ex dolor.\n\nUt incidunt quia consequatur. Hic expedita molestias recusandae et. Deleniti velit esse possimus blanditiis. Adipisci repudiandae iste in quas voluptas eos quas aut.', 136, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 1, 2, 3, 5.00, 50.00, 127.00, NULL, 4.7, 'publish', '[{"name":"Basic","key":"basic","desc":"Est velit ea consectetur.","delivery_time":2,"revision":3},{"name":"Standard","key":"standard","desc":"Ex tempore omnis delectus nulla nam accusamus sint.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Ut et eos ea tempora nobis eos in in.","delivery_time":6,"revision":3}]', '[{"name":"Ea quis.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Corrupti accusantium est.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Repudiandae libero maiores animi.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 2, NULL, NULL, 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:23'),
	(7, 'I will Enim ut dicta reiciendis quibusdam in minima.', 'i-will-enim-ut-dicta-reiciendis-quibusdam-in-minima', 'Molestias nam eius quia vel reprehenderit id rerum. Est earum consectetur et nihil soluta iusto ipsam. Ea et est non animi molestias quas. Ratione incidunt voluptatem beatae praesentium dolorem qui.\n\nQui quam aut unde voluptas voluptatem. Adipisci dolorum illum vitae provident ut odit perspiciatis rerum. Qui dolor est dolor et non dignissimos. Quae laboriosam enim alias.\n\nQuaerat eligendi incidunt harum quas. Et praesentium molestiae eos tenetur aut magni velit magnam.\n\nUt repudiandae excepturi provident alias nobis ex reprehenderit accusantium. Omnis in quia ut porro. Minus eos et fugiat qui a et quam et.\n\nAutem et corporis laboriosam dicta dolores tenetur mollitia. Ut iste hic voluptatem in molestiae labore voluptatem. Voluptatem pariatur sunt et sequi sed. Dolores culpa voluptas velit suscipit.\n\nQui amet id debitis unde delectus debitis id. Incidunt repellat sit nihil. Animi odit et aut ut. Exercitationem est accusantium nesciunt dolores ab.\n\nAccusantium ducimus est aut est sint incidunt cum. Eos unde excepturi odio sit rerum quis debitis.\n\nCumque dignissimos et excepturi cum qui iure. Rerum aut quis laboriosam laboriosam molestiae. Minima enim ut consequatur harum id animi.\n\nSunt dignissimos officiis blanditiis. Totam iste libero doloribus sequi. Quo impedit inventore quasi dolores amet molestias dolor.\n\nMagnam magnam numquam deleniti sit ut laudantium eum. Est quis recusandae voluptas provident adipisci. Voluptatem doloremque velit ab.', 134, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 1, 2, 3, 5.00, 43.00, 293.00, NULL, 4.3, 'publish', '[{"name":"Basic","key":"basic","desc":"Quibusdam eaque minima sint aut aut cupiditate iste dolores.","delivery_time":3,"revision":3},{"name":"Standard","key":"standard","desc":"Ipsa quo eum dolor aliquam.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Illo nesciunt earum veniam.","delivery_time":6,"revision":3}]', '[{"name":"Sit aspernatur.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Voluptate dolores voluptas placeat.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Quis magni voluptates.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 3, NULL, NULL, 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(8, 'I will Accusamus consequuntur magnam eligendi voluptas.', 'i-will-accusamus-consequuntur-magnam-eligendi-voluptas', 'Ut similique facere at odio nostrum similique sunt. Id dignissimos omnis nesciunt. Consectetur ratione qui nisi incidunt. Quia ut in ut delectus. Enim veniam nam magni ab quae ut.\n\nDeleniti beatae eum a similique. Ad et ea mollitia. Aspernatur aspernatur et est et voluptatem.\n\nPlaceat facere commodi sunt modi autem sint eos. Expedita perspiciatis repudiandae debitis est expedita neque. Accusamus vel autem veniam sunt dolor nam laboriosam.\n\nEt quia pariatur dicta ut sed quo. Molestias rerum quae expedita nemo expedita laborum. Laboriosam optio assumenda ut ipsum.\n\nMolestiae suscipit molestiae ducimus delectus doloremque eligendi est quia. Illo saepe quas eum iusto animi delectus voluptatem. Asperiores praesentium et a ut suscipit quisquam. Nemo et totam ad ullam fugit error. Odio et quas reiciendis quaerat exercitationem consequuntur.\n\nEt non totam et repellat et nobis. Cum sit accusamus et tempore. Quas ea alias tenetur aliquam consequatur et dolores.\n\nNon consequuntur molestias quis aut. Iusto dolore optio aut vel quos quis. Inventore vel perspiciatis autem voluptas vel nobis officiis voluptatem.\n\nQuia dolor ipsum qui quibusdam nostrum. Est cupiditate saepe cum rerum et delectus. Possimus reprehenderit aut aspernatur quibusdam voluptas sit.\n\nAspernatur non voluptatem sint illo velit odio. Nostrum vero molestiae in omnis consequuntur quo. Provident et qui explicabo saepe.\n\nDistinctio aut tempora ad quis ad deleniti non. Nulla quas eos molestias nihil optio quod et. Numquam incidunt assumenda praesentium praesentium aut. Dicta aliquam ea et autem.', 137, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 17, 18, 19, 9.00, 46.00, 277.00, NULL, 5.0, 'publish', '[{"name":"Basic","key":"basic","desc":"Velit placeat id veniam aut exercitationem.","delivery_time":2,"revision":3},{"name":"Standard","key":"standard","desc":"Molestiae recusandae omnis ut molestias eos dolores aspernatur.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Iste totam amet vero rerum.","delivery_time":6,"revision":3}]', '[{"name":"Autem enim.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Distinctio aut cum.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Quaerat dolores.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 2, NULL, NULL, 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(9, 'I will Sint sed aspernatur est commodi voluptas eligendi.', 'i-will-sint-sed-aspernatur-est-commodi-voluptas-eligendi', 'Eaque quia sint eaque magni expedita. Nisi nemo sit quo magnam et impedit nostrum. Et assumenda aut autem quia. Quaerat vel assumenda quas.\n\nNemo debitis ullam accusamus nobis. Minima earum error quis architecto. Corrupti mollitia molestiae vel et qui. Pariatur minima a eligendi odit.\n\nInventore vel cupiditate quia debitis. Est necessitatibus consequatur dolorem nemo cumque. Id cumque assumenda consectetur id et quae corrupti. Autem ut iste qui consequatur reprehenderit nemo.\n\nQuam iure sint alias officiis facere. Odio autem quam sit explicabo consectetur et ipsum nihil. Laboriosam quaerat corrupti velit ut molestiae eum. Sit mollitia occaecati ex et nam.\n\nLabore sit iure debitis nostrum autem saepe perspiciatis. Omnis id voluptates molestiae corporis ducimus. Recusandae aperiam qui quis sunt.\n\nOmnis ex nulla quia libero veritatis qui. Voluptatibus nam eos beatae molestiae quis. Nesciunt omnis non iste doloremque dicta reiciendis voluptatem. Beatae reprehenderit a consequatur et non explicabo facere.\n\nIusto et sed quas dolor sapiente fugiat. Laboriosam molestias sunt nihil nisi et exercitationem. Necessitatibus enim nulla quidem officiis sit possimus alias ut.\n\nMinus sed nihil dicta est commodi. Aliquam sint id ratione ut sit. Sint consequatur veniam dolor eligendi facere fugiat consequuntur nemo.\n\nMolestias nesciunt deserunt omnis illum architecto repudiandae quae. Inventore enim ducimus quasi nihil dignissimos aliquam vel atque.\n\nDoloremque maxime consectetur distinctio tenetur. Ut eum adipisci sed voluptatem est. Ratione recusandae aut ipsa amet velit eos. Autem et cupiditate culpa corporis labore fuga distinctio.', 136, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 33, 34, 35, 5.00, 40.00, 133.00, NULL, 4.7, 'publish', '[{"name":"Basic","key":"basic","desc":"Repellendus velit temporibus optio.","delivery_time":3,"revision":3},{"name":"Standard","key":"standard","desc":"Amet cum ullam sed optio minus sit.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Eius nemo tempore possimus molestiae non.","delivery_time":6,"revision":3}]', '[{"name":"Et laboriosam mollitia.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Recusandae cumque non excepturi neque.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Ex sunt mollitia error.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 3, NULL, NULL, 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(10, 'I will Iste asperiores culpa rerum dignissimos architecto sit.', 'i-will-iste-asperiores-culpa-rerum-dignissimos-architecto-sit', 'Quis sit atque rerum dolores. Consectetur velit ut necessitatibus autem. At aliquid labore officia ducimus nulla qui.\n\nAt velit vitae ad quia corrupti. Autem ad earum et nihil tenetur. Odio et aut assumenda recusandae nesciunt. Qui nemo quas qui et dolorem.\n\nExplicabo odio necessitatibus earum distinctio et. Corrupti quis dicta inventore molestias. Ut nostrum et non aliquam animi porro reprehenderit.\n\nConsequatur eius voluptatem tempora repellat provident necessitatibus minus. Magnam omnis sunt delectus facere pariatur sunt. Placeat tempore non quod quia nam.\n\nAut recusandae eos neque repellat. Cum eius nostrum rerum repudiandae optio labore voluptas. Cum magnam ipsum odio quo impedit a natus. Non animi voluptatem officiis rem molestiae ab.\n\nEt repellendus qui nisi voluptatum eum illo voluptatem consequatur. Aut et eius nihil nostrum. Dolorem eligendi totam alias omnis blanditiis deleniti impedit autem. Possimus illo quam labore animi.\n\nRerum placeat est inventore alias placeat. Quia enim et est esse rerum. Molestiae eos modi velit facere maxime eaque qui dolor. Tempora minus impedit reiciendis eos impedit.\n\nEt rem inventore corrupti voluptate et modi. Illum cum necessitatibus quis et eligendi qui eum. Deleniti qui veritatis consequatur alias et nihil architecto. Minima molestiae minus totam asperiores numquam ipsum omnis. Minima voluptatem voluptatem eveniet doloribus maiores expedita ullam.\n\nMinus similique minus fugit itaque. Voluptatem enim alias quasi veniam et. Corrupti ea sequi omnis consequuntur ut. Voluptas tenetur nobis nulla voluptate.\n\nQuam pariatur nam quaerat provident dolore sunt ipsam. Officiis adipisci sit nesciunt a. Est omnis est optio. Laboriosam qui aspernatur amet velit.', 137, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 33, 34, 35, 8.00, 18.00, 223.00, NULL, 4.3, 'publish', '[{"name":"Basic","key":"basic","desc":"Totam reprehenderit aut a quis aut nobis.","delivery_time":2,"revision":3},{"name":"Standard","key":"standard","desc":"Fugiat aut error et fugit et at.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Incidunt ut cumque voluptas odit earum.","delivery_time":6,"revision":3}]', '[{"name":"Dolorem natus tempore velit error.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Et repellendus aspernatur adipisci.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Voluptatum et animi et.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 2, NULL, NULL, 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:25'),
	(11, 'I will Eaque sequi ut enim cum exercitationem.', 'i-will-eaque-sequi-ut-enim-cum-exercitationem', 'Quae perferendis aut veniam dicta aut ut qui. Sed rerum voluptas qui enim eaque earum eum. Recusandae perspiciatis quo enim.\n\nVoluptas sunt est doloribus vero amet eum libero. Reiciendis ut exercitationem deleniti sit rem. Ut modi perspiciatis minima iusto non. Esse dignissimos sed laborum optio enim.\n\nDucimus cum non aperiam voluptatum est rerum. Id doloremque debitis at est excepturi accusamus. Veritatis est rerum ex. Qui quibusdam fuga et earum laborum ut aut.\n\nEa rem quisquam pariatur eos at debitis. Quia magni est est magni sit.\n\nFacere dicta qui aliquam aut. Omnis voluptatem est doloremque minima eum ut non. Reiciendis nesciunt optio autem voluptatibus sint. Enim voluptatibus commodi quia quis. Qui consequatur hic vel adipisci reiciendis.\n\nSoluta soluta eos voluptas veniam dolore modi. Officiis quia impedit eum a qui illo. Qui harum consectetur similique. Est odio omnis excepturi consequatur ut facere. A veniam hic dolor non aut alias natus.\n\nFuga praesentium esse aut beatae neque. Et deleniti et beatae possimus. Quia quisquam a sint et consectetur. Ea sit dolores temporibus ea.\n\nAsperiores eius nihil qui at saepe. Animi nulla voluptate facere aspernatur magnam. Ab neque commodi facere eos nam ratione.\n\nAutem amet repellat et dolores quos. Quod repudiandae consectetur quia. Nostrum at exercitationem natus a numquam necessitatibus.\n\nAliquid illo expedita et enim a. Quidem voluptas eligendi et qui sint tenetur sit. Nihil qui cupiditate ipsum sit illo cumque iste doloremque. Nam optio quaerat vero ea rerum aut.', 136, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 17, 18, 19, 6.00, 41.00, 288.00, NULL, 4.7, 'publish', '[{"name":"Basic","key":"basic","desc":"Quia quos doloremque nostrum et et.","delivery_time":3,"revision":3},{"name":"Standard","key":"standard","desc":"Non qui distinctio ab tenetur consequatur.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Corrupti nesciunt animi vel consequatur sed.","delivery_time":6,"revision":3}]', '[{"name":"Mollitia voluptas dolore quos et.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Autem quidem earum quasi.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Tempore nobis dolor.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 3, NULL, NULL, 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(12, 'I will Possimus pariatur qui enim commodi.', 'i-will-possimus-pariatur-qui-enim-commodi', 'Est enim nobis quis dolore. Ipsum minus temporibus beatae sint sed. Adipisci nisi et vero ea vel.\n\nLaborum debitis est soluta ratione. Eligendi distinctio sed sunt ea laudantium ex. Et aliquam voluptates omnis ut accusantium.\n\nUt dolores unde distinctio dolorem et mollitia quo architecto. Accusantium numquam iusto aut eum consectetur. Occaecati aut dolorum numquam animi. Quia eum culpa molestiae.\n\nMaxime ut rerum modi. Odio ut vitae temporibus enim officia ut fugit.\n\nNeque quam eos magni. Quis labore assumenda amet quidem perspiciatis laboriosam dicta sit. Et illo aperiam ut corrupti quia officia. Aut earum expedita eligendi iure quas sapiente qui.\n\nVoluptates et dolorum facilis dolores amet. Quia sed quisquam iusto voluptatum. Aut distinctio doloremque id. Ut pariatur illo est id omnis occaecati occaecati.\n\nAtque maiores tempore et. Unde cumque reprehenderit sed dolores. Est officiis necessitatibus ea dignissimos vero incidunt.\n\nUt sint facere qui eos libero incidunt. Nulla consequuntur autem qui sapiente aut. Qui ea tempore ullam nam fuga. Ex autem aperiam dolorem voluptas.\n\nQuidem eos blanditiis repellat maxime sint. Sequi aspernatur consequatur magnam ut quo. Nihil eos voluptas est.\n\nDucimus reiciendis provident debitis dolor aliquam et illum quia. Molestiae omnis ducimus illum repudiandae tenetur sapiente voluptas. Sunt accusantium sit officiis aut similique ratione sed.', 134, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 33, 34, 35, 6.00, 36.00, 127.00, NULL, 4.7, 'publish', '[{"name":"Basic","key":"basic","desc":"Eligendi qui qui sed.","delivery_time":1,"revision":3},{"name":"Standard","key":"standard","desc":"Vel id aut deleniti non.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Sint voluptas doloribus nisi sed aliquid velit.","delivery_time":6,"revision":3}]', '[{"name":"Atque possimus eius.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Quia possimus aut vel.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Voluptatum incidunt enim odit esse.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:26'),
	(13, 'I will Eligendi dolores architecto aut aperiam.', 'i-will-eligendi-dolores-architecto-aut-aperiam', 'Quaerat dolor magni architecto quod dolor. Et quia id eveniet quas. Sint repellat et rem nihil dignissimos expedita. Praesentium nam accusamus cupiditate qui voluptatem.\n\nAsperiores aut aperiam ipsa vero sequi et qui pariatur. Rerum et quo impedit. Sit suscipit optio reprehenderit quas sapiente ducimus.\n\nSit dolorem eius numquam et exercitationem. Quo voluptas sit repudiandae nostrum soluta. Aliquam odit occaecati ea dolores. Eum in qui voluptates.\n\nEt sint harum ut dolorem eveniet voluptatibus dolores. Non mollitia non nostrum et aliquam dolor itaque. In velit non quam expedita deleniti aut.\n\nVoluptatem a rerum commodi. Voluptas omnis dolor est et et sunt omnis. Saepe omnis et a ad.\n\nVoluptas modi praesentium voluptate est. Officia debitis est non. Quia qui dolores culpa omnis veritatis provident. Dicta qui sed consequatur odit quibusdam voluptatem error sed.\n\nItaque autem aut atque deserunt. Tenetur voluptatem et ea eaque assumenda mollitia molestiae. Autem quod voluptatem unde ut. Officiis dolor laudantium quasi facere facilis ad est.\n\nTenetur adipisci quaerat aperiam rerum est totam eum. Dolores quod quae non culpa unde qui et. Eos corporis ipsam accusamus quam omnis fugiat. Quo at error est et incidunt.\n\nCum explicabo totam aut numquam et. Dolore voluptas neque autem nobis amet assumenda non. Maxime dicta tempore consequatur et enim voluptatem iure. Sit molestiae minima consequatur non eos accusamus at.\n\nNemo debitis et enim quae. Dignissimos consequuntur sed quis nam et. Eos voluptas voluptas iusto qui ut eum saepe.', 134, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 1, 2, 3, 9.00, 50.00, 193.00, NULL, 4.3, 'publish', '[{"name":"Basic","key":"basic","desc":"Quis aut quidem veritatis hic rerum fugit.","delivery_time":1,"revision":3},{"name":"Standard","key":"standard","desc":"Voluptatem accusantium autem qui ullam.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Tempora ducimus quod consectetur voluptatibus ex aspernatur nisi.","delivery_time":6,"revision":3}]', '[{"name":"Vel quae quo.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Maxime suscipit nam.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Delectus beatae tempore.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(14, 'I will Incidunt et minima ullam qui.', 'i-will-incidunt-et-minima-ullam-qui', 'Soluta consequatur quaerat corrupti iste voluptatem molestiae qui. Ipsum fuga reprehenderit ut quasi sint. Ut harum voluptatem sunt est.\n\nOptio dignissimos et possimus deleniti minus rerum. Beatae vel dolorem doloribus dicta. Quae quia asperiores culpa labore numquam ab.\n\nDolor est eum dolores qui. Officiis voluptatum iusto saepe iste aut aspernatur non. Doloribus recusandae repellendus harum aut atque est. Et illum quisquam molestiae eum necessitatibus.\n\nAccusamus magnam non quaerat qui esse. Pariatur sit in ut quo et consequuntur. Ut modi explicabo iusto expedita aut sed ullam.\n\nIpsam sit voluptatibus dolorum error libero explicabo sed saepe. Aperiam eveniet pariatur alias. Iste enim voluptatem amet vel. Nam laborum aut ut ut qui laudantium sint.\n\nDolor accusantium ea nam. Molestiae non fugit doloremque saepe ut. Et corrupti ipsa officia quod libero.\n\nEsse dolorum facilis unde incidunt ut consequatur. Qui harum aut eos sit libero. Officiis odit voluptatum sapiente dolorum soluta eos et. Fugit asperiores quia dolores quia ut quidem quo.\n\nMagni adipisci qui est cupiditate qui esse corrupti. Tempore iste iusto accusantium et. Nihil repellendus modi mollitia corrupti perferendis sit itaque. Exercitationem temporibus autem quos velit sequi blanditiis.\n\nConsequuntur impedit voluptatem aut sed. Quidem omnis consequatur sed porro. Voluptas ut quo sunt veritatis et ea sapiente.\n\nQui odit voluptatem qui assumenda. Incidunt voluptatem asperiores cumque recusandae. Repellat corporis veniam porro rem voluptates velit expedita est. Nisi sapiente et corrupti ab optio. Ipsa porro illum est omnis.', 137, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 33, 34, 35, 9.00, 18.00, 212.00, NULL, 4.3, 'publish', '[{"name":"Basic","key":"basic","desc":"Maxime laudantium non ut impedit.","delivery_time":1,"revision":3},{"name":"Standard","key":"standard","desc":"Voluptatem similique facere amet delectus ut.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Maxime dicta dolorem illo ut enim rerum molestias et.","delivery_time":6,"revision":3}]', '[{"name":"Doloribus et.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Voluptates optio ipsum.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Aliquam voluptas consequuntur.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:27'),
	(15, 'I will In eaque a quo quisquam in et ut assumenda.', 'i-will-in-eaque-a-quo-quisquam-in-et-ut-assumenda', 'Neque autem facilis dolorum nihil quidem vero. Quam consequatur eum libero ea esse.\n\nVoluptas deserunt eaque est aliquam at cupiditate nisi. Dolores cum eligendi reprehenderit aliquid accusantium eos et accusamus. Earum pariatur inventore qui corporis.\n\nDolores ratione facere occaecati excepturi voluptas. Mollitia rerum molestiae eos ut doloremque quis.\n\nOmnis modi quibusdam quos dolores nulla. Dolores voluptas incidunt aperiam molestias. Ut accusantium perspiciatis dolorem dignissimos voluptatem laborum aut. Accusantium nihil ut nobis dolorem nihil quae voluptas.\n\nQuis itaque perferendis explicabo ex. Nostrum et consequuntur dolore. In reprehenderit dicta qui porro placeat voluptatibus.\n\nNeque in facilis voluptas culpa enim aut deserunt. Et est autem voluptatibus neque dolorem quaerat asperiores. Nesciunt cumque possimus quis iusto. Omnis quasi ut porro id.\n\nMaxime molestias laudantium qui vitae suscipit. Explicabo maxime perferendis nisi. Qui quos qui laudantium molestiae et minus.\n\nAspernatur et earum laborum iste dolor. Sit molestias voluptatem animi laboriosam aspernatur ipsa. Deleniti consequatur ut dolores magni. Saepe voluptas qui et libero officiis fugiat qui.\n\nOdio in laboriosam ipsum corporis fugit voluptatem. Et doloremque et porro perspiciatis nihil ducimus doloremque nihil. Aut alias qui pariatur non voluptates pariatur doloribus.\n\nQuo suscipit excepturi illo culpa. Aut cupiditate ut vero fugiat blanditiis commodi. Iusto esse eius et inventore tenetur in. A enim qui sed.', 134, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 1, 2, 3, 5.00, 15.00, 294.00, NULL, 4.0, 'publish', '[{"name":"Basic","key":"basic","desc":"Minus aut doloremque doloremque ipsam quam.","delivery_time":1,"revision":3},{"name":"Standard","key":"standard","desc":"Nisi nisi soluta temporibus quis qui eos.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Ad laudantium recusandae dolorum sint voluptas.","delivery_time":6,"revision":3}]', '[{"name":"Itaque vel vel quod.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Maxime esse et illum nihil.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Porro repellendus sed voluptates.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 1, NULL, NULL, 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(16, 'I will Facilis omnis fugit aut id.', 'i-will-facilis-omnis-fugit-aut-id', 'Illum et pariatur ea odit. Optio eum quia suscipit itaque deserunt. Accusamus sit beatae facilis voluptatibus et numquam.\n\nDistinctio qui ut quod dolores excepturi placeat consequatur. Rerum reprehenderit soluta ut quo suscipit velit repellat. Pariatur eaque ut ratione sapiente consequuntur quia sint. Sit aut voluptate aut aliquam. Qui maxime ratione facilis consequatur.\n\nEt sit recusandae hic omnis praesentium et. Ab quos dolor excepturi quod non asperiores. Quis accusamus et quia a sed placeat maiores. Recusandae doloribus ut dicta doloremque explicabo modi iusto consequatur.\n\nMaiores ipsa in enim consectetur dolorem. Nihil voluptates quisquam perspiciatis quod.\n\nSoluta fugiat ducimus et inventore veniam excepturi nobis reprehenderit. Nam fuga a iure repellendus minima. Vel vero eum sapiente adipisci non placeat suscipit.\n\nNon esse reiciendis autem repellendus. Quod consequatur et ducimus nisi. Blanditiis dolores tempora quisquam vero. Aut suscipit repellendus eum in animi neque voluptatibus.\n\nId vel commodi dolor consequuntur ea. Quos voluptatem voluptas veniam est omnis. Magni qui ea eos. Facere assumenda atque aut quibusdam.\n\nRecusandae cum quis reiciendis quis maxime. Pariatur officia maxime nulla soluta praesentium eum quia. In aut quia sit rerum corrupti quam et.\n\nFacilis veniam quos amet consectetur excepturi. Accusantium laudantium non est error libero. Possimus rem eligendi omnis nihil.\n\nIpsa magnam nihil dignissimos eum ut vel voluptatibus. Maiores et amet saepe. Molestiae laborum qui impedit ex accusamus.', 137, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 33, 34, 35, 5.00, 15.00, 256.00, NULL, 4.0, 'publish', '[{"name":"Basic","key":"basic","desc":"Asperiores culpa maiores ullam magnam quo.","delivery_time":2,"revision":3},{"name":"Standard","key":"standard","desc":"Et laboriosam excepturi dolores commodi sed voluptatem.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Delectus ab quo non dolorum totam non ut.","delivery_time":6,"revision":3}]', '[{"name":"Ullam in tempora.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Repellat sit qui natus.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Rerum libero labore.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 2, NULL, NULL, 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:28'),
	(17, 'I will Iste aut earum voluptas quia quod.', 'i-will-iste-aut-earum-voluptas-quia-quod', 'Et iusto optio dolor saepe. Debitis quaerat vel qui sapiente et nemo. Culpa doloremque atque deleniti aut quaerat.\n\nItaque ut labore veritatis ea. Vel deleniti totam illum omnis qui. Culpa voluptates accusantium alias.\n\nTotam tempora nihil magni et. In maxime sunt voluptatibus doloribus. Aliquid non in aut est voluptatibus non modi. Quia commodi architecto doloremque deserunt ut quia alias placeat.\n\nQuaerat ullam esse et quos. Modi in dignissimos est minus fugit quasi id. Est nisi totam iure atque non. Qui cumque qui non facere ducimus repellendus.\n\nModi dolorem totam officia doloribus. Cumque aperiam perspiciatis error odio explicabo. Fugiat cupiditate et et eligendi eligendi illum.\n\nEst molestias error quasi animi. Et unde tenetur ut repellat. Dolore hic similique assumenda magnam.\n\nUnde ea aut quo incidunt odio. Unde at illo aut laboriosam.\n\nIn non quam officia quia ut qui. Fuga laudantium qui consequatur aperiam.\n\nVoluptatem qui voluptas quis consequatur corrupti eum. Accusantium consequatur ut quia. Dignissimos ipsum doloribus itaque non quos quaerat corporis velit. Perferendis ipsam amet cupiditate libero doloribus. Nisi in et eos dolor.\n\nTemporibus quia sed ad amet corrupti nemo id. Aut dolor exercitationem beatae. Dolorem consequuntur ad facilis quis minus optio.', 137, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 33, 34, 35, 7.00, 42.00, 208.00, NULL, 4.7, 'publish', '[{"name":"Basic","key":"basic","desc":"Nobis nam at vel.","delivery_time":2,"revision":3},{"name":"Standard","key":"standard","desc":"Aut optio facere saepe dolorum reiciendis quae.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Unde debitis dolorem qui.","delivery_time":6,"revision":3}]', '[{"name":"Ullam aliquam totam distinctio.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Quis eum minus.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Aliquam id quae sunt.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 2, NULL, NULL, 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(18, 'I will Ipsam reiciendis dolorem mollitia architecto laborum.', 'i-will-ipsam-reiciendis-dolorem-mollitia-architecto-laborum', 'Pariatur eius nam enim. Architecto sunt facere aut reiciendis quasi. Nam reprehenderit dicta saepe non reiciendis. Doloribus sunt architecto repellendus voluptatem quod.\n\nPraesentium qui nihil pariatur mollitia voluptates quas quisquam. Nam qui accusantium sint delectus consequuntur consequatur. Nemo et soluta soluta est.\n\nVeniam dolorem cumque temporibus voluptatem est. Sed illum omnis et velit quod veritatis dolor. Possimus provident repellat quo odio aliquid et modi. Qui est cum ullam consectetur iusto.\n\nCum consectetur optio sapiente. Qui omnis vel et porro sed. Vero dolorem doloribus aliquam nesciunt laboriosam. Voluptatem qui dolorem eius rem ullam architecto placeat.\n\nQuae esse impedit perspiciatis tempore quas recusandae. Est quo non velit qui. In similique tenetur nisi provident. Enim dolorem doloribus unde ipsam ut. Sed omnis adipisci dignissimos harum repellendus.\n\nNam quibusdam ratione molestias aliquid ut. Et eum tempore quidem labore. Ipsa at totam qui eum non voluptas sit. Enim laudantium molestiae omnis temporibus consectetur aspernatur nihil.\n\nIn sed qui quia consequuntur. Ipsam sunt illum tempora et aut eos nihil. Similique voluptas aut eum rerum voluptas error necessitatibus. Aut sunt quod quibusdam cumque nam exercitationem repellat.\n\nNihil qui dolor qui ad adipisci. Eum ipsum consectetur odio doloribus assumenda. Sed omnis tempore perferendis omnis cupiditate aliquam est error.\n\nQuo distinctio natus fuga repellendus est quia. Non eligendi dolores qui dolorum maiores. Consectetur aut aperiam ab molestias. Et alias iure et magnam.\n\nQui harum consectetur occaecati nulla laudantium unde et. Nihil optio possimus dolorum ut quos odit laudantium. Qui id est enim ea est officiis. Quae sed dolor beatae ut error ad laboriosam.', 136, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 17, 18, 19, 7.00, 32.00, 250.00, NULL, 4.7, 'publish', '[{"name":"Basic","key":"basic","desc":"Vel eveniet ratione nam perspiciatis.","delivery_time":3,"revision":3},{"name":"Standard","key":"standard","desc":"Aut asperiores est doloremque quas.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Odit fugiat veniam nulla est nobis mollitia eos.","delivery_time":6,"revision":3}]', '[{"name":"Eum architecto rem.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Et velit tempora voluptatem.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Aut laboriosam maiores.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 3, NULL, NULL, 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(19, 'I will Nemo ut iure ut repellat labore est quo.', 'i-will-nemo-ut-iure-ut-repellat-labore-est-quo', 'Dolores nesciunt harum nam amet sint sed nihil sint. Sint temporibus cupiditate enim reiciendis dolores. Harum voluptates dolor voluptatem similique quibusdam hic.\n\nEt dolor et quas qui omnis ducimus dolor. Quibusdam amet earum culpa ad sed expedita. Et quia similique iste eligendi. Similique et deserunt quia maiores veritatis.\n\nDicta voluptatem nesciunt veritatis aperiam facilis error blanditiis. Rerum aspernatur optio in atque dolor rerum. Distinctio aspernatur quis sit eos libero quam. Nisi rem rerum sint quia est repellendus.\n\nAperiam vero veniam sed praesentium laborum at. Eos atque consequatur ipsum quis. Molestiae rerum et nemo quo illo voluptate. Vitae consequatur aut explicabo dicta.\n\nIste repudiandae et est natus sed sunt voluptatem. Sed qui ut velit rerum quia non. Soluta iusto rerum animi id ut consectetur.\n\nOdio ratione aut nisi tempora natus labore. Maxime vel aut a rerum dolore qui. Consectetur sit non quod consectetur quibusdam et.\n\nAspernatur nesciunt vel voluptatem magnam natus ratione. Consequuntur sit harum alias placeat dolorem et. Dicta qui quidem dolor est aut quos eligendi ullam. Omnis et cupiditate eum odit suscipit ea.\n\nPorro iure sunt assumenda in dolorem tenetur aut. Dolorem voluptatem modi possimus eos. Quae laborum quo nam dolor qui id fuga doloribus.\n\nLibero laboriosam eveniet voluptatem eaque modi magnam molestiae. Et et libero recusandae accusamus recusandae libero est. Et minima non et modi voluptatum et ut eos. Debitis dolor amet tenetur corrupti distinctio totam. Sed laboriosam optio qui voluptas nostrum praesentium rerum.\n\nLaboriosam voluptatem a et sint id molestiae. Reprehenderit iusto et doloremque eum. Beatae possimus consequuntur sit autem in. Quidem sapiente tenetur cupiditate amet velit tenetur provident.', 135, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 33, 34, 35, 8.00, 27.00, 191.00, NULL, 4.3, 'publish', '[{"name":"Basic","key":"basic","desc":"Ut quidem laudantium et velit et at rerum.","delivery_time":3,"revision":3},{"name":"Standard","key":"standard","desc":"Quisquam possimus facere aut libero et voluptatem maxime eligendi.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Aut ea quaerat aut cumque eos voluptas architecto.","delivery_time":6,"revision":3}]', '[{"name":"Et ea.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Sit labore.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Omnis at dolore.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 3, NULL, NULL, 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(20, 'I will Ad repellat iure nihil exercitationem libero accusantium aut.', 'i-will-ad-repellat-iure-nihil-exercitationem-libero-accusantium-aut', 'Hic sint provident sint corporis molestiae. Labore omnis nisi consequatur. Placeat est quaerat nam velit ipsam aspernatur quo dolores.\n\nEt ut sed aut dolore aut id aut doloremque. Provident debitis omnis distinctio quos illo nam reprehenderit minus. Sed nostrum quia omnis.\n\nAb illum accusantium et omnis ipsa voluptate commodi. Deserunt placeat et ut sed possimus esse. Quas libero vel est aliquid illo sapiente repellendus cumque. Cum nam quibusdam distinctio quisquam quia numquam. Voluptas expedita architecto perferendis et expedita.\n\nHic eum atque quia perferendis. Reiciendis minima odit nemo ratione quia. Enim officia sit eius quisquam reiciendis hic quia sed.\n\nSequi totam et laborum qui corrupti est. Accusantium aut ullam nam in officiis. Adipisci repellendus quod rerum laboriosam iure.\n\nMaxime in blanditiis accusantium nostrum aliquam enim. Aut assumenda iste aliquid itaque in consequuntur nulla. Ut non excepturi dignissimos sit ut voluptatibus. Voluptas omnis tempore tenetur quis cum ab minima.\n\nDolores tempora consequuntur architecto laboriosam. Voluptas excepturi omnis eum molestiae aliquam porro. Et corporis repudiandae quis id ut. Id eum provident pariatur pariatur corrupti consequuntur dicta.\n\nMagni sit quibusdam voluptatem eveniet adipisci nihil aut. Qui pariatur et esse aliquid esse ea et a. Repellendus placeat voluptatem eos inventore impedit quam. Aperiam magni voluptas non qui.\n\nEsse itaque porro commodi omnis. Vel ea rerum expedita porro nam tempora. Atque fuga sed exercitationem aut odio. Perferendis sit asperiores asperiores impedit sit.\n\nAliquam in a saepe eos perspiciatis. Quo qui consequatur nihil ut itaque qui at. Dolores harum quia porro fugiat ut velit. Qui et perferendis nemo ea rem tempora voluptatem.', 134, NULL, NULL, '134, 135, 136, 137', 'https://www.youtube.com/watch?v=K1QICrgxTjA', 1, 2, 3, 7.00, 30.00, 233.00, NULL, 5.0, 'publish', '[{"name":"Basic","key":"basic","desc":"Quisquam quaerat id occaecati veritatis alias.","delivery_time":2,"revision":3},{"name":"Standard","key":"standard","desc":"Tempora quia aut autem.","delivery_time":4,"revision":3},{"name":"Premium","key":"premium","desc":"Aut neque aut nemo quasi quod laudantium.","delivery_time":6,"revision":3}]', '[{"name":"Ut qui ratione.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Praesentium adipisci accusantium odit iste.","content":"No","content1":"Yes","content2":"Yes"},{"name":"Est ratione culpa voluptas.","content":"No","content1":"Yes","content2":"Yes"}]', NULL, NULL, 2, NULL, NULL, 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29');
/*!40000 ALTER TABLE `bc_gigs` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_gig_cat
CREATE TABLE IF NOT EXISTS `bc_gig_cat` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci,
  `news_cat_id` bigint(20) DEFAULT NULL,
  `_lft` int(10) unsigned NOT NULL DEFAULT '0',
  `_rgt` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bc_gig_cat_slug_unique` (`slug`),
  KEY `bc_gig_cat__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_gig_cat: ~0 rows (approximately)
DELETE FROM `bc_gig_cat`;
/*!40000 ALTER TABLE `bc_gig_cat` DISABLE KEYS */;
INSERT INTO `bc_gig_cat` (`id`, `name`, `content`, `slug`, `status`, `image_id`, `faqs`, `news_cat_id`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Graphics & Design', 'Pariatur et pariatur inventore consequuntur. Cum consequuntur maiores autem aspernatur. Quia ullam atque iste mollitia iste enim velit. Fugiat eum autem occaecati voluptatibus cupiditate qui. Consectetur enim maxime reprehenderit nam quia.', 'graphics-design', 'publish', 128, '[{"title":"Quia cumque.","content":"Ex quos iure aliquid consequatur esse iusto consequatur aut. Eos voluptatem assumenda repellat in sequi dolorem similique. Reiciendis sequi qui consequatur libero in dolores."},{"title":"Qui nesciunt.","content":"Praesentium at distinctio officia ab porro quia et. Distinctio suscipit maiores consequatur temporibus doloremque odio. Soluta sed perspiciatis aliquid cum. Porro sunt aperiam temporibus sed minima consequatur."},{"title":"Alias neque.","content":"Qui maiores officia dolor harum omnis esse. Qui corporis molestias recusandae maxime illum magni. Saepe quae et doloremque quia assumenda sit. Nam eaque quos ab."},{"title":"Omnis quidem.","content":"Eligendi in quas eaque. Facilis dolores excepturi maxime fuga dolores. Eum laudantium aut et voluptatem. A quam amet adipisci."}]', 3, 1, 32, NULL, NULL, NULL, NULL, '2022-02-09 10:54:16', '2022-02-09 10:54:16'),
	(2, 'Logo Design', 'Est non laborum aperiam voluptatum dolores voluptates. In facere voluptatem eius. Dolores aliquid assumenda excepturi autem omnis.', 'logo-design', 'publish', 129, NULL, NULL, 2, 11, 1, NULL, NULL, NULL, '2022-02-09 10:54:16', '2022-02-09 10:54:16'),
	(3, 'Nobis magnam est dolorem eos.', 'Quisquam aliquid iure est saepe. Minima nostrum deleniti sint. Ut vel rerum natus quas nihil beatae consequatur.', 'nobis-magnam-est-dolorem-eos', 'publish', 130, NULL, NULL, 3, 4, 2, NULL, NULL, NULL, '2022-02-09 10:54:16', '2022-02-09 10:54:16'),
	(4, 'Qui nisi.', 'Omnis minima similique velit architecto et ut consequatur. Et voluptate id est. Minima omnis autem hic est voluptatum. Voluptas qui ut dolores qui aspernatur sapiente.', 'qui-nisi', 'publish', 131, NULL, NULL, 5, 6, 2, NULL, NULL, NULL, '2022-02-09 10:54:16', '2022-02-09 10:54:16'),
	(5, 'Enim est est.', 'Itaque minima expedita vel quae tempore. Itaque autem quo perferendis. Enim saepe qui in necessitatibus nam quia quia provident. Quo at ipsam vel repudiandae.', 'enim-est-est', 'publish', 131, NULL, NULL, 7, 8, 2, NULL, NULL, NULL, '2022-02-09 10:54:16', '2022-02-09 10:54:16'),
	(6, 'Repellat deleniti qui.', 'Ut est laborum pariatur. Cum est qui ea facere sed repellendus. Rem quam et quod cupiditate dolores esse. Sed amet aspernatur nam explicabo est. Et qui neque nesciunt dolorem est quos pariatur voluptatum.', 'repellat-deleniti-qui', 'publish', 129, NULL, NULL, 9, 10, 2, NULL, NULL, NULL, '2022-02-09 10:54:16', '2022-02-09 10:54:16'),
	(7, 'Sed ut.', 'Qui quae quia quis ex. Ex occaecati veniam nihil. Non sed nulla tempore et.', 'sed-ut', 'publish', 131, NULL, NULL, 12, 21, 1, NULL, NULL, NULL, '2022-02-09 10:54:16', '2022-02-09 10:54:16'),
	(8, 'Nobis magnam est dolorem eos.', 'Quisquam aliquid iure est saepe. Minima nostrum deleniti sint. Ut vel rerum natus quas nihil beatae consequatur.', 'nobis-magnam-est-dolorem-eos-1', 'publish', 130, NULL, NULL, 13, 14, 7, NULL, NULL, NULL, '2022-02-09 10:54:16', '2022-02-09 10:54:16'),
	(9, 'Qui nisi.', 'Omnis minima similique velit architecto et ut consequatur. Et voluptate id est. Minima omnis autem hic est voluptatum. Voluptas qui ut dolores qui aspernatur sapiente.', 'qui-nisi-1', 'publish', 131, NULL, NULL, 15, 16, 7, NULL, NULL, NULL, '2022-02-09 10:54:16', '2022-02-09 10:54:16'),
	(10, 'Enim est est.', 'Itaque minima expedita vel quae tempore. Itaque autem quo perferendis. Enim saepe qui in necessitatibus nam quia quia provident. Quo at ipsam vel repudiandae.', 'enim-est-est-1', 'publish', 131, NULL, NULL, 17, 18, 7, NULL, NULL, NULL, '2022-02-09 10:54:17', '2022-02-09 10:54:17'),
	(11, 'Repellat deleniti qui.', 'Ut est laborum pariatur. Cum est qui ea facere sed repellendus. Rem quam et quod cupiditate dolores esse. Sed amet aspernatur nam explicabo est. Et qui neque nesciunt dolorem est quos pariatur voluptatum.', 'repellat-deleniti-qui-1', 'publish', 129, NULL, NULL, 19, 20, 7, NULL, NULL, NULL, '2022-02-09 10:54:17', '2022-02-09 10:54:17'),
	(12, 'Tenetur laborum at.', 'Similique magni et provident omnis autem esse. Amet vitae ab aut. Tempore alias et odio qui dolor et aut non. Similique molestiae similique nihil asperiores et et. Eum consequatur mollitia tenetur ipsum.', 'tenetur-laborum-at', 'publish', 133, NULL, NULL, 22, 31, 1, NULL, NULL, NULL, '2022-02-09 10:54:17', '2022-02-09 10:54:17'),
	(13, 'Nobis magnam est dolorem eos.', 'Quisquam aliquid iure est saepe. Minima nostrum deleniti sint. Ut vel rerum natus quas nihil beatae consequatur.', 'nobis-magnam-est-dolorem-eos-2', 'publish', 130, NULL, NULL, 23, 24, 12, NULL, NULL, NULL, '2022-02-09 10:54:17', '2022-02-09 10:54:17'),
	(14, 'Qui nisi.', 'Omnis minima similique velit architecto et ut consequatur. Et voluptate id est. Minima omnis autem hic est voluptatum. Voluptas qui ut dolores qui aspernatur sapiente.', 'qui-nisi-2', 'publish', 131, NULL, NULL, 25, 26, 12, NULL, NULL, NULL, '2022-02-09 10:54:17', '2022-02-09 10:54:17'),
	(15, 'Enim est est.', 'Itaque minima expedita vel quae tempore. Itaque autem quo perferendis. Enim saepe qui in necessitatibus nam quia quia provident. Quo at ipsam vel repudiandae.', 'enim-est-est-2', 'publish', 131, NULL, NULL, 27, 28, 12, NULL, NULL, NULL, '2022-02-09 10:54:17', '2022-02-09 10:54:17'),
	(16, 'Repellat deleniti qui.', 'Ut est laborum pariatur. Cum est qui ea facere sed repellendus. Rem quam et quod cupiditate dolores esse. Sed amet aspernatur nam explicabo est. Et qui neque nesciunt dolorem est quos pariatur voluptatum.', 'repellat-deleniti-qui-2', 'publish', 129, NULL, NULL, 29, 30, 12, NULL, NULL, NULL, '2022-02-09 10:54:17', '2022-02-09 10:54:17'),
	(17, 'Digital Marketing', 'Voluptates perferendis velit adipisci doloremque impedit sapiente corporis. Ducimus molestiae qui ea tenetur quo est praesentium. Illo a nisi omnis ad nemo ex. Libero tenetur esse ipsa ut.', 'digital-marketing', 'publish', 128, '[{"title":"Quia cumque.","content":"Ex quos iure aliquid consequatur esse iusto consequatur aut. Eos voluptatem assumenda repellat in sequi dolorem similique. Reiciendis sequi qui consequatur libero in dolores."},{"title":"Qui nesciunt.","content":"Praesentium at distinctio officia ab porro quia et. Distinctio suscipit maiores consequatur temporibus doloremque odio. Soluta sed perspiciatis aliquid cum. Porro sunt aperiam temporibus sed minima consequatur."},{"title":"Alias neque.","content":"Qui maiores officia dolor harum omnis esse. Qui corporis molestias recusandae maxime illum magni. Saepe quae et doloremque quia assumenda sit. Nam eaque quos ab."},{"title":"Omnis quidem.","content":"Eligendi in quas eaque. Facilis dolores excepturi maxime fuga dolores. Eum laudantium aut et voluptatem. A quam amet adipisci."}]', 6, 33, 64, NULL, NULL, NULL, NULL, '2022-02-09 10:54:17', '2022-02-09 10:54:17'),
	(18, 'Logo Design', 'Est non laborum aperiam voluptatum dolores voluptates. In facere voluptatem eius. Dolores aliquid assumenda excepturi autem omnis.', 'logo-design-1', 'publish', 129, NULL, NULL, 34, 43, 17, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(19, 'Nobis magnam est dolorem eos.', 'Quisquam aliquid iure est saepe. Minima nostrum deleniti sint. Ut vel rerum natus quas nihil beatae consequatur.', 'nobis-magnam-est-dolorem-eos-3', 'publish', 130, NULL, NULL, 35, 36, 18, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(20, 'Qui nisi.', 'Omnis minima similique velit architecto et ut consequatur. Et voluptate id est. Minima omnis autem hic est voluptatum. Voluptas qui ut dolores qui aspernatur sapiente.', 'qui-nisi-3', 'publish', 131, NULL, NULL, 37, 38, 18, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(21, 'Enim est est.', 'Itaque minima expedita vel quae tempore. Itaque autem quo perferendis. Enim saepe qui in necessitatibus nam quia quia provident. Quo at ipsam vel repudiandae.', 'enim-est-est-3', 'publish', 131, NULL, NULL, 39, 40, 18, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(22, 'Repellat deleniti qui.', 'Ut est laborum pariatur. Cum est qui ea facere sed repellendus. Rem quam et quod cupiditate dolores esse. Sed amet aspernatur nam explicabo est. Et qui neque nesciunt dolorem est quos pariatur voluptatum.', 'repellat-deleniti-qui-3', 'publish', 129, NULL, NULL, 41, 42, 18, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(23, 'Sed ut.', 'Qui quae quia quis ex. Ex occaecati veniam nihil. Non sed nulla tempore et.', 'sed-ut-1', 'publish', 131, NULL, NULL, 44, 53, 17, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(24, 'Nobis magnam est dolorem eos.', 'Quisquam aliquid iure est saepe. Minima nostrum deleniti sint. Ut vel rerum natus quas nihil beatae consequatur.', 'nobis-magnam-est-dolorem-eos-4', 'publish', 130, NULL, NULL, 45, 46, 23, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(25, 'Qui nisi.', 'Omnis minima similique velit architecto et ut consequatur. Et voluptate id est. Minima omnis autem hic est voluptatum. Voluptas qui ut dolores qui aspernatur sapiente.', 'qui-nisi-4', 'publish', 131, NULL, NULL, 47, 48, 23, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(26, 'Enim est est.', 'Itaque minima expedita vel quae tempore. Itaque autem quo perferendis. Enim saepe qui in necessitatibus nam quia quia provident. Quo at ipsam vel repudiandae.', 'enim-est-est-4', 'publish', 131, NULL, NULL, 49, 50, 23, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(27, 'Repellat deleniti qui.', 'Ut est laborum pariatur. Cum est qui ea facere sed repellendus. Rem quam et quod cupiditate dolores esse. Sed amet aspernatur nam explicabo est. Et qui neque nesciunt dolorem est quos pariatur voluptatum.', 'repellat-deleniti-qui-4', 'publish', 129, NULL, NULL, 51, 52, 23, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(28, 'Tenetur laborum at.', 'Similique magni et provident omnis autem esse. Amet vitae ab aut. Tempore alias et odio qui dolor et aut non. Similique molestiae similique nihil asperiores et et. Eum consequatur mollitia tenetur ipsum.', 'tenetur-laborum-at-1', 'publish', 133, NULL, NULL, 54, 63, 17, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(29, 'Nobis magnam est dolorem eos.', 'Quisquam aliquid iure est saepe. Minima nostrum deleniti sint. Ut vel rerum natus quas nihil beatae consequatur.', 'nobis-magnam-est-dolorem-eos-5', 'publish', 130, NULL, NULL, 55, 56, 28, NULL, NULL, NULL, '2022-02-09 10:54:18', '2022-02-09 10:54:18'),
	(30, 'Qui nisi.', 'Omnis minima similique velit architecto et ut consequatur. Et voluptate id est. Minima omnis autem hic est voluptatum. Voluptas qui ut dolores qui aspernatur sapiente.', 'qui-nisi-5', 'publish', 131, NULL, NULL, 57, 58, 28, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(31, 'Enim est est.', 'Itaque minima expedita vel quae tempore. Itaque autem quo perferendis. Enim saepe qui in necessitatibus nam quia quia provident. Quo at ipsam vel repudiandae.', 'enim-est-est-5', 'publish', 131, NULL, NULL, 59, 60, 28, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(32, 'Repellat deleniti qui.', 'Ut est laborum pariatur. Cum est qui ea facere sed repellendus. Rem quam et quod cupiditate dolores esse. Sed amet aspernatur nam explicabo est. Et qui neque nesciunt dolorem est quos pariatur voluptatum.', 'repellat-deleniti-qui-5', 'publish', 129, NULL, NULL, 61, 62, 28, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(33, 'Video & Animation', 'Eum culpa officia sunt delectus. Rerum fugit unde eum omnis a expedita. Modi iste fugit quis quis commodi voluptatem voluptatem perferendis.', 'video-animation', 'publish', 128, '[{"title":"Quia cumque.","content":"Ex quos iure aliquid consequatur esse iusto consequatur aut. Eos voluptatem assumenda repellat in sequi dolorem similique. Reiciendis sequi qui consequatur libero in dolores."},{"title":"Qui nesciunt.","content":"Praesentium at distinctio officia ab porro quia et. Distinctio suscipit maiores consequatur temporibus doloremque odio. Soluta sed perspiciatis aliquid cum. Porro sunt aperiam temporibus sed minima consequatur."},{"title":"Alias neque.","content":"Qui maiores officia dolor harum omnis esse. Qui corporis molestias recusandae maxime illum magni. Saepe quae et doloremque quia assumenda sit. Nam eaque quos ab."},{"title":"Omnis quidem.","content":"Eligendi in quas eaque. Facilis dolores excepturi maxime fuga dolores. Eum laudantium aut et voluptatem. A quam amet adipisci."}]', 4, 65, 96, NULL, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(34, 'Logo Design', 'Est non laborum aperiam voluptatum dolores voluptates. In facere voluptatem eius. Dolores aliquid assumenda excepturi autem omnis.', 'logo-design-2', 'publish', 129, NULL, NULL, 66, 75, 33, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(35, 'Nobis magnam est dolorem eos.', 'Quisquam aliquid iure est saepe. Minima nostrum deleniti sint. Ut vel rerum natus quas nihil beatae consequatur.', 'nobis-magnam-est-dolorem-eos-6', 'publish', 130, NULL, NULL, 67, 68, 34, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(36, 'Qui nisi.', 'Omnis minima similique velit architecto et ut consequatur. Et voluptate id est. Minima omnis autem hic est voluptatum. Voluptas qui ut dolores qui aspernatur sapiente.', 'qui-nisi-6', 'publish', 131, NULL, NULL, 69, 70, 34, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(37, 'Enim est est.', 'Itaque minima expedita vel quae tempore. Itaque autem quo perferendis. Enim saepe qui in necessitatibus nam quia quia provident. Quo at ipsam vel repudiandae.', 'enim-est-est-6', 'publish', 131, NULL, NULL, 71, 72, 34, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(38, 'Repellat deleniti qui.', 'Ut est laborum pariatur. Cum est qui ea facere sed repellendus. Rem quam et quod cupiditate dolores esse. Sed amet aspernatur nam explicabo est. Et qui neque nesciunt dolorem est quos pariatur voluptatum.', 'repellat-deleniti-qui-6', 'publish', 129, NULL, NULL, 73, 74, 34, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(39, 'Sed ut.', 'Qui quae quia quis ex. Ex occaecati veniam nihil. Non sed nulla tempore et.', 'sed-ut-2', 'publish', 131, NULL, NULL, 76, 85, 33, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20'),
	(40, 'Nobis magnam est dolorem eos.', 'Quisquam aliquid iure est saepe. Minima nostrum deleniti sint. Ut vel rerum natus quas nihil beatae consequatur.', 'nobis-magnam-est-dolorem-eos-7', 'publish', 130, NULL, NULL, 77, 78, 39, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20'),
	(41, 'Qui nisi.', 'Omnis minima similique velit architecto et ut consequatur. Et voluptate id est. Minima omnis autem hic est voluptatum. Voluptas qui ut dolores qui aspernatur sapiente.', 'qui-nisi-7', 'publish', 131, NULL, NULL, 79, 80, 39, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20'),
	(42, 'Enim est est.', 'Itaque minima expedita vel quae tempore. Itaque autem quo perferendis. Enim saepe qui in necessitatibus nam quia quia provident. Quo at ipsam vel repudiandae.', 'enim-est-est-7', 'publish', 131, NULL, NULL, 81, 82, 39, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20'),
	(43, 'Repellat deleniti qui.', 'Ut est laborum pariatur. Cum est qui ea facere sed repellendus. Rem quam et quod cupiditate dolores esse. Sed amet aspernatur nam explicabo est. Et qui neque nesciunt dolorem est quos pariatur voluptatum.', 'repellat-deleniti-qui-7', 'publish', 129, NULL, NULL, 83, 84, 39, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20'),
	(44, 'Tenetur laborum at.', 'Similique magni et provident omnis autem esse. Amet vitae ab aut. Tempore alias et odio qui dolor et aut non. Similique molestiae similique nihil asperiores et et. Eum consequatur mollitia tenetur ipsum.', 'tenetur-laborum-at-2', 'publish', 133, NULL, NULL, 86, 95, 33, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20'),
	(45, 'Nobis magnam est dolorem eos.', 'Quisquam aliquid iure est saepe. Minima nostrum deleniti sint. Ut vel rerum natus quas nihil beatae consequatur.', 'nobis-magnam-est-dolorem-eos-8', 'publish', 130, NULL, NULL, 87, 88, 44, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20'),
	(46, 'Qui nisi.', 'Omnis minima similique velit architecto et ut consequatur. Et voluptate id est. Minima omnis autem hic est voluptatum. Voluptas qui ut dolores qui aspernatur sapiente.', 'qui-nisi-8', 'publish', 131, NULL, NULL, 89, 90, 44, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20'),
	(47, 'Enim est est.', 'Itaque minima expedita vel quae tempore. Itaque autem quo perferendis. Enim saepe qui in necessitatibus nam quia quia provident. Quo at ipsam vel repudiandae.', 'enim-est-est-8', 'publish', 131, NULL, NULL, 91, 92, 44, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20'),
	(48, 'Repellat deleniti qui.', 'Ut est laborum pariatur. Cum est qui ea facere sed repellendus. Rem quam et quod cupiditate dolores esse. Sed amet aspernatur nam explicabo est. Et qui neque nesciunt dolorem est quos pariatur voluptatum.', 'repellat-deleniti-qui-8', 'publish', 129, NULL, NULL, 93, 94, 44, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20');
/*!40000 ALTER TABLE `bc_gig_cat` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_gig_cat_trans
CREATE TABLE IF NOT EXISTS `bc_gig_cat_trans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bc_gig_cat_trans_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_gig_cat_trans: ~0 rows (approximately)
DELETE FROM `bc_gig_cat_trans`;
/*!40000 ALTER TABLE `bc_gig_cat_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_gig_cat_trans` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_gig_cat_types
CREATE TABLE IF NOT EXISTS `bc_gig_cat_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  `cat_id` bigint(20) DEFAULT NULL,
  `cat_children` text COLLATE utf8mb4_unicode_ci,
  `_lft` int(10) unsigned NOT NULL DEFAULT '0',
  `_rgt` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bc_gig_cat_types_slug_unique` (`slug`),
  KEY `bc_gig_cat_types__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_gig_cat_types: ~0 rows (approximately)
DELETE FROM `bc_gig_cat_types`;
/*!40000 ALTER TABLE `bc_gig_cat_types` DISABLE KEYS */;
INSERT INTO `bc_gig_cat_types` (`id`, `name`, `content`, `slug`, `status`, `image_id`, `cat_id`, `cat_children`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Dolores est quae.', NULL, 'dolores-est-quae', 'publish', 136, 1, '[2,12]', 0, 0, NULL, NULL, NULL, NULL, '2022-02-09 10:54:17', '2022-02-09 10:54:17'),
	(2, 'Fuga dolorem.', NULL, 'fuga-dolorem', 'publish', 136, 1, '[7,12]', 0, 0, NULL, NULL, NULL, NULL, '2022-02-09 10:54:17', '2022-02-09 10:54:17'),
	(3, 'Rerum voluptatem non.', NULL, 'rerum-voluptatem-non', 'publish', 136, 1, '[2,7,12]', 0, 0, NULL, NULL, NULL, NULL, '2022-02-09 10:54:17', '2022-02-09 10:54:17'),
	(4, 'Aut dolores.', NULL, 'aut-dolores', 'publish', 136, 17, '[18,23,28]', 0, 0, NULL, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(5, 'Error est.', NULL, 'error-est', 'publish', 135, 17, '[18,23]', 0, 0, NULL, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(6, 'Est non.', NULL, 'est-non', 'publish', 137, 17, '[18,28]', 0, 0, NULL, NULL, NULL, NULL, '2022-02-09 10:54:19', '2022-02-09 10:54:19'),
	(7, 'Esse nostrum.', NULL, 'esse-nostrum', 'publish', 137, 33, '[34,39,44]', 0, 0, NULL, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20'),
	(8, 'Non reprehenderit.', NULL, 'non-reprehenderit', 'publish', 136, 33, '[34,39,44]', 0, 0, NULL, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20'),
	(9, 'Consequatur nulla maxime.', NULL, 'consequatur-nulla-maxime', 'publish', 136, 33, '[34,39]', 0, 0, NULL, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20');
/*!40000 ALTER TABLE `bc_gig_cat_types` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_gig_cat_type_trans
CREATE TABLE IF NOT EXISTS `bc_gig_cat_type_trans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bc_gig_cat_type_trans_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_gig_cat_type_trans: ~0 rows (approximately)
DELETE FROM `bc_gig_cat_type_trans`;
/*!40000 ALTER TABLE `bc_gig_cat_type_trans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_gig_cat_type_trans` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_gig_orders
CREATE TABLE IF NOT EXISTS `bc_gig_orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) DEFAULT NULL,
  `order_item_id` bigint(20) DEFAULT NULL,
  `gig_id` bigint(20) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `delivery_time` int(11) DEFAULT NULL,
  `delivery_date` timestamp NULL DEFAULT NULL,
  `package` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `total` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `extra_prices` text COLLATE utf8mb4_unicode_ci,
  `requirements` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `start_date` timestamp NULL DEFAULT NULL,
  `last_delivered` timestamp NULL DEFAULT NULL,
  `is_on_time` tinyint(4) DEFAULT '0',
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bc_gig_orders_gig_id_order_item_id_unique` (`gig_id`,`order_item_id`),
  KEY `bc_gig_orders_customer_id_index` (`customer_id`),
  KEY `bc_gig_orders_author_id_index` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_gig_orders: ~0 rows (approximately)
DELETE FROM `bc_gig_orders`;
/*!40000 ALTER TABLE `bc_gig_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_gig_orders` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_gig_order_activities
CREATE TABLE IF NOT EXISTS `bc_gig_order_activities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gig_order_id` bigint(20) DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) DEFAULT NULL,
  `file_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bc_gig_order_activities_gig_order_id_index` (`gig_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_gig_order_activities: ~0 rows (approximately)
DELETE FROM `bc_gig_order_activities`;
/*!40000 ALTER TABLE `bc_gig_order_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_gig_order_activities` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_gig_tags
CREATE TABLE IF NOT EXISTS `bc_gig_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_gig_tags: ~0 rows (approximately)
DELETE FROM `bc_gig_tags`;
/*!40000 ALTER TABLE `bc_gig_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_gig_tags` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_gig_term
CREATE TABLE IF NOT EXISTS `bc_gig_term` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_gig_term: ~0 rows (approximately)
DELETE FROM `bc_gig_term`;
/*!40000 ALTER TABLE `bc_gig_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_gig_term` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_gig_translations
CREATE TABLE IF NOT EXISTS `bc_gig_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `packages` text COLLATE utf8mb4_unicode_ci,
  `package_compare` text COLLATE utf8mb4_unicode_ci,
  `faqs` text COLLATE utf8mb4_unicode_ci,
  `requirements` text COLLATE utf8mb4_unicode_ci,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bc_gig_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_gig_translations: ~0 rows (approximately)
DELETE FROM `bc_gig_translations`;
/*!40000 ALTER TABLE `bc_gig_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_gig_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_jobs
CREATE TABLE IF NOT EXISTS `bc_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `category_id` bigint(20) DEFAULT NULL,
  `thumbnail_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `job_type_id` bigint(20) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `hours` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hours_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_min` decimal(15,2) DEFAULT NULL,
  `salary_max` decimal(15,2) DEFAULT NULL,
  `gender` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `experience` double(8,2) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `is_urgent` tinyint(4) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `apply_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apply_link` text COLLATE utf8mb4_unicode_ci,
  `apply_email` text COLLATE utf8mb4_unicode_ci,
  `wage_agreement` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bc_jobs_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_jobs: ~0 rows (approximately)
DELETE FROM `bc_jobs`;
/*!40000 ALTER TABLE `bc_jobs` DISABLE KEYS */;
INSERT INTO `bc_jobs` (`id`, `title`, `slug`, `content`, `category_id`, `thumbnail_id`, `location_id`, `company_id`, `job_type_id`, `expiration_date`, `hours`, `hours_type`, `salary_type`, `salary_min`, `salary_max`, `gender`, `map_lat`, `map_lng`, `map_zoom`, `experience`, `is_featured`, `is_urgent`, `status`, `deleted_at`, `create_user`, `update_user`, `created_at`, `updated_at`, `apply_type`, `apply_link`, `apply_email`, `wage_agreement`) VALUES
	(1, 'Product Manager, Studio', 'product-manager-studio', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 8, 0, 1, 1, 2, '2023-06-24 10:54:10', '30h', 'week', 'monthly', 4500.00, 6000.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 1, 0, 'publish', NULL, 1, NULL, '2022-02-09 10:54:10', NULL, NULL, NULL, NULL, NULL),
	(2, 'Recruiting Coordinator', 'recruiting-coordinator', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 5, 0, 3, 1, 5, '2023-06-24 10:54:10', '30h', 'week', 'monthly', 4500.00, 6000.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 0, 1, 'publish', NULL, 1, NULL, '2022-02-09 10:54:10', NULL, NULL, NULL, NULL, NULL),
	(3, 'Senior Product Designer', 'senior-product-designer', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 3, 0, 5, 2, 3, '2023-06-24 10:54:10', '30h', 'week', 'monthly', 4500.00, 6000.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 1, 1, 'publish', NULL, 1, NULL, '2022-02-09 10:54:10', NULL, NULL, NULL, NULL, NULL),
	(4, 'Senior Full Stack Engineer, Creator Success', 'senior-full-stack-engineer-creator-success', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 4, 0, 5, 3, 1, '2023-06-24 10:54:10', '30h', 'week', 'monthly', 4500.00, 6000.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 1, 0, 'publish', NULL, 1, NULL, '2022-02-09 10:54:10', NULL, NULL, NULL, NULL, NULL),
	(5, 'General Ledger Accountant', 'general-ledger-accountant', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 1, 0, 3, 4, 2, '2023-06-24 10:54:10', '30h', 'week', 'monthly', 4500.00, 6000.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 0, 0, 'publish', NULL, 1, NULL, '2022-02-09 10:54:10', NULL, NULL, NULL, NULL, NULL),
	(6, 'Assistant / Store Keeper', 'assistant-store-keeper', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 9, 0, 2, 1, 4, '2023-06-24 10:54:10', '30h', 'week', 'monthly', 4500.00, 6000.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 1, 0, 'publish', NULL, 1, NULL, '2022-02-09 10:54:10', NULL, NULL, NULL, NULL, NULL),
	(7, 'Product Sales Specialist', 'product-sales-specialist', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 2, 0, 1, 5, 1, '2023-06-24 10:54:10', '30h', 'week', 'monthly', 4500.00, 6000.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 0, 0, 'publish', NULL, 1, NULL, '2022-02-09 10:54:10', NULL, NULL, NULL, NULL, NULL),
	(8, 'Executive, HR Operations', 'executive-hr-operations', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 5, 0, 5, 1, 5, '2023-06-24 10:54:10', '30h', 'week', 'monthly', 4500.00, 6000.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 0, 0, 'publish', NULL, 1, NULL, '2022-02-09 10:54:10', NULL, NULL, NULL, NULL, NULL),
	(9, 'Restaurant Team Member', 'restaurant-team-member', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 7, 0, 5, 3, 1, '2023-06-24 10:54:10', '30h', 'week', 'monthly', 4500.00, 6000.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 1, 1, 'publish', NULL, 1, NULL, '2022-02-09 10:54:10', NULL, NULL, NULL, NULL, NULL),
	(10, 'Group Marketing Manager', 'group-marketing-manager', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 2, 0, 4, 1, 5, '2023-06-24 10:54:10', '30h', 'week', 'monthly', 4500.00, 6000.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 0, 0, 'publish', NULL, 1, NULL, '2022-02-09 10:54:10', NULL, NULL, NULL, NULL, NULL),
	(11, 'Software Engineer (Android), Libraries', 'software-engineer-android-lib', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 4, 0, 2, 4, 4, '2023-06-24 10:54:11', '30h', 'week', 'monthly', 2500.00, 3500.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 1, 0, 'publish', NULL, 1, NULL, '2022-02-09 10:54:11', NULL, NULL, NULL, NULL, NULL),
	(12, 'Product Designer / UI Designer', 'product-designer-ui-designer', '<h4>Job Description</h4>\n                            <p>As a Product Designer, you will work within a Product Delivery Team fused with UX, engineering, product and data talent. You will help the team design beautiful interfaces that solve business challenges for our clients. We work with a number of Tier 1 banks on building web-based applications for AML, KYC and Sanctions List management workflows. This role is ideal if you are looking to segue your career into the FinTech or Big Data arenas.</p>\n                            <h4>Key Responsibilities</h4>\n                            <ul class="list-style-three">\n                                <li>Be involved in every step of the product design cycle from discovery to developer handoff and user acceptance testing.</li>\n                                <li>Work with BAs, product managers and tech teams to lead the Product Design</li>\n                                <li>Maintain quality of the design process and ensure that when designs are translated into code they accurately reflect the design specifications.</li>\n                                <li>Accurately estimate design tickets during planning sessions.</li>\n                                <li>Contribute to sketching sessions involving non-designersCreate, iterate and maintain UI deliverables including sketch files, style guides, high fidelity prototypes, micro interaction specifications and pattern libraries.</li>\n                                <li>Ensure design choices are data led by identifying assumptions to test each sprint, and work with the analysts in your team to plan moderated usability test sessions.</li>\n                                <li>Design pixel perfect responsive UI’s and understand that adopting common interface patterns is better for UX than reinventing the wheel</li>\n                                <li>Present your work to the wider business at Show &amp; Tell sessions.</li>\n                            </ul>\n                            <h4>Skill &amp; Experience</h4>\n                            <ul class="list-style-three">\n                                <li>You have at least 3 years’ experience working as a Product Designer.</li>\n                                <li>You have experience using Sketch and InVision or Framer X</li>\n                                <li>You have some previous experience working in an agile environment – Think two-week sprints.</li>\n                                <li>You are familiar using Jira and Confluence in your workflow</li>\n                            </ul>', 3, 0, 2, 1, 2, '2023-06-24 10:54:11', '30h', 'week', 'monthly', 800.00, 3000.00, 'Both', '30.918411906603435', '-114.72952493625287', 16, 2.00, 1, 1, 'publish', NULL, 1, NULL, '2022-02-09 10:54:11', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `bc_jobs` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_job_candidates
CREATE TABLE IF NOT EXISTS `bc_job_candidates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint(20) NOT NULL,
  `candidate_id` bigint(20) NOT NULL,
  `cv_id` bigint(20) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_job_candidates: ~0 rows (approximately)
DELETE FROM `bc_job_candidates`;
/*!40000 ALTER TABLE `bc_job_candidates` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_job_candidates` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_job_skills
CREATE TABLE IF NOT EXISTS `bc_job_skills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` bigint(20) unsigned NOT NULL,
  `skill_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_job_skills: ~0 rows (approximately)
DELETE FROM `bc_job_skills`;
/*!40000 ALTER TABLE `bc_job_skills` DISABLE KEYS */;
INSERT INTO `bc_job_skills` (`id`, `job_id`, `skill_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, '2022-02-09 10:54:12', NULL),
	(2, 1, 5, '2022-02-09 10:54:12', NULL),
	(3, 1, 6, '2022-02-09 10:54:12', NULL),
	(4, 1, 8, '2022-02-09 10:54:12', NULL),
	(5, 2, 1, '2022-02-09 10:54:12', NULL),
	(6, 2, 2, '2022-02-09 10:54:12', NULL),
	(7, 2, 4, '2022-02-09 10:54:12', NULL),
	(8, 2, 7, '2022-02-09 10:54:12', NULL),
	(9, 3, 1, '2022-02-09 10:54:12', NULL),
	(10, 3, 2, '2022-02-09 10:54:12', NULL),
	(11, 3, 3, '2022-02-09 10:54:12', NULL),
	(12, 3, 5, '2022-02-09 10:54:12', NULL),
	(13, 3, 7, '2022-02-09 10:54:12', NULL),
	(14, 3, 8, '2022-02-09 10:54:12', NULL),
	(15, 4, 1, '2022-02-09 10:54:12', NULL),
	(16, 4, 3, '2022-02-09 10:54:12', NULL),
	(17, 4, 4, '2022-02-09 10:54:13', NULL),
	(18, 4, 6, '2022-02-09 10:54:13', NULL),
	(19, 4, 8, '2022-02-09 10:54:13', NULL),
	(20, 5, 2, '2022-02-09 10:54:13', NULL),
	(21, 5, 3, '2022-02-09 10:54:13', NULL),
	(22, 5, 4, '2022-02-09 10:54:13', NULL),
	(23, 5, 5, '2022-02-09 10:54:13', NULL),
	(24, 5, 6, '2022-02-09 10:54:13', NULL),
	(25, 5, 7, '2022-02-09 10:54:13', NULL),
	(26, 5, 8, '2022-02-09 10:54:13', NULL),
	(27, 6, 2, '2022-02-09 10:54:13', NULL),
	(28, 6, 4, '2022-02-09 10:54:13', NULL),
	(29, 6, 6, '2022-02-09 10:54:13', NULL),
	(30, 6, 7, '2022-02-09 10:54:13', NULL),
	(31, 6, 8, '2022-02-09 10:54:13', NULL),
	(32, 7, 1, '2022-02-09 10:54:13', NULL),
	(33, 7, 3, '2022-02-09 10:54:13', NULL),
	(34, 7, 7, '2022-02-09 10:54:14', NULL),
	(35, 7, 8, '2022-02-09 10:54:14', NULL),
	(36, 8, 1, '2022-02-09 10:54:14', NULL),
	(37, 8, 3, '2022-02-09 10:54:14', NULL),
	(38, 8, 4, '2022-02-09 10:54:14', NULL),
	(39, 8, 5, '2022-02-09 10:54:14', NULL),
	(40, 8, 6, '2022-02-09 10:54:14', NULL),
	(41, 8, 7, '2022-02-09 10:54:14', NULL),
	(42, 8, 8, '2022-02-09 10:54:14', NULL),
	(43, 9, 2, '2022-02-09 10:54:14', NULL),
	(44, 9, 3, '2022-02-09 10:54:14', NULL),
	(45, 9, 4, '2022-02-09 10:54:14', NULL),
	(46, 9, 5, '2022-02-09 10:54:14', NULL),
	(47, 9, 6, '2022-02-09 10:54:14', NULL),
	(48, 9, 7, '2022-02-09 10:54:14', NULL),
	(49, 9, 8, '2022-02-09 10:54:14', NULL),
	(50, 10, 1, '2022-02-09 10:54:14', NULL),
	(51, 10, 2, '2022-02-09 10:54:14', NULL),
	(52, 10, 4, '2022-02-09 10:54:14', NULL),
	(53, 10, 5, '2022-02-09 10:54:14', NULL),
	(54, 10, 7, '2022-02-09 10:54:14', NULL),
	(55, 11, 2, '2022-02-09 10:54:14', NULL),
	(56, 11, 5, '2022-02-09 10:54:14', NULL),
	(57, 11, 6, '2022-02-09 10:54:14', NULL),
	(58, 11, 7, '2022-02-09 10:54:14', NULL),
	(59, 11, 8, '2022-02-09 10:54:14', NULL),
	(60, 12, 2, '2022-02-09 10:54:14', NULL),
	(61, 12, 6, '2022-02-09 10:54:14', NULL),
	(62, 12, 7, '2022-02-09 10:54:14', NULL),
	(63, 12, 8, '2022-02-09 10:54:14', NULL);
/*!40000 ALTER TABLE `bc_job_skills` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_job_translations
CREATE TABLE IF NOT EXISTS `bc_job_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) NOT NULL,
  `locale` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_job_translations: ~0 rows (approximately)
DELETE FROM `bc_job_translations`;
/*!40000 ALTER TABLE `bc_job_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_job_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_job_types
CREATE TABLE IF NOT EXISTS `bc_job_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_job_types: ~0 rows (approximately)
DELETE FROM `bc_job_types`;
/*!40000 ALTER TABLE `bc_job_types` DISABLE KEYS */;
INSERT INTO `bc_job_types` (`id`, `name`, `slug`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Freelance', NULL, 'publish', NULL, NULL, NULL, '2022-02-09 10:54:10', NULL),
	(2, 'Full Time', NULL, 'publish', NULL, NULL, NULL, '2022-02-09 10:54:10', NULL),
	(3, 'Internship', NULL, 'publish', NULL, NULL, NULL, '2022-02-09 10:54:10', NULL),
	(4, 'Part Time', NULL, 'publish', NULL, NULL, NULL, '2022-02-09 10:54:10', NULL),
	(5, 'Temporary', NULL, 'publish', NULL, NULL, NULL, '2022-02-09 10:54:10', NULL);
/*!40000 ALTER TABLE `bc_job_types` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_job_type_translations
CREATE TABLE IF NOT EXISTS `bc_job_type_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bc_job_type_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_job_type_translations: ~0 rows (approximately)
DELETE FROM `bc_job_type_translations`;
/*!40000 ALTER TABLE `bc_job_type_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_job_type_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_locations
CREATE TABLE IF NOT EXISTS `bc_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) unsigned NOT NULL DEFAULT '0',
  `_rgt` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bc_locations__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_locations: ~0 rows (approximately)
DELETE FROM `bc_locations`;
/*!40000 ALTER TABLE `bc_locations` DISABLE KEYS */;
INSERT INTO `bc_locations` (`id`, `name`, `slug`, `image_id`, `map_lat`, `map_lng`, `map_zoom`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'New York', 'new-york', 22, '40.712776', '-74.005974', 12, 'publish', 1, 2, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', '2022-02-09 10:54:06'),
	(2, 'Paris', 'paris', 23, '48.856613', '2.352222', 12, 'publish', 3, 4, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', '2022-02-09 10:54:07'),
	(3, 'London', 'london', 24, '48.856613', '2.352222', 12, 'publish', 5, 6, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', '2022-02-09 10:54:07'),
	(4, 'Miami', 'miami', 25, '36.778259', '-119.417931', 12, 'publish', 7, 8, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', '2022-02-09 10:54:07'),
	(5, 'Los Angeles', 'los-angeles', 26, '34.052235', '-118.243683', 12, 'publish', 9, 10, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', '2022-02-09 10:54:07'),
	(6, 'New Jersey', 'new-jersey', 27, '40.058323', '-74.405663', 12, 'publish', 11, 12, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', '2022-02-09 10:54:07'),
	(7, 'San Francisco', 'san-francisco', 28, '37.774929', '-122.419418', 12, 'publish', 13, 14, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', '2022-02-09 10:54:07'),
	(8, 'Virginia', 'virginia', 29, '37.431572', '-78.656891', 12, 'publish', 15, 16, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', '2022-02-09 10:54:07');
/*!40000 ALTER TABLE `bc_locations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_location_translations
CREATE TABLE IF NOT EXISTS `bc_location_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bc_location_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_location_translations: ~0 rows (approximately)
DELETE FROM `bc_location_translations`;
/*!40000 ALTER TABLE `bc_location_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_location_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_review
CREATE TABLE IF NOT EXISTS `bc_review` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `rate_number` int(11) DEFAULT NULL,
  `author_ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_review: ~0 rows (approximately)
DELETE FROM `bc_review`;
/*!40000 ALTER TABLE `bc_review` DISABLE KEYS */;
INSERT INTO `bc_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
	(1, 1, 'gig', 'Sit nam laborum.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:20', 2, NULL, NULL, NULL, '2022-02-09 10:54:20', '2022-02-09 10:54:20', 1),
	(2, 1, 'gig', 'Et qui.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:21', 2, NULL, NULL, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21', 1),
	(3, 1, 'gig', 'Quasi et qui.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:21', 2, NULL, NULL, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21', 1),
	(4, 2, 'gig', 'Voluptas ab quae.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:21', 1, NULL, NULL, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21', 1),
	(5, 2, 'gig', 'Ut rem.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:21', 1, NULL, NULL, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21', 1),
	(6, 2, 'gig', 'Qui et veniam.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:21', 2, NULL, NULL, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21', 1),
	(7, 3, 'gig', 'Iste non illum.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:21', 2, NULL, NULL, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21', 1),
	(8, 3, 'gig', 'Doloribus aut et.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:21', 1, NULL, NULL, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21', 1),
	(9, 3, 'gig', 'Explicabo ipsum quo.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:22', 1, NULL, NULL, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22', 1),
	(10, 4, 'gig', 'Ea ut.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:22', 1, NULL, NULL, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22', 1),
	(11, 4, 'gig', 'In ex.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:22', 1, NULL, NULL, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22', 1),
	(12, 4, 'gig', 'Quis aspernatur aut.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:22', 1, NULL, NULL, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22', 1),
	(13, 5, 'gig', 'Odit provident.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:22', 1, NULL, NULL, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22', 1),
	(14, 5, 'gig', 'Debitis aut.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:22', 1, NULL, NULL, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22', 1),
	(15, 5, 'gig', 'Tenetur odio aliquam.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:22', 1, NULL, NULL, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22', 1),
	(16, 6, 'gig', 'Aut placeat.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:23', 2, NULL, NULL, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23', 1),
	(17, 6, 'gig', 'Iste totam consequatur.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:23', 1, NULL, NULL, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23', 1),
	(18, 6, 'gig', 'Amet quod.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:23', 2, NULL, NULL, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23', 1),
	(19, 7, 'gig', 'Nihil explicabo beatae.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:23', 1, NULL, NULL, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23', 1),
	(20, 7, 'gig', 'Quo distinctio ea.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:23', 1, NULL, NULL, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23', 1),
	(21, 7, 'gig', 'Fuga distinctio id.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:23', 2, NULL, NULL, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23', 1),
	(22, 8, 'gig', 'Reprehenderit ut aperiam.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:24', 2, NULL, NULL, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24', 1),
	(23, 8, 'gig', 'Ut dolorem explicabo.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:24', 2, NULL, NULL, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24', 1),
	(24, 8, 'gig', 'Non non vel.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:24', 2, NULL, NULL, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24', 1),
	(25, 9, 'gig', 'Veritatis repellendus est.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:24', 1, NULL, NULL, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24', 1),
	(26, 9, 'gig', 'Et unde libero.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:24', 1, NULL, NULL, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24', 1),
	(27, 9, 'gig', 'Inventore facilis et.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:24', 2, NULL, NULL, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24', 1),
	(28, 10, 'gig', 'Id magnam.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:24', 1, NULL, NULL, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24', 1),
	(29, 10, 'gig', 'Ut culpa.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:25', 2, NULL, NULL, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25', 1),
	(30, 10, 'gig', 'Aut fugit illum.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:25', 2, NULL, NULL, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25', 1),
	(31, 11, 'gig', 'Delectus et vero.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:25', 1, NULL, NULL, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25', 1),
	(32, 11, 'gig', 'Eum quibusdam.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:25', 1, NULL, NULL, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25', 1),
	(33, 11, 'gig', 'Esse reiciendis excepturi.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:25', 1, NULL, NULL, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25', 1),
	(34, 12, 'gig', 'Ut sed atque.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:25', 1, NULL, NULL, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25', 1),
	(35, 12, 'gig', 'Veniam nihil.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:25', 2, NULL, NULL, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25', 1),
	(36, 12, 'gig', 'Porro sed.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:25', 2, NULL, NULL, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25', 1),
	(37, 13, 'gig', 'Est vitae saepe.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:26', 2, NULL, NULL, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26', 1),
	(38, 13, 'gig', 'Autem officia.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:26', 1, NULL, NULL, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26', 1),
	(39, 13, 'gig', 'Iusto sunt.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:26', 2, NULL, NULL, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26', 1),
	(40, 14, 'gig', 'Ad est.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:26', 1, NULL, NULL, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26', 1),
	(41, 14, 'gig', 'Voluptatem quos aut.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:26', 2, NULL, NULL, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26', 1),
	(42, 14, 'gig', 'Pariatur aliquam.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:27', 1, NULL, NULL, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27', 1),
	(43, 15, 'gig', 'Veritatis perferendis.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:27', 2, NULL, NULL, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27', 1),
	(44, 15, 'gig', 'Laboriosam explicabo.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:27', 1, NULL, NULL, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27', 1),
	(45, 15, 'gig', 'Illo eaque.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:27', 2, NULL, NULL, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27', 1),
	(46, 16, 'gig', 'Consequuntur itaque distinctio.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:27', 2, NULL, NULL, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27', 1),
	(47, 16, 'gig', 'Eligendi architecto corrupti.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:27', 1, NULL, NULL, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27', 1),
	(48, 16, 'gig', 'Dolorum occaecati.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:28', 1, NULL, NULL, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28', 1),
	(49, 17, 'gig', 'Alias animi at.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:28', 1, NULL, NULL, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28', 1),
	(50, 17, 'gig', 'Vel ullam autem.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:28', 1, NULL, NULL, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28', 1),
	(51, 17, 'gig', 'Atque non.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:28', 2, NULL, NULL, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28', 1),
	(52, 18, 'gig', 'Repellat est.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:28', 1, NULL, NULL, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28', 1),
	(53, 18, 'gig', 'Aliquid suscipit.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:28', 2, NULL, NULL, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28', 1),
	(54, 18, 'gig', 'Voluptas nemo.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:28', 1, NULL, NULL, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28', 1),
	(55, 19, 'gig', 'Et natus.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:29', 1, NULL, NULL, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29', 1),
	(56, 19, 'gig', 'Sapiente laboriosam quia.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:29', 2, NULL, NULL, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29', 1),
	(57, 19, 'gig', 'Dolores repudiandae id.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-02-09 10:54:29', 2, NULL, NULL, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29', 1),
	(58, 20, 'gig', 'Vero dolor.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:29', 1, NULL, NULL, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29', 1),
	(59, 20, 'gig', 'Similique ipsam autem.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:29', 1, NULL, NULL, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29', 1),
	(60, 20, 'gig', 'Sed aliquid.', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-02-09 10:54:29', 1, NULL, NULL, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29', 1);
/*!40000 ALTER TABLE `bc_review` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_review_meta
CREATE TABLE IF NOT EXISTS `bc_review_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `review_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_review_meta: ~0 rows (approximately)
DELETE FROM `bc_review_meta`;
/*!40000 ALTER TABLE `bc_review_meta` DISABLE KEYS */;
INSERT INTO `bc_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(2, 1, 1, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(3, 1, 1, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(4, 1, 1, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(5, 1, 1, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(6, 2, 1, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(7, 2, 1, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(8, 2, 1, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(9, 2, 1, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(10, 2, 1, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(11, 3, 1, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(12, 3, 1, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(13, 3, 1, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(14, 3, 1, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(15, 3, 1, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(16, 4, 2, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(17, 4, 2, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(18, 4, 2, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(19, 4, 2, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(20, 4, 2, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(21, 5, 2, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(22, 5, 2, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(23, 5, 2, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(24, 5, 2, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(25, 5, 2, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(26, 6, 2, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(27, 6, 2, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(28, 6, 2, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(29, 6, 2, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(30, 6, 2, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(31, 7, 3, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(32, 7, 3, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(33, 7, 3, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(34, 7, 3, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(35, 7, 3, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(36, 8, 3, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(37, 8, 3, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(38, 8, 3, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(39, 8, 3, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:21', '2022-02-09 10:54:21'),
	(40, 8, 3, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(41, 9, 3, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(42, 9, 3, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(43, 9, 3, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(44, 9, 3, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(45, 9, 3, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(46, 10, 4, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(47, 10, 4, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(48, 10, 4, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(49, 10, 4, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(50, 10, 4, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(51, 11, 4, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(52, 11, 4, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(53, 11, 4, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(54, 11, 4, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(55, 11, 4, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(56, 12, 4, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(57, 12, 4, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(58, 12, 4, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(59, 12, 4, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(60, 12, 4, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(61, 13, 5, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(62, 13, 5, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(63, 13, 5, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(64, 13, 5, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(65, 13, 5, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(66, 14, 5, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(67, 14, 5, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(68, 14, 5, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(69, 14, 5, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(70, 14, 5, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(71, 15, 5, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(72, 15, 5, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(73, 15, 5, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(74, 15, 5, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(75, 15, 5, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:22', '2022-02-09 10:54:22'),
	(76, 16, 6, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(77, 16, 6, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(78, 16, 6, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(79, 16, 6, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(80, 16, 6, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(81, 17, 6, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(82, 17, 6, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(83, 17, 6, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(84, 17, 6, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(85, 17, 6, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(86, 18, 6, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(87, 18, 6, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(88, 18, 6, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(89, 18, 6, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(90, 18, 6, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(91, 19, 7, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(92, 19, 7, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(93, 19, 7, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(94, 19, 7, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(95, 19, 7, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(96, 20, 7, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(97, 20, 7, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(98, 20, 7, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(99, 20, 7, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(100, 20, 7, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(101, 21, 7, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(102, 21, 7, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(103, 21, 7, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(104, 21, 7, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(105, 21, 7, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:23', '2022-02-09 10:54:23'),
	(106, 22, 8, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(107, 22, 8, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(108, 22, 8, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(109, 22, 8, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(110, 22, 8, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(111, 23, 8, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(112, 23, 8, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(113, 23, 8, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(114, 23, 8, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(115, 23, 8, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(116, 24, 8, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(117, 24, 8, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(118, 24, 8, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(119, 24, 8, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(120, 24, 8, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(121, 25, 9, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(122, 25, 9, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(123, 25, 9, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(124, 25, 9, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(125, 25, 9, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(126, 26, 9, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(127, 26, 9, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(128, 26, 9, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(129, 26, 9, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(130, 26, 9, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(131, 27, 9, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(132, 27, 9, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(133, 27, 9, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(134, 27, 9, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(135, 27, 9, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(136, 28, 10, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(137, 28, 10, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(138, 28, 10, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(139, 28, 10, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:24', '2022-02-09 10:54:24'),
	(140, 28, 10, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(141, 29, 10, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(142, 29, 10, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(143, 29, 10, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(144, 29, 10, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(145, 29, 10, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(146, 30, 10, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(147, 30, 10, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(148, 30, 10, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(149, 30, 10, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(150, 30, 10, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(151, 31, 11, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(152, 31, 11, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(153, 31, 11, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(154, 31, 11, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(155, 31, 11, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(156, 32, 11, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(157, 32, 11, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(158, 32, 11, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(159, 32, 11, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(160, 32, 11, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(161, 33, 11, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(162, 33, 11, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(163, 33, 11, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(164, 33, 11, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(165, 33, 11, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(166, 34, 12, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(167, 34, 12, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(168, 34, 12, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(169, 34, 12, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(170, 34, 12, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(171, 35, 12, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(172, 35, 12, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(173, 35, 12, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(174, 35, 12, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(175, 35, 12, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:25', '2022-02-09 10:54:25'),
	(176, 36, 12, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(177, 36, 12, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(178, 36, 12, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(179, 36, 12, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(180, 36, 12, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(181, 37, 13, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(182, 37, 13, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(183, 37, 13, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(184, 37, 13, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(185, 37, 13, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(186, 38, 13, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(187, 38, 13, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(188, 38, 13, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(189, 38, 13, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(190, 38, 13, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(191, 39, 13, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(192, 39, 13, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(193, 39, 13, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(194, 39, 13, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(195, 39, 13, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(196, 40, 14, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(197, 40, 14, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(198, 40, 14, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(199, 40, 14, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(200, 40, 14, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(201, 41, 14, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(202, 41, 14, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(203, 41, 14, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(204, 41, 14, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(205, 41, 14, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:26', '2022-02-09 10:54:26'),
	(206, 42, 14, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(207, 42, 14, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(208, 42, 14, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(209, 42, 14, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(210, 42, 14, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(211, 43, 15, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(212, 43, 15, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(213, 43, 15, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(214, 43, 15, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(215, 43, 15, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(216, 44, 15, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(217, 44, 15, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(218, 44, 15, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(219, 44, 15, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(220, 44, 15, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(221, 45, 15, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(222, 45, 15, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(223, 45, 15, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(224, 45, 15, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(225, 45, 15, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(226, 46, 16, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(227, 46, 16, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(228, 46, 16, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(229, 46, 16, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(230, 46, 16, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(231, 47, 16, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(232, 47, 16, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(233, 47, 16, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(234, 47, 16, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:27', '2022-02-09 10:54:27'),
	(235, 47, 16, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(236, 48, 16, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(237, 48, 16, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(238, 48, 16, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(239, 48, 16, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(240, 48, 16, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(241, 49, 17, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(242, 49, 17, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(243, 49, 17, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(244, 49, 17, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(245, 49, 17, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(246, 50, 17, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(247, 50, 17, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(248, 50, 17, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(249, 50, 17, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(250, 50, 17, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(251, 51, 17, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(252, 51, 17, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(253, 51, 17, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(254, 51, 17, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(255, 51, 17, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(256, 52, 18, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(257, 52, 18, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(258, 52, 18, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(259, 52, 18, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(260, 52, 18, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(261, 53, 18, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(262, 53, 18, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(263, 53, 18, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(264, 53, 18, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(265, 53, 18, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(266, 54, 18, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(267, 54, 18, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(268, 54, 18, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(269, 54, 18, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(270, 54, 18, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:28', '2022-02-09 10:54:28'),
	(271, 55, 19, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(272, 55, 19, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(273, 55, 19, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(274, 55, 19, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(275, 55, 19, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(276, 56, 19, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(277, 56, 19, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(278, 56, 19, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(279, 56, 19, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(280, 56, 19, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(281, 57, 19, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(282, 57, 19, 'gig', 'Organization', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(283, 57, 19, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(284, 57, 19, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(285, 57, 19, 'gig', 'Safety', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(286, 58, 20, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(287, 58, 20, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(288, 58, 20, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(289, 58, 20, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(290, 58, 20, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(291, 59, 20, 'gig', 'Service', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(292, 59, 20, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(293, 59, 20, 'gig', 'Friendliness', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(294, 59, 20, 'gig', 'Area Expert', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(295, 59, 20, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(296, 60, 20, 'gig', 'Service', '4', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(297, 60, 20, 'gig', 'Organization', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(298, 60, 20, 'gig', 'Friendliness', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(299, 60, 20, 'gig', 'Area Expert', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(300, 60, 20, 'gig', 'Safety', '5', 1, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29');
/*!40000 ALTER TABLE `bc_review_meta` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_seo
CREATE TABLE IF NOT EXISTS `bc_seo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_index` tinyint(4) DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8mb4_unicode_ci,
  `seo_image` int(11) DEFAULT NULL,
  `seo_share` text COLLATE utf8mb4_unicode_ci,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_seo: ~0 rows (approximately)
DELETE FROM `bc_seo`;
/*!40000 ALTER TABLE `bc_seo` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_seo` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_skills
CREATE TABLE IF NOT EXISTS `bc_skills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_skills: ~0 rows (approximately)
DELETE FROM `bc_skills`;
/*!40000 ALTER TABLE `bc_skills` DISABLE KEYS */;
INSERT INTO `bc_skills` (`id`, `name`, `slug`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'app', 'app', 'publish', NULL, NULL, NULL, '2022-02-09 10:54:11', '2022-02-09 10:54:11'),
	(2, 'administrative', 'administrative', 'publish', NULL, NULL, NULL, '2022-02-09 10:54:11', '2022-02-09 10:54:11'),
	(3, 'android', 'android', 'publish', NULL, NULL, NULL, '2022-02-09 10:54:11', '2022-02-09 10:54:11'),
	(4, 'wordpress', 'wordpress', 'publish', NULL, NULL, NULL, '2022-02-09 10:54:11', '2022-02-09 10:54:11'),
	(5, 'design', 'design', 'publish', NULL, NULL, NULL, '2022-02-09 10:54:11', '2022-02-09 10:54:11'),
	(6, 'react', 'react', 'publish', NULL, NULL, NULL, '2022-02-09 10:54:11', '2022-02-09 10:54:11'),
	(7, 'javascript', 'javascript', 'publish', NULL, NULL, NULL, '2022-02-09 10:54:12', '2022-02-09 10:54:12'),
	(8, 'html', 'html', 'publish', NULL, NULL, NULL, '2022-02-09 10:54:12', '2022-02-09 10:54:12');
/*!40000 ALTER TABLE `bc_skills` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_skill_translations
CREATE TABLE IF NOT EXISTS `bc_skill_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bc_skill_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_skill_translations: ~0 rows (approximately)
DELETE FROM `bc_skill_translations`;
/*!40000 ALTER TABLE `bc_skill_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `bc_skill_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.bc_terms
CREATE TABLE IF NOT EXISTS `bc_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `attr_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.bc_terms: ~0 rows (approximately)
DELETE FROM `bc_terms`;
/*!40000 ALTER TABLE `bc_terms` DISABLE KEYS */;
INSERT INTO `bc_terms` (`id`, `name`, `content`, `attr_id`, `slug`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`, `icon`, `deleted_at`, `image_id`) VALUES
	(1, '10-50 Members', NULL, 1, '10-50-member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, '50-100 Members', NULL, 1, '50-100-member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, '100-200 Members', NULL, 1, '100-200-member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, '200-500 Members', NULL, 1, '200-500-member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, '500-1000 Members', NULL, 1, '500-1000-member', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, '1000-10000 Members', NULL, 1, '1000-10000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `bc_terms` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_inbox
CREATE TABLE IF NOT EXISTS `core_inbox` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT '0',
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_inbox: ~0 rows (approximately)
DELETE FROM `core_inbox`;
/*!40000 ALTER TABLE `core_inbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_inbox` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_inbox_messages
CREATE TABLE IF NOT EXISTS `core_inbox_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `inbox_id` bigint(20) DEFAULT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `type` tinyint(4) DEFAULT '0',
  `is_read` tinyint(4) DEFAULT '0',
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_inbox_messages: ~0 rows (approximately)
DELETE FROM `core_inbox_messages`;
/*!40000 ALTER TABLE `core_inbox_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_inbox_messages` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_languages
CREATE TABLE IF NOT EXISTS `core_languages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_languages: ~0 rows (approximately)
DELETE FROM `core_languages`;
/*!40000 ALTER TABLE `core_languages` DISABLE KEYS */;
INSERT INTO `core_languages` (`id`, `locale`, `name`, `flag`, `status`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'en', 'English', 'gb', 'publish', 1, NULL, NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(2, 'ja', 'Japanese', 'jp', 'publish', 1, NULL, NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02');
/*!40000 ALTER TABLE `core_languages` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_menus
CREATE TABLE IF NOT EXISTS `core_menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_menus: ~0 rows (approximately)
DELETE FROM `core_menus`;
/*!40000 ALTER TABLE `core_menus` DISABLE KEYS */;
INSERT INTO `core_menus` (`id`, `name`, `items`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'Main Menu', '[{"name":"Home","url":"\\/","item_model":"custom","model_name":"Custom","children":[{"name":"Home Page 01","url":"\\/","item_model":"custom","children":[]},{"name":"Home Page 02","url":"\\/page\\/home-page-2","item_model":"custom","children":[]},{"name":"Home Page 03","url":"\\/page\\/home-page-3","item_model":"custom","children":[]},{"name":"Home Page 04","url":"\\/page\\/home-page-4","item_model":"custom","children":[]},{"name":"Home Page 05","url":"\\/page\\/home-page-5","item_model":"custom","children":[]},{"name":"Home Page 06","url":"\\/page\\/home-page-6","item_model":"custom","children":[]}]},{"name":"GIG [NEW]","url":"\\/gig","item_model":"custom","model_name":"Custom","children":[{"name":"Category Level 1","url":"\\/gig-cat\\/graphics-design","item_model":"custom"},{"name":"Category Level 2","url":"\\/gig-cat\\/logo-design","item_model":"custom"},{"name":"Gigs Listing","url":"\\/gig","item_model":"custom"},{"name":"Gig Single","url":"\\/gig\\/i-will-quod-corrupti-veritatis","item_model":"custom"}]},{"name":"Find Jobs","url":"\\/","item_model":"custom","model_name":"Custom","children":[{"name":"Jobs Listing","url":"\\/job","item_model":"custom","children":[{"name":"Jobs Listing V1","url":"\\/job","item_model":"custom"},{"name":"Jobs Listing V2","url":"\\/job?_layout=v2","item_model":"custom"},{"name":"Jobs Listing V3","url":"\\/job?_layout=v3","item_model":"custom"}]},{"name":"Jobs Single","url":"\\/job\\/product-designer-ui-designer","item_model":"custom","children":[{"name":"Jobs Single V1","url":"\\/job\\/product-designer-ui-designer","item_model":"custom"},{"name":"Jobs Single V2","url":"\\/job\\/product-designer-ui-designer?_layout=v2","item_model":"custom"}]}]},{"name":"Employers","url":"\\/","item_model":"custom","model_name":"Custom","children":[{"name":"Employers List","url":"\\/companies","item_model":"custom","children":[{"name":"Employers Listing V1","url":"\\/companies?_layout=v1","item_model":"custom"},{"name":"Employers Listing V2","url":"\\/companies?_layout=v2","item_model":"custom"},{"name":"Employers Listing V3","url":"\\/companies?_layout=v3","item_model":"custom"}]},{"name":"Employers Single","url":"\\/companies\\/netflix","item_model":"custom","children":[{"name":"Employers Single V1","url":"\\/companies\\/netflix?_layout=v1","item_model":"custom"},{"name":"Employers Single V2","url":"\\/companies\\/netflix?_layout=v2","item_model":"custom"}]}]},{"name":"Candidates","url":"\\/","item_model":"custom","model_name":"Custom","children":[{"name":"Candidates List","url":"\\/candidate","item_model":"custom","children":[{"name":"Candidates Listing V1","url":"\\/candidate?_layout=v1","item_model":"custom"},{"name":"Candidates Listing V2","url":"\\/candidate?_layout=v2","item_model":"custom"},{"name":"Candidates Listing V3","url":"\\/candidate?_layout=v3","item_model":"custom"}]},{"name":"Candidates Single","url":"\\/candidate\\/ui-designer-at-invision-1","item_model":"custom"}]},{"name":"Pages","url":"\\/","item_model":"custom","model_name":"Custom","children":[{"name":"Blog List","url":"\\/news","item_model":"custom"},{"name":"Blog Single","url":"\\/news\\/5-tips-for-your-job-interviews","item_model":"custom"},{"name":"About","url":"\\/page\\/about","item_model":"custom","children":[]},{"name":"FAQ\'s","url":"\\/page\\/faqs","item_model":"custom","children":[]},{"name":"Terms","url":"\\/page\\/terms-and-conditions","item_model":"custom","children":[]},{"name":"Contact","url":"\\/contact","item_model":"custom","children":[]}]}]', 1, NULL, NULL, NULL, '2022-02-09 10:54:05', NULL);
/*!40000 ALTER TABLE `core_menus` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_menu_translations
CREATE TABLE IF NOT EXISTS `core_menu_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_menu_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_menu_translations: ~0 rows (approximately)
DELETE FROM `core_menu_translations`;
/*!40000 ALTER TABLE `core_menu_translations` DISABLE KEYS */;
INSERT INTO `core_menu_translations` (`id`, `origin_id`, `locale`, `items`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
	(1, 1, 'ja', '[{"name":"Home","url":"\\/ja","item_model":"custom","model_name":"Custom","children":[{"name":"Home Page 01","url":"\\/ja","item_model":"custom","children":[]},{"name":"Home Page 02","url":"\\/ja\\/page\\/home-page-2","item_model":"custom","children":[]},{"name":"Home Page 03","url":"\\/ja\\/page\\/home-page-3","item_model":"custom","children":[]},{"name":"Home Page 04","url":"\\/ja\\/page\\/home-page-4","item_model":"custom","children":[]},{"name":"Home Page 05","url":"\\/ja\\/page\\/home-page-5","item_model":"custom","children":[]},{"name":"Home Page 06","url":"\\/ja\\/page\\/home-page-6","item_model":"custom","children":[]}]},{"name":"Find Jobs","url":"\\/","item_model":"custom","model_name":"Custom","children":[{"name":"Jobs Listing","url":"\\/ja\\/job","item_model":"custom"},{"name":"Jobs Single","url":"\\/ja\\/job\\/product-designer-ui-designer","item_model":"custom"}]},{"name":"Employers","url":"\\/","item_model":"custom","model_name":"Custom","children":[{"name":"Employers List","url":"\\/ja\\/companies","item_model":"custom"},{"name":"Employers Single","url":"\\/ja\\/companies\\/netflix","item_model":"custom"}]},{"name":"Candidates","url":"\\/","item_model":"custom","model_name":"Custom","children":[{"name":"Candidates List","url":"\\/ja\\/candidate","item_model":"custom"},{"name":"Candidates Single","url":"\\/ja\\/candidate\\/ui-designer-at-invision-1","item_model":"custom"}]},{"name":"Pages","url":"\\/","item_model":"custom","model_name":"Custom","children":[{"name":"Blog List","url":"\\/ja\\/news","item_model":"custom"},{"name":"Blog Single","url":"\\/ja\\/news\\/5-tips-for-your-job-interviews","item_model":"custom"},{"name":"About","url":"\\/ja\\/page\\/about","item_model":"custom","children":[]},{"name":"FAQ\'s","url":"\\/ja\\/page\\/faqs","item_model":"custom","children":[]},{"name":"Terms","url":"\\/ja\\/page\\/terms-and-conditions","item_model":"custom","children":[]},{"name":"Contact","url":"\\/ja\\/contact","item_model":"custom","children":[]}]}]', 1, NULL, '2022-02-09 10:54:05', NULL);
/*!40000 ALTER TABLE `core_menu_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_news
CREATE TABLE IF NOT EXISTS `core_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_news: ~0 rows (approximately)
DELETE FROM `core_news`;
/*!40000 ALTER TABLE `core_news` DISABLE KEYS */;
INSERT INTO `core_news` (`id`, `title`, `content`, `slug`, `status`, `cat_id`, `image_id`, `banner_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'Attract Sales And Profits', '<h4>Course Description</h4>\r\n                            <p>Aliquam hendrerit sollicitudin purus, quis rutrum mi accumsan nec. Quisque bibendum orci ac nibh facilisis, at malesuada orci congue. Nullam tempus sollicitudin cursus. Ut et adipiscing erat. Curabitur this is a text link libero tempus congue.</p>\r\n                            <p>Duis mattis laoreet neque, et ornare neque sollicitudin at. Proin sagittis dolor sed mi elementum pretium. Donec et justo ante. Vivamus egestas sodales est, eu rhoncus urna semper eu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer tristique elit lobortis purus bibendum, quis dictum metus mattis. Phasellus posuere felis sed eros porttitor mattis. Curabitur massa magna, tempor in blandit id, porta in ligula. Aliquam laoreet nisl massa, at interdum mauris sollicitudin et.</p>\r\n                            <p><img src="/uploads/demo/news/img-detail.jpg" alt="" width="770" height="450" /></p>\r\n                            <h4>Requirements</h4>\r\n                            <ul style="list-style-type: square;">\r\n                            <li>We do not require any previous experience or pre-defined skills to take this course. A great orientation would be enough to master UI/UX design.</li>\r\n                            <li>A computer with a good internet connection.</li>\r\n                            <li>Adobe Photoshop (OPTIONAL)</li>\r\n                            </ul>', 'attract-sales-and-profits', 'publish', 2, 30, 126, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', NULL),
	(2, '5 Tips For Your Job Interviews', '<h4>Course Description</h4>\r\n                            <p>Aliquam hendrerit sollicitudin purus, quis rutrum mi accumsan nec. Quisque bibendum orci ac nibh facilisis, at malesuada orci congue. Nullam tempus sollicitudin cursus. Ut et adipiscing erat. Curabitur this is a text link libero tempus congue.</p>\r\n                            <p>Duis mattis laoreet neque, et ornare neque sollicitudin at. Proin sagittis dolor sed mi elementum pretium. Donec et justo ante. Vivamus egestas sodales est, eu rhoncus urna semper eu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer tristique elit lobortis purus bibendum, quis dictum metus mattis. Phasellus posuere felis sed eros porttitor mattis. Curabitur massa magna, tempor in blandit id, porta in ligula. Aliquam laoreet nisl massa, at interdum mauris sollicitudin et.</p>\r\n                            <p><img src="/uploads/demo/news/img-detail.jpg" alt="" width="770" height="450" /></p>\r\n                            <h4>Requirements</h4>\r\n                            <ul style="list-style-type: square;">\r\n                            <li>We do not require any previous experience or pre-defined skills to take this course. A great orientation would be enough to master UI/UX design.</li>\r\n                            <li>A computer with a good internet connection.</li>\r\n                            <li>Adobe Photoshop (OPTIONAL)</li>\r\n                            </ul>', '5-tips-for-your-job-interviews', 'publish', 3, 31, 126, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', NULL),
	(3, 'An Overworked Newspaper Editor', '<h4>Course Description</h4>\r\n                            <p>Aliquam hendrerit sollicitudin purus, quis rutrum mi accumsan nec. Quisque bibendum orci ac nibh facilisis, at malesuada orci congue. Nullam tempus sollicitudin cursus. Ut et adipiscing erat. Curabitur this is a text link libero tempus congue.</p>\r\n                            <p>Duis mattis laoreet neque, et ornare neque sollicitudin at. Proin sagittis dolor sed mi elementum pretium. Donec et justo ante. Vivamus egestas sodales est, eu rhoncus urna semper eu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer tristique elit lobortis purus bibendum, quis dictum metus mattis. Phasellus posuere felis sed eros porttitor mattis. Curabitur massa magna, tempor in blandit id, porta in ligula. Aliquam laoreet nisl massa, at interdum mauris sollicitudin et.</p>\r\n                            <p><img src="/uploads/demo/news/img-detail.jpg" alt="" width="770" height="450" /></p>\r\n                            <h4>Requirements</h4>\r\n                            <ul style="list-style-type: square;">\r\n                            <li>We do not require any previous experience or pre-defined skills to take this course. A great orientation would be enough to master UI/UX design.</li>\r\n                            <li>A computer with a good internet connection.</li>\r\n                            <li>Adobe Photoshop (OPTIONAL)</li>\r\n                            </ul>', 'an-overworked-newspaper-editor', 'publish', 2, 32, 126, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', NULL),
	(4, 'Attract Sales And Profits', '<h4>Course Description</h4>\r\n                            <p>Aliquam hendrerit sollicitudin purus, quis rutrum mi accumsan nec. Quisque bibendum orci ac nibh facilisis, at malesuada orci congue. Nullam tempus sollicitudin cursus. Ut et adipiscing erat. Curabitur this is a text link libero tempus congue.</p>\r\n                            <p>Duis mattis laoreet neque, et ornare neque sollicitudin at. Proin sagittis dolor sed mi elementum pretium. Donec et justo ante. Vivamus egestas sodales est, eu rhoncus urna semper eu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer tristique elit lobortis purus bibendum, quis dictum metus mattis. Phasellus posuere felis sed eros porttitor mattis. Curabitur massa magna, tempor in blandit id, porta in ligula. Aliquam laoreet nisl massa, at interdum mauris sollicitudin et.</p>\r\n                            <p><img src="/uploads/demo/news/img-detail.jpg" alt="" width="770" height="450" /></p>\r\n                            <h4>Requirements</h4>\r\n                            <ul style="list-style-type: square;">\r\n                            <li>We do not require any previous experience or pre-defined skills to take this course. A great orientation would be enough to master UI/UX design.</li>\r\n                            <li>A computer with a good internet connection.</li>\r\n                            <li>Adobe Photoshop (OPTIONAL)</li>\r\n                            </ul>', 'attract-sales-and-profits-2', 'publish', 3, 33, 126, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', NULL),
	(5, '5 Tips For Your Job Interviews', '<h4>Course Description</h4>\r\n                            <p>Aliquam hendrerit sollicitudin purus, quis rutrum mi accumsan nec. Quisque bibendum orci ac nibh facilisis, at malesuada orci congue. Nullam tempus sollicitudin cursus. Ut et adipiscing erat. Curabitur this is a text link libero tempus congue.</p>\r\n                            <p>Duis mattis laoreet neque, et ornare neque sollicitudin at. Proin sagittis dolor sed mi elementum pretium. Donec et justo ante. Vivamus egestas sodales est, eu rhoncus urna semper eu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer tristique elit lobortis purus bibendum, quis dictum metus mattis. Phasellus posuere felis sed eros porttitor mattis. Curabitur massa magna, tempor in blandit id, porta in ligula. Aliquam laoreet nisl massa, at interdum mauris sollicitudin et.</p>\r\n                            <p><img src="/uploads/demo/news/img-detail.jpg" alt="" width="770" height="450" /></p>\r\n                            <h4>Requirements</h4>\r\n                            <ul style="list-style-type: square;">\r\n                            <li>We do not require any previous experience or pre-defined skills to take this course. A great orientation would be enough to master UI/UX design.</li>\r\n                            <li>A computer with a good internet connection.</li>\r\n                            <li>Adobe Photoshop (OPTIONAL)</li>\r\n                            </ul>', '5-tips-for-your-job-interviews-2', 'publish', 3, 34, 126, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', NULL),
	(6, 'An Overworked Newspaper Editor', '<h4>Course Description</h4>\r\n                            <p>Aliquam hendrerit sollicitudin purus, quis rutrum mi accumsan nec. Quisque bibendum orci ac nibh facilisis, at malesuada orci congue. Nullam tempus sollicitudin cursus. Ut et adipiscing erat. Curabitur this is a text link libero tempus congue.</p>\r\n                            <p>Duis mattis laoreet neque, et ornare neque sollicitudin at. Proin sagittis dolor sed mi elementum pretium. Donec et justo ante. Vivamus egestas sodales est, eu rhoncus urna semper eu. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer tristique elit lobortis purus bibendum, quis dictum metus mattis. Phasellus posuere felis sed eros porttitor mattis. Curabitur massa magna, tempor in blandit id, porta in ligula. Aliquam laoreet nisl massa, at interdum mauris sollicitudin et.</p>\r\n                            <p><img src="/uploads/demo/news/img-detail.jpg" alt="" width="770" height="450" /></p>\r\n                            <h4>Requirements</h4>\r\n                            <ul style="list-style-type: square;">\r\n                            <li>We do not require any previous experience or pre-defined skills to take this course. A great orientation would be enough to master UI/UX design.</li>\r\n                            <li>A computer with a good internet connection.</li>\r\n                            <li>Adobe Photoshop (OPTIONAL)</li>\r\n                            </ul>', 'an-overworked-newspaper-editor-2', 'publish', 1, 35, 126, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:08', NULL);
/*!40000 ALTER TABLE `core_news` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_news_category
CREATE TABLE IF NOT EXISTS `core_news_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) unsigned NOT NULL DEFAULT '0',
  `_rgt` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_news_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_news_category: ~0 rows (approximately)
DELETE FROM `core_news_category`;
/*!40000 ALTER TABLE `core_news_category` DISABLE KEYS */;
INSERT INTO `core_news_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `origin_id`, `lang`) VALUES
	(1, 'Education', NULL, 'education', 'publish', 1, 2, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07', NULL, NULL),
	(2, 'Information', NULL, 'information', 'publish', 3, 4, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07', NULL, NULL),
	(3, 'Interview', NULL, 'interview', 'publish', 5, 6, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07', NULL, NULL),
	(4, 'Job Seeking', NULL, 'job-seeking', 'publish', 7, 8, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07', NULL, NULL),
	(5, 'Jobs', NULL, 'jobs', 'publish', 9, 10, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07', NULL, NULL),
	(6, 'Learn', NULL, 'learn', 'publish', 11, 12, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07', NULL, NULL),
	(7, 'Skill', NULL, 'skill', 'publish', 13, 14, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07', NULL, NULL),
	(8, 'Travel', NULL, 'travel', 'publish', 15, 16, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07', NULL, NULL);
/*!40000 ALTER TABLE `core_news_category` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_news_category_translations
CREATE TABLE IF NOT EXISTS `core_news_category_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_news_category_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_news_category_translations: ~0 rows (approximately)
DELETE FROM `core_news_category_translations`;
/*!40000 ALTER TABLE `core_news_category_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_news_category_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_news_tag
CREATE TABLE IF NOT EXISTS `core_news_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_news_tag: ~0 rows (approximately)
DELETE FROM `core_news_tag`;
/*!40000 ALTER TABLE `core_news_tag` DISABLE KEYS */;
INSERT INTO `core_news_tag` (`id`, `news_id`, `tag_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 3, 1, NULL, NULL, NULL, NULL),
	(2, 1, 6, 1, NULL, NULL, NULL, NULL),
	(3, 1, 4, 1, NULL, NULL, NULL, NULL),
	(4, 2, 2, 1, NULL, NULL, NULL, NULL),
	(5, 2, 6, 1, NULL, NULL, NULL, NULL),
	(6, 2, 6, 1, NULL, NULL, NULL, NULL),
	(7, 3, 2, 1, NULL, NULL, NULL, NULL),
	(8, 3, 2, 1, NULL, NULL, NULL, NULL),
	(9, 3, 5, 1, NULL, NULL, NULL, NULL),
	(10, 4, 6, 1, NULL, NULL, NULL, NULL),
	(11, 4, 6, 1, NULL, NULL, NULL, NULL),
	(12, 4, 6, 1, NULL, NULL, NULL, NULL),
	(13, 5, 3, 1, NULL, NULL, NULL, NULL),
	(14, 5, 2, 1, NULL, NULL, NULL, NULL),
	(15, 5, 6, 1, NULL, NULL, NULL, NULL),
	(16, 6, 4, 1, NULL, NULL, NULL, NULL),
	(17, 6, 2, 1, NULL, NULL, NULL, NULL),
	(18, 6, 6, 1, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `core_news_tag` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_news_translations
CREATE TABLE IF NOT EXISTS `core_news_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_news_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_news_translations: ~0 rows (approximately)
DELETE FROM `core_news_translations`;
/*!40000 ALTER TABLE `core_news_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_news_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_notifications
CREATE TABLE IF NOT EXISTS `core_notifications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT '0',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_parent_id` bigint(20) DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_notifications: ~0 rows (approximately)
DELETE FROM `core_notifications`;
/*!40000 ALTER TABLE `core_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_notifications` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_pages
CREATE TABLE IF NOT EXISTS `core_pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `header_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_logo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_pages_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_pages: ~0 rows (approximately)
DELETE FROM `core_pages`;
/*!40000 ALTER TABLE `core_pages` DISABLE KEYS */;
INSERT INTO `core_pages` (`id`, `slug`, `title`, `content`, `short_desc`, `status`, `publish_date`, `image_id`, `template_id`, `header_style`, `footer_style`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `custom_logo`) VALUES
	(1, 'about', 'About', NULL, NULL, 'publish', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', NULL, NULL),
	(2, 'terms-and-conditions', 'Terms and Conditions', '\r\n                <h3>1. Terms</h3>\r\n<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\r\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus. Nisl malesuada tortor, ligula aliquet felis vitae enim. Mi augue aliquet mauris non elementum tincidunt eget facilisi. Pellentesque massa ipsum tempus vel aliquam massa eu pulvinar eget.</p>\r\n<p>&nbsp;</p>\r\n<h3>2. Limitations</h3>\r\n<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\r\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus. Nisl malesuada tortor, ligula aliquet felis vitae enim. Mi augue aliquet mauris non elementum tincidunt eget facilisi. Pellentesque massa ipsum tempus vel aliquam massa eu pulvinar eget.</p>\r\n<p>&nbsp;</p>\r\n<h3>3. Revisions and Errata</h3>\r\n<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\r\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus. Nisl malesuada tortor, ligula aliquet felis vitae enim. Mi augue aliquet mauris non elementum tincidunt eget facilisi. Pellentesque massa ipsum tempus vel aliquam massa eu pulvinar eget.</p>\r\n<p>&nbsp;</p>\r\n<h3>4. Site Terms of Use Modifications</h3>\r\n<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\r\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus. Nisl malesuada tortor, ligula aliquet felis vitae enim. Mi augue aliquet mauris non elementum tincidunt eget facilisi. Pellentesque massa ipsum tempus vel aliquam massa eu pulvinar eget.</p>\r\n            ', NULL, 'publish', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', NULL, NULL),
	(3, 'faqs', 'FAQ\'s', NULL, NULL, 'publish', NULL, NULL, 2, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', NULL, NULL),
	(4, 'home-page-1', 'Home Page 1', NULL, NULL, 'publish', NULL, NULL, 3, 'transparent', 'style_1', 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', NULL, NULL),
	(5, 'home-page-2', 'Home Page 2', NULL, NULL, 'publish', NULL, NULL, 4, 'header-style-two', 'style-two', 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', NULL, NULL),
	(6, 'home-page-3', 'Home Page 3', NULL, NULL, 'publish', NULL, NULL, 5, 'transparent', 'alternate', 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', NULL, NULL),
	(7, 'home-page-4', 'Home Page 4', NULL, NULL, 'publish', NULL, NULL, 6, 'header-style-two', 'style-two', 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', NULL, NULL),
	(8, 'home-page-5', 'Home Page 5', NULL, NULL, 'publish', NULL, NULL, 7, 'normal', 'style_1', 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', NULL, NULL),
	(9, 'home-page-6', 'Home Page 6', NULL, NULL, 'publish', NULL, NULL, 8, 'normal', 'style_1', 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', NULL, NULL),
	(10, 'privacy-policy', 'Privacy policy', '<h1>Privacy policy</h1>\r\n<p> This privacy policy ("Policy") describes how the personally identifiable information ("Personal Information") you may provide on the <a target="_blank" href="http://superio.test" rel="noreferrer noopener">superio.test</a> website ("Website" or "Service") and any of its related products and services (collectively, "Services") is collected, protected and used. It also describes the choices available to you regarding our use of your Personal Information and how you can access and update this information. This Policy is a legally binding agreement between you ("User", "you" or "your") and this Website operator ("Operator", "we", "us" or "our"). By accessing and using the Website and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. This Policy does not apply to the practices of companies that we do not own or control, or to individuals that we do not employ or manage.</p>\r\n<h2>Automatic collection of information</h2>\r\n<p>When you open the Website, our servers automatically record information that your browser sends. This data may include information such as your device\'s IP address, browser type and version, operating system type and version, language preferences or the webpage you were visiting before you came to the Website and Services, pages of the Website and Services that you visit, the time spent on those pages, information you search for on the Website, access times and dates, and other statistics.</p>\r\n<p>Information collected automatically is used only to identify potential cases of abuse and establish statistical information regarding the usage and traffic of the Website and Services. This statistical information is not otherwise aggregated in such a way that would identify any particular user of the system.</p>\r\n<h2>Collection of personal information</h2>\r\n<p>You can access and use the Website and Services without telling us who you are or revealing any information by which someone could identify you as a specific, identifiable individual. If, however, you wish to use some of the features on the Website, you may be asked to provide certain Personal Information (for example, your name and e-mail address). We receive and store any information you knowingly provide to us when you create an account, publish content,  or fill any online forms on the Website. When required, this information may include the following:</p>\r\n<ul>\r\n<li>Personal details such as name, country of residence, etc.</li>\r\n<li>Contact information such as email address, address, etc.</li>\r\n<li>Account details such as user name, unique user ID, password, etc.</li>\r\n<li>Information about other individuals such as your family members, friends, etc.</li>\r\n</ul>\r\n<p>Some of the information we collect is directly from you via the Website and Services. However, we may also collect Personal Information about you from other sources such as public databases and our joint marketing partners. You can choose not to provide us with your Personal Information, but then you may not be able to take advantage of some of the features on the Website. Users who are uncertain about what information is mandatory are welcome to contact us.</p>\r\n<h2>Use and processing of collected information</h2>\r\n<p>In order to make the Website and Services available to you, or to meet a legal obligation, we need to collect and use certain Personal Information. If you do not provide the information that we request, we may not be able to provide you with the requested products or services. Any of the information we collect from you may be used for the following purposes:</p>\r\n<ul>\r\n<li>Create and manage user accounts</li>\r\n<li>Send administrative information</li>\r\n<li>Request user feedback</li>\r\n<li>Improve user experience</li>\r\n<li>Enforce terms and conditions and policies</li>\r\n<li>Run and operate the Website and Services</li>\r\n</ul>\r\n<p>Processing your Personal Information depends on how you interact with the Website and Services, where you are located in the world and if one of the following applies: (i) you have given your consent for one or more specific purposes; this, however, does not apply, whenever the processing of Personal Information is subject to European data protection law; (ii) provision of information is necessary for the performance of an agreement with you and/or for any pre-contractual obligations thereof; (iii) processing is necessary for compliance with a legal obligation to which you are subject; (iv) processing is related to a task that is carried out in the public interest or in the exercise of official authority vested in us; (v) processing is necessary for the purposes of the legitimate interests pursued by us or by a third party.</p>\r\n<p> Note that under some legislations we may be allowed to process information until you object to such processing (by opting out), without having to rely on consent or any other of the following legal bases below. In any case, we will be happy to clarify the specific legal basis that applies to the processing, and in particular whether the provision of Personal Information is a statutory or contractual requirement, or a requirement necessary to enter into a contract.</p>\r\n<h2>Managing information</h2>\r\n<p>You are able to delete certain Personal Information we have about you. The Personal Information you can delete may change as the Website and Services change. When you delete Personal Information, however, we may maintain a copy of the unrevised Personal Information in our records for the duration necessary to comply with our obligations to our affiliates and partners, and for the purposes described below. If you would like to delete your Personal Information or permanently delete your account, you can do so by contacting us.</p>\r\n<h2>Disclosure of information</h2>\r\n<p> Depending on the requested Services or as necessary to complete any transaction or provide any service you have requested, we may share your information with your consent with our trusted third parties that work with us, any other affiliates and subsidiaries we rely upon to assist in the operation of the Website and Services available to you. We do not share Personal Information with unaffiliated third parties. These service providers are not authorized to use or disclose your information except as necessary to perform services on our behalf or comply with legal requirements. We may share your Personal Information for these purposes only with third parties whose privacy policies are consistent with ours or who agree to abide by our policies with respect to Personal Information. These third parties are given Personal Information they need only in order to perform their designated functions, and we do not authorize them to use or disclose Personal Information for their own marketing or other purposes.</p>\r\n<p>We will disclose any Personal Information we collect, use or receive if required or permitted by law, such as to comply with a subpoena, or similar legal process, and when we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request.</p>\r\n<h2>Retention of information</h2>\r\n<p>We will retain and use your Personal Information for the period necessary to comply with our legal obligations, resolve disputes, and enforce our agreements unless a longer retention period is required or permitted by law. We may use any aggregated data derived from or incorporating your Personal Information after you update or delete it, but not in a manner that would identify you personally. Once the retention period expires, Personal Information shall be deleted. Therefore, the right to access, the right to erasure, the right to rectification and the right to data portability cannot be enforced after the expiration of the retention period.</p>\r\n<h2>The rights of users</h2>\r\n<p>You may exercise certain rights regarding your information processed by us. In particular, you have the right to do the following: (i) you have the right to withdraw consent where you have previously given your consent to the processing of your information; (ii) you have the right to object to the processing of your information if the processing is carried out on a legal basis other than consent; (iii) you have the right to learn if information is being processed by us, obtain disclosure regarding certain aspects of the processing and obtain a copy of the information undergoing processing; (iv) you have the right to verify the accuracy of your information and ask for it to be updated or corrected; (v) you have the right, under certain circumstances, to restrict the processing of your information, in which case, we will not process your information for any purpose other than storing it; (vi) you have the right, under certain circumstances, to obtain the erasure of your Personal Information from us; (vii) you have the right to receive your information in a structured, commonly used and machine readable format and, if technically feasible, to have it transmitted to another controller without any hindrance. This provision is applicable provided that your information is processed by automated means and that the processing is based on your consent, on a contract which you are part of or on pre-contractual obligations thereof.</p>\r\n<h2>Privacy of children</h2>\r\n<p>We do not knowingly collect any Personal Information from children under the age of 18. If you are under the age of 18, please do not submit any Personal Information through the Website and Services. We encourage parents and legal guardians to monitor their children\'s Internet usage and to help enforce this Policy by instructing their children never to provide Personal Information through the Website and Services without their permission. If you have reason to believe that a child under the age of 18 has provided Personal Information to us through the Website and Services, please contact us. You must also be old enough to consent to the processing of your Personal Information in your country (in some countries we may allow your parent or guardian to do so on your behalf).</p>\r\n<h2>Cookies</h2>\r\n<p>The Website and Services use "cookies" to help personalize your online experience. A cookie is a text file that is placed on your hard disk by a web page server. Cookies cannot be used to run programs or deliver viruses to your computer. Cookies are uniquely assigned to you, and can only be read by a web server in the domain that issued the cookie to you.</p>\r\n<p>We may use cookies to collect, store, and track information for statistical purposes to operate the Website and Services. You have the ability to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. To learn more about cookies and how to manage them, visit <a target="_blank" href="https://www.internetcookies.org" rel="noreferrer noopener">internetcookies.org</a></p>\r\n<h2>Do Not Track signals</h2>\r\n<p>Some browsers incorporate a Do Not Track feature that signals to websites you visit that you do not want to have your online activity tracked. Tracking is not the same as using or collecting information in connection with a website. For these purposes, tracking refers to collecting personally identifiable information from consumers who use or visit a website or online service as they move across different websites over time. How browsers communicate the Do Not Track signal is not yet uniform. As a result, the Website and Services are not yet set up to interpret or respond to Do Not Track signals communicated by your browser. Even so, as described in more detail throughout this Policy, we limit our use and collection of your personal information.</p>\r\n<h2>Email marketing</h2>\r\n<p>We offer electronic newsletters to which you may voluntarily subscribe at any time. We are committed to keeping your e-mail address confidential and will not disclose your email address to any third parties except as allowed in the information use and processing section or for the purposes of utilizing a third party provider to send such emails. We will maintain the information sent via e-mail in accordance with applicable laws and regulations.</p>\r\n<p>In compliance with the CAN-SPAM Act, all e-mails sent from us will clearly state who the e-mail is from and provide clear information on how to contact the sender. You may choose to stop receiving our newsletter or marketing emails by following the unsubscribe instructions included in these emails or by contacting us. However, you will continue to receive essential transactional emails.</p>\r\n<h2>Links to other resources</h2>\r\n<p>The Website and Services contain links to other resources that are not owned or controlled by us. Please be aware that we are not responsible for the privacy practices of such other resources or third parties. We encourage you to be aware when you leave the Website and Services and to read the privacy statements of each and every resource that may collect Personal Information.</p>\r\n<h2>Information security</h2>\r\n<p>We secure information you provide on computer servers in a controlled, secure environment, protected from unauthorized access, use, or disclosure. We maintain reasonable administrative, technical, and physical safeguards in an effort to protect against unauthorized access, use, modification, and disclosure of Personal Information in its control and custody. However, no data transmission over the Internet or wireless network can be guaranteed. Therefore, while we strive to protect your Personal Information, you acknowledge that (i) there are security and privacy limitations of the Internet which are beyond our control; (ii) the security, integrity, and privacy of any and all information and data exchanged between you and the Website and Services cannot be guaranteed; and (iii) any such information and data may be viewed or tampered with in transit by a third party, despite best efforts.</p>\r\n<h2>Data breach</h2>\r\n<p>In the event we become aware that the security of the Website and Services has been compromised or users Personal Information has been disclosed to unrelated third parties as a result of external activity, including, but not limited to, security attacks or fraud, we reserve the right to take reasonably appropriate measures, including, but not limited to, investigation and reporting, as well as notification to and cooperation with law enforcement authorities. In the event of a data breach, we will make reasonable efforts to notify affected individuals if we believe that there is a reasonable risk of harm to the user as a result of the breach or if notice is otherwise required by law. When we do, we will post a notice on the Website, send you an email.</p>\r\n<h2>Changes and amendments</h2>\r\n<p>We reserve the right to modify this Policy or its terms relating to the Website and Services from time to time in our discretion and will notify you of any material changes to the way in which we treat Personal Information. When we do, we will post a notification on the main page of the Website. We may also provide notice to you in other ways in our discretion, such as through contact information you have provided. Any updated version of this Policy will be effective immediately upon the posting of the revised Policy unless otherwise specified. Your continued use of the Website and Services after the effective date of the revised Policy (or such other act specified at that time) will constitute your consent to those changes. However, we will not, without your consent, use your Personal Information in a manner materially different than what was stated at the time your Personal Information was collected. Policy was created with <a style="color:inherit;" target="_blank" href="https://www.websitepolicies.com/privacy-policy-generator" rel="noreferrer noopener">WebsitePolicies</a>.</p>\r\n<h2>Acceptance of this policy</h2>\r\n<p>You acknowledge that you have read this Policy and agree to all its terms and conditions. By accessing and using the Website and Services you agree to be bound by this Policy. If you do not agree to abide by the terms of this Policy, you are not authorized to access or use the Website and Services.</p>\r\n<h2>Contacting us</h2>\r\n<p>If you would like to contact us to understand more about this Policy or wish to contact us concerning any matter relating to individual rights and your Personal Information, you may do so via the <a target="_blank" href="http://superio.test/contact" rel="noreferrer noopener">contact form</a></p>\r\n<p>This document was last updated on October 6, 2020</p>', NULL, 'publish', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', '2022-02-09 10:54:06', NULL);
/*!40000 ALTER TABLE `core_pages` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_page_translations
CREATE TABLE IF NOT EXISTS `core_page_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `short_desc` text COLLATE utf8mb4_unicode_ci,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_page_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  KEY `core_page_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_page_translations: ~0 rows (approximately)
DELETE FROM `core_page_translations`;
/*!40000 ALTER TABLE `core_page_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_page_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_roles
CREATE TABLE IF NOT EXISTS `core_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_roles_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_roles: ~0 rows (approximately)
DELETE FROM `core_roles`;
/*!40000 ALTER TABLE `core_roles` DISABLE KEYS */;
INSERT INTO `core_roles` (`id`, `name`, `code`, `create_user`, `update_user`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'administrator', NULL, NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(2, 'Employer', 'employer', NULL, NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(3, 'Candidate', 'candidate', NULL, NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02');
/*!40000 ALTER TABLE `core_roles` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_role_permissions
CREATE TABLE IF NOT EXISTS `core_role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_role_permissions_role_id_permission_unique` (`role_id`,`permission`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_role_permissions: ~0 rows (approximately)
DELETE FROM `core_role_permissions`;
/*!40000 ALTER TABLE `core_role_permissions` DISABLE KEYS */;
INSERT INTO `core_role_permissions` (`id`, `role_id`, `permission`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
	(1, 1, 'gig_manage', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(2, 1, 'gig_manage_others', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(3, 1, 'candidate_manage', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(4, 1, 'candidate_manage_others', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(5, 1, 'employer_manage', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(6, 1, 'employer_manage_others', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(7, 1, 'job_manage', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(8, 1, 'job_manage_others', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(9, 1, 'skill_manage_others', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(10, 1, 'category_manage_others', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(11, 1, 'page_manage', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(12, 1, 'page_manage_others', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(13, 1, 'news_manage', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(14, 1, 'news_manage_others', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(15, 1, 'review_manage', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(16, 1, 'review_manage_others', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(17, 1, 'location_manage', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(18, 1, 'setting_update', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(19, 1, 'media_upload', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(20, 1, 'media_manage_others', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(21, 1, 'tools_view', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(22, 1, 'language_manage', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(23, 1, 'language_translation', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(24, 1, 'role_manage', NULL, NULL, '2022-02-09 10:54:01', '2022-02-09 10:54:01'),
	(25, 1, 'user_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(26, 1, 'system_log_view', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(27, 1, 'plugin_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(28, 1, 'menu_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(29, 1, 'report_view', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(30, 1, 'template_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(31, 1, 'contact_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(32, 1, 'newsletter_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(33, 1, 'setting_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(34, 1, 'dashboard_vendor_access', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(35, 1, 'vendor_payout_view', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(36, 1, 'vendor_payout_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(37, 1, 'enquiry_view', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(38, 1, 'enquiry_update', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(39, 1, 'enquiry_manage_others', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(40, 2, 'job_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(41, 2, 'employer_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(42, 2, 'media_upload', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(43, 3, 'candidate_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(44, 3, 'media_upload', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02'),
	(45, 3, 'gig_manage', NULL, NULL, '2022-02-09 10:54:02', '2022-02-09 10:54:02');
/*!40000 ALTER TABLE `core_role_permissions` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_settings
CREATE TABLE IF NOT EXISTS `core_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  `autoload` tinyint(4) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_settings: ~0 rows (approximately)
DELETE FROM `core_settings`;
/*!40000 ALTER TABLE `core_settings` DISABLE KEYS */;
INSERT INTO `core_settings` (`id`, `name`, `group`, `val`, `autoload`, `create_user`, `update_user`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'site_locale', 'general', 'en', NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'site_enable_multi_lang', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'menu_locations', 'general', '{"primary":1}', NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'admin_email', 'general', 'support@superio.com', NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 'email_from_name', 'general', 'Superio', NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'email_from_address', 'general', 'support@superio.com', NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 'phone_contact', 'general', '(+84) 666-888-999', NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 'logo_id', 'general', '8', NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 'logo_white_id', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 'site_favicon', 'general', '11', NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 'footer_style', 'general', 'style_1', NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 'footer_info_text', 'general', '<p class="phone-num"><span>Call us </span><a href="tel:123 456 7890">123 456 7890</a></p>\r\n                                <p class="address">329 Queensberry Street, North Melbourne VIC<br> 3051, Australia. <br>\r\n                                    <a href="mailto:support@superio.com" class="email">support@superio.com</a>\r\n                                </p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 'copyright', 'general', '© 2021 <a href="/">Superio</a>. All Right Reserved.', NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 'footer_socials', 'general', '<a href="#"><i class="fab fa-facebook-f"></i></a>\r\n                                <a href="#"><i class="fab fa-twitter"></i></a>\r\n                                <a href="#"><i class="fab fa-instagram"></i></a>\r\n                                <a href="#"><i class="fab fa-linkedin-in"></i></a>', NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 'list_widget_footer', 'general', '[{"title":"For Candidates","size":"3","content":"<ul class=\\"list\\">\\r\\n                                            <li><a href=\\"#\\">Browse Jobs<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Browse Categories<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Candidate Dashboard<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Job Alerts<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">My Bookmarks<\\/a><\\/li>\\r\\n                                        <\\/ul>"},{"title":"For Employers","size":"3","content":"<ul class=\\"list\\">\\r\\n                                            <li><a href=\\"#\\">Browse Candidates<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Employer Dashboard<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Add Job<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Job Packages<\\/a><\\/li>\\r\\n                                        <\\/ul>"},{"title":"About Us","size":"3","content":"<ul class=\\"list\\">\\r\\n                                            <li><a href=\\"#\\">Job Page<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Job Page Alternative<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Resume Page<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Blog<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Contact<\\/a><\\/li>\\r\\n                                        <\\/ul>"},{"title":"Helpful Resources","size":"3","content":"<ul class=\\"list\\">\\r\\n                                            <li><a href=\\"#\\">Site Map<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Terms of Use<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Privacy Center<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Security Center<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">Accessibility Center<\\/a><\\/li>\\r\\n                                        <\\/ul>"}]', NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 'list_widget_footer_ja', 'general', '[{"title":"\\u5019\\u88dc\\u8005\\u5411\\u3051","size":"3","content":"<ul class=\\"list\\">\\r\\n                                            <li><a href=\\"#\\">\\u6c42\\u4eba\\u3092\\u95b2\\u89a7\\u3059\\u308b\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u30ab\\u30c6\\u30b4\\u30ea\\u3092\\u95b2\\u89a7\\u3059\\u308b\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u5019\\u88dc\\u30c0\\u30c3\\u30b7\\u30e5\\u30dc\\u30fc\\u30c9\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u30b8\\u30e7\\u30d6\\u30a2\\u30e9\\u30fc\\u30c8<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u30de\\u30a4\\u30d6\\u30c3\\u30af\\u30de\\u30fc\\u30af\\r\\n<\\/a><\\/li>\\r\\n                                        <\\/ul>"},{"title":"\\u96c7\\u7528\\u4e3b\\u306e\\u305f\\u3081\\u306b","size":"3","content":"<ul class=\\"list\\">\\r\\n                                            <li><a href=\\"#\\">\\u5019\\u88dc\\u8005\\u3092\\u95b2\\u89a7\\u3059\\u308b\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u96c7\\u7528\\u8005\\u30c0\\u30c3\\u30b7\\u30e5\\u30dc\\u30fc\\u30c9\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u30b8\\u30e7\\u30d6\\u3092\\u8ffd\\u52a0\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u30b8\\u30e7\\u30d6\\u30d1\\u30c3\\u30b1\\u30fc\\u30b8\\r\\n<\\/a><\\/li>\\r\\n                                        <\\/ul>"},{"title":"\\u79c1\\u305f\\u3061\\u306b\\u95a2\\u3057\\u3066\\u306f","size":"3","content":"<ul class=\\"list\\">\\r\\n                                            <li><a href=\\"#\\">\\u6c42\\u4eba\\u30da\\u30fc\\u30b8\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u6c42\\u4eba\\u30da\\u30fc\\u30b8\\u306e\\u4ee3\\u66ff\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u5c65\\u6b74\\u66f8\\u30da\\u30fc\\u30b8\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u30d6\\u30ed\\u30b0<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u30b3\\u30f3\\u30bf\\u30af\\u30c8\\r\\n<\\/a><\\/li>\\r\\n                                        <\\/ul>"},{"title":"\\u5f79\\u7acb\\u3064\\u30ea\\u30bd\\u30fc\\u30b9","size":"3","content":"<ul class=\\"list\\">\\r\\n                                            <li><a href=\\"#\\">\\u30b5\\u30a4\\u30c8\\u30de\\u30c3\\u30d7\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u5229\\u7528\\u898f\\u7d04\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u30d7\\u30e9\\u30a4\\u30d0\\u30b7\\u30fc\\u30bb\\u30f3\\u30bf\\u30fc\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u30bb\\u30ad\\u30e5\\u30ea\\u30c6\\u30a3\\u30bb\\u30f3\\u30bf\\u30fc\\r\\n<\\/a><\\/li>\\r\\n                                            <li><a href=\\"#\\">\\u30a2\\u30af\\u30bb\\u30b7\\u30d3\\u30ea\\u30c6\\u30a3\\u30bb\\u30f3\\u30bf\\u30fc\\r\\n<\\/a><\\/li>\\r\\n                                        <\\/ul>"}]', NULL, NULL, NULL, NULL, NULL, NULL),
	(17, 'home_page_id', 'general', '4', NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 'terms_and_conditions_id', 'general', '2', NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 'page_contact_title', 'general', 'Contact Us', NULL, NULL, NULL, NULL, NULL, NULL),
	(20, 'page_contact_lists', 'general', '[{"title":"Address","desc":"329 Queensberry Street, North Melbourne VIC 3051, Australia.","icon":"114"},{"title":"Call Us","desc":"<a href=\\"#\\" class=\\"phone\\">123 456 7890<\\/a>","icon":"115"},{"title":"Email","desc":"<a href=\\"#\\">contact.london@example.com<\\/a>","icon":"116"}]', NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 'page_contact_iframe_google_map', 'general', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.835253576489!2d144.95372995111143!3d-37.817327679652266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad65d4c2b349649%3A0xb6899234e561db11!2sEnvato!5e0!3m2!1sen!2sin!4v1581584770980!5m2!1sen!2sin" width="100%" height="500" frameborder="0" style="border:0;" allowfullscreen=""></iframe>', NULL, NULL, NULL, NULL, NULL, NULL),
	(22, 'contact_call_to_action_title', 'general', 'Recruiting?', NULL, NULL, NULL, NULL, NULL, NULL),
	(23, 'contact_call_to_action_sub_title', 'general', 'Advertise your jobs to millions of monthly users and search 15.8 million <br> CVs in our database.', NULL, NULL, NULL, NULL, NULL, NULL),
	(24, 'contact_call_to_action_button_text', 'general', 'Start Recruiting Now', NULL, NULL, NULL, NULL, NULL, NULL),
	(25, 'contact_call_to_action_button_link', 'general', '#', NULL, NULL, NULL, NULL, NULL, NULL),
	(26, 'contact_call_to_action_image', 'general', '38', NULL, NULL, NULL, NULL, NULL, NULL),
	(27, 'currency_main', 'payment', 'usd', NULL, NULL, NULL, NULL, NULL, NULL),
	(28, 'currency_format', 'payment', 'left', NULL, NULL, NULL, NULL, NULL, NULL),
	(29, 'currency_decimal', 'payment', ',', NULL, NULL, NULL, NULL, NULL, NULL),
	(30, 'currency_thousand', 'payment', '.', NULL, NULL, NULL, NULL, NULL, NULL),
	(31, 'currency_no_decimal', 'payment', '0', NULL, NULL, NULL, NULL, NULL, NULL),
	(32, 'extra_currency', 'payment', '[{"currency_main":"eur","currency_format":"left","currency_thousand":".","currency_decimal":",","currency_no_decimal":"2","rate":"0.902807"},{"currency_main":"jpy","currency_format":"right_space","currency_thousand":".","currency_decimal":",","currency_no_decimal":"0","rate":"0.00917113"}]', NULL, NULL, NULL, NULL, NULL, NULL),
	(33, 'map_provider', 'advance', 'gmap', NULL, NULL, NULL, NULL, NULL, NULL),
	(34, 'map_gmap_key', 'advance', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(35, 'g_offline_payment_enable', 'payment', '1', NULL, NULL, NULL, NULL, NULL, NULL),
	(36, 'g_offline_payment_name', 'payment', 'Offline Payment', NULL, NULL, NULL, NULL, NULL, NULL),
	(37, 'date_format', 'general', 'm/d/Y', NULL, NULL, NULL, NULL, NULL, NULL),
	(38, 'site_timezone', 'general', 'UTC', NULL, NULL, NULL, NULL, NULL, NULL),
	(39, 'site_title', 'general', 'Superio', NULL, NULL, NULL, NULL, NULL, NULL),
	(40, 'email_header', 'general', '<h1 class="site-title" style="text-align: center">Superio</h1>', NULL, NULL, NULL, NULL, NULL, NULL),
	(41, 'email_footer', 'general', '<p class="" style="text-align: center">&copy; 2021 Superio. All rights reserved</p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(42, 'enable_preloader', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
	(43, 'enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
	(44, 'user_content_email_registered', 'user', '<h1 style="text-align: center">Welcome!</h1>\r\n                    <h3>Hello [first_name] [last_name]</h3>\r\n                    <p>Thank you for signing up with Superio! We hope you enjoy your time with us.</p>\r\n                    <p>Regards,</p>\r\n                    <p>Superio</p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(45, 'admin_enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
	(46, 'admin_content_email_user_registered', 'user', '<h3>Hello Administrator</h3>\r\n                    <p>We have new registration</p>\r\n                    <p>Full name: [first_name] [last_name]</p>\r\n                    <p>Email: [email]</p>\r\n                    <p>Regards,</p>\r\n                    <p>Superio</p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(47, 'user_content_email_forget_password', 'user', '<h1>Hello!</h1>\r\n                    <p>You are receiving this email because we received a password reset request for your account.</p>\r\n                    <p style="text-align: center">[button_reset_password]</p>\r\n                    <p>This password reset link expire in 60 minutes.</p>\r\n                    <p>If you did not request a password reset, no further action is required.\r\n                    </p>\r\n                    <p>Regards,</p>\r\n                    <p>Superio</p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(48, 'email_driver', 'email', 'log', NULL, NULL, NULL, NULL, NULL, NULL),
	(49, 'email_host', 'email', 'smtp.mailgun.org', NULL, NULL, NULL, NULL, NULL, NULL),
	(50, 'email_port', 'email', '587', NULL, NULL, NULL, NULL, NULL, NULL),
	(51, 'email_encryption', 'email', 'tls', NULL, NULL, NULL, NULL, NULL, NULL),
	(52, 'email_username', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(53, 'email_password', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(54, 'email_mailgun_domain', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(55, 'email_mailgun_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(56, 'email_mailgun_endpoint', 'email', 'api.mailgun.net', NULL, NULL, NULL, NULL, NULL, NULL),
	(57, 'email_postmark_token', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(58, 'email_ses_key', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(59, 'email_ses_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(60, 'email_ses_region', 'email', 'us-east-1', NULL, NULL, NULL, NULL, NULL, NULL),
	(61, 'email_sparkpost_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
	(62, 'content_email_apply_job_submit', 'email', '<h3>Hello [employer_name],</h3>\r\n                            <p>A candidate apply for your job:</p>\r\n                            <p>Candidate Name: [candidate_name]</p>\r\n                            <p>Message: [message]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Superio</p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(63, 'content_email_change_applicants_status', 'email', '<h3>Hello [candidate_name],</h3>\r\n                            <p>Employer [applicants_status] you from job [job_title]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Superio</p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(64, 'cookie_agreement_enable', 'advance', '1', NULL, NULL, NULL, NULL, NULL, NULL),
	(65, 'cookie_agreement_button_text', 'advance', 'Got it', NULL, NULL, NULL, NULL, NULL, NULL),
	(66, 'cookie_agreement_content', 'advance', '<p>This website requires cookies to provide all of its features. By using our website, you agree to our use of cookies. <a href=\'#\'>More info</a></p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(67, 'booking_why_book_with_us', 'booking', '[{"title":"No-hassle best price guarantee","link":"#","icon":"flaticon-star"},{"title":"Customer care available 24\\/7","link":"#","icon":"flaticon-support"},{"title":"Hand-picked Tours & Activities","link":"#","icon":"flaticon-favorites-button"},{"title":"Free Travel Insureance","link":"#","icon":"flaticon-airplane"}]', NULL, NULL, NULL, NULL, NULL, NULL),
	(68, 'logo_invoice_id', 'booking', '8', NULL, NULL, NULL, NULL, NULL, NULL),
	(69, 'invoice_company_info', 'booking', '<p><span style="font-size: 14pt;"><strong>Superio Company</strong></span></p>\r\n                                <p>Ha Noi, Viet Nam</p>\r\n                                <p>www.superio.test</p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(70, 'vendor_commission_type', NULL, 'percent', NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', '2022-02-09 10:54:06'),
	(71, 'vendor_commission_amount', NULL, '10', NULL, NULL, NULL, NULL, '2022-02-09 10:54:06', '2022-02-09 10:54:06'),
	(72, 'news_page_list_title', 'news', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL),
	(73, 'news_page_list_sub_title', 'news', 'Blog', NULL, NULL, NULL, NULL, NULL, NULL),
	(74, 'news_page_list_banner', 'news', '37', NULL, NULL, NULL, NULL, NULL, NULL),
	(75, 'news_sidebar', 'news', '[{"title":null,"content":null,"type":"search_form"},{"title":"About Us","content":"Nam dapibus nisl vitae elit fringilla rutrum. Aenean sollicitudin, erat a elementum rutrum, neque sem pretium metus, quis mollis nisl nunc et massa","type":"content_text"},{"title":"Categories","content":null,"type":"category"},{"title":"Tags","content":null,"type":"tag"}]', NULL, NULL, NULL, NULL, NULL, NULL),
	(76, 'candidate_page_search_title', 'candidate', 'Find Candidates', NULL, NULL, NULL, NULL, NULL, NULL),
	(77, 'candidate_page_search_title_ja', 'candidate', '仕事を探す', NULL, NULL, NULL, NULL, NULL, NULL),
	(78, 'candidates_list_layout', 'candidate', 'list-v1', NULL, NULL, NULL, NULL, NULL, NULL),
	(79, 'single_candidate_layout', 'candidate', 'v1', NULL, NULL, NULL, NULL, NULL, NULL),
	(80, 'candidate_sidebar_search_fields', 'candidate', '[\r\n                        {"title":"Search by Keywords","type":"keyword","position":"1"},\r\n                        {"title":"Location","type":"location","position":"2"},\r\n                        {"title":"Category","type":"category","position":"3"},\r\n                        {"title":"Skills","type":"skill","position":"4"},\r\n                        {"title":"Date Posted","type":"date_posted","position":"5"},\r\n                        {"title":"Experience Level","type":"experience","position":"6"},\r\n                        {"title":"Education Levels","type":"education","position":"7"}\r\n\r\n                    ]', NULL, NULL, NULL, NULL, NULL, NULL),
	(81, 'job_page_search_title', 'job', 'Find Jobs', NULL, NULL, NULL, NULL, NULL, NULL),
	(82, 'job_page_search_title_ja', 'job', '仕事を探す', NULL, NULL, NULL, NULL, NULL, NULL),
	(83, 'jobs_list_layout', 'job', 'job-list-v1', NULL, NULL, NULL, NULL, NULL, NULL),
	(84, 'job_single_layout', 'job', 'job-single-v1', NULL, NULL, NULL, NULL, NULL, NULL),
	(85, 'job_sidebar_search_fields', 'job', '[{"title":"Search by Keywords","type":"keyword","position":"1"},{"title":"Location","type":"location","position":"2"},{"title":"Category","type":"category","position":"3"},{"title":"Job type","type":"job_type","position":"4"},{"title":"Date Posted","type":"date_posted","position":"5"},{"title":"Experience Level","type":"experience","position":"6"},{"title":"Salary","type":"salary","position":"7"}]', NULL, NULL, NULL, NULL, NULL, NULL),
	(86, 'job_sidebar_cta', 'job', '{"title":"Recruiting?","desc":"Advertise your jobs to millions of monthly users and search 15.8 million CVs in our database.","button":{"url":"#","name":"Start Recruiting Now","target":"_blank"},"image":"17"}', NULL, NULL, NULL, NULL, NULL, NULL),
	(87, 'company_page_search_title', 'company', 'Find Companies', NULL, NULL, NULL, NULL, NULL, NULL),
	(88, 'company_list_layout', 'company', 'company-list-v1', NULL, NULL, NULL, NULL, NULL, NULL),
	(89, 'single_company_layout', 'company', 'company-single-v1', NULL, NULL, NULL, NULL, NULL, NULL),
	(90, 'company_sidebar_search_fields', 'company', '[{"title":"Search by Keywords","type":"keyword","position":"1"},{"title":"Location","type":"location","position":"2"},{"title":"Category","type":"category","position":"3"},{"title":"Attribute","type":"att","position":"4"},{"title":"Founded Date","type":"founded_date","position":"5"}]', NULL, NULL, NULL, NULL, NULL, NULL),
	(91, 'company_sidebar_cta', 'company', '{"title":"Recruiting?","desc":"Advertise your jobs to millions of monthly users and search 15.8 million CVs in our database.","button":{"url":"#","name":"Start Recruiting Now","target":"_blank"},"image":"17"}', NULL, NULL, NULL, NULL, NULL, NULL),
	(92, 'gig_booking_buyer_fees', NULL, '[{"name":"Service fee","price":"2","unit":"fixed"}]', NULL, NULL, NULL, NULL, '2022-02-09 10:54:29', '2022-02-09 10:54:29'),
	(93, 'enable_mail_vendor_registered', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
	(94, 'vendor_content_email_registered', 'vendor', '<h1 style="text-align: center;">Welcome!</h1>\r\n                            <h3>Hello [first_name] [last_name]</h3>\r\n                            <p>Thank you for signing up with Superio! We hope you enjoy your time with us.</p>\r\n                            <p>Regards,</p>\r\n                            <p>Superio</p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(95, 'admin_enable_mail_vendor_registered', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
	(96, 'admin_content_email_vendor_registered', 'vendor', '<h3>Hello Administrator</h3>\r\n                            <p>An user has been registered as Vendor. Please check the information bellow:</p>\r\n                            <p>Full name: [first_name] [last_name]</p>\r\n                            <p>Email: [email]</p>\r\n                            <p>Registration date: [created_at]</p>\r\n                            <p>You can approved the request here: [link_approved]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Superio</p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(97, 'booking_enquiry_enable_mail_to_vendor_content', 'enquiry', '<h3>Hello [vendor_name]</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Superio</p>\r\n                            </div>', NULL, NULL, NULL, NULL, NULL, NULL),
	(98, 'booking_enquiry_enable_mail_to_admin_content', 'enquiry', '<h3>Hello Administrator</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Vendor:[vendor_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Superio</p>', NULL, NULL, NULL, NULL, NULL, NULL),
	(99, 'job_banner_search_fields', 'job', '[{"title":"Keyword","type":"keyword","position":"1"},{"title":"Location","type":"location","position":"2"},{"title":"Category","type":"category","position":"3"}]', NULL, NULL, NULL, NULL, NULL, NULL),
	(100, 'update_to_1.10', NULL, '1', NULL, NULL, NULL, NULL, '2022-02-09 10:54:50', '2022-02-09 10:54:50'),
	(101, 'schema_gig_version', NULL, '1.7', NULL, NULL, NULL, NULL, '2022-02-09 10:54:50', '2022-02-09 10:54:50'),
	(102, 'user_plans_page_title', 'user_plans', 'Pricing Packages', NULL, NULL, NULL, NULL, NULL, NULL),
	(103, 'user_plans_page_sub_title', 'user_plans', 'Choose your pricing plan', NULL, NULL, NULL, NULL, NULL, NULL),
	(104, 'user_plans_sale_text', 'user_plans', 'Save up to 10%', NULL, NULL, NULL, NULL, NULL, NULL),
	(105, 'update_to_1.2.0.2', NULL, '1', NULL, NULL, NULL, NULL, '2022-02-09 10:54:53', '2022-02-09 10:54:53');
/*!40000 ALTER TABLE `core_settings` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_subscribers
CREATE TABLE IF NOT EXISTS `core_subscribers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_subscribers: ~0 rows (approximately)
DELETE FROM `core_subscribers`;
/*!40000 ALTER TABLE `core_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_subscribers` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_tags
CREATE TABLE IF NOT EXISTS `core_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_tags: ~0 rows (approximately)
DELETE FROM `core_tags`;
/*!40000 ALTER TABLE `core_tags` DISABLE KEYS */;
INSERT INTO `core_tags` (`id`, `name`, `slug`, `content`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'App', 'app', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07'),
	(2, 'Administrative', 'administrative', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07'),
	(3, 'Android', 'android', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07'),
	(4, 'Wordpress', 'wordpress', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07'),
	(5, 'Design', 'design', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07'),
	(6, 'React', 'react', NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-09 10:54:07', '2022-02-09 10:54:07');
/*!40000 ALTER TABLE `core_tags` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_tag_translations
CREATE TABLE IF NOT EXISTS `core_tag_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_tag_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_tag_translations: ~0 rows (approximately)
DELETE FROM `core_tag_translations`;
/*!40000 ALTER TABLE `core_tag_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_tag_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_templates
CREATE TABLE IF NOT EXISTS `core_templates` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `type_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_templates: ~0 rows (approximately)
DELETE FROM `core_templates`;
/*!40000 ALTER TABLE `core_templates` DISABLE KEYS */;
INSERT INTO `core_templates` (`id`, `title`, `content`, `type_id`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
	(1, 'About', '[{"type":"breadcrumb_section","name":"Breadcrumb Section","model":{"title":"About Us","sub_title":"About Us","bg_image":"","bg_color":""},"component":"RegularBlock","open":true,"is_container":false},{"type":"gallery","name":"Gallery","model":{"list_item":[{"_active":true,"image_id":94},{"_active":true,"image_id":95},{"_active":true,"image_id":96},{"_active":true,"image_id":97},{"_active":true,"image_id":98},{"_active":true,"image_id":99}],"style":""},"component":"RegularBlock","open":true,"is_container":false},{"type":"BlockCounter","name":"Block Counter","model":{"list_item":[{"_active":true,"number":"4","symbol":"M","desc":"4 million daily active users"},{"_active":true,"number":"12","symbol":"k","desc":"Over 12k open job positions"},{"_active":true,"number":"20","symbol":"M","desc":"Over 20 million stories shared"}]},"component":"RegularBlock","open":true,"is_container":false},{"type":"text","name":"Text","model":{"content":"<h4>About Superio</h4>\\n<p>Far much that one rank beheld bluebird after outside ignobly allegedly more when oh arrogantly vehement irresistibly fussy penguin insect additionally wow absolutely crud meretriciously hastily dalmatian a glowered inset one echidna cassowary some parrot and much as goodness some froze the sullen much connected bat wonderfully on instantaneously eel valiantly petted this along across highhandedly much.</p>\\n<p>Repeatedly dreamed alas opossum but dramatically despite expeditiously that jeepers loosely yikes that as or eel underneath kept and slept compactly far purred sure abidingly up above fitting to strident wiped set waywardly far the and pangolin horse approving paid chuckled cassowary oh above a much opposite far much hypnotically more therefore wasp less that hey apart well like while superbly orca and far hence one.Far much that one rank beheld bluebird after outside ignobly allegedly more when oh arrogantly vehement irresistibly fussy.</p>","class":"about-section-three"},"component":"RegularBlock","open":true,"is_container":false},{"type":"call_to_action","name":"Call To Action","model":{"title":"Your Dream Jobs Are Waiting","sub_title":"Over 1 million interactions, 50,000 success stories Make yours now.","link_title":"Search Job","link_more":"#","style":"","bg_image":100,"bg_gradient":"","link_search":"Search Job","url_search":"#","link_apply":"Apply Job Now","url_apply":"#"},"component":"RegularBlock","open":true,"is_container":false},{"type":"testimonial","name":"List Testimonial","model":{"title":"Testimonials From Our Customers","sub_title":"Lorem ipsum dolor sit amet elit, sed do eiusmod tempor","list_item":[{"_active":true,"title":"Great quality!","desc":"Without JobHunt i’d be homeless, they found me a job and got me sorted out quickly with everything! Can’t quite… The Mitech team works really hard to ensure high level of quality","info_name":"Brooklyn Simmons","info_desc":"Web Developer","position":null,"avatar":101},{"_active":true,"title":"Great quality!","desc":"Without JobHunt i’d be homeless, they found me a job and got me sorted out quickly with everything! Can’t quite… The Mitech team works really hard to ensure high level of quality","info_name":"Brooklyn Simmons","info_desc":"Web Developer","position":null,"avatar":101},{"_active":true,"title":"Great quality!","desc":"Without JobHunt i’d be homeless, they found me a job and got me sorted out quickly with everything! Can’t quite… The Mitech team works really hard to ensure high level of quality","info_name":"Brooklyn Simmons","info_desc":"Web Developer","position":null,"avatar":101}],"style":"index"},"component":"RegularBlock","open":true,"is_container":false},{"type":"HowItWork","name":"How It Works","model":{"style":"style_2","title":"How It Works?","list_item":[{"_active":true,"title":"Free Resume Assessments","sub_title":"Employers on average spend 31 seconds scanning resumes to identify potential matches.","icon_image":102,"order":null},{"_active":true,"title":"Job Fit Scoring","sub_title":"Employers on average spend 31 seconds scanning resumes to identify potential matches.","icon_image":103,"order":null},{"_active":true,"title":"Help Every Step of the Way","sub_title":"Employers on average spend 31 seconds scanning resumes to identify potential matches.","icon_image":104,"order":null}],"background_image":"","sub_title":"Job for anyone, anywhere"},"component":"RegularBlock","open":true,"is_container":false},{"type":"brands_list","name":"Brands List","model":{"list_item":[{"_active":true,"title":"Invision","image_id":105,"brand_link":"#"},{"_active":true,"title":"figma","image_id":106,"brand_link":"#"},{"_active":true,"title":"amazon","image_id":107,"brand_link":"#"},{"_active":true,"title":"airbnb","image_id":108,"brand_link":"#"},{"_active":true,"title":"spotify","image_id":109,"brand_link":"#"},{"_active":true,"title":"slack","image_id":110,"brand_link":"#"},{"_active":true,"title":"paypal","image_id":111,"brand_link":"#"}]},"component":"RegularBlock","open":true,"is_container":false}]', NULL, 1, NULL, NULL, NULL, '2022-02-09 10:54:05', NULL),
	(2, 'FAQ', '[{"type":"breadcrumb_section","name":"Breadcrumb Section","model":{"title":"Frequently Asked Questions","sub_title":"faq","bg_color":"transparent"},"component":"RegularBlock","open":true},{"type":"FaqList","name":"FAQ\'s List","model":{"title":"Payments","list_item":[{"_active":false,"title":"Why won\'t my payment go through?","sub_title":"<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus.</p>"},{"_active":false,"title":"How do I get a refund?","sub_title":"<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus.</p>"},{"_active":false,"title":"How do I redeem a coupon?","sub_title":"<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus.</p>"},{"_active":true,"title":"Changing account name","sub_title":"<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus.</p>"}]},"component":"RegularBlock","open":true},{"type":"FaqList","name":"FAQ\'s List","model":{"title":"Suggestions","list_item":[{"_active":false,"title":"Why won\'t my payment go through?","sub_title":"<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus.</p>"},{"_active":false,"title":"How do I get a refund?","sub_title":"<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus.</p>"},{"_active":false,"title":"How do I redeem a coupon?","sub_title":"<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus.</p>"},{"_active":true,"title":"Changing account name","sub_title":"<p>Pharetra nulla ullamcorper sit lectus. Fermentum mauris pellentesque nec nibh sed et, vel diam, massa. Placerat quis vel fames interdum urna lobortis sagittis sed pretium. Aliquam eget posuere sit enim elementum nulla vulputate magna. Morbi sed arcu proin quis tortor non risus.</p>\\n<p>Elementum lectus a porta commodo suspendisse arcu, aliquam lectus faucibus.</p>"}]},"component":"RegularBlock","open":true}]', NULL, 1, NULL, NULL, NULL, '2022-02-09 10:54:05', NULL),
	(3, 'Home Page 1', '[{"type":"hero_banner","name":"Hero Banner","model":{"style":"style_1","title":"There Are <span class=\\"colored\\">93,178<\\/span> Postings Here<br> For you!","sub_title":"Find Jobs, Employment & Career Opportunities","popular_searches":"Designer,Developer,Web,IOS,PHP,Senior,Engineer","list_images":[{"_active":false,"image_id":50},{"_active":false,"image_id":51},{"_active":false,"image_id":52},{"_active":false,"image_id":53}],"banner_image":47},"component":"RegularBlock","open":true,"is_container":false},{"type":"job_categories","name":"Job Categories","model":{"style":"style_1","title":"Popular Job Categories","sub_title":"2020 jobs live - 293 added today.","job_categories":["6","7","8","1","2","3","4","5","9"]},"component":"RegularBlock","open":true,"is_container":false},{"type":"jobs_list","name":"Jobs List","model":{"style":"style_1","title":"Featured Jobs","sub_title":"Know your worth and find the job that qualify your life","number":6,"job_categories":"","order":"is_featured","order_by":"desc","load_more_url":"\\/job"},"component":"RegularBlock","open":true,"is_container":false},{"type":"testimonial","name":"List Testimonial","model":{"style":"style_2","title":"Testimonials From Our Customers","sub_title":"Lorem ipsum dolor sit amet elit, sed do eiusmod tempor","list_item":[{"_active":false,"title":"Good theme","desc":"Without JobHunt i\\u2019d be homeless, they found me a job and got me sorted out quickly with everything! Can\\u2019t quite\\u2026 The Mitech team works really hard to ensure high level of quality","info_name":"Nicole Wells","info_desc":"","position":"Web Developer","avatar":101},{"_active":false,"title":"Great quality!","desc":"Without JobHunt i\\u2019d be homeless, they found me a job and got me sorted out quickly with everything! Can\\u2019t quite\\u2026 The Mitech team works really hard to ensure high level of quality","info_name":"Gabriel Nolan","position":"Consultant","avatar":112},{"_active":true,"title":"Awesome Design","desc":"Without JobHunt i\\u2019d be homeless, they found me a job and got me sorted out quickly with everything! Can\\u2019t quite\\u2026 The Mitech team works really hard to ensure high level of quality","info_name":"Ashley Jenkins","position":"Designer","avatar":113}]},"component":"RegularBlock","open":true,"is_container":false},{"type":"brands_list","name":"Brands List","model":{"list_item":[{"_active":false,"title":"Invision","image_id":105,"brand_link":"#"},{"_active":false,"title":"Figma","image_id":106,"brand_link":null},{"_active":false,"title":"Amazon","image_id":107,"brand_link":null},{"_active":false,"title":"Airbnb","image_id":108,"brand_link":null},{"_active":false,"title":"Spotify","image_id":109,"brand_link":null},{"_active":false,"title":"Slack","image_id":110,"brand_link":null},{"_active":false,"title":"Paypal","image_id":111,"brand_link":null}],"style":"style_1"},"component":"RegularBlock","open":true,"is_container":false},{"type":"about","name":"About Us Block","model":{"style":"style_1","title":"Millions of Jobs. Find the one that suits you.","content":"<p>Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 600,000 companies worldwide.<\\/p>\\r\\n                                    <ul class=\\"list-style-one\\">\\r\\n                                    <li>Bring to the table win-win survival<\\/li>\\r\\n                                    <li>Capitalize on low hanging fruit to identify<\\/li>\\r\\n                                    <li>But I must explain to you how all this<\\/li>\\r\\n                                    <\\/ul>","button_name":"Get Started","button_url":"#","button_target":0,"featured_image":39,"image_2":41},"component":"RegularBlock","open":true,"is_container":false},{"type":"BlockCounter","name":"Block Counter","model":{"list_item":[{"_active":false,"number":"4","symbol":"M","desc":"4 million daily active users"},{"_active":false,"number":"12","symbol":"k","desc":"Over 12k open job positions"},{"_active":false,"number":"20","symbol":"M","desc":"Over 20 million stories shared"}],"max_width":1310,"style":"style_2"},"component":"RegularBlock","open":true,"is_container":false},{"type":"list_news","name":"News: List Items","model":{"style":"style_1","title":"Recent News Articles","number":3,"category_id":"","order":"","order_by":"","sub_title":"Fresh job related news content posted each day."},"component":"RegularBlock","open":true,"is_container":false},{"type":"app_download","name":"App Download","model":{"title":"Get the Superio Job <br>Search App","sub_title":"DOWNLOAD & ENJOY","desc":"Search through millions of jobs and find the right fit. Simply <br>swipe right to apply.","button_image_1":44,"button_url_1":"#","button_image_2":45,"button_url_2":"#","featured_image":43},"component":"RegularBlock","open":true,"is_container":false},{"type":"call_to_action","name":"Call To Action","model":{"style":"style_2","title":"Recruiting?","sub_title":"Advertise your jobs to millions of monthly users and search 15.8 million <br>CVs in our database.","link_search":"Start Recruiting Now","url_search":"#","bg_image":38},"component":"RegularBlock","open":true,"is_container":false}]', NULL, 1, NULL, NULL, NULL, '2022-02-09 10:54:05', NULL),
	(4, 'Home Page 2', '[{"type":"hero_banner","name":"Hero Banner","model":{"style":"style_2","title":"Find Your Perfect Job <br>Match","sub_title":"Find Jobs, Employment & Career Opportunities","popular_searches":"Designer,Developer,Web,IOS,PHP,Senior,Engineer","banner_image":48,"banner_image_2":54,"upload_cv_url":"#"},"component":"RegularBlock","open":true,"is_container":false},{"type":"HowItWork","name":"How It Works","model":{"title":"How It Works?","sub_title":"Job for anyone, anywhere","list_item":[{"_active":false,"title":"Free Resume Assessments","sub_title":"Employers on average spend 31 seconds scanning resumes to identify potential matches.","icon_image":102},{"_active":false,"title":"Job Fit Scoring","sub_title":"Employers on average spend 31 seconds scanning resumes to identify potential matches.","icon_image":103},{"_active":false,"title":"Help Every Step of the Way","sub_title":"Employers on average spend 31 seconds scanning resumes to identify potential matches.","icon_image":104}]},"component":"RegularBlock","open":true,"is_container":false},{"type":"jobs_list","name":"Jobs List","model":{"style":"style_2","title":"Featured Jobs","sub_title":"Know your worth and find the job that qualify your life","number":5,"job_categories":"","order":"is_featured","order_by":"desc","load_more_url":"\\/job"},"component":"RegularBlock","open":true,"is_container":false},{"type":"list_locations","name":"List Locations","model":{"title":"Featured Cities","sub_title":"Lorem ipsum dolor sit amet elit, sed do eiusmod tempor","number":5,"order":"id","order_by":"asc"},"component":"RegularBlock","open":true,"is_container":false},{"type":"call_to_action","name":"Call To Action","model":{"style":"style_1","title":"Your Dream Jobs Are Waiting","sub_title":"Over 1 million interactions, 50,000 success stories Make yours now.","link_search":"Search Job","url_search":"\\/job","link_apply":"Apply Job Now","url_apply":"#","bg_image":46},"component":"RegularBlock","open":true,"is_container":false},{"type":"list_candidates","name":"Candidates Blocks","model":{"title":"Featured Candidates","desc":"Lorem ipsum dolor sit amet elit, sed do eiusmod tempor","number":10,"category_id":"","order":"title","order_by":"desc"},"component":"RegularBlock","open":true,"is_container":false},{"type":"list_news","name":"News: List Items","model":{"style":"style_2","title":"Recent News Articles","number":3,"category_id":"","order":"","order_by":"","sub_title":"Fresh job related news content posted each day."},"component":"RegularBlock","open":true,"is_container":false},{"type":"call_to_action","name":"Call To Action","model":{"style":"style_3","title":"Let employers find you","sub_title":"Advertise your jobs to millions of monthly users and search 15.8 million CVs in our database.","link_search":"Search Job","url_search":"\\/job"},"component":"RegularBlock","open":true,"is_container":false}]', NULL, 1, NULL, NULL, NULL, '2022-02-09 10:54:05', NULL),
	(5, 'Home Page 3', '[{"type":"hero_banner","name":"Hero Banner","model":{"style":"style_3","title":"Join us &amp; Explore Thousands <br> of Jobs","sub_title":"Find Jobs, Employment & Career Opportunities","popular_searches":"Designer,Developer,Web,IOS,PHP,Senior,Engineer","banner_image":49},"component":"RegularBlock","open":true,"is_container":false},{"type":"brands_list","name":"Brands List","model":{"list_item":[{"_active":false,"title":"Invision","image_id":105,"brand_link":"#"},{"_active":false,"title":"Figma","image_id":106,"brand_link":null},{"_active":false,"title":"Amazon","image_id":107,"brand_link":null},{"_active":false,"title":"Airbnb","image_id":108,"brand_link":null},{"_active":false,"title":"Spotify","image_id":109,"brand_link":null},{"_active":false,"title":"Slack","image_id":110,"brand_link":null},{"_active":false,"title":"Paypal","image_id":111,"brand_link":null}],"style":"style_2"},"component":"RegularBlock","open":true,"is_container":false},{"type":"job_categories","name":"Job Categories","model":{"style":"style_2","title":"Popular Job Categories","sub_title":"2020 jobs live - 293 added today.","job_categories":["6","7","8","1","3","4","5","9"]},"component":"RegularBlock","open":true,"is_container":false},{"type":"jobs_list","name":"Jobs List","model":{"style":"style_3","title":"Featured Jobs","sub_title":"Know your worth and find the job that qualify your life","number":9,"job_categories":"","order":"is_featured","order_by":"desc","load_more_url":"\\/job"},"component":"RegularBlock","open":true,"is_container":false},{"type":"testimonial","name":"List Testimonial","model":{"style":"index","title":"Testimonials From Our Customers","sub_title":"Lorem ipsum dolor sit amet elit, sed do eiusmod tempor","list_item":[{"_active":false,"title":"Good theme","desc":"Without JobHunt i\\u2019d be homeless, they found me a job and got me sorted out quickly with everything! Can\\u2019t quite\\u2026 The Mitech team works really hard to ensure high level of quality","info_name":"Nicole Wells","info_desc":"","position":"Web Developer","avatar":101},{"_active":false,"title":"Great quality!","desc":"Without JobHunt i\\u2019d be homeless, they found me a job and got me sorted out quickly with everything! Can\\u2019t quite\\u2026 The Mitech team works really hard to ensure high level of quality","info_name":"Gabriel Nolan","position":"Consultant","avatar":112},{"_active":true,"title":"Awesome Design","desc":"Without JobHunt i\\u2019d be homeless, they found me a job and got me sorted out quickly with everything! Can\\u2019t quite\\u2026 The Mitech team works really hard to ensure high level of quality","info_name":"Ashley Jenkins","position":"Designer","avatar":113}]},"component":"RegularBlock","open":true,"is_container":false},{"type":"list_company","name":"Company: List Items","model":{"title":"Top Company Registered","sub_title":"Some of the companies we\'ve helped recruit excellent applicants over the years.","number":10,"category_id":"","order":"name","order_by":"asc"},"component":"RegularBlock","open":true,"is_container":false},{"type":"about","name":"About Us Block","model":{"style":"style_2","title":"Get applications from the world best talents.","content":"<p>Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 600,000 companies worldwide.<\\/p>\\r\\n                                    <ul class=\\"list-style-one\\">\\r\\n                                    <li>Bring to the table win-win survival<\\/li>\\r\\n                                    <li>Capitalize on low hanging fruit to identify<\\/li>\\r\\n                                    <li>But I must explain to you how all this<\\/li>\\r\\n                                    <\\/ul>","button_name":"Post a Job","button_url":"#","button_target":0,"featured_image":40,"image_2":42},"component":"RegularBlock","open":true,"is_container":false},{"type":"table_price","name":"Table Pricing","model":{"title":"Pricing Packages","sub_title":"Lorem ipsum dolor sit amet elit, sed do eiusmod tempor.","sale_off_text":"Save up to 10%","monthly_title":"Monthly","annual_title":"AnnualSave","monthly_list":[{"_active":false,"title":"Basic","price":"$199","unit":"monthly","featured":"<ul>\\r\\n                                                <li><span>1 job posting<\\/span><\\/li>\\r\\n                                                <li><span>0 featured job<\\/span><\\/li>\\r\\n                                                <li><span>Job displayed for 20 days<\\/span><\\/li>\\r\\n                                                <li><span>Premium Support 24\\/7 <\\/span><\\/li>\\r\\n                                            <\\/ul>","button_name":"View Profile","button_url":"#"},{"_active":false,"title":"Standard","price":"$499","unit":"monthly","featured":"<ul>\\r\\n                                                <li><span>1 job posting<\\/span><\\/li>\\r\\n                                                <li><span>0 featured job<\\/span><\\/li>\\r\\n                                                <li><span>Job displayed for 20 days<\\/span><\\/li>\\r\\n                                                <li><span>Premium Support 24\\/7 <\\/span><\\/li>\\r\\n                                            <\\/ul>","button_name":"View Profile","button_url":"#","is_recommended":1},{"_active":false,"title":"Extended","price":"$799","unit":"monthly","featured":"<ul>\\r\\n                                                <li><span>1 job posting<\\/span><\\/li>\\r\\n                                                <li><span>0 featured job<\\/span><\\/li>\\r\\n                                                <li><span>Job displayed for 20 days<\\/span><\\/li>\\r\\n                                                <li><span>Premium Support 24\\/7 <\\/span><\\/li>\\r\\n                                            <\\/ul>","button_name":"View Profile","button_url":"#"}],"annual_list":[{"_active":false,"title":"Basic","price":"$1199","unit":"Annual","featured":"<ul>\\r\\n                                                <li><span>1 job posting<\\/span><\\/li>\\r\\n                                                <li><span>0 featured job<\\/span><\\/li>\\r\\n                                                <li><span>Job displayed for 20 days<\\/span><\\/li>\\r\\n                                                <li><span>Premium Support 24\\/7 <\\/span><\\/li>\\r\\n                                            <\\/ul>","button_name":"View Profile","button_url":"#"},{"_active":false,"title":"Standard","price":"$1499","unit":"Annual","featured":"<ul>\\r\\n                                                <li><span>1 job posting<\\/span><\\/li>\\r\\n                                                <li><span>0 featured job<\\/span><\\/li>\\r\\n                                                <li><span>Job displayed for 20 days<\\/span><\\/li>\\r\\n                                                <li><span>Premium Support 24\\/7 <\\/span><\\/li>\\r\\n                                            <\\/ul>","button_name":"View Profile","button_url":"#","is_recommended":1},{"_active":false,"title":"Extended","price":"$1799","unit":"Annual","featured":"<ul>\\r\\n                                                <li><span>1 job posting<\\/span><\\/li>\\r\\n                                                <li><span>0 featured job<\\/span><\\/li>\\r\\n                                                <li><span>Job displayed for 20 days<\\/span><\\/li>\\r\\n                                                <li><span>Premium Support 24\\/7 <\\/span><\\/li>\\r\\n                                            <\\/ul>","button_name":"View Profile","button_url":"#"}]},"component":"RegularBlock","open":true,"is_container":false}]', NULL, 1, NULL, NULL, NULL, '2022-02-09 10:54:05', NULL),
	(6, 'Home Page 4', '[{"type":"hero_banner","name":"Hero Banner","model":{"style":"style_4","title":"The Easiest Way to Get Your New Job","sub_title":"","popular_searches":"Designer, Developer, Web, IOS, PHP, Senior, Engineer,","banner_image":55,"upload_cv_url":"","banner_image_2":"","list_images":[]},"component":"RegularBlock","open":true,"is_container":false},{"type":"jobs_list","name":"Jobs List","model":{"style":"style_4","title":"Most Popular Jobs","sub_title":"Know your worth and find the job that qualify your life","number":6,"job_categories":["2","3","4","9"],"order":"is_featured","order_by":"desc","load_more_url":""},"component":"RegularBlock","open":true,"is_container":false},{"type":"HowItWork","name":"How It Works","model":{"title":"How It Works?","sub_title":"Job for anyone, anywhere","list_item":[{"_active":true,"title":"Register an account <br> to start","sub_title":"","icon_image":18},{"_active":true,"title":"Explore over thousands <br> of resumes","sub_title":"","icon_image":19},{"_active":true,"title":"Find the most suitable <br> candidate","sub_title":"","icon_image":20}],"style":"style_3"},"component":"RegularBlock","open":true,"is_container":false},{"type":"list_company","name":"Company: List Items","model":{"title":"Top Company Registered","sub_title":"Some of the companies we\'ve helped recruit excellent applicants over the years.","number":10,"category_id":"","order":"name","order_by":"asc","style":"style_2"},"component":"RegularBlock","open":true,"is_container":false},{"type":"job_categories","name":"Job Categories","model":{"style":"style_1","title":"Popular Job Categories","sub_title":"2020 jobs live - 293 added today.","job_categories":["6","7","8","1","2","3","4","5","9"]},"component":"RegularBlock","open":true,"is_container":false},{"type":"list_news","name":"News: List Items","model":{"style":"style_3","title":"Recent News Articles","number":3,"category_id":"","order":"","order_by":"","sub_title":"Fresh job related news content posted each day."},"component":"RegularBlock","open":true,"is_container":false},{"type":"brands_list","name":"Brands List","model":{"list_item":[{"_active":false,"title":"Invision","image_id":105,"brand_link":"#"},{"_active":false,"title":"Figma","image_id":106,"brand_link":null},{"_active":false,"title":"Amazon","image_id":107,"brand_link":null},{"_active":false,"title":"Airbnb","image_id":108,"brand_link":null},{"_active":false,"title":"Spotify","image_id":109,"brand_link":null},{"_active":false,"title":"Slack","image_id":110,"brand_link":null},{"_active":false,"title":"Paypal","image_id":111,"brand_link":null}],"style":"style_1"},"component":"RegularBlock","open":true,"is_container":false}]', NULL, 1, NULL, NULL, NULL, '2022-02-09 10:54:05', NULL),
	(7, 'Home Page 5', '[{"type":"hero_banner","name":"Hero Banner","model":{"style":"style_5","title":"There Are <span class=\\"colored\\">93,178</span> Postings Here<br> For you!","sub_title":"Find Jobs, Employment & Career Opportunities","popular_searches":"Designer, Developer, Web, IOS, PHP, Senior, Engineer,","list_images":[{"_active":true,"image_id":50},{"_active":true,"image_id":51}],"banner_image":118,"upload_cv_url":"","banner_image_2":134,"banner_image_3":135,"style_5_banner_image_2":119,"style_5_banner_image_3":120,"style_5_list_images":[{"_active":false,"image_id":50,"url":null},{"_active":false,"image_id":51,"url":null}],"style_6_list_images":""},"component":"RegularBlock","open":true,"is_container":false},{"type":"jobs_list","name":"Jobs List","model":{"style":"style_5","title":"Featured Jobs","sub_title":"Know your worth and find the job that qualify your life","number":6,"job_categories":"","order":"is_featured","order_by":"desc","load_more_url":"/job"},"component":"RegularBlock","open":true,"is_container":false},{"type":"job_categories","name":"Job Categories","model":{"style":"style_5","title":"Popular Job Categories","sub_title":"2020 jobs live - 293 added today.","job_categories":["1","3","4","5","6","7","8","9"]},"component":"RegularBlock","open":true,"is_container":false},{"type":"about","name":"About Us Block","model":{"style":"style_3","title":"Get applications from the world best talents.","content":"<p>Search all the open positions on the web. Get your own personalized salary estimate. Read reviews on over 600,000 companies worldwide.</p>\\n                                    <ul class=\\"list-style-one\\">\\n                                    <li>Bring to the table win-win survival</li>\\n                                    <li>Capitalize on low hanging fruit to identify</li>\\n                                    <li>But I must explain to you how all this</li>\\n                                    </ul>","button_name":"Post a Job","button_url":"#","button_target":0,"featured_image":121,"image_2":122,"button_color":""},"component":"RegularBlock","open":true,"is_container":false},{"type":"list_news","name":"News: List Items","model":{"style":"style_2","title":"Recent News Articles","number":3,"category_id":"","order":"","order_by":"","sub_title":"Fresh job related news content posted each day."},"component":"RegularBlock","open":true,"is_container":false},{"type":"testimonial","name":"List Testimonial","model":{"style":"style_4","title":"Testimonials From Our Customers","sub_title":"Lorem ipsum dolor sit amet elit, sed do eiusmod tempor","list_item":[{"_active":true,"title":"Good theme","desc":"Without JobHunt i’d be homeless, they found me a job and got me sorted out quickly with everything! Can’t quite… The Mitech team works really hard to ensure high level of quality","info_name":"Nicole Wells","info_desc":"","position":"Web Developer","avatar":123},{"_active":true,"title":"Great quality!","desc":"Without JobHunt i’d be homeless, they found me a job and got me sorted out quickly with everything! Can’t quite… The Mitech team works really hard to ensure high level of quality","info_name":"Gabriel Nolan","position":"Consultant","avatar":123},{"_active":true,"title":"Awesome Design","desc":"Without JobHunt i’d be homeless, they found me a job and got me sorted out quickly with everything! Can’t quite… The Mitech team works really hard to ensure high level of quality","info_name":"Ashley Jenkins","position":"Designer","avatar":123}]},"component":"RegularBlock","open":true,"is_container":false},{"type":"brands_list","name":"Brands List","model":{"list_item":[{"_active":false,"title":"Invision","image_id":105,"brand_link":"#"},{"_active":false,"title":"Figma","image_id":106,"brand_link":null},{"_active":false,"title":"Amazon","image_id":107,"brand_link":null},{"_active":false,"title":"Airbnb","image_id":108,"brand_link":null},{"_active":false,"title":"Spotify","image_id":109,"brand_link":null},{"_active":false,"title":"Slack","image_id":110,"brand_link":null},{"_active":false,"title":"Paypal","image_id":111,"brand_link":null}],"style":"style_2"},"component":"RegularBlock","open":true,"is_container":false},{"type":"list_company","name":"Company: List Items","model":{"title":"Top Company Registered","sub_title":"Some of the companies we\'ve helped recruit excellent applicants over the years.","number":10,"category_id":"","order":"name","order_by":"asc","style":"style_3"},"component":"RegularBlock","open":true,"is_container":false}]', NULL, 1, NULL, NULL, NULL, '2022-02-09 10:54:05', NULL),
	(8, 'Home Page 6', '[{"type":"hero_banner","name":"Hero Banner","model":{"style":"style_6","title":"Find a Perfect <br>Candidate","sub_title":"Find Jobs, Employment & Career Opportunities","popular_searches":"Designer, Developer, Web, IOS, PHP, Senior, Engineer,","upload_cv_url":"","banner_image":124,"banner_image_2":"","style_6_list_images":[{"_active":false,"image_id":50},{"_active":false,"image_id":51},{"_active":false,"image_id":52},{"_active":false,"image_id":53}]},"component":"RegularBlock","open":true,"is_container":false},{"type":"job_categories","name":"Job Categories","model":{"style":"style_3","title":"Popular Job Categories","sub_title":"2020 jobs live - 293 added today.","job_categories":["1","2","3","4","5","6","7","8"]},"component":"RegularBlock","open":true,"is_container":false},{"type":"jobs_list","name":"Jobs List","model":{"style":"style_6","title":"Featured Jobs","sub_title":"Know your worth and find the job that qualify your life","number":5,"job_categories":"","order":"is_featured","order_by":"desc","load_more_url":"/job"},"component":"RegularBlock","open":true,"is_container":false},{"type":"call_to_action","name":"Call To Action","model":{"style":"style_1","title":"Make a Difference with Your Online Resume!","sub_title":"Your resume in minutes with JobHunt resume assistant is ready!","link_search":"Create an Account","url_search":"/register","link_apply":"","url_apply":"","bg_image":125},"component":"RegularBlock","open":true,"is_container":false},{"type":"testimonial","name":"List Testimonial","model":{"style":"style_3","title":"Testimonials From Our Customers","sub_title":"Lorem ipsum dolor sit amet elit, sed do eiusmod tempor","list_item":[{"_active":false,"title":"Good theme","desc":"Without JobHunt i’d be homeless, they found me a job and got me sorted out quickly with everything! Can’t quite… The Mitech team works really hard to ensure high level of quality","info_name":"Nicole Wells","info_desc":"","position":"Web Developer","avatar":101},{"_active":false,"title":"Great quality!","desc":"Without JobHunt i’d be homeless, they found me a job and got me sorted out quickly with everything! Can’t quite… The Mitech team works really hard to ensure high level of quality","info_name":"Gabriel Nolan","position":"Consultant","avatar":112},{"_active":true,"title":"Awesome Design","desc":"Without JobHunt i’d be homeless, they found me a job and got me sorted out quickly with everything! Can’t quite… The Mitech team works really hard to ensure high level of quality","info_name":"Ashley Jenkins","position":"Designer","avatar":113}]},"component":"RegularBlock","open":true,"is_container":false},{"type":"brands_list","name":"Brands List","model":{"list_item":[{"_active":true,"title":"Invision","image_id":105,"brand_link":"#"},{"_active":true,"title":"figma","image_id":106,"brand_link":"#"},{"_active":true,"title":"amazon","image_id":107,"brand_link":"#"},{"_active":true,"title":"airbnb","image_id":108,"brand_link":"#"},{"_active":true,"title":"spotify","image_id":109,"brand_link":"#"},{"_active":true,"title":"slack","image_id":110,"brand_link":"#"},{"_active":true,"title":"paypal","image_id":111,"brand_link":"#"}],"style":"style_1"},"component":"RegularBlock","open":true,"is_container":false},{"type":"list_news","name":"News: List Items","model":{"style":"style_4","title":"Recent News Articles","number":4,"category_id":"","order":"","order_by":"","sub_title":"Fresh job related news content posted each day."},"component":"RegularBlock","open":true,"is_container":false},{"type":"list_candidates","name":"Candidates Blocks","model":{"title":"Featured Candidates","desc":"Lorem ipsum dolor sit amet elit, sed do eiusmod tempor","number":10,"category_id":"","order":"title","order_by":"desc"},"component":"RegularBlock","open":true,"is_container":false}]', NULL, 1, NULL, NULL, NULL, '2022-02-09 10:54:06', NULL);
/*!40000 ALTER TABLE `core_templates` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_template_translations
CREATE TABLE IF NOT EXISTS `core_template_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_template_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_template_translations: ~0 rows (approximately)
DELETE FROM `core_template_translations`;
/*!40000 ALTER TABLE `core_template_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_template_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.core_translations
CREATE TABLE IF NOT EXISTS `core_translations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string` text COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.core_translations: ~0 rows (approximately)
DELETE FROM `core_translations`;
/*!40000 ALTER TABLE `core_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_translations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.media_files
CREATE TABLE IF NOT EXISTS `media_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `app_user_id` int(11) DEFAULT NULL,
  `file_width` int(11) DEFAULT NULL,
  `file_height` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.media_files: ~0 rows (approximately)
DELETE FROM `media_files`;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` (`id`, `file_name`, `file_path`, `file_size`, `file_type`, `file_extension`, `create_user`, `update_user`, `deleted_at`, `app_id`, `app_user_id`, `file_width`, `file_height`, `created_at`, `updated_at`) VALUES
	(1, 'avatar', 'demo/general/avatar.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'avatar-2', 'demo/general/avatar-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 'avatar-3', 'demo/general/avatar-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'ico_adventurous', 'demo/general/ico_adventurous.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 'ico_localguide', 'demo/general/ico_localguide.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'ico_maps', 'demo/general/ico_maps.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 'ico_paymethod', 'demo/general/ico_paymethod.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 'logo', 'demo/general/logo.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 'logo-white', 'demo/general/logo-2.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 'bg_contact', 'demo/general/bg-contact.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 'favicon', 'demo/general/favicon.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 'thumb-vendor-register', 'demo/general/thumb-vendor-register.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 'bg-video-vendor-register1', 'demo/general/bg-video-vendor-register1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 'ico_chat_1', 'demo/general/ico_chat_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 'ico_friendship_1', 'demo/general/ico_friendship_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 'ico_piggy-bank_1', 'demo/general/ico_piggy-bank_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, 'ads-bg-4', 'demo/general/ads-bg-4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 'process-1', 'demo/general/process-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 'process-2', 'demo/general/process-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, 'process-3', 'demo/general/process-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 'home-6-banner', 'demo/general/home-6-banner.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, 'location-1', 'demo/location/location-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, 'location-2', 'demo/location/location-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, 'location-3', 'demo/location/location-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, 'location-4', 'demo/location/location-4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(26, 'location-5', 'demo/location/location-5.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(27, 'location-6', 'demo/location/location-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, 'location-7', 'demo/location/location-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, 'location-8', 'demo/location/location-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, 'news-1', 'demo/news/news-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(31, 'news-2', 'demo/news/news-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(32, 'news-3', 'demo/news/news-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(33, 'news-4', 'demo/news/news-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(34, 'news-5', 'demo/news/news-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(35, 'news-6', 'demo/news/news-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(36, 'news-7', 'demo/news/news-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(37, 'news-banner', 'demo/news/news-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(38, 'image-1', 'demo/general/image-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(39, 'image-2', 'demo/general/image-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(40, 'image-3', 'demo/general/image-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(41, 'count-employers', 'demo/general/count-employers.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(42, 'app-list', 'demo/general/app-list.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(43, 'mobile-app', 'demo/general/mobile-app.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(44, 'apple', 'demo/general/apple.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(45, 'google', 'demo/general/google.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(46, 'bg-1', 'demo/general/bg-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(47, 'banner-img-1', 'demo/general/banner-img-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(48, 'banner-img-2', 'demo/general/banner-img-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(49, 'banner-img-3', 'demo/general/banner-img-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(50, 'banner-1-1', 'demo/general/banner-1-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(51, 'banner-1-2', 'demo/general/banner-1-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(52, 'banner-1-3', 'demo/general/banner-1-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(53, 'banner-1-4', 'demo/general/banner-1-4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(54, 'banner-2-1', 'demo/general/banner-2-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(55, 'homepage-4-banner', 'demo/general/homepage-4-banner.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(56, 'candidate-1', 'demo/candidate/candidate-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(57, 'candidate-2', 'demo/candidate/candidate-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(58, 'candidate-3', 'demo/candidate/candidate-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(59, 'candidate-4', 'demo/candidate/candidate-4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(60, 'candidate-5', 'demo/candidate/candidate-5.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(61, 'candidate-6', 'demo/candidate/candidate-6.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(62, 'candidate-7', 'demo/candidate/candidate-7.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(63, 'candidate-8', 'demo/candidate/candidate-8.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(64, 'candidate-9', 'demo/candidate/candidate-9.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(65, 'candidate', 'demo/candidate/candidate.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(66, 'portfolio-1', 'demo/candidate/portfolio-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(67, 'portfolio-2', 'demo/candidate/portfolio-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(68, 'portfolio-3', 'demo/candidate/portfolio-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(69, 'portfolio-4', 'demo/candidate/portfolio-4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(70, 'portfolio-5', 'demo/candidate/portfolio-5.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(71, 'portfolio-6', 'demo/candidate/portfolio-6.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(72, 'resume_1', 'demo/candidate/resume_1.docx', NULL, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(73, 'resume_2', 'demo/candidate/resume_2.docx', NULL, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(74, 'resume_3', 'demo/candidate/resume_3.docx', NULL, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(75, 'resume_4', 'demo/candidate/resume_4.docx', NULL, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(76, 'resume_5', 'demo/candidate/resume_5.docx', NULL, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(77, 'resume_6', 'demo/candidate/resume_6.docx', NULL, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(78, 'resume_7', 'demo/candidate/resume_7.docx', NULL, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(79, 'resume_8', 'demo/candidate/resume_8.docx', NULL, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(80, 'resume_9', 'demo/candidate/resume_9.docx', NULL, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(81, 'resume_10', 'demo/candidate/resume_10.docx', NULL, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'docx', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(82, 'bc_company-1', 'demo/company/bc_company-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(83, 'bc_company-2', 'demo/company/bc_company-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(84, 'bc_company-3', 'demo/company/bc_company-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(85, 'bc_company-4', 'demo/company/bc_company-4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(86, 'bc_company-5', 'demo/company/bc_company-5.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(87, 'bc_company-6', 'demo/company/bc_company-6.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(88, 'bc_company-7', 'demo/company/bc_company-7.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(89, 'bc_company-8', 'demo/company/bc_company-8.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(90, 'bc_company-9', 'demo/company/bc_company-9.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(91, 'bc_company-10', 'demo/company/bc_company-10.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(92, 'bc_company-11', 'demo/company/bc_company-11.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(93, 'bc_company-12', 'demo/company/bc_company-12.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(94, 'about-img-1', 'demo/general/about-img-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(95, 'about-img-2', 'demo/general/about-img-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(96, 'about-img-3', 'demo/general/about-img-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(97, 'about-img-4', 'demo/general/about-img-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(98, 'about-img-5', 'demo/general/about-img-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(99, 'about-img-6', 'demo/general/about-img-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(100, 'call-to-action-bg-1', 'demo/general/call-to-action-bg-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(101, 'testi-thumb-1', 'demo/general/testi-thumb-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(102, 'how-it-work-1', 'demo/general/how-it-work-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(103, 'how-it-work-2', 'demo/general/how-it-work-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(104, 'how-it-work-3', 'demo/general/how-it-work-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(105, 'brand-1', 'demo/general/brand-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(106, 'brand-2', 'demo/general/brand-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(107, 'brand-3', 'demo/general/brand-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(108, 'brand-4', 'demo/general/brand-4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(109, 'brand-5', 'demo/general/brand-5.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(110, 'brand-6', 'demo/general/brand-6.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(111, 'brand-7', 'demo/general/brand-7.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(112, 'testi-thumb-2', 'demo/general/testi-thumb-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(113, 'testi-thumb-3', 'demo/general/testi-thumb-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(114, 'placeholder', 'demo/general/placeholder.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(115, 'smartphone', 'demo/general/smartphone.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(116, 'letter', 'demo/general/letter.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(117, 'contact-call-to-action', 'demo/general/contact-call-to-action.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(118, 'home5-banner-1', 'demo/general/home5-banner-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(119, 'home5-banner-2', 'demo/general/home5-banner-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(120, 'home5-banner-3', 'demo/general/home5-banner-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(121, 'home5-image-4', 'demo/general/home5-image-4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(122, 'app-list-2', 'demo/general/app-list-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(123, 'home5-testimonial-image', 'demo/general/home5-testimonial-image.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(124, 'home-6-banner', 'demo/general/home-6-banner.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(125, 'call-to-action-2', 'demo/general/call-to-action-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(126, 'news-banner', 'demo/news/news-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(127, 'img-detail', 'demo/news/img-detail.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(128, 'gig-category-img', 'demo/gig/category-img.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(129, 'gig-sub-cat-1', 'demo/gig/sub-cat-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(130, 'gig-sub-cat-2', 'demo/gig/sub-cat-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(131, 'gig-sub-cat-3', 'demo/gig/sub-cat-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(132, 'gig-sub-cat-4', 'demo/gig/sub-cat-4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(133, 'gig-sub-cat-5', 'demo/gig/sub-cat-5.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(134, 'gig-type1', 'demo/gig/type1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(135, 'gig-type2', 'demo/gig/type2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(136, 'gig-type3', 'demo/gig/type3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(137, 'gig-type4', 'demo/gig/type4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.migrations: ~34 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_03_17_114820_create_table_core_pages', 1),
	(4, '2019_03_17_140539_create_media_files_table', 1),
	(5, '2019_03_20_081256_create_core_news_category_table', 1),
	(6, '2019_03_27_081940_create_core_setting_table', 1),
	(7, '2019_03_28_101009_create_bravo_booking_table', 1),
	(8, '2019_03_28_165911_create_booking_meta_table', 1),
	(9, '2019_03_29_093236_update_bookings_table', 1),
	(10, '2019_04_01_045229_create_user_meta_table', 1),
	(11, '2019_04_01_150630_create_menu_table', 1),
	(12, '2019_04_02_150630_create_core_news_table', 1),
	(13, '2019_04_03_080159_bravo_location', 1),
	(14, '2019_04_05_143248_create_core_templates_table', 1),
	(15, '2019_05_07_085430_create_core_languages_table', 1),
	(16, '2019_05_07_085442_create_core_translations_table', 1),
	(17, '2019_05_17_074008_create_bravo_review', 1),
	(18, '2019_05_17_074048_create_bravo_review_meta', 1),
	(19, '2019_05_17_113042_create_tour_attrs_table', 1),
	(20, '2019_05_21_084235_create_bravo_contact_table', 1),
	(21, '2019_05_28_152845_create_core_subscribers_table', 1),
	(22, '2019_06_17_142338_bravo_seo', 1),
	(23, '2019_08_09_163909_create_inbox_table', 1),
	(24, '2019_10_22_151319_create_social_table', 1),
	(25, '2020_04_02_150631_create_core_tags_table', 1),
	(26, '2020_04_05_101016_create_gig_table', 1),
	(27, '2020_11_23_092238_create_notifications_table', 1),
	(28, '2021_04_02_150632_create_core_tag_new_table', 1),
	(29, '2021_07_28_000000_create_candidates_table', 1),
	(30, '2021_07_28_000001_create_categories_table', 1),
	(31, '2021_07_31_032650_create_companies_table', 1),
	(32, '2021_08_02_151855_create_bc_jobs_table', 1),
	(33, '2021_08_15_174944_create_bc_skills_table', 1),
	(34, '2021_08_22_173931_create_role_table', 1),
	(35, '2021_09_09_081440_migrate_ver_1_0', 1),
	(36, '2021_09_24_195241_create_order_table', 1),
	(37, '2021_09_28_174255_create_jobs_table', 1),
	(38, '2021_09_29_041836_create_user_plan_table', 1),
	(39, '2021_12_13_032843_create_bc_company_term', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.notifications: ~0 rows (approximately)
DELETE FROM `notifications`;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.social_forums
CREATE TABLE IF NOT EXISTS `social_forums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.social_forums: ~0 rows (approximately)
DELETE FROM `social_forums`;
/*!40000 ALTER TABLE `social_forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_forums` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.social_groups
CREATE TABLE IF NOT EXISTS `social_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` bigint(20) DEFAULT NULL,
  `banner_image` bigint(20) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.social_groups: ~0 rows (approximately)
DELETE FROM `social_groups`;
/*!40000 ALTER TABLE `social_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_groups` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.social_group_user
CREATE TABLE IF NOT EXISTS `social_group_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.social_group_user: ~0 rows (approximately)
DELETE FROM `social_group_user`;
/*!40000 ALTER TABLE `social_group_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_group_user` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.social_posts
CREATE TABLE IF NOT EXISTS `social_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `file_ids` text COLLATE utf8mb4_unicode_ci,
  `publish_date` datetime DEFAULT NULL,
  `comment_disabled_by` bigint(20) DEFAULT NULL,
  `privary` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.social_posts: ~0 rows (approximately)
DELETE FROM `social_posts`;
/*!40000 ALTER TABLE `social_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_posts` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.social_post_comments
CREATE TABLE IF NOT EXISTS `social_post_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `file_ids` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.social_post_comments: ~0 rows (approximately)
DELETE FROM `social_post_comments`;
/*!40000 ALTER TABLE `social_post_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_post_comments` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.social_user_follow
CREATE TABLE IF NOT EXISTS `social_user_follow` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.social_user_follow: ~0 rows (approximately)
DELETE FROM `social_user_follow`;
/*!40000 ALTER TABLE `social_user_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_user_follow` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `avatar_id` bigint(20) DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `vendor_commission_amount` int(11) DEFAULT NULL,
  `vendor_commission_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `billing_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_submit_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.users: ~0 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `phone`, `birthday`, `last_login_at`, `avatar_id`, `bio`, `status`, `create_user`, `update_user`, `vendor_commission_amount`, `vendor_commission_type`, `role_id`, `billing_last_name`, `billing_first_name`, `country`, `state`, `city`, `zip_code`, `address`, `address2`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `payment_gateway`, `total_guests`, `locale`, `verify_submit_status`, `is_verified`) VALUES
	(1, 'System Admin', 'System', 'Admin', 'admin@superio.test', '2022-02-09 10:54:03', '$2y$10$HzmqV1ug9.5oRiU/JT3v2u5v1ILtYHxGTEd3R4amzO7mopWb8B9L2', '112 666 888', NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 1, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:03', '2022-02-09 10:54:03', NULL, NULL, NULL, NULL, NULL),
	(2, 'Candidate ', 'Candidate', '', 'candidate@superio.test', '2022-02-09 10:54:03', '$2y$10$yVhsOA1a8/snNPjkTqFuWu169Igf7u6o91R61P8TOAFe/NSQPXDy.', '112 666 888', NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 3, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:03', '2022-02-09 10:54:03', NULL, NULL, NULL, NULL, NULL),
	(3, 'Employer ', 'Employer', '', 'employer@superio.test', '2022-02-09 10:54:03', '$2y$10$8etuasfF5zgpyc5ljuXqjekFcPIbBH6oDoLPi4Z.rLX1iWlnIeeWy', '112 666 888', NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:03', '2022-02-09 10:54:03', NULL, NULL, NULL, NULL, NULL),
	(4, 'Opendoor Robertson', 'Opendoor', 'Robertson', 'robertson@superio.test', NULL, '$2y$10$vklm4WIBNsEdkTjdRN14feeKsu3enmfBUGox9mjVlY8nzjr8FysLS', '112 666 888', NULL, NULL, 56, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 3, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:03', '2022-02-09 10:54:03', NULL, NULL, NULL, NULL, NULL),
	(5, 'Checkr Warren', 'Checkr', 'Warren', 'warren@superio.test', NULL, '$2y$10$0TPGP1dngI2DtKRvhzmPF.2ByCSN6Iyyl96jHZ1kKQuwwunDXxfpq', '112 666 888', NULL, NULL, 57, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 3, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:03', '2022-02-09 10:54:03', NULL, NULL, NULL, NULL, NULL),
	(6, 'Esther Victoria', 'Esther', 'Victoria', 'victoria@superio.test', NULL, '$2y$10$PvjRsvf1l5ofpAlac5RvOuUMEvtMiti1CP8GpvDE1Y3XFr0Q/HiAC', '112 666 888', NULL, NULL, 58, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 3, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:03', '2022-02-09 10:54:03', NULL, NULL, NULL, NULL, NULL),
	(7, 'Bell Alexander', 'Bell', 'Alexander', 'alexander@superio.test', NULL, '$2y$10$OzFscB0FaH8ca0Z75pjWO.OOym.7UtkvfQ1y98rqSQ1mZ1V8BgDX.', '112 666 888', NULL, NULL, 59, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 3, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:03', '2022-02-09 10:54:04', NULL, NULL, NULL, NULL, NULL),
	(8, 'Floyd Robert', 'Floyd', 'Robert', 'robert@superio.test', NULL, '$2y$10$QcpdHi.DJlch1MkGo0ftveOcKzm7Jb7pnwWW3yLcx84fGNJFu.0xq', '112 666 888', NULL, NULL, 60, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 3, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:04', '2022-02-09 10:54:04', NULL, NULL, NULL, NULL, NULL),
	(9, 'Jerome Leslie', 'Jerome', 'Leslie', 'leslie@superio.test', NULL, '$2y$10$j3s7.Ir8569/Hhafw/QOQOTm3x04SlbydEEaU.NDefBaaWS3OPPOa', '112 666 888', NULL, NULL, 61, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 3, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:04', '2022-02-09 10:54:04', NULL, NULL, NULL, NULL, NULL),
	(10, 'Cameron Williamson', 'Cameron', 'Williamson', 'williamson@superio.test', NULL, '$2y$10$NWdHq7.2NyJsK9SQVQTjwuc4amprrbs63GO2W2/4r3phhXcKQwkPe', '112 666 888', NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:04', '2022-02-09 10:54:04', NULL, NULL, NULL, NULL, NULL),
	(11, 'Miles Fox', 'Miles', 'Fox', 'fox@superio.test', NULL, '$2y$10$O3gFPuiEJSKx1/icXn6zM.qan3RPo7Q8RFiST7S3RBWQSndY1TeEq', '112 666 888', NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:04', '2022-02-09 10:54:04', NULL, NULL, NULL, NULL, NULL),
	(12, 'Tom Hiddleston', 'Tom', 'Hiddleston', 'hiddleston@superio.test', NULL, '$2y$10$L3jxWgvbWb7.m8LF4qPa1.0qk8ViZjsYG9DDNNNl3sGi0WSFw21/a', '112 666 888', NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:04', '2022-02-09 10:54:04', NULL, NULL, NULL, NULL, NULL),
	(13, 'Jennifer Linda', 'Jennifer', 'Linda', 'linda@superio.test', NULL, '$2y$10$ZfxWhISIWy6wSCvUkOBsfe2oLwAMNvcxYdspvQtBsu8CwAlw1EG9u', '112 666 888', NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:04', '2022-02-09 10:54:05', NULL, NULL, NULL, NULL, NULL),
	(14, 'David John', 'David', 'John', 'john@superio.test', NULL, '$2y$10$Ti0fqCCjlB.Qo62SRuuCGeLhSg9Kj7wX8ufXhQ19EZVAyGcVEDtYy', '112 666 888', NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:05', '2022-02-09 10:54:05', NULL, NULL, NULL, NULL, NULL),
	(15, 'James Rebecca', 'James', 'Rebecca', 'rebecca@superio.test', NULL, '$2y$10$IetfJQi26xLRLGGkUFp9CO7aKveYVL057NKw5S9zHRcnlGAW18gz6', '112 666 888', NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 2, NULL, NULL, 'Viet Nam', NULL, NULL, NULL, 'My Dinh, Ha Noi', NULL, NULL, NULL, '2022-02-09 10:54:05', '2022-02-09 10:54:05', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.user_meta
CREATE TABLE IF NOT EXISTS `user_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.user_meta: ~0 rows (approximately)
DELETE FROM `user_meta`;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;

-- Dumping structure for table patchwork_laravel.user_wishlist
CREATE TABLE IF NOT EXISTS `user_wishlist` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table patchwork_laravel.user_wishlist: ~0 rows (approximately)
DELETE FROM `user_wishlist`;
/*!40000 ALTER TABLE `user_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_wishlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
