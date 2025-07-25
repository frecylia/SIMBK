-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2025 at 11:31 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simbk`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hasil_tes`
--

CREATE TABLE `hasil_tes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `rekomendasi_jurusan_id` bigint UNSIGNED NOT NULL,
  `tanggal_tes` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `kategori_dominan_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurusans`
--

INSERT INTO `jurusans` (`id`, `nama_jurusan`, `deskripsi`, `kategori_dominan_id`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Mesin, Teknik Sipil, Teknik Elektro, Otomotif, Teknik Industri, Perikanan', 'Jurusan yang berfokus pada keterampilan teknis, kerja fisik, dan pemecahan masalah praktis. Cocok untuk individu yang suka bekerja dengan alat, mesin, atau di luar ruangan.', 9, '2025-07-25 02:29:29', '2025-07-25 02:35:32'),
(2, 'Matematika, Fisika, Biologi, Kimia, Ilmu Komputer, Statistik, Farmasi, Astronomi', 'Jurusan yang menekankan pada pemikiran analitis, penelitian, dan eksplorasi ilmu pengetahuan. Cocok untuk mereka yang suka memecahkan masalah secara logis dan ilmiah.', 10, '2025-07-25 02:29:53', '2025-07-25 02:36:53'),
(3, 'Desain Grafis, Arsitektur, Seni Rupa, Sastra, Film, Musik, Desain Interior', 'Jurusan yang berhubungan dengan kreativitas, ekspresi diri, dan imajinasi. Cocok untuk individu yang suka berkarya melalui seni, desain, atau media kreatif.', 11, '2025-07-25 02:30:15', '2025-07-25 02:37:10'),
(4, 'Pendidikan, Psikologi, Bimbingan Konseling, Keperawatan, Kesehatan Masyarakat, Sosiologi', 'Jurusan yang berfokus pada interaksi sosial, membantu orang lain, dan bekerja dalam tim. Cocok untuk mereka yang senang mengajar, membimbing, atau merawat orang lain', 12, '2025-07-25 02:30:37', '2025-07-25 02:37:25'),
(5, 'Manajemen, Bisnis, Ekonomi, Ilmu Komunikasi, Hubungan Internasional, Hukum, Marketing', 'Jurusan yang terkait dengan kepemimpinan, persuasi, dan dunia bisnis. Cocok untuk individu yang suka mengelola proyek, mengambil inisiatif, dan memengaruhi orang lain.', 13, '2025-07-25 02:31:10', '2025-07-25 02:37:44'),
(6, 'Akuntansi, Administrasi Publik, Perpajakan, Perpustakaan, Sekretaris, Manajemen Kantor', 'Jurusan yang menekankan pada keteraturan, organisasi, dan detail administratif. Cocok untuk individu yang teliti, suka bekerja dengan data, dan menjalankan prosedur rutin.', 14, '2025-07-25 02:31:54', '2025-07-25 02:36:30'),
(7, 'Komunikasi, Pendidikan, Hukum', 'Jika skor verbal tinggi maka di sarankan mengambil jurusan tersebut', 18, '2025-07-25 04:02:46', '2025-07-25 04:02:46'),
(8, 'Akuntansi, Teknik, Statistik', 'Jika skor Logika tinggi maka disarankan mengambil jurusan tersebut', 16, '2025-07-25 04:03:47', '2025-07-25 04:04:48'),
(9, 'Komputer, Matematika, Filsafat', 'Jika skor logika tinggi maka disarankan mengambil jurusan tersebut', 17, '2025-07-25 04:04:39', '2025-07-25 04:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_bakats`
--

CREATE TABLE `kategori_bakats` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_minats`
--

CREATE TABLE `kategori_minats` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_minats`
--

INSERT INTO `kategori_minats` (`id`, `nama_kategori`, `deskripsi`, `created_at`, `updated_at`) VALUES
(9, 'Realistic', 'Cenderung menyukai aktivitas fisik, pekerjaan dengan alat, mesin, atau berada di luar ruangan. Cocok untuk profesi seperti teknisi, mekanik, insinyur, pilot, petani, dan nelayan.', '2025-07-20 05:22:00', '2025-07-25 02:29:04'),
(10, 'Investigative', 'Menyukai pemecahan masalah, analisis, riset, dan eksplorasi ide-ide abstrak. Cocok untuk profesi ilmuwan, analis data, peneliti, dokter, apoteker, dan ahli matematika.', '2025-07-20 05:22:08', '2025-07-25 02:32:28'),
(11, 'Artistic', 'Menunjukkan kreativitas tinggi, ekspresi diri, dan ketertarikan pada seni, musik, dan desain. Cocok untuk seniman, arsitek, penulis, desainer grafis, dan aktor.', '2025-07-20 05:22:18', '2025-07-25 02:32:58'),
(12, 'Social', 'Memiliki ketertarikan membantu orang lain, berinteraksi, mengajar, atau memberikan pelayanan. Cocok untuk guru, perawat, psikolog, konselor, dan pekerja sosial.', '2025-07-20 05:22:30', '2025-07-25 02:33:20'),
(13, 'Enterprising', 'Senang memimpin, mengambil keputusan, bernegosiasi, dan mengejar tujuan bisnis. Cocok untuk wirausahawan, manajer, pengacara, pemimpin organisasi, dan marketing.', '2025-07-20 05:23:02', '2025-07-25 02:33:42'),
(14, 'Conventional', 'Menyukai pekerjaan administratif, terorganisir, sistematis, dan berorientasi pada detail. Cocok untuk akuntan, sekretaris, pustakawan, analis keuangan, dan administrasi perkantoran.', '2025-07-20 05:23:30', '2025-07-25 02:34:11'),
(16, 'numerik (Bakat)', 'Kemampuan memahami angka, operasi matematika, logika angka, dan analisis data. Cocok untuk bidang akuntansi, statistik, teknik, ekonomi, dan data science.', '2025-07-25 02:20:29', '2025-07-25 03:07:12'),
(17, 'Logika (Bakat)', 'Kemampuan berpikir kritis, sistematis, memecahkan masalah, dan penalaran deduktif atau induktif. Cocok untuk bidang ilmu komputer, teknik, riset, pengembangan sistem, dan matematika.', '2025-07-25 02:27:56', '2025-07-25 03:06:59'),
(18, 'Verbal (Bakat)', 'Kemampuan memahami kata-kata, tata bahasa, menulis, membaca, serta komunikasi lisan dan tulisan. Cocok untuk bidang hukum, jurnalistik, pengajaran bahasa, komunikasi, dan sastra.', '2025-07-25 02:28:17', '2025-07-25 03:06:44');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
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
(6, '2025_06_09_132524_create_permission_tables', 1),
(7, '2025_07_01_135800_create_schedules_table', 1),
(8, '2025_07_15_061538_add_status_to_schedules_table', 1),
(9, '2025_07_20_055500_add_column_to_table_user', 1),
(10, '2025_07_20_074408_create_kategori_minats_table', 1),
(11, '2025_07_20_074444_create_jurusans_table', 1),
(12, '2025_07_20_074512_create_soals_table', 1),
(13, '2025_07_20_074604_create_pilihan_jawabans_table', 1),
(14, '2025_07_20_074643_create_hasil_tes_table', 1),
(15, '2025_07_20_074656_create_skor_hasils_table', 1),
(16, '2025_07_23_112718_create_kategori_bakats_table', 2),
(17, '2025_07_23_114527_create_soal_bakats_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'web', '2025-07-20 03:02:58', '2025-07-20 03:02:58'),
(2, 'user-list', 'web', '2025-07-20 03:02:59', '2025-07-20 03:02:59'),
(3, 'user-create', 'web', '2025-07-20 03:02:59', '2025-07-20 03:02:59'),
(4, 'user-edit', 'web', '2025-07-20 03:02:59', '2025-07-20 03:02:59'),
(5, 'user-delete', 'web', '2025-07-20 03:02:59', '2025-07-20 03:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pilihan_jawabans`
--

CREATE TABLE `pilihan_jawabans` (
  `id` bigint UNSIGNED NOT NULL,
  `soal_id` bigint UNSIGNED NOT NULL,
  `teks_pilihan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pilihan_jawabans`
--

INSERT INTO `pilihan_jawabans` (`id`, `soal_id`, `teks_pilihan`, `nilai`, `created_at`, `updated_at`) VALUES
(1, 1, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju \r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-21 01:55:32', '2025-07-25 03:22:02'),
(2, 3, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-21 01:56:09', '2025-07-25 03:22:09'),
(3, 4, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:15:57', '2025-07-25 03:22:17'),
(4, 5, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:16:21', '2025-07-25 03:22:24'),
(5, 6, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:16:47', '2025-07-25 03:22:32'),
(6, 7, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:17:11', '2025-07-25 03:22:39'),
(7, 8, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:17:28', '2025-07-25 03:22:45'),
(8, 9, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:17:57', '2025-07-25 03:22:52'),
(9, 10, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:18:12', '2025-07-25 03:23:02'),
(10, 11, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:18:36', '2025-07-25 03:23:09'),
(11, 12, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:18:48', '2025-07-25 03:23:21'),
(12, 13, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:19:02', '2025-07-25 03:23:31'),
(13, 14, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:19:29', '2025-07-25 03:23:41'),
(14, 15, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:19:42', '2025-07-25 03:23:50'),
(15, 16, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:19:55', '2025-07-25 03:23:58'),
(16, 17, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:20:31', '2025-07-25 03:24:07'),
(17, 18, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:20:46', '2025-07-25 03:24:16'),
(18, 19, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:21:28', '2025-07-25 03:24:25'),
(19, 20, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:21:43', '2025-07-25 03:24:34'),
(20, 21, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:21:57', '2025-07-25 03:24:43'),
(21, 22, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:22:09', '2025-07-25 03:24:58'),
(22, 23, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:23:04', '2025-07-25 03:25:08'),
(23, 24, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:23:40', '2025-07-25 03:25:23'),
(24, 25, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:24:10', '2025-07-25 03:25:34'),
(25, 26, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:24:22', '2025-07-25 03:25:43'),
(26, 27, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:24:36', '2025-07-25 03:25:53'),
(27, 28, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:24:58', '2025-07-25 03:26:03'),
(28, 29, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:25:15', '2025-07-25 03:26:12'),
(29, 30, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:25:34', '2025-07-25 03:26:23'),
(30, 32, 'A. Sangat Tidak Setuju \r\nB. Tidak Setuju\r\nC. Netral \r\nD. Setuju \r\nE. Sangat Setuju', 5, '2025-07-22 05:25:44', '2025-07-25 03:26:42'),
(31, 33, 'A. Pasif\r\nB. Dinamis\r\nC. Penurut\r\nD. Reaktif', 20, '2025-07-25 03:29:50', '2025-07-25 03:32:42'),
(32, 34, 'A. Simbolik\r\nB. Komunikatif\r\nC. Pendiam\r\nD. Ekspresi', 20, '2025-07-25 03:40:42', '2025-07-25 03:40:42'),
(33, 35, 'A. Hiburan\r\nB. Musuh\r\nC. Teman\r\nD. Mainan', 20, '2025-07-25 03:41:40', '2025-07-25 03:41:40'),
(34, 36, 'A. Saya pergi ke sekolah naik sepeda kemarin.\r\nB. Saya naik ke sekolah kemarin sepeda.\r\nC. Saya sekolah ke kemarin naik sepeda.\r\nD. Kemarin sepeda naik saya sekolah.', 20, '2025-07-25 03:42:32', '2025-07-25 03:42:32'),
(35, 37, 'A. Semangat\r\nB. Pesimis\r\nC. Realistis\r\nD. Kritis', 20, '2025-07-25 03:43:23', '2025-07-25 03:43:23'),
(36, 38, 'A. Sampai\r\nB. Sampaikan\r\nC. Menyampai\r\nD. Penyampaian', 20, '2025-07-25 03:44:13', '2025-07-25 03:44:13'),
(37, 39, 'A. Dia menangis karena sedih.\r\nB. Tangannya dingin seperti es.\r\nC. Mereka datang terlambat.\r\nD. Rumahnya besar.', 20, '2025-07-25 03:44:43', '2025-07-25 03:44:43'),
(38, 40, 'A. 62\r\nB. 63\r\nC. 61\r\nD. 64', 20, '2025-07-25 03:45:10', '2025-07-25 03:45:10'),
(39, 41, 'A. 10\r\nB. 11\r\nC. 12\r\nD. 13', 20, '2025-07-25 03:46:06', '2025-07-25 03:46:06'),
(40, 42, 'A. 89\r\nB. 88\r\nC. 90\r\nD. 91', 20, '2025-07-25 03:46:37', '2025-07-25 03:46:37'),
(41, 43, 'A. 5\r\nB. 9\r\nC. 8\r\nD. 10', 20, '2025-07-25 03:47:08', '2025-07-25 03:47:08'),
(42, 44, 'A. 25\r\nB. 30\r\nC. 35\r\nD. 40', 20, '2025-07-25 03:47:40', '2025-07-25 03:47:40'),
(43, 45, 'A. 32\r\nB. 24\r\nC. 20\r\nD. 48', 20, '2025-07-25 03:48:53', '2025-07-25 03:48:53'),
(44, 46, 'A. 90°\r\nB. 270°\r\nC. 180°\r\nD. 360°', 20, '2025-07-25 03:52:08', '2025-07-25 03:52:08'),
(45, 47, 'A. Kamis\r\nB. Rabu\r\nC. Jumat\r\nD. Selasa', 20, '2025-07-25 03:52:46', '2025-07-25 03:52:46'),
(46, 48, 'A. 1\r\nB. 3\r\nC. 6\r\nD. 9', 20, '2025-07-25 03:53:18', '2025-07-25 03:53:18'),
(47, 49, 'A. K\r\nB. J\r\nC. L\r\nD. H', 20, '2025-07-25 03:53:44', '2025-07-25 03:53:44'),
(48, 50, 'A. 10\r\nB. 20\r\nC. 25\r\nD. 30', 20, '2025-07-25 03:54:30', '2025-07-25 03:54:30'),
(49, 51, 'A. Semua kucing bisa menggonggong.\r\nB. Jika hujan maka tanah basah.\r\nC. Manusia bisa terbang.\r\nD. Kuda makan ikan.', 20, '2025-07-25 03:55:34', '2025-07-25 03:55:34'),
(50, 52, 'A. Tidak bisa terbang\r\nB. Bisa berenang\r\nC. Bisa terbang\r\nD. Bukan burung', 20, '2025-07-25 03:57:13', '2025-07-25 03:57:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Siswa', 'web', '2025-07-20 03:02:59', '2025-07-20 03:02:59'),
(2, 'Admin', 'web', '2025-07-20 03:02:59', '2025-07-20 03:02:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `student_id` bigint UNSIGNED DEFAULT NULL,
  `schedule_date` date DEFAULT NULL,
  `schedule_time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('pending','disetujui','ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `user_id`, `student_id`, `schedule_date`, `schedule_time`, `description`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 2, '2025-07-21', '10:00', 'ingin bimbingan', '2025-07-21 01:48:14', '2025-07-21 01:48:36', 'disetujui'),
(2, 5, 2, '2025-07-22', '11:30', 'ingin konseling mengenai masalah dengan teman', '2025-07-21 01:53:19', '2025-07-21 01:53:19', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `skor_hasils`
--

CREATE TABLE `skor_hasils` (
  `id` bigint UNSIGNED NOT NULL,
  `hasil_tes_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `total_skor` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soals`
--

CREATE TABLE `soals` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `pertanyaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `soals`
--

INSERT INTO `soals` (`id`, `kategori_id`, `pertanyaan`, `created_at`, `updated_at`) VALUES
(1, 9, 'Saya suka bekerja dengan alat atau mesin.', '2025-07-20 05:36:26', '2025-07-21 01:27:19'),
(3, 9, 'Saya menikmati aktivitas di luar ruangan seperti bertani atau bertukang.', '2025-07-21 01:27:40', '2025-07-21 01:27:40'),
(4, 9, 'Saya senang membongkar dan memperbaiki sesuatu.', '2025-07-21 01:28:00', '2025-07-21 01:28:00'),
(5, 10, 'Saya suka menganalisis masalah secara mendalam.', '2025-07-21 01:28:22', '2025-07-21 01:28:22'),
(6, 10, 'Saya suka melakukan eksperimen atau penelitian.', '2025-07-21 01:28:39', '2025-07-21 01:28:39'),
(7, 10, 'Saya penasaran terhadap cara kerja suatu hal.', '2025-07-21 01:28:59', '2025-07-21 01:28:59'),
(8, 11, 'Saya suka menggambar atau menciptakan karya seni.', '2025-07-21 01:29:21', '2025-07-21 01:29:21'),
(9, 11, 'Saya menyukai kebebasan mengekspresikan diri dalam karya.', '2025-07-21 01:29:45', '2025-07-21 01:29:45'),
(10, 11, 'Saya senang menulis cerita atau puisi.', '2025-07-21 01:30:04', '2025-07-21 01:30:04'),
(11, 12, 'Saya suka membantu orang lain memecahkan masalah pribadi mereka.', '2025-07-21 01:30:51', '2025-07-21 01:30:51'),
(12, 12, 'Saya senang menjadi sukarelawan atau membantu kegiatan sosial.', '2025-07-21 01:31:30', '2025-07-21 01:31:30'),
(13, 12, 'Saya menikmati mengajar atau membimbing orang lain.', '2025-07-21 01:32:07', '2025-07-21 01:32:07'),
(14, 13, 'Saya suka memimpin proyek atau organisasi.', '2025-07-21 01:32:32', '2025-07-21 01:32:32'),
(15, 13, 'Saya percaya diri saat berbicara di depan umum.', '2025-07-21 01:33:30', '2025-07-21 01:33:30'),
(16, 13, 'Saya senang berdiskusi dan meyakinkan orang lain.', '2025-07-21 01:33:53', '2025-07-21 01:33:53'),
(17, 14, 'Saya suka menyusun data dan membuat laporan.', '2025-07-21 01:34:12', '2025-07-21 01:34:12'),
(18, 14, 'Saya merasa nyaman bekerja dengan angka dan sistem.', '2025-07-21 01:34:28', '2025-07-21 01:34:28'),
(19, 14, 'Saya suka mengatur dokumen dan informasi secara rapi.', '2025-07-21 01:36:01', '2025-07-21 01:36:01'),
(20, 9, 'Saya lebih suka bekerja dengan benda daripada orang.', '2025-07-21 01:36:22', '2025-07-21 01:36:22'),
(21, 10, 'Saya senang mencari tahu informasi di internet atau buku.', '2025-07-21 01:36:46', '2025-07-21 01:36:46'),
(22, 11, 'Saya merasa nyaman mengekspresikan diri secara kreatif.', '2025-07-21 01:37:07', '2025-07-21 01:37:07'),
(23, 11, 'Saya suka menghibur orang lain atau tampil di depan umum.', '2025-07-21 01:37:22', '2025-07-21 01:37:22'),
(24, 12, 'Saya suka menjadi pendengar yang baik bagi teman-teman saya.', '2025-07-21 01:37:40', '2025-07-21 01:37:40'),
(25, 13, 'Saya percaya diri mengorganisir sebuah event.', '2025-07-21 01:38:10', '2025-07-21 01:38:10'),
(26, 14, 'Saya suka mengatur jadwal atau sistem kerja secara rapi.', '2025-07-21 01:38:35', '2025-07-21 01:38:35'),
(27, 10, 'Saya suka bekerja di laboratorium atau tempat riset.', '2025-07-21 01:39:01', '2025-07-21 01:39:01'),
(28, 9, 'Saya senang menyelesaikan tantangan teknis atau fisik.', '2025-07-21 01:39:22', '2025-07-21 01:39:22'),
(29, 9, 'Saya lebih suka kegiatan praktis daripada teoretis.', '2025-07-21 01:39:41', '2025-07-21 01:39:41'),
(30, 14, 'Saya menikmati membuat struktur data, tabel, atau laporan keuangan.', '2025-07-21 01:40:06', '2025-07-21 01:40:06'),
(32, 14, 'Saya nyaman bekerja dalam sistem yang teratur dan stabil.', '2025-07-25 02:39:01', '2025-07-25 02:39:01'),
(33, 18, 'Sinonim dari kata “proaktif” adalah ? …', '2025-07-25 02:52:44', '2025-07-25 02:53:25'),
(34, 18, 'Antonim dari kata “ekspresif” adalah ?…', '2025-07-25 02:53:13', '2025-07-25 02:53:13'),
(35, 18, 'Kata yang tepat untuk melengkapi: \"Buku adalah ___ bagi pelajar.', '2025-07-25 02:53:47', '2025-07-25 02:53:47'),
(36, 18, 'Pilih kalimat yang paling benar secara tata bahasa ?', '2025-07-25 02:54:10', '2025-07-25 03:01:11'),
(37, 18, 'Lawan kata “optimis” adalah ?…', '2025-07-25 02:54:42', '2025-07-25 02:54:42'),
(38, 18, 'Kata dasar dari “menyampaikan” adalah ?…', '2025-07-25 03:01:42', '2025-07-25 03:01:42'),
(39, 18, 'Kalimat yang menggunakan kata kiasan ?', '2025-07-25 03:02:15', '2025-07-25 03:02:15'),
(40, 16, '25 + 37 = …', '2025-07-25 03:02:44', '2025-07-25 03:02:44'),
(41, 16, '144 ÷ 12 = …', '2025-07-25 03:03:01', '2025-07-25 03:03:01'),
(42, 16, 'Bilangan ganjil setelah 87 adalah …', '2025-07-25 03:03:22', '2025-07-25 03:03:22'),
(43, 16, 'Jika 5x = 45, maka nilai x adalah …', '2025-07-25 03:03:39', '2025-07-25 03:03:39'),
(44, 16, '20% dari 150 adalah …', '2025-07-25 03:03:57', '2025-07-25 03:03:57'),
(45, 16, 'Pola bilangan: 2, 4, 8, 16, ___, 64', '2025-07-25 03:04:19', '2025-07-25 03:04:19'),
(46, 17, 'Jumlah sudut segitiga adalah ?…', '2025-07-25 03:04:43', '2025-07-25 03:51:34'),
(47, 17, 'Jika hari ini Senin, maka 3 hari ke depan adalah …', '2025-07-25 03:04:59', '2025-07-25 03:04:59'),
(48, 17, 'Jika 3 anak membutuhkan 3 hari untuk menyelesaikan 3 lukisan, berapa hari 1 anak butuh untuk menyelesaikan 1 lukisan?', '2025-07-25 03:05:16', '2025-07-25 03:05:16'),
(49, 17, 'Pola huruf: A, C, E, G, I, ___', '2025-07-25 03:05:32', '2025-07-25 03:05:32'),
(50, 17, 'Jika 2 = 4, 3 = 9, 4 = 16, maka 5 = …', '2025-07-25 03:05:53', '2025-07-25 03:05:53'),
(51, 17, 'Kalimat logis:', '2025-07-25 03:06:11', '2025-07-25 03:06:11'),
(52, 17, 'Semua burung bisa terbang. Merpati adalah burung. Maka merpati…', '2025-07-25 03:56:13', '2025-07-25 03:56:13');

-- --------------------------------------------------------

--
-- Table structure for table `soal_bakats`
--

CREATE TABLE `soal_bakats` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `no_telp` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `nis`, `kelas`, `jurusan`, `remember_token`, `created_at`, `updated_at`, `no_telp`, `tanggal_lahir`, `jenis_kelamin`, `alamat`) VALUES
(1, 'Nurul Inayah S.,Psi', 'admin@gmail.com', NULL, '$2y$12$eaw0rSuFSh/KzQRAtv6/AObcm9ayFqC9/xFdYwkNrQGePoKW6ZC/m', '12345678', NULL, NULL, NULL, '2025-07-20 03:03:00', '2025-07-21 01:49:54', NULL, NULL, NULL, NULL),
(2, 'Siswa Sisil', 'siswa@gmail.com', NULL, '$2y$12$ym0c7uhH7F1i2SUTWeZoIu7fCmk5PM9LbZ9z0gxFR/pzFVVpoW7A6', 'SIS001', '12 IPS 1', 'IPS', NULL, '2025-07-20 03:03:02', '2025-07-20 03:03:02', '098765', '2007-09-08', 'Perempuan', 'ciparay'),
(4, 'Mela Nurmanalah S.,Sos', 'mela@gmail.com', NULL, '$2y$12$51qKxvEpF71havyq9A.Bqeadu4pfkHcZG85G4aC7TxybUCS7zYK/q', '23456789', NULL, NULL, NULL, '2025-07-21 01:51:13', '2025-07-21 01:51:13', NULL, NULL, NULL, NULL),
(5, 'Syaiful Bachri Chaidier S.,Psi', 'syailful@gmail.com', NULL, '$2y$12$br8Va4vsMm9S6smMtHsVIu3ED96.s05.amqbd2lbjC.qB37zBuVCO', '34567890', NULL, NULL, NULL, '2025-07-21 01:52:30', '2025-07-21 01:52:30', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hasil_tes`
--
ALTER TABLE `hasil_tes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_bakats`
--
ALTER TABLE `kategori_bakats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_minats`
--
ALTER TABLE `kategori_minats`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pilihan_jawabans`
--
ALTER TABLE `pilihan_jawabans`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skor_hasils`
--
ALTER TABLE `skor_hasils`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soals`
--
ALTER TABLE `soals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal_bakats`
--
ALTER TABLE `soal_bakats`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hasil_tes`
--
ALTER TABLE `hasil_tes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori_bakats`
--
ALTER TABLE `kategori_bakats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_minats`
--
ALTER TABLE `kategori_minats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pilihan_jawabans`
--
ALTER TABLE `pilihan_jawabans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `skor_hasils`
--
ALTER TABLE `skor_hasils`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soals`
--
ALTER TABLE `soals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `soal_bakats`
--
ALTER TABLE `soal_bakats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
