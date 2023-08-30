-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2023 at 08:00 AM
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
-- Database: `blog_godog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(60) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `thumbnail`, `description`, `parent_id`, `created_at`, `updated_at`) VALUES
(7, 'Masyarakat', 'masyarakat', '/storage/photos/1/categories/masyarakat.jpeg', 'Informasi seputar Masyarakat', NULL, '2023-08-17 09:29:19', '2023-08-17 09:29:19'),
(8, 'Desa', 'desa', '/storage/photos/1/categories/desa.jpeg', 'Informasi seputar Desa', NULL, '2023-08-17 09:29:44', '2023-08-17 09:29:44'),
(9, 'UMKM', 'umkm', '/storage/photos/1/categories/umkm.jpeg', 'Informasi seputar UMKM', NULL, '2023-08-17 09:30:09', '2023-08-17 09:30:09'),
(10, 'Keluarga', 'keluarga', '/storage/photos/1/categories/keluarga.jpeg', 'Informasi seputar Keluarga', NULL, '2023-08-17 09:54:54', '2023-08-17 09:54:54'),
(11, 'Pendidikan', 'pendidikan', '/storage/photos/1/categories/pendidikan.jpeg', 'Informasi seputar Pendidikan', NULL, '2023-08-17 09:55:19', '2023-08-17 09:55:19'),
(12, 'Pemerintah', 'pemerintah', '/storage/photos/1/categories/pemerintah.jpeg', 'Informasi seputar pemerintah', NULL, '2023-08-17 09:55:44', '2023-08-17 09:55:44'),
(15, 'Bisnis', 'bisnis', '/storage/photos/1/categories/nocover.png', 'Info seputar Bisnis', NULL, '2023-08-17 18:50:26', '2023-08-17 18:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `category_id`, `post_id`, `created_at`, `updated_at`) VALUES
(3, 7, 2, '2023-08-17 09:30:28', '2023-08-17 09:30:28'),
(4, 8, 2, '2023-08-17 09:30:28', '2023-08-17 09:30:28'),
(11, 7, 5, '2023-08-17 19:07:00', '2023-08-17 19:07:00'),
(12, 10, 5, '2023-08-17 19:07:00', '2023-08-17 19:07:00'),
(13, 7, 6, '2023-08-17 19:13:31', '2023-08-17 19:13:31'),
(14, 10, 6, '2023-08-17 19:13:31', '2023-08-17 19:13:31'),
(15, 7, 7, '2023-08-17 19:20:25', '2023-08-17 19:20:25'),
(16, 8, 7, '2023-08-17 19:20:25', '2023-08-17 19:20:25'),
(17, 10, 7, '2023-08-17 19:20:25', '2023-08-17 19:20:25'),
(18, 8, 5, '2023-08-17 19:20:42', '2023-08-17 19:20:42'),
(19, 8, 6, '2023-08-17 19:20:53', '2023-08-17 19:20:53'),
(20, 7, 8, '2023-08-17 19:36:23', '2023-08-17 19:36:23'),
(21, 8, 8, '2023-08-17 19:36:23', '2023-08-17 19:36:23'),
(22, 10, 8, '2023-08-17 19:36:23', '2023-08-17 19:36:23'),
(23, 7, 9, '2023-08-17 19:53:23', '2023-08-17 19:53:23'),
(24, 8, 9, '2023-08-17 19:53:23', '2023-08-17 19:53:23'),
(25, 10, 9, '2023-08-17 19:53:23', '2023-08-17 19:53:23'),
(26, 7, 10, '2023-08-17 20:01:10', '2023-08-17 20:01:10'),
(27, 8, 10, '2023-08-17 20:01:10', '2023-08-17 20:01:10'),
(28, 10, 10, '2023-08-17 20:01:10', '2023-08-17 20:01:10'),
(29, 7, 11, '2023-08-17 20:12:26', '2023-08-17 20:12:26'),
(30, 8, 11, '2023-08-17 20:12:26', '2023-08-17 20:12:26'),
(31, 10, 11, '2023-08-17 20:12:26', '2023-08-17 20:12:26'),
(32, 7, 12, '2023-08-17 20:21:42', '2023-08-17 20:21:42'),
(33, 8, 12, '2023-08-17 20:21:42', '2023-08-17 20:21:42'),
(34, 10, 12, '2023-08-17 20:21:42', '2023-08-17 20:21:42'),
(35, 7, 13, '2023-08-17 20:40:20', '2023-08-17 20:40:20'),
(36, 8, 13, '2023-08-17 20:40:20', '2023-08-17 20:40:20'),
(37, 12, 13, '2023-08-17 20:40:20', '2023-08-17 20:40:20'),
(38, 7, 14, '2023-08-17 20:46:51', '2023-08-17 20:46:51'),
(39, 8, 14, '2023-08-17 20:46:51', '2023-08-17 20:46:51'),
(40, 12, 14, '2023-08-17 20:46:51', '2023-08-17 20:46:51'),
(41, 7, 15, '2023-08-17 20:54:21', '2023-08-17 20:54:21'),
(42, 8, 15, '2023-08-17 20:54:21', '2023-08-17 20:54:21'),
(43, 12, 15, '2023-08-17 20:54:21', '2023-08-17 20:54:21'),
(44, 7, 16, '2023-08-17 20:55:45', '2023-08-17 20:55:45'),
(45, 8, 16, '2023-08-17 20:55:45', '2023-08-17 20:55:45'),
(46, 8, 17, '2023-08-18 02:38:31', '2023-08-18 02:38:31'),
(47, 9, 17, '2023-08-18 02:38:31', '2023-08-18 02:38:31'),
(48, 15, 17, '2023-08-18 02:38:31', '2023-08-18 02:38:31'),
(53, 7, 19, '2023-08-18 03:36:50', '2023-08-18 03:36:50'),
(54, 8, 19, '2023-08-18 03:36:50', '2023-08-18 03:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_08_09_113811_create_categories_table', 1),
(7, '2023_08_11_174247_create_tags_table', 1),
(8, '2023_08_12_095146_create_posts_table', 1),
(9, '2023_08_12_095645_create_category_post_table', 1),
(10, '2023_08_12_095705_create_post_tag_table', 1),
(11, '2023_08_15_212100_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 2),
(8, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'post_show', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(2, 'post_create', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(3, 'post_update', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(4, 'post_detail', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(5, 'post_delete', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(6, 'category_show', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(7, 'category_create', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(8, 'category_update', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(9, 'category_detail', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(10, 'category_delete', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(11, 'tag_show', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(12, 'tag_create', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(13, 'tag_update', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(14, 'tag_delete', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(15, 'role_show', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(16, 'role_create', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(17, 'role_update', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(18, 'role_detail', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(19, 'role_delete', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(20, 'user_show', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(21, 'user_create', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(22, 'user_update', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(23, 'user_detail', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(24, 'user_delete', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(60) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `status` enum('publish','draft') NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `thumbnail`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'PERSYARATAN PENCATATAN AKTA PENGAKUAN ANAK', 'persyaratan-pencatatan-akta-pengakuan-anak', '/storage/photos/1/posts/pengakuan anak.jpg', 'Pasal 49 Ayat(2) UU No. 24 Tahun 2013 \"Pengakuan Anak hanya berlaku bagi Anak yang Orang Tuanya telah melaksanakan Perkawinan Sah menurut Hukum Agama tetapi belum Sah menurut Hukum Negara\"', '<h2 style=\"text-align: left;\">Alur Persyaratan&nbsp;</h2>\r\n<ol>\r\n<li style=\"text-align: left;\">Mengisi Formulir yang disediakan oleh Dinas Kependudukan Dan Pencatatan Sipil&nbsp;</li>\r\n<li style=\"text-align: left;\">Surat Pengantar dari RT/RW dan diketahui Lurah</li>\r\n<li style=\"text-align: left;\">Surat Pernyataan Pengakuan Anak dari Ayah Biologis yang disetujui oleh Ibu Kandung</li>\r\n<li style=\"text-align: left;\">Fotocopy Kutipan Akta Kelahiran</li>\r\n<li style=\"text-align: left;\">Fotocopy Akta Kelahiran Ayah Biologis dan Ibu Kandung</li>\r\n<li style=\"text-align: left;\">Fotocopy KK/KTP Ayah Biologis dan Ibu Kandung</li>\r\n<li style=\"text-align: left;\">Fotocopy Pasport</li>\r\n<li style=\"text-align: left;\">Fotocopy KITAS/KITAP</li>\r\n<li style=\"text-align: left;\">Surat Kuasa Bermateral bagi yang Pelaporya dikuasakan</li>\r\n<li style=\"text-align: left;\">Surat Keterangan Lapor Diri (SKTD) dan Surat Tanda Melapor Diri (STMD)</li>\r\n</ol>', 'publish', 1, '2023-08-17 09:28:05', '2023-08-17 18:01:51'),
(5, 'PERSYARATAM PENCATATAN AKTA KEMATIAN', 'persyaratam-pencatatan-akta-kematian', '/storage/photos/1/posts/akta.jpeg', 'Pasal 44 ayat (1) UU No.24 Tahun 2013 \r\n\"Pelaporan Pencatatan Kematian dalam UU No. 23 Tahun 2006 yang semula menjadi kewajiban Penduduk, diubah menjadi kewajiban RT atau nama lain untuk melaporkan setiap Kematian Warganya kepada Instansi Pelaksana\"\r\nPelaporan tersebut dilakukan secara berjenjang melalui RW atau nama lain, Desa/Kelurahan dan Kecamatan', '<ol>\r\n<li>&nbsp;Mengisi Formulir yang disediakan oleh DInas Kependudukan Dan Pencatatan Sipil</li>\r\n<li>Surat Keterangan Kematian dari Dokter / Rumah Sakit (Para Medis)</li>\r\n<li>Surat Keterangan Kematian dari Lurah Setempat</li>\r\n<li>Fotocopy Kutipan Akta Nikah/Akta Perkawinan</li>\r\n<li>Fotocopy Akta Kelahiran yang Meninggal Dunia</li>\r\n<li>Fotocopy KK dan KTP yang Meninggal Dunia</li>\r\n<li>Fotocopy surat Kewarga Negaraan/Ganti Nama yang Meninggal Dunia</li>\r\n<li>Membawa dua Orang Saksi dan melampirkan Fotocopy KTP yang masih berlaku</li>\r\n<li>Surat Kuasa Bermaterai bagi yang Pelapornya dikuasakan</li>\r\n<li>Fotocopy KTP Pelapor yang masih berlaku</li>\r\n</ol>', 'publish', 1, '2023-08-17 19:07:00', '2023-08-17 19:07:00'),
(6, 'PERSYARATAN PENCATATAN PENGANGKATAN ANAK', 'persyaratan-pencatatan-pengangkatan-anak', '/storage/photos/1/posts/pengakuan anak.jpg', 'Pasal 47 Ayat (1) UU No.23 Tahun 2006\r\n\"Pencatatan Perngangkatan ANak dilaksanakan berdasarkan Penetapan Pengadilan di Tenmpat Tinggal Pemohon\"', '<ol>\r\n<li>Mengisi Formulir yang disediakan oleh DInas Kependudukan Dan Pencatatan Sipil</li>\r\n<li>Fotocopy Penetapan Pengadilan Negeri dan Pengadilan Agama</li>\r\n<li>Fotocopy Akta Kelahiran</li>\r\n<li>Fotocopy Akta Perkawinan/Akta Nikah Orang Tua yang mengangkat</li>\r\n<li>Fotocopy Kutipan Akta Kelahiran Orang Tua Angkat</li>\r\n<li>Fotocopy KK dan KTP Orang Tua Angkat</li>\r\n<li>Fotocopy Pasport Orang Tua Angkat (Bagi Orang Asing)</li>\r\n<li>Fotocopy KITAS/KITAP (Bagi Orang Asing)</li>\r\n<li>Fotocopy KTP Pelapor</li>\r\n<li>Surat Kuasa Bermaterai bagi yang Pelapornya&nbsp;</li>\r\n</ol>\r\n<p>dikuasakan</p>', 'publish', 1, '2023-08-17 19:13:31', '2023-08-17 19:13:31'),
(7, 'PERSYARATAN PENCATATAN PENGESAHAN ANAK', 'persyaratan-pencatatan-pengesahan-anak', '/storage/photos/1/posts/pengakuan anak.jpg', 'Pasal 50 Ayat (2) UU No.24 Tahun 2003\r\n\"Pengesahan Anak hanya berlaku bagi Anak yang Orang tuanya telah melaksanakan perkawinan Sah menurut Hukum Agama dan Hukum Negara\"', '<ol>\r\n<li>Mengisi Formulir yang disediakan oleh DInas Kependudukan Dan Pencatatan Sipil</li>\r\n<li>Surat Pengantar dari RT/RW dan diketahui Lurah</li>\r\n<li>Fotocopy Akta Perkawinan Orang Tua</li>\r\n<li>Fotocopy KK dan KTP Orang Tua</li>\r\n<li>Surat Pengakuan Anak dari Ayah Biologis dan disetujui oleh Ibu Kandung</li>\r\n<li>Fotocopy Kutipan Akta Kelahiran Anak</li>\r\n<li>Fotocopy Pasport</li>\r\n<li>Fotocopy KITAS/KITAP</li>\r\n<li>Surat Keterangan Lapor Diri dan/Surat Tanda Melapor DIri</li>\r\n<li>Fotocopy Kutipan Akta Kelahiran Ayah Biologis dari Ibu Kandung</li>\r\n<li>Fotocopy KK/KTP Ayah Biologis dan Ibu Kandung</li>\r\n</ol>\r\n<p><strong>Catatan:</strong></p>\r\n<p><strong>Wajib dilaporkan oleh Orang Tua kepada Instansi Pelaksana paling lambat 30 hari sejak Ayah dan Ibu dari Anak yang bersangkutan melakukan Perkawinan</strong></p>', 'publish', 1, '2023-08-17 19:20:25', '2023-08-17 19:20:25'),
(8, 'PERSYARATAN PENCATATAN PERUBAHAN NAMA', 'persyaratan-pencatatan-perubahan-nama', '/storage/photos/1/posts/akta.jpeg', 'Pasal 52 UU No. 23 Tahun 2006\r\n\"(1) Pencatatan Perubahan Nama dilaksanakan berdasarkan penetapan Pengadilan Negeri Tempat Pemohon\r\n(2) Pencatatan Perubahan Nama sebagaimana dimaksud pada ayat (1) wajib dilaporkan oleh penduduk kepada Instansi Pelaksana yang menerbitkan Akta Pencatatan Sipil paling lambat 30 (tiga puluh) hari sejak diterimanya salinan penetapan Pengadilan Negeri oleh Penduduk\"', '<ol>\r\n<li>Mengisi Formulir yang disediakan oleh DInas Kependudukan dan Pencatatan Sipil</li>\r\n<li>Kutipan Akta Kelahiran Asli dan Fotocopy</li>\r\n<li>Fotocopy Kutipan Akta Perkawinan dan Akta Perceraian</li>\r\n<li>Fotocopy Salinan Penetapan Pengadilan Negeri yang mempunyai kekuatan Hukum tetap Perubahan Nama</li>\r\n<li>Fotocopy KK dan KTP Pemohon 6. Fotocopy KTP Pelapor 7.Surat Kuasa Bermateral cukup bagi yang Pelapornya dikuasakan</li>\r\n</ol>\r\n<p><strong>Catatan:</strong></p>\r\n<p><strong>Wajib dilaporkan oleh Penduduk kepada Instansi pelaksana yang menerbitkan Akta Pencatatan Sipil paling lambat 30 hari sejak diterimanya salinan penetapan pengadilan Negeri oleh Penduduk</strong></p>', 'publish', 1, '2023-08-17 19:36:23', '2023-08-17 19:40:41'),
(9, 'PERSYARATAN PENCATATAN AKTE KELAHIRAN TEPAT WAKTU', 'persyaratan-pencatatan-akte-kelahiran-tepat-waktu', '/storage/photos/1/posts/akta.jpeg', 'Pasal 32 UU No. 24 Tahun 2013\r\n\r\n\"Pelaporan Kelahiran yang melampaui batas waktu 60 (enam puluh) hari sejak tanggal kelahiran, Pencatatan dan penerbitan Akta Kelahiran dilaksanakan setelah mendapatkan keputusan kepala Instansi pelaksana Setempat\"\r\n\r\nDengan Demikian Penerbitan Memerlukan Penetapan Pengadilan Negeri, Diubah Cukup Dengankeputusan Kepala Dinas Kependudukan Dan Pencatatan Sipil', '<ol>\r\n<li>Mengisi Formulir yang disediakan oleh Dinas Kependudukan Dan Pencatatan Sipil</li>\r\n<li>Surat keterangan kelahiran dari RS Dokter/Bidan penolong kelahiran (Asli) apabila tidak dapat diganti dengan SPTJM kebenaran data kelahiran</li>\r\n<li>\r\n<p>Fotocopy KTP Orang Tua (Ayah dan Ibu)</p>\r\n</li>\r\n<li>Fotocopy Kartu Keluarga (NIK Anak harus sudah masuk dalam Kartu Keluarga</li>\r\n<li>Fotocopy Akta Nikah/Akta ceral Orang Tua apabila tidak ada agar Nama Ayahnya dapat tercampur dalam Akta Kelahiran sebagai Pasangan Suami Istri</li>\r\n<li>\r\n<p>Melampirkan Data 2 (dua) Orang Saksi beserta Fotocopy KTP Saksi tersebut</p>\r\n<ol>\r\n<li>\r\n<p>Mengisi Formulir yang disediakan oleh Dinas Kependudukan Dan Pencatatan Sipil</p>\r\n</li>\r\n<li>\r\n<p>Surat Keterangan Kelahiran Dari Rs, Dokter/bidan, Penolong Kelahiran (Asli)</p>\r\n</li>\r\n<li>Fotocopy KTP Orang Tua (Ayah dan Ibu)</li>\r\n<li>Fotocopy Kartu Keluarga (NIK Anak harus masuk dalam KK)</li>\r\n<li>Fotocopy Akta Nikah/ Akta ceral Orang Tua</li>\r\n<li>Membawa 2(dua) Orang saksi dan Melampirkan Fotocopy KTP Kedua Orang saksi tersebut</li>\r\n<li>Keputusan Kepala Dinas Kependudukan Dan Pencatatan Sipil</li>\r\n</ol>\r\n</li>\r\n</ol>', 'publish', 1, '2023-08-17 19:53:23', '2023-08-17 19:53:23'),
(10, 'PERSYARATAN PENCATATAN AKTA PERCERAIAN', 'persyaratan-pencatatan-akta-perceraian', '/storage/photos/1/posts/pengakuan anak.jpg', 'Pasal 40 UU No. 23 Tahun 2006\r\n\"(1) Perceraian Wajib dilaporkan oleh yang bersangkutan kepada Instansi Pelaksana paling lambat 60 hari sejak Putusan Pengadilan tentang Perceraian yang telah memperoleh kekuatan HUkum tetap\r\n(2) berdasarkan laporan sebagaimana dimaksud pada ayat (1), Pejabat pencatatan sipil mencatat pada Register akta perceraian dan menerbitkan kutipan akta Perceraian\"', '<ol>\r\n<li>Mengisi Formulir yang disediakan oleh DInas Kependudukan Dan Pencatatan Sipil</li>\r\n<li>Fotocoppy Penetapan Pengadilan Negeri Tempat Pemohon yang mempunyai kekuatan Hukum yang tetap</li>\r\n<li>Fotocopy Akta Perkawinan</li>\r\n<li>Fotocopy KK dan KTP</li>\r\n<li>Fotocopy Akta Kelahiran</li>\r\n<li>Bagi WNI keturunan yang sudah ganti Nama membawa surat bukti ganti Nama</li>\r\n<li>Bagi WNA yang melakukan Perceraian, yang bersangkutan membawa Dokumen Imigrasi dan SKLD</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p><strong>Catatan:</strong></p>\r\n<p><strong>Perceraian Wajib dilaporkan oleh yang bersangkutan kepada Instansi Pelaksana paling lambat 60 hari sejak Putusan Pengadilan tentang Perceraian yang telah memperoleh kekuatan HUkum tetap</strong></p>', 'publish', 1, '2023-08-17 20:01:10', '2023-08-17 20:01:10'),
(11, 'PERSYARATAN PENCATATAN AKTA PERKAWINAN', 'persyaratan-pencatatan-akta-perkawinan', '/storage/photos/1/posts/akta.jpeg', 'Pasal 34 ayat (1) UU No. 23 Tahun 2006\r\n\"Perkawinan yang sah berdasarkan ketentuan peraturan Perundang-undangan wajib dilaporkan oleh Penduduk kepada Instansi Pelaksana di tempat terjadinya perkawinan paling lambat 60 hari sejak tanggal perkawinan\"', '<ol>\r\n<li>Mengisi Formulir yang disediakan oleh DInas Kependudukan dan Pencatatan Sipil</li>\r\n<li>Surat Keterangan Perkawinan/Pemberkatan dai pemuka Agama dan pemuka Penghayat kepercayaan</li>\r\n<li>Fotocopy KK dan KTP calon Mempelai</li>\r\n<li>Surat Pernyataan Belum pernah Kawin bermaterai dari yang bersangkutan diketahui oleh Lurah/Kepala Desa</li>\r\n<li>Fotocopy Surat Baptis/Pemandian</li>\r\n<li>Fotocopy Surat Keterangan Kewarganegaraan</li>\r\n<li>Fotocopy Surat Ganti Nama</li>\r\n<li>Surat Izin Komandan (TNI/POLRI)</li>\r\n<li>Fotocopy Akta Perceraian (bagi yang telah bercerai)</li>\r\n<li>Fotocopy Kutipan Akta Kelahiran Anak yang akan disahkan&nbsp;</li>\r\n<li>Izin Perkawinan dari Pengadilan atau dari Instansi Pelaksana</li>\r\n<li>Akta perjanjian Perkawinan</li>\r\n<li>Pas Foto Berwarna ukuran 4x6 cm berdampingan sebanyak 3(tiga) lembar</li>\r\n<li>KTP Dua Orang Saksi yang hadir pada waktu pencatatan</li>\r\n<li>Surat kuasa bermaterai cukup bagi yang melaporkan dikuasakan</li>\r\n</ol>\r\n<p><strong>Catatan:</strong></p>\r\n<p><strong>Wajib dilaporkan oleh penduduk kepada dinas paling lambat 60 hari kerja sejak tanggal perkawinan</strong></p>', 'publish', 1, '2023-08-17 20:12:26', '2023-08-17 20:12:26'),
(12, 'PERSYARATAN PENCATATAN PINDAH KELUAR KABUPATEN GARUT', 'persyaratan-pencatatan-pindah-keluar-kabupaten-garut', '/storage/photos/1/posts/akta.jpeg', 'Pasal 15 Ayat (1) UU No. 23 Tahun 2006\r\n\"Penduduk Warga Negara Indonesia yang pindah dalam wilayah Negara Kesatuan Republik Indonesia wajib melapor kepada Instansi Pelaksana di Daerah asal untuk mendapatkan Surat Keterangan Pindah\"', '<p>\"Pindah adalah berdomisilinya Penduduk di alamat yang baru untuk waktu lebih dari 1 (satu) Tahun atau berdasarkan kebutuhan yang bersangkutan untuk waktu kurang dari 1 (satu) Tahun\"</p>\r\n<p><strong>Surat Keterangan Pindah Penduduk Watga Negara Indonesia Meliputi:</strong></p>\r\n<ol>\r\n<li>Surat Keterangan Pindah Antar Desa Dalam Satu Kecamatan</li>\r\n<li>Surat Keterangan Pindah Antar Kercamatan dalam satu Kabupaten/Kota</li>\r\n<li>Surat Keterangan Pindah Antar Kabupaten/Kota dalam satu Provinsi dan Luar Provinsi</li>\r\n</ol>\r\n<p><strong>Persyaratan Penerbitan Surat Keterangan Pindah WNI:</strong></p>\r\n<ol>\r\n<li>Surat Pengantar RT/RW</li>\r\n<li>Kartu Keluarga (KK) Asli</li>\r\n<li>Kartu Tanda Penduduk (KTP) Asli</li>\r\n<li>Pengantar Pindah Antar Kab/Kota yang ditandatangani oleh Kepala Desa/Kelurahan dan Camat</li>\r\n<li>Surat Keterangan Pindah berlaku 30 hari sejak diterbitkan dan digunakan untuk membuat Kartu Keluarga ditempat tujuan</li>\r\n</ol>', 'publish', 1, '2023-08-17 20:21:42', '2023-08-17 20:21:42'),
(13, 'PERSYARATAN PENCATATAN PINDAH DATANG KE KABUPATEN GARUT', 'persyaratan-pencatatan-pindah-datang-ke-kabupaten-garut', '/storage/photos/1/posts/aktakematian.jpeg', 'Penjelasan Pasal 15 ayat (4) UU No. 23 Tahun 2006\r\n\r\n\"Surat Keterangan Pindah Datang digunakan sebagai dasar perubahan atau Pernerbitan KK dan KTP bagi Penduduk yang bersangkutan\"', '<p>a. Untuk Warga Negara Indonesia</p>\r\n<ol>\r\n<li>\r\n<p>Surat Keterangan Pindah dari daerah asal</p>\r\n</li>\r\n<li>\r\n<p>KTP Elektronik Dengan Alamat Tempat Tinggal Asal (KTP Lama)&nbsp;</p>\r\n</li>\r\n<li>Mengisi Formulir yang disediakan oleh Dinas Kependudukan dan pencatatan Sipil</li>\r\n</ol>\r\n<p>b. Untuk Warga Negara Asing harus dilengkapi dengan:</p>\r\n<ol>\r\n<li>\r\n<p>KITAP/KITAS&nbsp;</p>\r\n</li>\r\n<li>\r\n<p>Surat Keterangan dari Kepolisian</p>\r\n</li>\r\n<li>Fotocopy Pasport</li>\r\n<li>Buku Pengawasan Orang Asing (BPOA)</li>\r\n<li>\r\n<p>Surat Keterangan Tempat Tinggal bagi Orang Asing yang memiliki Izin Tinggal Terbatas</p>\r\n</li>\r\n<li>KK dan KTP untuk orang Asing yang memiliki Izin Tinggal Tetap</li>\r\n</ol>\r\n<p>&nbsp;</p>', 'publish', 1, '2023-08-17 20:40:20', '2023-08-17 20:40:20'),
(14, 'PERSYARATAN PENERBITAN KARTU IDENTITAS ANAK (KIA)', 'persyaratan-penerbitan-kartu-identitas-anak-kia', '/storage/photos/1/posts/aktakematian.jpeg', 'Pasal 1 ayat (7) Permendagri Nomor 02 Tahun 2016 Tenteng Kartu Identitas Anak\r\n\r\n\"Kartu Identitas Anak yang selanjutnya disingkat menjadi KIA adalah Identitas Resmi Anak sebagai bukti dari anak yang berusia kurang dari 17 tahun dan belum menikah yang diterbitkan oleh Disdukcapil Kabupaten/Kota\"', '<p><strong>Warga Negara Indonesia</strong></p>\r\n<p>a. Bagi Anak Kurang dari 5 Tahun</p>\r\n<ol>\r\n<li>Fotocopy Akta Kelahiran</li>\r\n<li>Fotocopy Kartu Keluarga Orang Tua/Wali</li>\r\n<li>Fotocopy KTP Orang Tua/Wali</li>\r\n</ol>\r\n<p>a. Bagi Anak Usia 5 Tahun sampai dengan 17(tujuh belas) tahun kurang satu hari</p>\r\n<ol>\r\n<li>Fotocopy Akta Kelahiran</li>\r\n<li>Fotocopy Kartu Keluarga Orang Tua/Wal</li>\r\n<li>Fotocopy KTP-el kedua Orang Tua/Wali&nbsp;</li>\r\n<li>Pas Foto Anak Berwarna ukuran 2x3 sebanyak 2(dua) lembar&nbsp;</li>\r\n</ol>\r\n<p><strong>Orang Asing</strong></p>\r\n<p>a. Bagi Anak Kurang dari 5 (lima) Tahun</p>\r\n<ol>\r\n<li>\r\n<p>Fotocopy Passport dan Kartu Izin Tinggal Tetap (KITAP)&nbsp;</p>\r\n</li>\r\n<li>\r\n<p>Fotocopy Kartu keluarga Orang Tua/Wali&nbsp;</p>\r\n</li>\r\n<li>Fotocopy KTP-el Kedua Orang Tua/Wali&nbsp;</li>\r\n</ol>\r\n<p>b. Bagi Anak Usia 5(lima) Tahun sampai dengan 17 (tujuh belas) tahun kurang satu hari</p>\r\n<ol>\r\n<li>Fotocopy Passport dan Kartu Izin Tinggal Tetap (KITAP)</li>\r\n<li>Fotocopy Kartu Keluarga Orang tua/Wali</li>\r\n<li>Pas foto Anak Berwarna ukuran 2x3 sebanyak 2 lembar</li>\r\n</ol>', 'publish', 1, '2023-08-17 20:46:51', '2023-08-17 20:46:51'),
(15, 'PERSYARATAN PENERBITAN KTP BAGI WNI', 'persyaratan-penerbitan-ktp-bagi-wni', '/storage/photos/1/posts/aktakematian.jpeg', 'Pasal 1 ayat (14) UU No, 24 Tahun 2013\r\n\r\n\"Kartu Tanda Penduduk Elektronik, selanjutnya disingkat KTP-el, adalah Kartu Tanda Penduduk yang dilengkapi Chip yang merupakan Identitas Resmi Penduduk sebagai bukti diri yang diterbitkan oleh Intansi Pelaksana\"', '<p><strong>Warga Negara Indonesia (WNI)</strong></p>\r\n<p>\"Setiap Penduduk yang telah berumur diatas 17 (Tujuh Belas) Tahun atau telah/pernah Kawin wajib memiliki Kartu Tanda Penduduk\"</p>\r\n<p>1. Surat Pengantar RT/RW yang menyatakan bahwa penduduk bersangkutan adalah bertempat tinggal tetap dalam wilayah Kabupaten Garut<br />2. Fotocopy Kartu Keluarga&nbsp;<br />3. Melakukan Perekaman KTP-el</p>\r\n<p>4.Membawa KTP-el yang lama bagi masyarakat yang melakukan Perbaikan KTP-el</p>\r\n<p>5. Apabila Ganti Nama harus ada keputusan Pengadilan dan sudah tercantum dalam Kartu Keluarga</p>\r\n<p><strong>PERSYARATAN PENERBITAN KTP BAGI ORANG ASING</strong></p>\r\n<p>Untuk Warga Negara Asing (WNA) harus melampirkan:<br />&nbsp;1. Passport</p>\r\n<p>2. KITAP/SKK A/B dari Kantor Imigrasi</p>\r\n<p>3. Buku Pengawasan Orang Asing (BPOA) dari kantor Imigrasi&nbsp;</p>\r\n<p>4. Surat Keterangan Lapor Diri (SKLD) dari kepolisian</p>', 'publish', 1, '2023-08-17 20:54:21', '2023-08-17 20:54:21'),
(16, 'PERSYARATAN PENERBITAN KK Warga Negara Indonesia (WNI)', 'persyaratan-penerbitan-kk-warga-negara-indonesia-wni', '/storage/photos/1/posts/aktakematian.jpeg', 'Pasal 1 ayat (13) UU No, 24 Tahun 2013\r\n\r\n\"Kartu Keluarga, selanjutnya disingkat KK, adalah Kartu identitas keluarga memuat data tentang nama, susunan dan hubungan dalam keluarga, serta identitas anggota keluarga.\"', '<p>1. Surat Pengantar RT/RW yang menyatakan bahwa penduduk bersangkutan adalah bertempat tinggal tetap dalam wilayah Kabupaten tapi belum memiliki Kartu Keluarga (KK)</p>\r\n<p>2. Mengisi Formulir F1.01 yang disediakan oleh dinas kependudukan dan Pencatatan Sipil</p>\r\n<p>3. Kartu Keluarga lama bagi Penduduk yang telah mempunyai Kartu Keluarga tetapi ada perubahan Data kepala keluarga dan atau</p>\r\n<p>4.Akta Perkawinan/Akta Nikah/Akta Anggota Keluarga perceraian</p>\r\n<p>5. Akta Kelahiran/Akta Kematian&nbsp;</p>\r\n<p>6. Surat Keterangan Ganti Nama (bagi yang telah Ganti)</p>\r\n<p>Bagi Warga Negara Asing (WNA) harus melampirkan:</p>\r\n<p>1. KITAP/SKK A/B dari Kantor Imigrasi</p>\r\n<p>2. Surat Bukti Pelaporan Orang Asing (SBPOA)</p>\r\n<p>3. Buku Pengawasan Orang Asing (BPOA) dari Kantor Imigrasi</p>\r\n<p>4. Surat Keterangan Lapor Diri (SKLD) dari kepolisian</p>', 'publish', 1, '2023-08-17 20:55:45', '2023-08-17 20:55:45'),
(17, 'Bisnis Desa', 'bisnis-desa', '/storage/photos/1/categories/nocover.png', 'Bisnis Desa', '<h2>Bisnis Desa</h2>', 'publish', 1, '2023-08-18 02:38:31', '2023-08-18 02:38:31'),
(19, 'mmm', 'mmm', '/storage/photos/1/categories/nocover.png', 'mmmm', '<p>mmmmm</p>', 'publish', 1, '2023-08-18 03:36:50', '2023-08-18 03:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, '2023-08-17 09:28:05', '2023-08-17 09:28:05'),
(3, 2, 2, '2023-08-17 09:31:19', '2023-08-17 09:31:19'),
(4, 2, 4, '2023-08-17 09:31:19', '2023-08-17 09:31:19'),
(9, 5, 2, '2023-08-17 19:07:00', '2023-08-17 19:07:00'),
(10, 6, 2, '2023-08-17 19:13:31', '2023-08-17 19:13:31'),
(11, 7, 2, '2023-08-17 19:20:25', '2023-08-17 19:20:25'),
(12, 8, 2, '2023-08-17 19:36:23', '2023-08-17 19:36:23'),
(13, 9, 2, '2023-08-17 19:53:23', '2023-08-17 19:53:23'),
(14, 10, 2, '2023-08-17 20:01:10', '2023-08-17 20:01:10'),
(15, 10, 4, '2023-08-17 20:01:10', '2023-08-17 20:01:10'),
(16, 11, 2, '2023-08-17 20:12:26', '2023-08-17 20:12:26'),
(17, 11, 4, '2023-08-17 20:12:26', '2023-08-17 20:12:26'),
(18, 12, 2, '2023-08-17 20:21:42', '2023-08-17 20:21:42'),
(19, 12, 4, '2023-08-17 20:21:42', '2023-08-17 20:21:42'),
(20, 13, 2, '2023-08-17 20:40:20', '2023-08-17 20:40:20'),
(21, 13, 4, '2023-08-17 20:40:20', '2023-08-17 20:40:20'),
(22, 14, 2, '2023-08-17 20:46:51', '2023-08-17 20:46:51'),
(23, 14, 4, '2023-08-17 20:46:51', '2023-08-17 20:46:51'),
(24, 15, 2, '2023-08-17 20:54:21', '2023-08-17 20:54:21'),
(25, 16, 2, '2023-08-17 20:55:45', '2023-08-17 20:55:45'),
(26, 17, 3, '2023-08-18 02:38:31', '2023-08-18 02:38:31'),
(27, 17, 4, '2023-08-18 02:38:31', '2023-08-18 02:38:31'),
(31, 19, 2, '2023-08-18 03:36:50', '2023-08-18 03:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(2, 'Admin', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(3, 'Editor', 'web', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(7, 'Pengawas', 'web', '2023-08-17 04:14:36', '2023-08-17 04:14:36'),
(8, 'Role Test', 'web', '2023-08-17 04:35:21', '2023-08-17 04:35:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 7),
(1, 8),
(2, 1),
(2, 2),
(2, 3),
(2, 8),
(3, 1),
(3, 2),
(3, 3),
(3, 7),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 7),
(4, 8),
(5, 1),
(5, 2),
(5, 3),
(5, 7),
(5, 8),
(6, 1),
(6, 2),
(6, 8),
(7, 1),
(7, 2),
(7, 8),
(8, 1),
(8, 2),
(8, 8),
(9, 1),
(9, 2),
(9, 8),
(10, 1),
(10, 2),
(10, 8),
(11, 1),
(11, 2),
(11, 8),
(12, 1),
(12, 2),
(12, 8),
(13, 1),
(13, 2),
(13, 8),
(14, 1),
(14, 2),
(14, 8),
(15, 1),
(15, 8),
(16, 1),
(16, 8),
(17, 1),
(17, 8),
(18, 1),
(18, 8),
(19, 1),
(19, 8),
(20, 1),
(20, 8),
(21, 1),
(21, 8),
(22, 1),
(22, 8),
(23, 1),
(23, 8),
(24, 1),
(24, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(25) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tutorial', 'tutorial', '2023-08-16 04:27:52', '2023-08-16 04:27:52'),
(2, 'Masyarakat', 'masyarakat', '2023-08-16 04:27:52', '2023-08-17 09:30:44'),
(3, 'UMKM', 'umkm', '2023-08-16 04:27:52', '2023-08-17 09:30:50'),
(4, 'Desa', 'desa', '2023-08-16 04:27:52', '2023-08-17 09:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'superAdmin@mail.test', '2023-08-17 04:07:30', '$2y$10$r7GClvqjo9c596S.3aQGHOf11npeNfjZQ1DPwZp1d9jkxfFRsN0KK', NULL, NULL, NULL),
(2, 'Editor', 'Editor@mail.test', NULL, '$2y$10$fzQvK.eqH18mcpsjzS996.6zVEVuZwYOeQOE.HGCounvBZPtZZqPW', NULL, '2023-08-17 04:11:36', '2023-08-17 04:11:36'),
(3, 'Role Test', 'roleTest@mail.test', NULL, '$2y$10$MuuYBzfJF5GIV2rUr/Kqn.zjwhH.AREeJkOoPUzlzU3qK7nkWzDUq', NULL, '2023-08-17 04:36:37', '2023-08-17 04:36:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_post_category_id_foreign` (`category_id`),
  ADD KEY `category_post_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `category_post_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_post_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
