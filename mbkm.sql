-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 15, 2021 at 01:59 PM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbkm`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_one_childs`
--

DROP TABLE IF EXISTS `menu_one_childs`;
CREATE TABLE IF NOT EXISTS `menu_one_childs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_menu_parent` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_menu_parent` (`id_menu_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_one_childs`
--

INSERT INTO `menu_one_childs` (`id`, `id_menu_parent`, `title`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Beranda', '-', 'Enable', '2021-08-11 08:42:05', '2021-08-13 00:11:00'),
(2, 2, 'PKKM', NULL, 'Enable', '2021-08-11 08:42:05', '2021-08-13 00:11:32'),
(3, 2, 'Permata Sakti', NULL, 'Enable', '2021-08-11 08:42:23', '2021-08-13 00:11:42'),
(4, 2, 'Bangkit', NULL, 'Enable', '2021-08-11 08:42:39', '2021-08-13 00:12:01'),
(5, 2, 'Matching Fund', NULL, 'Enable', '2021-08-11 08:42:53', '2021-08-13 00:11:51'),
(6, 2, 'IISMA', NULL, 'Enable', '2021-08-11 08:43:03', '2021-08-11 08:43:42'),
(7, 3, 'KKN Tematik', NULL, 'Enable', '2021-08-11 08:44:54', '2021-08-13 00:12:14'),
(8, 3, 'Summer School', NULL, 'Enable', '2021-08-12 19:50:57', '2021-08-13 00:09:28'),
(9, 3, 'Pengabdian Masyarakat', NULL, 'Enable', '2021-08-13 00:06:24', '2021-08-13 00:09:35'),
(10, 3, 'Desa Binaan', NULL, 'Enable', '2021-08-13 00:07:12', '2021-08-13 00:09:40'),
(11, 3, 'Insentif ITB', NULL, 'Enable', '2021-08-13 00:12:52', '2021-08-13 00:12:52'),
(12, 3, 'Mitigasi Bencana', NULL, 'Enable', '2021-08-13 00:13:06', '2021-08-13 00:13:21'),
(13, 3, 'Citarum Harum', NULL, 'Enable', '2021-08-13 00:13:46', '2021-08-13 00:13:46'),
(14, 3, 'Program Kerja Sama', NULL, 'Enable', '2021-08-13 00:14:03', '2021-08-13 00:14:03');

-- --------------------------------------------------------

--
-- Table structure for table `menu_parents`
--

DROP TABLE IF EXISTS `menu_parents`;
CREATE TABLE IF NOT EXISTS `menu_parents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_parents`
--

INSERT INTO `menu_parents` (`id`, `title`, `status`, `link`, `created_at`, `updated_at`) VALUES
(1, 'BERANDA MBKM', 'Enable', NULL, '2021-08-11 06:14:54', '2021-08-11 06:42:22'),
(2, 'MBKM KEMENDIKBUD', 'Enable', NULL, '2021-08-11 06:15:15', '2021-08-11 06:15:15'),
(3, 'MBKM ITB', 'Enable', NULL, '2021-08-11 06:15:27', '2021-08-11 06:15:27'),
(4, 'BERITA', 'Enable', NULL, '2021-08-11 06:15:43', '2021-08-11 06:15:43'),
(5, 'INFO', 'Enable', NULL, '2021-08-11 06:15:51', '2021-08-11 06:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu_two_childs`
--

DROP TABLE IF EXISTS `menu_two_childs`;
CREATE TABLE IF NOT EXISTS `menu_two_childs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_menu_parent` bigint UNSIGNED NOT NULL,
  `id_menu_one_child` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_menu_parent` (`id_menu_parent`),
  KEY `id_menu_one_child` (`id_menu_one_child`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_two_childs`
--

INSERT INTO `menu_two_childs` (`id`, `id_menu_parent`, `id_menu_one_child`, `title`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'PKKM SBM ITB', '2', 'Enable', '2021-08-12 19:56:45', '2021-08-13 00:17:19'),
(2, 2, 2, 'PKKM SAPPK ITB', '2', 'Enable', '2021-08-12 21:32:59', '2021-08-13 00:17:11'),
(3, 2, 2, 'PKKM STEI ITB', '2', 'Enable', '2021-08-12 22:40:18', '2021-08-13 00:17:47'),
(4, 2, 2, 'PKKM GEOFISIKA ITB', '2', 'Enable', '2021-08-12 22:40:40', '2021-08-15 05:40:09'),
(5, 2, 3, 'PERMATA SAKTI -', NULL, 'Disabled', '2021-08-15 04:55:40', '2021-08-15 06:34:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2016_01_01_000000_create_pages_table', 2),
(25, '2016_01_01_000000_create_posts_table', 2),
(26, '2016_02_15_204651_create_categories_table', 2),
(27, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_author` bigint NOT NULL,
  `id_menu_parent` bigint NOT NULL,
  `id_menu_one_child` bigint DEFAULT NULL,
  `id_menu_two_child` bigint DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''Published''',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_author` (`id_author`),
  KEY `id_menu_parent` (`id_menu_parent`),
  KEY `id_menu_one_child` (`id_menu_one_child`),
  KEY `id_menu_two_child` (`id_menu_two_child`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `id_author`, `id_menu_parent`, `id_menu_one_child`, `id_menu_two_child`, `title`, `excerpt`, `body`, `link_1`, `link_2`, `image`, `status`, `slug`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, 'MBKM ITB', '<p align=\"justify\">\r\n                    Program Merdeka Belajar-Kampus Merdeka (MBKM) merupakan sebuah program yang dirancang untuk\r\n                    memberikan pengalaman pendidikan yang komprehensif kepada mahasiswa. Melalui program ini,\r\n                    mahasiswa diharapkan dapat memiliki kompetensi unggul dan siap menjawab berbagai kebutuhan\r\n                    masyarakat.</p>', '<p align=\"justify\">\r\n                    Program Merdeka Belajar-Kampus Merdeka (MBKM) merupakan sebuah program yang dirancang untuk\r\n                    memberikan pengalaman pendidikan yang komprehensif kepada mahasiswa. Melalui program ini,\r\n                    mahasiswa diharapkan dapat memiliki kompetensi unggul dan siap menjawab berbagai kebutuhan\r\n                    masyarakat.</p>\r\n\r\n                <p align=\"justify\">Institut Teknologi Bandung (ITB), sebagai salah satu perguruan tinggi yang menyelenggarakan\r\n                    program MBKM, memfasilitasi berbagai kegiatan yang dapat diikuti oleh seluruh mahasiswa,baik\r\n                    mahasiswa ITB maupun non-ITB.</p>\r\n\r\n                <p align=\"justify\">Beberapa program unggulan MBKM yang dapat diikuti di antaranya Summer School, Desa Binaan,\r\n                    Permata-Sakti, Bangkit, KKN Tematik, Program Kampus Merdeka, dan lain-lain.</p>\r\n\r\n                <p align=\"justify\">Program-program MBKM di ITB menawarkan pengalaman belajar yang holistik dan aplikatif. Dari hal\r\n                    tersebut, program MBKM di ITB diharapkan dapat menjadi akselerator hubungan antara dunia akademik,\r\n                    masyarakat, dan industri. Dengan demikian, tujuan pembangunan masyarakat Indonesia dapat diraih\r\n                    dengan cepat sesuai dengan yang telah dicita-citakan.\r\n                </p>', NULL, NULL, 'images-page/mbkm-itb-.png', 'Published', 'mbkm-itb', 'merdeka-belajar-itb-mbkm-itb', 'MBKM ITB', 'MBKM ITB', '2021-08-11 06:44:17', '2021-08-13 02:33:49'),
(2, 2, 2, 1, NULL, 'PKKM ITB', 'Sesuai dengan Permendikbud No 3 Tahun 2020, melalui program Kampus Merdeka, mahasiswa\r\n                    memiliki\r\n                    hak untuk memperoleh pendidikan di luar program studi selama tiga semester. Program ini\r\n                    diharapkan dapat meningkatkan pengetahuan kepada mahasiswa dalam menjawab tantangan dunia\r\n                    nyata\r\n                    secara holistik dan aplikatif.', '<p align=\"justify\">\r\n                    Sesuai dengan Permendikbud No 3 Tahun 2020, melalui program Kampus Merdeka, mahasiswa\r\n                    memiliki\r\n                    hak untuk memperoleh pendidikan di luar program studi selama tiga semester. Program ini\r\n                    diharapkan dapat meningkatkan pengetahuan kepada mahasiswa dalam menjawab tantangan dunia\r\n                    nyata\r\n                    secara holistik dan aplikatif.\r\n                </p>\r\n                <p align=\"justify\">\r\n                    Persyaratan umum yang harus dipenuhi agar mahasiswa dapat mengikuti program ini di\r\n                    antaranya:\r\n                    </p><p align=\"justify\">1. berasal dari program studi yang telah terakreditasi\r\n                    </p><p align=\"justify\">2. merupakan mahasiswa aktif yang terdaftar di PDDikti.\r\n                </p>\r\n                <p align=\"justify\">\r\n                    Kegiatan-kegiatan yang dapat diikuti melalui program ini di antaranya pertukaran pelajar,\r\n                    magang/praktik kerja, asistensi mengajar di satuan pendidikan, penelitian/riset, proyek\r\n                    kemanusiaan, kegiatan wirausaha, studi/proyek independen, membangun desa/kuliah kerja nyata\r\n                    tematik.\r\n                </p>\r\n                <p align=\"justify\">\r\n                    Info lebih lanjut terkait program PKKM yang diselenggarakan ITB dapat diakses melalui tautan\r\n                    berikut.\r\n                </p>', 'https://pkkmdikti.kemdikbud.go.id/', NULL, 'images-page/pkkm-itb-.png', 'Published', 'pkkm-itb', 'merdeka-belajar-itb-pkkm-itb', 'PKKM ITB', 'PKKM ITB', '2021-08-11 08:59:27', '2021-08-11 18:35:34'),
(3, 1, 2, NULL, NULL, 'Permata Sakti', '<p align=\"justify\">Program Pertukaran Mahasiswa Tanah Air Nusantara-Sistem Alih Kredit Dengan Teknologi\r\n                    Informasi (Permata-Sakti) merupakan salah satu program MBKM yang diselengarakan melalui\r\n                    kerja sama antara perguruan tinggi se-Indonesia. Program ini bertujuan memberikan pengalaman\r\n                    belajar yang baru kepada mahasiswa di berbagai kampus di Indonesia.</p>', '<p align=\"justify\">\r\n                    Program Pertukaran Mahasiswa Tanah Air Nusantara-Sistem Alih Kredit Dengan Teknologi\r\n                    Informasi (Permata-Sakti) merupakan salah satu program MBKM yang diselengarakan melalui\r\n                    kerja sama antara perguruan tinggi se-Indonesia. Program ini bertujuan memberikan pengalaman\r\n                    belajar yang baru kepada mahasiswa di berbagai kampus di Indonesia. Dari hal tersebut\r\n                    mahasiswa diberi kesempatan untuk mahasiswa untuk mendapatkan pengalaman belajar di\r\n                    perguruan tinggi lain yang sesuai dengan potensi, minat, dan bakat yang dimiliki.\r\n                </p>\r\n                <p align=\"justify\">\r\n                    Melalui program ini, mahasiswa dapat mengambil mata-mata kuliah unggul yang dimiliki oleh\r\n                    berbagai universitas di Indonesia. Program ini menggunakan metode pengalihan angka kredit\r\n                    dan pemerolehan angka kredit yang dapat dilakukan antarprogram studi yang sama ataupun yang\r\n                    berbeda.\r\n                </p>\r\n                <p align=\"justify\">\r\n                    Info lebih lanjut terkait program Permata-Sakti yang diselenggarakan ITB dapat diakses\r\n                    melalui tautan\r\n                    berikut.\r\n                </p>', 'https://pkkmdikti.kemdikbud.go.id/', NULL, 'images-page/permata-sakti-.png', 'Published', 'permata-sakti', 'merdeka-belajar-itb-permata-sakti', 'Permata Sakti', 'Permata Sakti', '2021-08-11 18:38:26', '2021-08-15 04:36:25'),
(4, 2, 2, 3, NULL, 'Google Bangkit', '<p align=\"justify\">Google Bangkit merupakan salah satu program MBKM yang bertujuan meningkatkan kemampuan\r\n                    komputasional kepada mahasiswa di Indonesia. Program ini memiliki luaran agar tingkat\r\n                    literasi dan keahlian komputer mahasiswa Indonesia tinggi dan mampu menjawab kebutuhan\r\n                    masyarakat Indonesia yang semakin terotomatisasi di masa yang akan datang.\r\n                </p>', '<p align=\"justify\">\r\n                    Google Bangkit merupakan salah satu program MBKM yang bertujuan meningkatkan kemampuan\r\n                    komputasional kepada mahasiswa di Indonesia. Program ini memiliki luaran agar tingkat\r\n                    literasi dan keahlian komputer mahasiswa Indonesia tinggi dan mampu menjawab kebutuhan\r\n                    masyarakat Indonesia yang semakin terotomatisasi di masa yang akan datang.\r\n                </p>\r\n                <p align=\"justify\">\r\n                    Program ini didukung oleh berbagai perusahaan teknologi ternama dunia, seperti Google,\r\n                    Gojek, Tokopedia, Traveloka, dan Deeptech Foundation. Melalui program ini, mahasiswa diajak\r\n                    untuk mengenal secara langsung bagaimana industri teknologi bekerja dan menjawab persoalan\r\n                    di masyarakat.\r\n                </p>\r\n                <p align=\"justify\">\r\n                    Program-program pendidikan yang diberikan antara lain machine learning, sistem perangkat\r\n                    lunak Android, komputasi awan (cloud), metodologi berpikir desain, dan komunikasi. Program\r\n                    ini juga memberikan dana hibah bagi proyek-proyek yang dipandang potensial untuk\r\n                    dikembangkan lebih lanjut dalam skala industri. Program ini sangat cocok diikuti mahasiswa\r\n                    yang memiliki ketertarikan dalam bidang teknologi.\r\n                </p>\r\n                <p align=\"justify\">\r\n                    Info lebih lanjut terkait program Bangkit yang diselenggarakan ITB dapat diakses melalui\r\n                    tautan\r\n                    berikut.\r\n                </p>', 'https://pkkmdikti.kemdikbud.go.id/', NULL, 'images-page/google-bangkit-.png', 'Published', 'google-bangkit', 'merdeka-belajar-itb-google-bangkit', 'Google Bangkit', 'Google Bangkit', '2021-08-11 18:40:30', '2021-08-11 18:40:30'),
(5, 2, 2, 4, NULL, 'Matching Fund', '<p align=\"justify\">Program Matching Fund merupakan salah satu program MBKM yang memiliki tujuan untuk\r\n                            meningkatkan kolaborasi antara perguruan tinggi dan industri. Melalui program ini,\r\n                            riset-riset yang selama ini dikembangkan oleh perguruan tinggi dapat secara cepat\r\n                            dimanfaatkan oleh industri. Selain itu, program ini juga dapat memberikan gambaran kepada\r\n                            perguruan tinggi riset seperti apa saja yang saat ini sedang dibutuhkan oleh dunia industri.\r\n                        </p>', '<p align=\"justify\">\r\n                            Program Matching Fund merupakan salah satu program MBKM yang memiliki tujuan untuk\r\n                            meningkatkan kolaborasi antara perguruan tinggi dan industri. Melalui program ini,\r\n                            riset-riset yang selama ini dikembangkan oleh perguruan tinggi dapat secara cepat\r\n                            dimanfaatkan oleh industri. Selain itu, program ini juga dapat memberikan gambaran kepada\r\n                            perguruan tinggi riset seperti apa saja yang saat ini sedang dibutuhkan oleh dunia industri.\r\n                        </p>\r\n                        <p align=\"justify\">\r\n                            Melalui platform kedaireka.id, para periset di perguruan tinggi dapat mengajukan dan\r\n                            mengolaborasikan hasil risetnya kepada dunia industri secara efisien dan efektif. Saat ini\r\n                            Kemendikbud menyediakan dana total Rp250 miliar sebagai dana program Matching Fund.\r\n                        </p>\r\n                        <p align=\"justify\">\r\n                            Para pengusul kegiatan dapat mengajukan program matching fund melalui tautan berikut atau\r\n                            melalui kedaireka.id\r\n                        </p>', 'https://kedaireka.id/', NULL, 'images-page/matching-fund-.png', 'Published', 'matching-fund', 'merdeka-belajar-itb-matching-fund', 'Matching Fund', 'Matching Fund', '2021-08-11 21:04:34', '2021-08-11 21:04:34'),
(6, 2, 2, 5, NULL, 'IISMA', '<p align=\"justify\">\r\n                            Indonesian International Student Mobility Awards 2021  \r\n                        </p>\r\n                        <p align=\"justify\">\r\n                            Sebagai salah satu bagian dari program \r\nMerdeka Belajar-Kampus Merdeka, Kementerian Pendidikan, Kebudayaan, \r\nRiset, dan Teknologi menawarkan program Indonesian International Student\r\n Mobility Awards 2021. Program ini memberikan kesempatan kepada \r\nmahasiswa ITB yang berminat untuk memeproleh pendidikan pada beberapa \r\nuniversitas yang telah bekerja sama di luar negeri. \r\n                        </p>', '<p align=\"justify\">\r\n                            Indonesian International Student Mobility Awards 2021  \r\n                        </p>\r\n                        <p align=\"justify\">\r\n                            Sebagai salah satu bagian dari program \r\nMerdeka Belajar-Kampus Merdeka, Kementerian Pendidikan, Kebudayaan, \r\nRiset, dan Teknologi menawarkan program Indonesian International Student\r\n Mobility Awards 2021. Program ini memberikan kesempatan kepada \r\nmahasiswa ITB yang berminat untuk memeproleh pendidikan pada beberapa \r\nuniversitas yang telah bekerja sama di luar negeri. \r\n                        </p>\r\n                        <p align=\"justify\">\r\n                            Bagi mahasiswa ITB yang tertarik dapat \r\nlangsung mendaftar langsung melalui portal pendaftaran Indonesian \r\nInternational Student Mobility Awards 2021 \r\n                        </p>', 'http://kampusmerdeka.kemdikbud.go.id/IISMA', 'https://partnership.itb.ac.id/indonesian-international-student-mobility-awards-2021/', 'images-page/iisma-.png', 'Published', 'iisma', 'merdeka-belajar-itb-iisma', 'IISMA', 'IISMA', '2021-08-11 21:05:44', '2021-08-11 21:05:53'),
(7, 2, 3, 1, NULL, 'KKN Tematik', '<p align=\"justify\">\r\n                            Program Kuliah Kerja Nyata (KKN) Tematik ITB merupakan salah satu program MBKM yang\r\n                            diselenggarakan oleh ITB dalam upaya menjawab tantangan di masyarakat secara nyata. Dalam\r\n                            program ini, mahasiswa diajak untuk berkegiatan, berinteraksi, dan belajar langsung di\r\n                            tengah masyarakat. Tema KKN Tematik ITB meliputi air, infrastruktur, energi, pertanian, dan\r\n                            pendidikan. Program ini merupakan mata kuliah pilihan yang dapat diikuti oleh seluruh\r\n                            mahasiswa ITB.</p>', '<p align=\"justify\">\r\n                            Program Kuliah Kerja Nyata (KKN) Tematik ITB merupakan salah satu program MBKM yang\r\n                            diselenggarakan oleh ITB dalam upaya menjawab tantangan di masyarakat secara nyata. Dalam\r\n                            program ini, mahasiswa diajak untuk berkegiatan, berinteraksi, dan belajar langsung di\r\n                            tengah masyarakat. Tema KKN Tematik ITB meliputi air, infrastruktur, energi, pertanian, dan\r\n                            pendidikan. Program ini merupakan mata kuliah pilihan yang dapat diikuti oleh seluruh\r\n                            mahasiswa ITB.\r\n                        </p>\r\n                        <p align=\"justify\">\r\n                            Info lebih lanjut mengenai program KKN TEMATIK di ITB dapat diakses melalui tautan berikut :\r\n                        </p>', 'https://kemahasiswaan.itb.ac.id/kkn', NULL, 'images-page/kkn-tematik-.png', 'Published', 'kkn-tematik', 'merdeka-belajar-itb-kkn-tematik', 'KKN Tematik', 'KKN Tematik', '2021-08-11 21:10:16', '2021-08-11 21:10:16'),
(8, 1, 3, NULL, NULL, 'Summer School', '<p><span style=\"color: rgb(41, 43, 44); font-family: Poppins; font-size: 16.8px; text-align: justify;\">rogram Summer School merupakan salah satu program MBKM ITB yang diselenggarakan untuk memberikan suasana pendidikan internasional kepada seluruh mahasiswa.&nbsp;</span><br></p>', '<p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Program Summer School merupakan salah satu program MBKM ITB yang diselenggarakan untuk memberikan suasana pendidikan internasional kepada seluruh mahasiswa. Program ini selain dapat diikuti oleh mahasiswa nasional, juga dapat diikuti oleh mahasiswa internasional dari berbagai universitas di dunia. Program ini bertujuan memberikan pendidikan global dengan menhadirkan berbagai pakar dan praktisi, baik dari ITB maupun internasional dalam bidang masing-masing.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Dengan demikian, mahasiswa dapat secara langsung merasakan bagaimana berinteraksi dalam dunia pendidikan secara global dan dinamis. Program ini memiliki tema-tema menarik yang dapat meningkatkan wawasan keilmuan mahasiswa dalam tingkat global. Beberapa program Summer School ITB juga akan memberikan tugas dalam aktivitasnya. Bagi mahasiswa yang sukses akan diberikan transkrip penilaian oleh ITB.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Info lebih lanjut mengenai program Summer School di ITB dapat diakses melalui tautan berikut :</p>', 'https://wcu.itb.ac.id/2019/12/19/summer-school-program-2020/', NULL, 'images-page/summer-school-.png', 'Published', 'summer-school', 'merdeka-belajar-itb-summer-school', NULL, NULL, '2021-08-12 04:36:48', '2021-08-12 04:39:36'),
(9, 2, 3, NULL, NULL, 'Pengabdian Masyarakat', '<p><span style=\"color: rgb(41, 43, 44); font-family: Poppins; font-size: 16.8px; text-align: justify;\">Program Pengabdian Masyarakat (PM) merupakan salah satu program MBKM ITB yang berupaya menjawab kebutuhan masyarakat dengan menerapkan hasil kepakaran sivitas akademik ITB.</span><br></p>', '<p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Program Pengabdian Masyarakat (PM) merupakan salah satu program MBKM ITB yang berupaya menjawab kebutuhan masyarakat dengan menerapkan hasil kepakaran sivitas akademik ITB. Hingga saat ini terdapat lima wilayah yang menjadi fokus utama pelaksanaan pengabdian masyarakat ITB, yaitu Bandung Raya, Jawa Barat, Jawa, Luar Jawa, dan daerah Perbatasan/3T.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Program ini dapat diikuti oleh seluruh mahasiswa ITB dengan empat prioritas tema kegiatan, yaitu pemberdayaan wilayah/desa binaan, pemulihan/reaktivasi ekonomi dalam kerangka akb, mitigasi, adaptasi dan penanggulangan bencana, dan industri kreatif dan pariwisata. Hingga saat ini, sebaran wilayah program masyarakat ITB terbentang mulai Pulau Sumatera hingga Pulau Papua.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Info lebih lanjut mengenai program Pengabdian Masyarakat di ITB dapat diakses melalui tautan berikut :</p>', 'https://www.lppm.itb.ac.id/category/buletin-ppm/', NULL, 'images-page/pengabdian-masyarakat-.png', 'Published', 'pengabdian-masyarakat', 'merdeka-belajar-itb-pengabdian-masyarakat', NULL, NULL, '2021-08-12 05:13:55', '2021-08-12 05:13:55'),
(10, 2, 3, NULL, NULL, 'Desa Binaan', '<p><span style=\"color: rgb(41, 43, 44); font-family: Poppins; font-size: 16.8px; text-align: justify;\">Program Desa Binaan merupakan salah satu dari program pengabdian masyarakat dan MBKM ITB yang bertujuan meningkatkan ketahanan hidup perdesaan baik dari segi ekonomi, kesehatan, maupun yang lainnya.</span><br></p>', '<p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Program Desa Binaan merupakan salah satu dari program pengabdian masyarakat dan MBKM ITB yang bertujuan meningkatkan ketahanan hidup perdesaan baik dari segi ekonomi, kesehatan, maupun yang lainnya. Program ini didesain dengan penerapan ipteks dalam menjawab berbagai kebutuhan masyarakat oleh para dosen di ITB. Program ini bekerja sama dengan komunitas masyarakat setempat dan dapat diikuti oleh mahasiswa ITB. Sejak tahun 2015, tercatat ada tujuh wilayah di Indonesia yang mengikuti program Desa Binaan.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Info lebih lanjut mengenai program Desa Binaan di ITB dapat diakses melalui tautan berikut :</p>', 'https://www.lppm.itb.ac.id/wp-content/uploads/sites/55/2020/12/Panduan-Program-PM-ITB-2021_26Des.pdf', NULL, 'images-page/desa-binaan-.png', 'Published', 'desa-binaan', 'merdeka-belajar-itb-desa-binaan', NULL, NULL, '2021-08-12 07:26:37', '2021-08-12 07:26:37'),
(11, 2, 3, NULL, NULL, 'Insentif ITB', '<p><span style=\"color: rgb(41, 43, 44); font-family: Poppins; font-size: 16.8px; text-align: justify;\">Dalam meningkatkan jumlah rancangan and pelaksanaan kegiatan MBKM yang tentunya dalam bentuk kegiatan akademik berbasis Kolaboratif, Outcomes based, Mahasiswa aktif belajar dan Project Based yang bertujuan untuk menyelesaikan masalah masyarakat.</span><br></p>', '<p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Dalam meningkatkan jumlah rancangan and pelaksanaan kegiatan MBKM yang tentunya dalam bentuk kegiatan akademik berbasis Kolaboratif, Outcomes based, Mahasiswa aktif belajar dan Project Based yang bertujuan untuk menyelesaikan masalah masyarakat.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">ITB memberikan insentif 2,3 M terurutama untuk Program MBKM yang tidak didanai oleh Mitra atau Kementerian Pendidikan dan Kebudayaan.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Selengkapnya mengenai Program Insentif Merdeka Belajar Kampus Merdeka dapat diakses melalui:</p>', 'https://s.id/InsentifMBKM/', NULL, 'images-page/insentif-itb-.png', 'Published', 'insentif-itb', 'merdeka-belajar-itb-insentif-itb', NULL, NULL, '2021-08-12 07:30:42', '2021-08-12 07:30:42'),
(12, 2, 3, NULL, NULL, 'Mitigasi Bencana', '<p><span style=\"color: rgb(41, 43, 44); font-family: Poppins; font-size: 16.8px; text-align: justify;\">Walaupun dikaruniai sumber daya alam yang melimpah, Indonesia memiliki tantangan dalam menghadapi bencana baik yang disebabkan alam maupun yang lainnya.</span><br></p>', '<p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Walaupun dikaruniai sumber daya alam yang melimpah, Indonesia memiliki tantangan dalam menghadapi bencana baik yang disebabkan alam maupun yang lainnya. Oleh karena itu, ITB berkomitmen untuk meminimalkan efek negatif yang ditimbulkan dari peristiwa bencana di Indonesia. Program mitigasi bencana menjadi salah satu program penting dalam aktivitas MBKM ITB. Sudah sejak lama ITB terlibat dalam proyek-proyek kemanusiaan sebagai upaya mitigasi bencana di berbagai wilayah di Indonesia.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Info lebih lanjut mengenai program Desa Binaan di ITB dapat diakses melalui tautan berikut :</p>', 'https://www.lppm.itb.ac.id/category/pengabdian/pm-tanggap-bencana/', NULL, 'images-page/mitigasi-bencana-.png', 'Published', 'mitigasi-bencana', 'merdeka-belajar-itb-mitigasi-bencana', NULL, NULL, '2021-08-12 07:34:24', '2021-08-12 07:37:26'),
(13, 2, 3, NULL, NULL, 'Citarum Harum', '<p>lorem</p>', '<p>lorem</p>', NULL, NULL, '', 'Published', 'citarum-harum', 'merdeka-belajar-itb-citarum-harum', NULL, NULL, '2021-08-12 07:38:24', '2021-08-12 07:38:24'),
(14, 2, 3, NULL, NULL, 'Program Kerjasama', '<p>lorem</p>', '<p>lorem</p>', NULL, NULL, '', 'Published', 'program-kerjasama', 'merdeka-belajar-itb-program-kerjasama', NULL, NULL, '2021-08-12 07:39:03', '2021-08-12 07:39:03'),
(15, 1, 2, 2, 1, 'PKKM SBM ITB', '<p><span style=\"color: rgb(41, 43, 44); font-family: Poppins; font-size: 16.8px; text-align: justify;\">SBM ITB mengundang seluruh mahasiswa Indonesia untuk mengikuti kegiatan Technopreneurship Track SBM ITB.</span><br></p>', '<h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">TECHNOPRENEURSHIP TRACK</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">SBM ITB mengundang seluruh mahasiswa Indonesia untuk mengikuti kegiatan Technopreneurship Track SBM ITB. Selama 1 semester (Agustus-Desember 2021), mahasiswa akan dilatih untuk mengasah kemampuan mendirikan dan menjalankan bisnis berbasis teknologi. Para pendaftar akan diseleksi untuk mendapatkan ide dan praktik bisnis terbaik.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Info lebih lanjut mengenai program Desa Binaan di ITB dapat diakses melalui tautan berikut :</p><table class=\"table table-bordered bg-warning\"><tbody><tr><td>TERBUKA BAGI SELURUH MAHASISWA INDONESIA</td></tr></tbody></table><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Manfaat Kegiatan</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Seluruh kegiatan tidak dipungut biaya dan akan dilaksanakan secara daring, tetapi tidak menutup kemungkinan dilakukan tatap muka. Selama kegiatan peserta akan mendapatkan:</p><ol style=\"box-sizing: inherit; color: rgb(41, 43, 44); font-family: Poppins; font-size: 14px; text-align: justify;\"><li style=\"box-sizing: inherit;\">Dana hibah untuk ide bisnis dan bisnis terpilih yang dapat digunakan untuk pengembangan prototype.</li><li style=\"box-sizing: inherit;\">Mentor dan coach profesional yang membimbing langsung.</li><li style=\"box-sizing: inherit;\">Perkuliahan sistem modular ITB dengan porsi 40% perkuliahan di dalam kelas dan 60% perkuliahan di luar kelas.</li><li style=\"box-sizing: inherit;\">Kesempatan Internship di start-up milik mentor dan coach profesional.</li><li style=\"box-sizing: inherit;\">Kegiatan Inkubator Bisnis di The Greater Hub.</li><li style=\"box-sizing: inherit;\">Kegiatan Bootcamp, Demo Day, Pitching Day, Workshop dan Seminar yang tentunya dapat membuka kesempatan pengembangan ide bisnis maupun bisnis yang sudah berjalan.</li></ol><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Persyaratan</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"></p><ol style=\"box-sizing: inherit; color: rgb(41, 43, 44); font-family: Poppins; font-size: 14px; text-align: justify;\"><li style=\"box-sizing: inherit;\">Mahasiswa S1 aktif seluruh Indonesia (tingkat 3 atau 4).</li><li style=\"box-sizing: inherit;\">Memiliki ide bisnis/bisnis yang sudah berjalan dibuktikan dengan proposal bisnis berbentuk pitch deck (format disesuaikan kepada peserta). Khusus jalur Business Acceleration Track wajib menyertakan prototype/bukti traction dalam pitch deck tersebut.</li><li style=\"box-sizing: inherit;\">Menyertakan motivation letter, transkrip nilai semester sebelumnya dan surat rekomendasi dosen wali / dosen yang ditandatangani oleh dosen terkait.</li><li style=\"box-sizing: inherit;\">Setiap start-up disarankan mendaftar bersama kelompok dan seluruh anggota tim dapat mengambil program berbeda.</li><li style=\"box-sizing: inherit;\">Aktif menggunakan bahasa Inggris karena perkuliahan sebagian besar akan menggunakan bahasa Inggris.</li></ol><h2 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">PERHATIAN</h2><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Program</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"></p><ul style=\"box-sizing: inherit; color: rgb(41, 43, 44); font-family: Poppins; font-size: 14px; text-align: justify;\"><li style=\"box-sizing: inherit; font-size: 1.05rem;\">Business Initiation Track (Full) (Total 20 SKS)</li><li style=\"box-sizing: inherit; font-size: 1.05rem;\">Business Initiation Track (Partial) (Total 9 SKS)</li><li style=\"box-sizing: inherit; font-size: 1.05rem;\">Business Acceleration Track (Full) (Total 20 SKS)</li><li style=\"box-sizing: inherit; font-size: 1.05rem;\">Business Acceleration Track (Partial) (Total 10 SKS)</li></ul><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\"><br></h4><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Jadwal</h4><table class=\"table\" style=\"box-sizing: inherit; background-color: rgb(255, 255, 255); width: 540px; max-width: 100%; color: rgb(41, 43, 44); font-family: Poppins; font-size: 14px; text-align: justify;\"><thead style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><th scope=\"col\" colspan=\"2\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239); border-bottom-color: rgb(236, 238, 239);\">TANGGAL PENTING</th></tr></thead><tbody style=\"box-sizing: inherit;\"><tr style=\"box-sizing: inherit;\"><th scope=\"row\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239);\">12 – 20 Juli 2021</th><td style=\"box-sizing: inherit; border-top-color: rgb(236, 238, 239);\">Proses Pendaftaran</td></tr><tr style=\"box-sizing: inherit;\"><th scope=\"row\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239);\">21 – 30 Juli 2021</th><td style=\"box-sizing: inherit; border-top-color: rgb(236, 238, 239);\">Seleksi Administrasi</td></tr><tr style=\"box-sizing: inherit;\"><th scope=\"row\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239);\">1 Agustus 2021</th><td style=\"box-sizing: inherit; border-top-color: rgb(236, 238, 239);\">Pengumuman Kelulusan</td></tr></tbody><tbody style=\"box-sizing: inherit; border-top-color: rgb(236, 238, 239);\"><tr style=\"box-sizing: inherit;\"><th scope=\"col\" colspan=\"2\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239);\">SELEKSI ADMINISTRASI</th></tr><tr style=\"box-sizing: inherit;\"><th scope=\"row\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239);\">2 – 6 agustus</th><td style=\"box-sizing: inherit; border-top-color: rgb(236, 238, 239);\">Proses Interview</td></tr><tr style=\"box-sizing: inherit;\"><th scope=\"row\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239);\">7 Agustus 2021</th><td style=\"box-sizing: inherit; border-top-color: rgb(236, 238, 239);\">Pengumuman Kelulusan</td></tr></tbody><tbody style=\"box-sizing: inherit; border-top-color: rgb(236, 238, 239);\"><tr style=\"box-sizing: inherit;\"><th scope=\"col\" colspan=\"2\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239);\">SELEKSI INTERVIEW</th></tr><tr style=\"box-sizing: inherit;\"><th scope=\"row\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239);\">9 Agustus 2021</th><td style=\"box-sizing: inherit; border-top-color: rgb(236, 238, 239);\">Proses Pengenalan Program</td></tr><tr style=\"box-sizing: inherit;\"><th scope=\"row\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239);\">16 Agustus – 10 Desember 2021</th><td style=\"box-sizing: inherit; border-top-color: rgb(236, 238, 239);\">Pelaksanaan PKKM (Program Kampus Merdeka)</td></tr></tbody><tbody style=\"box-sizing: inherit; border-top-color: rgb(236, 238, 239);\"><tr style=\"box-sizing: inherit;\"><th scope=\"col\" colspan=\"2\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239);\">PENDAFTARAN</th></tr><tr style=\"box-sizing: inherit;\"><th scope=\"row\" style=\"box-sizing: inherit; text-align: left; border-top-color: rgb(236, 238, 239);\">Melalui tautan</th><td style=\"box-sizing: inherit; border-top-color: rgb(236, 238, 239);\"><a href=\"https://bit.ly/KMTT_SBM-ITB\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://bit.ly/KMTT_SBM-ITB</a></td></tr></tbody></table>', NULL, NULL, 'images-page/pkkm-sbm-itb-.png', 'Published', 'pkkm-sbm-itb', 'merdeka-belajar-itb-pkkm-sbm-itb', NULL, NULL, '2021-08-12 19:47:34', '2021-08-15 04:35:10'),
(16, 1, 2, 2, NULL, 'PKKM SAPPK ITB', '<p><span style=\"color: rgb(41, 43, 44); font-family: Poppins; font-size: 16.8px; text-align: justify;\">Program Studi Arsitektur SAPPK ITB membuka kesempatan kepada setiap mahasiswa untuk dapat mengikuti kelas kolaborasi KELAS KOLABORASI LINTAS PROGRAM STUDI 2021</span><br></p>', '<h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">KELAS KOLABORASI LINTAS PROGRAM STUDI 2021</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Program Studi Arsitektur SAPPK ITB membuka kesempatan kepada setiap mahasiswa untuk dapat mengikuti kelas kolaborasi KELAS KOLABORASI LINTAS PROGRAM STUDI 2021 Kelas kolaborasi ini akan mengajak mahasiswa sarjana untuk terlibat dalam Mini Capstone Project yang memberikan kesempatan kepada mahasiswa untuk mendemonstrasikan kemampuan desain dan analisis dalam lingkup proyek bangunan dan lingkungan sekitar secara terintegrasi dan lintas disiplin.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><table class=\"table table-bordered bg-warning\"><tbody><tr><td>EKUIVALENSI AR4112 &amp; AR5073 (4 SKS)</td></tr></tbody></table><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Tujuan</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Kelas kolaborasi ini bertujuan untuk:</p><ol style=\"box-sizing: inherit; color: rgb(41, 43, 44); font-family: Poppins; font-size: 14px; text-align: justify;\"><li style=\"box-sizing: inherit;\">Memberikan pengalaman melakukan proses perancangan pada masing-masing bidang sesuai profesinya.</li><li style=\"box-sizing: inherit;\">Memberikan pengalaman pembelajaran perancangan dengan permasalahan multi-disiplin.</li><li style=\"box-sizing: inherit;\">Meningkatkan kemampuan berkomunikasi, bekerjasama dan kepemimpinan, serta,</li><li style=\"box-sizing: inherit;\">Mencoba menerapkan metode, teknik dan perangkat terkini, konsep berkelanjutan serta etika profesi.</li></ol><p style=\"box-sizing: inherit;\"><br></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Mekanisme dan Pendaftaran</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"></p><ol style=\"box-sizing: inherit; color: rgb(41, 43, 44); font-family: Poppins; font-size: 14px; text-align: justify;\"><li style=\"box-sizing: inherit;\">Setiap mahasiswa mengambil matakuliah pilihan yang terkait dengan profesi masing-masing bidang ilmu atau program studi dengan beban 2-4 SKS (Contoh di Arsitektur, peserta akan mendapatkan total 4 SKS).</li><li style=\"box-sizing: inherit;\">Mahasiswa mendaftar kepada setiap Kaprodi.</li><li style=\"box-sizing: inherit;\">Jumlah mahasiswa per prodi adalah 5-6 orang.</li><li style=\"box-sizing: inherit;\">Satu kelompok mahasiswa suatu Prodi kemudian akan digabungkan dengan Tim Kolaborasi dengan beberapa kelompok dari Prodi lain. Suatu Tim Kolaborasi akan dibimbing oleh suatu Tim Pembimbing yang multi-prodi, yanng beranggotakan satu orang dosen untuk setiap prodi. Kelompok mahasiswa suatu Prodi akan dibimbing oleh dosen Prodi tersebut.</li><li style=\"box-sizing: inherit;\">Jadwal pertemuan Tim Kolaborasi dan kelompok mahasiswa Prodi akan ditentukan berdasarkan kesepakatan bersama antara Tim Kolaborasi dan Pembimbing.</li><li style=\"box-sizing: inherit;\">Kelas akan dibagi menjadi beberapa kelompok, dimana pada masing-masing kelompok ada multi disiplin: AR, SI, TL, MS, EL/IF/STI, TF, DI dan masing-masing kelompok mengerjakan satu proyek desain yang dikerjakan dari berbagai sudut pandang disiplin ilmu. Setiap dosen pengampu dari setiap Prodi akan berkolaborasi mengawasi satu kelas.</li></ol><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Pendaftaran 19-30 Juli 2021 melalui :&nbsp;<a href=\"https://forms.office.com/r/HruYiQPGB5\" target=\"_blank\">https://forms.office.com/r/HruYiQPGB5</a><a href=\"https://forms.office.com/r/HruYiQPGB5\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\"></a></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Keluaran</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Keluaran dari tim kolaborasi akan disayembarakan dengan judul sayembara:&nbsp;<i style=\"box-sizing: inherit;\">“Safe Space: Re-envisioning Building System Design in New Era”</i>&nbsp;luaran berupa:</p><ol style=\"box-sizing: inherit; color: rgb(41, 43, 44); font-family: Poppins; font-size: 14px; text-align: justify;\"><li style=\"box-sizing: inherit;\">Perhitungan/ analisis terkait dengan rancangan preliminary masing-masing bidang</li><li style=\"box-sizing: inherit;\">Gambar-gambar dan model rancangan inovatif sesuai tema, yang dibutuhkan pada tingkat preliminary</li><li style=\"box-sizing: inherit;\">Spesifikasi yang dibutuhkan pada tingkat preliminary</li><li style=\"box-sizing: inherit;\">Resume inovasi yang diusulkan dari setiap disiplin ilmu terkait dengan keandalan bangunan yakni: keselamatan, kesehatan, kemudahan dan kenyamanan terutama pandangan terhadap kondisi pasca pandemi.</li></ol><p style=\"box-sizing: inherit;\"><br></p><h3 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: center; background-color: rgb(217, 83, 79);\">Info lebih lanjut :<br style=\"box-sizing: inherit;\">Email:&nbsp;<a href=\"mailto:aswin@itb.ac.id\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">Aswin Indraprastha, aswin@itb.ac.id</a><br style=\"box-sizing: inherit;\"><a href=\"https://multisite.itb.ac.id/sappk/kelaskolaborasi2021/\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://multisite.itb.ac.id/sappk/kelaskolaborasi2021/</a></h3>', NULL, NULL, 'images-page/pkkm-sappk-itb-.png', 'Published', 'pkkm-sappk-itb', 'merdeka-belajar-itb-pkkm-sappk-itb', 'PKKM SAPPK ITB', 'PKKM SAPPK ITB', '2021-08-12 21:29:32', '2021-08-15 04:38:03'),
(17, 1, 2, 2, 3, 'PKKM STEI ITB', '<p>DIGITAL INNOVATION &amp; ENTREPRENEURSHIP<br></p>', '<h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">DIGITAL INNOVATION &amp; ENTREPRENEURSHIP</h4><h5 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\"><i style=\"box-sizing: inherit;\">Penguatan Ekosistem Industri Software dan Pemanfaatannya bagi Masyarakat</i></h5><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Sekolah Teknik Elektro dan Informatika ITB membuka kesempatan kepada seluruh mahasiswa di Indonesia untuk mengikuti program Program Merdeka Belajar Kampus Merdeka - Digital Innovation &amp; Entrepreneurship. Program ini akan memberikan pengalaman kepada mahasiswa untuk mengetahui seluk beluk dunia industri digital dan bagaimana memanfaatkan potensi dalam dunia digital dalam berbagai bidang seperti ekonomi, pertanian, kebudayaan, hiburan, pariwisata, dan sektor keuangan. Dalam kegiatan ini mahasiswa tidak hanya akan memperoleh pembelajaran di dalam kelas, tetapi juga mengaplikasikan berbagai ide dan kreativitas langsung di dunia industri. Mahasiswa juga akan dibina untuk membangun berbagai usaha rintisan (start-up) untuk dikembangkan menjadi prospek bisnis. Selain itu, mahasiswa juga dapat membuat berbagai rekayasa perangkat lunak (software) untuk menjawab berbagai tantangan di masyarakat.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Tujuan</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Kelas kolaborasi ini bertujuan untuk:</p><ol style=\"box-sizing: inherit; color: rgb(41, 43, 44); font-family: Poppins; font-size: 14px; text-align: justify;\"><li style=\"box-sizing: inherit;\">Meningkatkan kemampuan lulusan dalam bekerja/berkolaborasi dalam lingkungan multidisiplin dan memecahkan masalah riil di masyarakat luas, dunia industri, maupun keilmuan.</li><li style=\"box-sizing: inherit;\">Membangun usaha rintisan di bidang informatika/teknologi informasi sehingga menjadi motor pertumbuhan industri di Indonesia.</li><li style=\"box-sizing: inherit;\">Membangun kolaborasi multidisiplin sehingga dapat memberikan solusi terhadap problem nyata melalui sebuah layanan/produk software</li></ol><p style=\"box-sizing: inherit;\"><br></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Jenis Kegiatan</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Program ini terdiri atas berbagai kegiatan di antaranya:</p><ul style=\"box-sizing: inherit; color: rgb(41, 43, 44); font-family: Poppins; font-size: 14px; text-align: justify;\"><li style=\"box-sizing: inherit; font-size: 1.05rem;\">Initiation yang terdiri atas industry &amp; partner workshop, ideation &amp; competition, hackathon, business idea &amp; prototype development</li><li style=\"box-sizing: inherit; font-size: 1.05rem;\">Product development yang terdiri atas bootcamp, startup technology stack</li><li style=\"box-sizing: inherit; font-size: 1.05rem;\">Business development yang terdiri atas business initiation &amp; acceleration, product showcase &amp; investor meetup</li></ul><p style=\"box-sizing: inherit; font-size: 1.05rem;\"><br></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Persyaratan</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Kegiatan ini terbuka bagi seluruh mahasiswa Indonesia (tingkat 3 dan 4) dan dapat diikuti secara perorangan maupun berkelompok (maks. 5 orang). Syarat pendaftaran:</p><ol style=\"box-sizing: inherit; color: rgb(41, 43, 44); font-family: Poppins; font-size: 14px; text-align: justify;\"><li style=\"box-sizing: inherit;\">Transkrip semester sebelumnya</li><li style=\"box-sizing: inherit;\">CV</li><li style=\"box-sizing: inherit;\">Surat rekomendasi dosen wali/pembimbing akademis</li><li style=\"box-sizing: inherit;\">Motivation letter maksimal 500 kata</li><li style=\"box-sizing: inherit;\">Mampu berbahasa Inggris secara aktif</li><li style=\"box-sizing: inherit;\">Ide/proposal bisnis (opsional)</li></ol><p style=\"box-sizing: inherit;\"><br></p><h3 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: center; background-color: rgb(217, 83, 79);\">Pendaftaran dilakukan melalui<br style=\"box-sizing: inherit;\"><a href=\"https://bit.ly/diginove2021\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://bit.ly/diginove2021</a></h3>', NULL, NULL, 'images-page/pkkm-stei-itb-.png', 'Published', 'pkkm-stei-itb', 'merdeka-belajar-itb-pkkm-stei-itb', 'PKKM STEI ITB', 'PKKM STEI ITB', '2021-08-13 00:21:38', '2021-08-13 19:38:51');
INSERT INTO `pages` (`id`, `id_author`, `id_menu_parent`, `id_menu_one_child`, `id_menu_two_child`, `title`, `excerpt`, `body`, `link_1`, `link_2`, `image`, `status`, `slug`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(18, 2, 2, 2, NULL, 'PKKM GEOFISIKA ITB', '<p>ITB-IEAGHG INTERNATIONAL VIRTUAL COURSE ON CARBON CAPTURE, UTILIZATION AND STORAGE (CCUS)<br></p>', '<h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">ITB-IEAGHG INTERNATIONAL VIRTUAL COURSE ON CARBON CAPTURE, UTILIZATION AND STORAGE (CCUS)</h4><h5 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\"><i style=\"box-sizing: inherit;\">(Open for BSc students/final year, MSc students, Ph.D. students from any related disciplines, and professionals)</i></h5><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Faculty of Mining and Petroleum Engineering proudly announces the upcoming “ITB-IEAGHG International Virtual Course on Carbon Capture, Utilization and Storage (CCUS) 2021”. This course is the 2nd International Virtual Course on CCUS held in collaboration between Institut Teknologi Bandung (ITB) and The IEA Greenhouse Gas R&amp;D Programme (IEAGHG).</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">This course will deliver lecture materials related to the efforts for reducing greenhouse gas emissions by injecting them into the subsurface or utilize them for other products. It is well known as Carbon Capture, Utilization, and Storage (CCUS). This course covers subsurface site screening, surface facility basic knowledge, economic and financial, regulations, and social and communication aspects for supporting CCUS.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Schedule</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Registration: 15 June-23 July 2021<br style=\"box-sizing: inherit;\">Courses: 26 July-6 August 2021</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Fee</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Free for students (limited seats, will be selected based on submitted documents)<br style=\"box-sizing: inherit;\">IDR 2.500.000 for professional (nonstudent)</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Link</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><a href=\"https://admission.itb.ac.id/registration/nonreguler\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://admission.itb.ac.id/registration/nonreguler</a></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Further information</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><a href=\"https://virtualcourse.fttm.itb.ac.id/2021/\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://virtualcourse.fttm.itb.ac.id/2021/</a><br style=\"box-sizing: inherit;\"><a href=\"https://admission.itb.ac.id/home/summer-courses/ivc21-141\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://admission.itb.ac.id/home/summer-courses/ivc21-141</a><br style=\"box-sizing: inherit;\">Email:&nbsp;<a href=\"mailto:rachmat.sule@itb.ac.id\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">rachmat.sule@itb.ac.id</a></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><h2 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">PKKM GEOFISIKA ITB</h2><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">GEOPHYSICS FOR ENGINEERING &amp; ENVIRONMENT: FROM THEORY TO PRACTICAL APPLICATION INTERNATIONAL VIRTUAL COURSE</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">The International Virtual Course provides the latest trends of geophysical techniques for solving engineering and environmental problems, ranging from remote sensing to ground sensing techniques, from detection to monitoring. This course will be taught by prominent researchers in engineering &amp; environmental geophysics as well as in geotechnical engineering from ITB, Chiba University (Japan), Kyoto University (Japan), University of Hogo (Japan), Clausthal University (Germany), South Korea, and University of New Jersey (USA). This course is devoted but not limited to students majoring in Geophysics, Geology, Mining Engineering, Earth Physics, Geotechnical Engineering as well as Civil Engineering.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Equivalent to TG-4142 Engineering &amp; Environmental Geophysics (3 credit)<br style=\"box-sizing: inherit;\">Certificate and transcript available to participants</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Schedule</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Registration: 12 July-10 August 2021<br style=\"box-sizing: inherit;\">Courses: 6-17 September 2021</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Fee</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Free for students (limited seats)</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Link</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><a href=\"https://admission.itb.ac.id/registration/nonreguler\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://admission.itb.ac.id/registration/nonreguler</a></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Further information</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><a href=\"https://admission.itb.ac.id/home/summer-courses/ivc21-152#\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://admission.itb.ac.id/home/summer-courses/ivc21-152#</a><br style=\"box-sizing: inherit;\">Email:&nbsp;<a href=\"mailto:wahyudi@gf.itb.ac.id\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">Dr. rer. nat. Ir. Wahyudi W. Parnadi</a><br style=\"box-sizing: inherit;\">Email:&nbsp;<a href=\"mailto:gunawan@geoph.itb.ac.id\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">gunawan@geoph.itb.ac.id</a></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><h2 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">PKKM GEOFISIKA ITB</h2><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">INTRODUCTION OF VOLCANO SEISMOLOGY USING RECENT TECHNOLOGY INTERNATIONAL VIRTUAL COURSE</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">The International Virtual Course provides basic of volcano monitoring to advance monitoring technique using recent technology and machine learning for geosciences. Courses will be taught by prominent researcher in volcano monitoring from ITB, Geological Agency, Grenoble University (France), IPGP (France), KIT Germany, GNS Science New Zealand and Coventry University (UK).</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Equivalent to Microseismic (TG-5149): 2 credits<br style=\"box-sizing: inherit;\">Certificate and transcript available for participants</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Schedule</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Registration: 1 June-30 June 2021<br style=\"box-sizing: inherit;\">Courses: 5-16 July 2021</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Fee</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Free for students (limited seats)<br style=\"box-sizing: inherit;\">2.500.000 IDR/ Master\'s course credit for non-student</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Link</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><a href=\"https://admission.itb.ac.id/registration/nonreguler\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://admission.itb.ac.id/registration/nonreguler</a></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Further information</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><a href=\"https://admission.itb.ac.id/home/summer-courses/ivc21-142\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://admission.itb.ac.id/home/summer-courses/ivc21-142</a><br style=\"box-sizing: inherit;\"><a href=\"http://gf.itb.ac.id/2021/IVC\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">http://gf.itb.ac.id/2021/IVC</a>&nbsp;</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Email:&nbsp;<a href=\"mailto:zulfakriza@itb.ac.id\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">Dr. Ir. Zulfakriza</a></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><h2 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">PKKM GEOFISIKA ITB</h2><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">SUSTAINABLE PROCESS METALLURGY INTERNATIONAL VIRTUAL COURSE</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">This course will cover science and technology underpinning the production of metals from raw ores and electronic wastes by using high and low-temperature processes. This course discusses the principles of metal production by using pyrometallurgy, hydro-electrometallurgy, and recycling. The fundamentals of metallurgical processes such as thermodynamics will also be addressed. This course will cover the extraction of Cu, Ni, Sn, Zn, Pb, rare earth metals, and the recycling of WEEE (Waste Electrical and Electronic Equipment) using metallurgical methods and also microbes. Rare earth metals utilization for advanced technology will be covered as well.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Equivalent to MG-4025<br style=\"box-sizing: inherit;\">Sustainable Process Metallurgy (3 credit)</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Schedule</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Registration: 12 June-25 July 2021<br style=\"box-sizing: inherit;\">Selected Participant Announcement: 28 July 2021<br style=\"box-sizing: inherit;\">Courses: 2-31 August 2021</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Fee</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Free for student university staff<br style=\"box-sizing: inherit;\">Limited seat<br style=\"box-sizing: inherit;\">IDR 3.000.000 for Non-Student and Non-university staff</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Link</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><a href=\"https://merdekabelajar.itb.ac.id/bit.ly/ivc-met-registration\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">bit.ly/ivc-met-registration</a></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Further information</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><a href=\"https://merdekabelajar.itb.ac.id/bit.ly/ivcmetallurgy2021\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">bit.ly/ivcmetallurgy2021</a><br style=\"box-sizing: inherit;\"><a href=\"https://metallurgy.itb.ac.id/international-virtual-course-in-metallurgy-2021/\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://metallurgy.itb.ac.id/international-virtual-course-in-metallurgy-2021/</a>&nbsp;Email:&nbsp;<a href=\"mailto:IVC@metallurgy.itb.ac.id\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">IVC@metallurgy.itb.ac.id</a></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><h2 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">PKKM GEOFISIKA ITB</h2><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">INTERNATIONAL VIRTUAL COURSE ON IMPROVED OIL RECOVERY</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">This IVC allows participant to learn various new techniques and research findings that can be applied in upstream to downstream petroleum industry to improve oil recovery. The topics covered in this course include reservoir, drilling, production, artificial lift, big data analytics, and recent developments in enhanced oil recovery. During the length of the course, participants will work on exercise problems under guidance of instructors from ITB (Indonesia), NTNU (Norway), Nazarbayev Univ. (Kazakhstan), and experienced practitioners.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Equivalent toTM-5025 Summer School<br style=\"box-sizing: inherit;\">Petroleum Engineering (2 credit)</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Schedule</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Registration: 1 July-25 July 2021<br style=\"box-sizing: inherit;\">Courses: 26 July-06 August 2021</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Fee</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Free for student*<br style=\"box-sizing: inherit;\">Limited seat*<br style=\"box-sizing: inherit;\"></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Link</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><a href=\"https://admission.itb.ac.id/registration/nonreguler\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">https://admission.itb.ac.id/registration/nonreguler</a></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Further information</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Email:&nbsp;<a href=\"mailto:summerschool@tm.itb.ac.id\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">summerschool@tm.itb.ac.id</a></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><h2 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">PKKM GEOFISIKA ITB</h2><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">OINT SEMINAR ON GEOPHYSICS<br style=\"box-sizing: inherit;\">INSTITUT TEKNOLOGI BANDUNG<br style=\"box-sizing: inherit;\">KARLSRUHE INSTITUTE OF TECHNOLOGYY</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">This seminar equivalent to 1 credit</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Schedule</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Registration: 13.00-17.00 WIB<br style=\"box-sizing: inherit;\">Courses: 19 July 2021</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Fee</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">bit.ly/regITB-KIT<br style=\"box-sizing: inherit;\">Zoom Meeting:&nbsp;<a href=\"https://merdekabelajar.itb.ac.id/bit.ly/itb-kit\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">bit.ly/itb-kit</a><br style=\"box-sizing: inherit;\">Meeting ID: 621 8326 4457<br style=\"box-sizing: inherit;\">Password: 177762<br style=\"box-sizing: inherit;\">Certificate and transcript are available with condition</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Registration Link</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">-</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Further information</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Email:&nbsp;<a href=\"mailto:shindy.rosalia31@gmail.com\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">shindy.rosalia31@gmail.com</a></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><br></p><h2 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">PKKM GEOFISIKA ITB</h2><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">MERDEKA BELAJAR-KAMPUS MERDEKA PROGRAM MAGANG</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Program Studi Teknik Geofisika dan Program Studi Teknik Geologi Institut Teknologi Bandung membuka program magang bagi mahasiswa di berbagai industri dan lembaga penelitian. Program magang yang dilakukan setara dengan 2-3 SKS.</p><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Schedule</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Juli-November 2021</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Kapasitas</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">20 mahasiswa (magang industri)<br style=\"box-sizing: inherit;\">30 mahasiswa (lembaga penelitian)</p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Pendaftaran</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\"><a href=\"https://merdekabelajar.itb.ac.id/bit.ly/Magang_Industri_MBKM\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">bit.ly/Magang_Industri_MBKM</a></p><h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\">Info lebih lanjut</h4><p style=\"box-sizing: inherit; font-size: 1.05rem; color: rgb(41, 43, 44); font-family: Poppins; text-align: justify;\">Email:&nbsp;<a href=\"mailto:zulfakriza@itb.ac.id\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">Dr. Ir. Zulfakriza</a>&nbsp;Email:&nbsp;<a href=\"mailto:astyka@gmail.com\" style=\"box-sizing: inherit; color: rgb(245, 188, 4); touch-action: manipulation;\">Dr. Astyka Pamumpuni</a></p>', NULL, NULL, 'images-page/pkkm-geofisika-itb-.png', 'Published', 'pkkm-geofisika-itb', 'merdeka-belajar-itb-pkkm-geofisika-itb', 'PKKM GEOFISIKA ITB', 'PKKM GEOFISIKA ITB', '2021-08-13 01:00:34', '2021-08-15 05:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-08-06 05:15:08', '2021-08-06 05:15:08'),
(2, 'browse_bread', NULL, '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(3, 'browse_database', NULL, '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(4, 'browse_media', NULL, '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(5, 'browse_compass', NULL, '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(6, 'browse_menus', 'menus', '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(7, 'read_menus', 'menus', '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(8, 'edit_menus', 'menus', '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(9, 'add_menus', 'menus', '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(10, 'delete_menus', 'menus', '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(11, 'browse_roles', 'roles', '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(12, 'read_roles', 'roles', '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(13, 'edit_roles', 'roles', '2021-08-06 05:15:09', '2021-08-06 05:15:09'),
(14, 'add_roles', 'roles', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(15, 'delete_roles', 'roles', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(16, 'browse_users', 'users', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(17, 'read_users', 'users', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(18, 'edit_users', 'users', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(19, 'add_users', 'users', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(20, 'delete_users', 'users', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(21, 'browse_settings', 'settings', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(22, 'read_settings', 'settings', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(23, 'edit_settings', 'settings', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(24, 'add_settings', 'settings', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(25, 'delete_settings', 'settings', '2021-08-06 05:15:10', '2021-08-06 05:15:10'),
(26, 'browse_categories', 'categories', '2021-08-06 05:15:16', '2021-08-06 05:15:16'),
(27, 'read_categories', 'categories', '2021-08-06 05:15:16', '2021-08-06 05:15:16'),
(28, 'edit_categories', 'categories', '2021-08-06 05:15:16', '2021-08-06 05:15:16'),
(29, 'add_categories', 'categories', '2021-08-06 05:15:16', '2021-08-06 05:15:16'),
(30, 'delete_categories', 'categories', '2021-08-06 05:15:16', '2021-08-06 05:15:16'),
(31, 'browse_posts', 'posts', '2021-08-06 05:15:18', '2021-08-06 05:15:18'),
(32, 'read_posts', 'posts', '2021-08-06 05:15:18', '2021-08-06 05:15:18'),
(33, 'edit_posts', 'posts', '2021-08-06 05:15:18', '2021-08-06 05:15:18'),
(34, 'add_posts', 'posts', '2021-08-06 05:15:19', '2021-08-06 05:15:19'),
(35, 'delete_posts', 'posts', '2021-08-06 05:15:19', '2021-08-06 05:15:19'),
(36, 'browse_pages', 'pages', '2021-08-06 05:15:20', '2021-08-06 05:15:20'),
(37, 'read_pages', 'pages', '2021-08-06 05:15:20', '2021-08-06 05:15:20'),
(38, 'edit_pages', 'pages', '2021-08-06 05:15:20', '2021-08-06 05:15:20'),
(39, 'add_pages', 'pages', '2021-08-06 05:15:20', '2021-08-06 05:15:20'),
(40, 'delete_pages', 'pages', '2021-08-06 05:15:20', '2021-08-06 05:15:20'),
(41, 'browse_hooks', NULL, '2021-08-06 05:15:23', '2021-08-06 05:15:23'),
(42, 'browse_slider_main', 'slider_main', '2021-08-06 07:23:48', '2021-08-06 07:23:48'),
(43, 'read_slider_main', 'slider_main', '2021-08-06 07:23:48', '2021-08-06 07:23:48'),
(44, 'edit_slider_main', 'slider_main', '2021-08-06 07:23:48', '2021-08-06 07:23:48'),
(45, 'add_slider_main', 'slider_main', '2021-08-06 07:23:48', '2021-08-06 07:23:48'),
(46, 'delete_slider_main', 'slider_main', '2021-08-06 07:23:48', '2021-08-06 07:23:48'),
(47, 'browse_slider_mains', 'slider_mains', '2021-08-06 07:25:42', '2021-08-06 07:25:42'),
(48, 'read_slider_mains', 'slider_mains', '2021-08-06 07:25:42', '2021-08-06 07:25:42'),
(49, 'edit_slider_mains', 'slider_mains', '2021-08-06 07:25:42', '2021-08-06 07:25:42'),
(50, 'add_slider_mains', 'slider_mains', '2021-08-06 07:25:42', '2021-08-06 07:25:42'),
(51, 'delete_slider_mains', 'slider_mains', '2021-08-06 07:25:42', '2021-08-06 07:25:42'),
(52, 'browse_videos', 'videos', '2021-08-07 04:02:24', '2021-08-07 04:02:24'),
(53, 'read_videos', 'videos', '2021-08-07 04:02:24', '2021-08-07 04:02:24'),
(54, 'edit_videos', 'videos', '2021-08-07 04:02:24', '2021-08-07 04:02:24'),
(55, 'add_videos', 'videos', '2021-08-07 04:02:24', '2021-08-07 04:02:24'),
(56, 'delete_videos', 'videos', '2021-08-07 04:02:24', '2021-08-07 04:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_author` bigint NOT NULL,
  `id_category` bigint NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '''Published''',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id` (`id_author`),
  KEY `category_id` (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `id_author`, `id_category`, `title`, `excerpt`, `body`, `link_1`, `link_2`, `image`, `status`, `slug`, `seo_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'PKKM SBM ITB', 'TECHNOPRENEURSHIP TRACK', '<p>-</p>', 'http://merdekabelajar.itb.ac.id/page/15/pkkm-sbm-itb', NULL, 'images-post/pkkm-sbm-itb-.png', 'Published', 'pkkm-sbm-itb', 'merdeka-belajar-itb-pkkm-sbm-itb', 'PKKM SBM ITB', 'PKKM SBM ITB', '2021-08-11 07:30:10', '2021-08-14 10:28:36'),
(2, 2, 1, 'IA-ITB NL dan KBRI Belanda Bahas Teknologi Baterai Laut Sebagai Pilihan Aman Penyimpanan Pasokan Energi', '<h6 class=\"\">IA-ITB NL dan KBRI Belanda Bahas Teknologi Baterai Laut Sebagai Pilihan Aman Penyimpanan Pasokan Energi</h6>', '<h6 class=\"\">IA-ITB NL dan KBRI Belanda Bahas Teknologi Baterai Laut Sebagai Pilihan Aman Penyimpanan Pasokan Energi</h6>', 'https://itb.ac.id/news/read/57927/home/ia-itb-nl-dan-kbri-belanda-bahas-teknologi-baterai-laut-sebagai-pilihan-aman-penyimpanan-pasokan-energi', NULL, 'images-post/ia-itb-nl-dan-kbri-belanda-bahas-teknologi-baterai-laut-sebagai-pilihan-aman-penyimpanan-pasokan-energi-.png', 'Published', 'ia-itb-nl-dan-kbri-belanda-bahas-teknologi-baterai-laut-sebagai-pilihan-aman-penyimpanan-pasokan-energi', 'merdeka-belajar-itb-ia-itb-nl-dan-kbri-belanda-bahas-teknologi-baterai-laut-sebagai-pilihan-aman-penyimpanan-pasokan-energi', 'IA-ITB NL dan KBRI Belanda Bahas Teknologi Baterai Laut Sebagai Pilihan Aman Penyimpanan Pasokan Energi', 'IA-ITB NL dan KBRI Belanda Bahas Teknologi Baterai Laut Sebagai Pilihan Aman Penyimpanan Pasokan Energi', '2021-08-11 06:07:30', '2021-08-11 06:07:30'),
(3, 2, 1, 'Indonesia Siap Implementasikan Jaringan 5G', '<h6 class=\"\">Indonesia Siap Implementasikan Jaringan 5G</h6>', '<h6 class=\"\">Indonesia Siap Implementasikan Jaringan 5G</h6>', 'https://itb.ac.id/news/read/57925/home/indonesia-siap-implementasikan-jaringan-5g', NULL, 'images-post/indonesia-siap-implementasikan-jaringan-5g-.png', 'Published', 'indonesia-siap-implementasikan-jaringan-5g', 'merdeka-belajar-itb-indonesia-siap-implementasikan-jaringan-5g', 'Indonesia Siap Implementasikan Jaringan 5G', 'Indonesia Siap Implementasikan Jaringan 5G', '2021-08-11 07:26:12', '2021-08-11 07:26:12'),
(4, 2, 1, 'Pengabdian Masyarakat Sekolah Farmasi ITB, Bangun Kader Kesehatan di Daerah Pangandaran', '<h6 class=\"\">Pengabdian Masyarakat Sekolah Farmasi ITB, Bangun Kader Kesehatan di Daerah Pangandaran</h6>', '<h6 class=\"\">Pengabdian Masyarakat Sekolah Farmasi ITB, Bangun Kader Kesehatan di Daerah Pangandaran</h6>', 'https://itb.ac.id/news/read/57924/home/pengabdian-masyarakat-sekolah-farmasi-itb-bangun-kader-kesehatan-di-daerah-pangandaran', NULL, 'images-post/pengabdian-masyarakat-sekolah-farmasi-itb,-bangun-kader-kesehatan-di-daerah-pangandaran-.png', 'Published', 'pengabdian-masyarakat-sekolah-farmasi-itb,-bangun-kader-kesehatan-di-daerah-pangandaran', 'merdeka-belajar-itb-pengabdian-masyarakat-sekolah-farmasi-itb,-bangun-kader-kesehatan-di-daerah-pangandaran', 'Pengabdian Masyarakat Sekolah Farmasi ITB, Bangun Kader Kesehatan di Daerah Pangandaran', 'Pengabdian Masyarakat Sekolah Farmasi ITB, Bangun Kader Kesehatan di Daerah Pangandaran', '2021-08-11 07:28:03', '2021-08-11 07:28:03'),
(5, 2, 1, 'Bangga, 9 Mahasiswa FMIPA ITB Menorehkan Prestasi dalam International Young Chemists Summit 2021', '<h6 class=\"\">Bangga, 9 Mahasiswa FMIPA ITB Menorehkan Prestasi dalam International Young Chemists Summit 2021</h6>', '<h6 class=\"\">Bangga, 9 Mahasiswa FMIPA ITB Menorehkan Prestasi dalam International Young Chemists Summit 2021</h6>', 'https://itb.ac.id/news/read/57919/home/bangga-9-mahasiswa-fmipa-itb-menorehkan-prestasi-dalam-international-young-chemists-summit-2021', NULL, 'images-post/bangga,-9-mahasiswa-fmipa-itb-menorehkan-prestasi-dalam-international-young-chemists-summit-2021-.jpg', 'Published', 'bangga,-9-mahasiswa-fmipa-itb-menorehkan-prestasi-dalam-international-young-chemists-summit-2021', 'merdeka-belajar-itb-bangga,-9-mahasiswa-fmipa-itb-menorehkan-prestasi-dalam-international-young-chemists-summit-2021', 'Bangga, 9 Mahasiswa FMIPA ITB Menorehkan Prestasi dalam International Young Chemists Summit 2021', 'Bangga, 9 Mahasiswa FMIPA ITB Menorehkan Prestasi dalam International Young Chemists Summit 2021', '2021-08-11 07:28:42', '2021-08-11 07:28:42'),
(6, 1, 2, 'PKKM SAPPK ITB', '<p>KELAS KOLABORASI LINTAS PROGRAM STUDI 2021<br></p>', '<h4 style=\"box-sizing: inherit; font-family: Poppins; line-height: 1.1; color: rgb(41, 43, 44); text-align: justify;\"><br></h4><div class=\"post-view\" align=\"justify\"><div class=\"view view-image\">\r\n                                                                        \r\n                                                                        \r\n    </div>\r\n                        </div>', 'http://merdekabelajar.itb.ac.id/page/16/pkkm-sappk-itb', NULL, 'images-post/pkkm-sappk-itb-.png', 'Published', 'pkkm-sappk-itb', 'merdeka-belajar-itb-pkkm-sappk-itb', 'PKKM SAPPK ITB', 'PKKM SAPPK ITB', '2021-08-11 06:04:52', '2021-08-14 10:28:21'),
(7, 1, 2, 'PKKM STEI ITB', '<p>DIGITAL INNOVATION &amp; ENTREPRENEURSHIP<br></p>', '<p>-</p>', 'http://merdekabelajar.itb.ac.id/page/17/pkkm-stei-itb', NULL, 'images-post/pkkm-stei-itb-.png', 'Published', 'pkkm-stei-itb', 'merdeka-belajar-itb-pkkm-stei-itb', 'PKKM STEI ITB', 'PKKM STEI ITB', '2021-08-13 00:38:34', '2021-08-14 10:27:53'),
(8, 1, 2, 'PKKM GEOFISIKA ITB', '<p>ITB-IEAGHG INTERNATIONAL VIRTUAL COURSE ON CARBON CAPTURE, UTILIZATION AND STORAGE (CCUS)<br></p>', '<p>-</p>', 'http://merdekabelajar.itb.ac.id/page/18/pkkm-geofisika-itb', NULL, 'images-post/pkkm-geofisika-itb-.png', 'Published', 'pkkm-geofisika-itb', 'merdeka-belajar-itb-pkkm-geofisika-itb', 'PKKM GEOFISIKA ITB', 'PKKM GEOFISIKA ITB', '2021-08-13 00:42:56', '2021-08-14 10:23:30');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
CREATE TABLE IF NOT EXISTS `post_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Berita', '2021-08-10 20:46:58', '2021-08-10 20:50:36'),
(2, 'Info', '2021-08-10 20:47:51', '2021-08-10 20:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator', '2021-08-06 05:15:08', '2021-08-07 07:01:18'),
(2, 'Normal User', 'Normal User', '2021-08-06 05:15:08', '2021-08-07 07:01:28'),
(3, 'Operator', 'Operator', '2021-08-07 07:01:02', '2021-08-07 07:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'PKKM STEI ITB', NULL, 'images-slider/pkkm-stei-itb-.jpeg', 'Published', '2021-08-11 05:46:23', '2021-08-11 18:27:48'),
(2, 'PKKM GEOFISIKA ITB', NULL, 'images-slider/pkkm-geofisika-itb-.jpeg', 'Published', '2021-08-11 05:50:02', '2021-08-11 05:50:02'),
(3, 'Merdeka Belajar SBM ITB', NULL, 'images-slider/merdeka-belajar-sbm-itb-.jpeg', 'Published', '2021-08-11 05:50:33', '2021-08-11 05:54:54'),
(4, 'Merdeka Belajar Arsitektur ITB', NULL, 'images-slider/merdeka-belajar-arsitektur-itb-.jpeg', 'Published', '2021-08-11 05:55:22', '2021-08-11 05:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'images-user-admin/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'Operator', 'operator@itb.ac.id', 'users\\August2021\\3Qc3M0b0WjnEvF98ZRMj.png', NULL, '$2y$10$VKKvSc4zlZqshdPeRPZJXeOUi8lz7WkHJtIUFJ.ONo9NdEzS61Zui', 'JLGdH5hl4ODvKzYbTIuIchcmEfvjlRqvwystMpWQ0t4YLYa30OwAqZeWfVBA', '{\"locale\":\"en\"}', 'Active', '2021-08-06 05:15:17', '2021-08-15 01:22:18'),
(2, 1, 'Admin', 'admin@itb.ac.id', 'users\\August2021\\ps6jApTeuDwknZh4ukcC.png', NULL, '$2y$10$3Rvs34NYTE7MNXGTtGYqb.59HnhlDTI2L0tsUuYknY0hsLTdQASKK', 'rkwFmHTDta3DDdLimG9YTdvNySCLhFqegv2SdFIC5VwEmBYQoyPTQrAezzZD', '{\"locale\":\"en\"}', 'Active', '2021-08-06 08:06:10', '2021-08-15 01:36:58'),
(3, 1, 'Zen', 'zen@itb.ac.id', 'users\\August2021\\ps6jApTeuDwknZh4ukcC.png', NULL, '7e80e99ea73334fd269d21b640fe0d00', 'jUuTLkr8X9P2AqixrSr2kYHEsKP6sFRqDTy9gldixQ5XqlpH5MDxWaa9xYU0', '{\"locale\":\"en\"}', 'Active', '2021-08-12 08:06:10', '2021-08-15 00:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_berita` datetime DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `link`, `tanggal_berita`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/MVmNzfE8_gU', '2021-01-11 13:01:00', 'Enable', '2021-08-10 08:12:04', '2021-08-10 08:18:00'),
(2, 'https://www.youtube.com/embed/B33rxeVITNs', '2021-08-02 22:18:00', 'Enable', '2021-08-10 08:18:22', '2021-08-11 07:22:42'),
(3, 'https://www.youtube.com/embed/su9mPBHrJlo', '2021-08-10 22:18:00', 'Enable', '2021-08-10 08:18:36', '2021-08-10 08:18:36'),
(4, 'https://www.youtube.com/embed/5yZfw9NNw7M', '2021-08-10 22:18:00', 'Enable', '2021-08-10 08:18:48', '2021-08-10 08:18:48');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_one_childs`
--
ALTER TABLE `menu_one_childs`
  ADD CONSTRAINT `menu_one_childs_ibfk_1` FOREIGN KEY (`id_menu_parent`) REFERENCES `menu_parents` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `menu_two_childs`
--
ALTER TABLE `menu_two_childs`
  ADD CONSTRAINT `menu_two_childs_ibfk_1` FOREIGN KEY (`id_menu_one_child`) REFERENCES `menu_one_childs` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
