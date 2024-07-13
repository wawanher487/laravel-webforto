-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2024 pada 11.31
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_portofolio`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `halaman`
--

CREATE TABLE `halaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(4, 'Wawan Hermawan', 'saya adalah mahasiswa institur teknologi garut yang tertarik dengan berbagai teknologi terutama web development. sehingga saya terus belajar tentang berbagai hal tentang programming', '2024-04-05 21:17:02', '2024-04-09 05:01:54'),
(5, 'interest', '<p>Saya memiliki minat yang mendalam dalam berbagai bidang teknologi dan hiburan digital. Ketertarikan saya terhadap web development menunjukkan keinginan saya untuk memahami serta menciptakan teknologi web yang inovatif dan bermanfaat bagi pengguna. Seiring dengan itu, minat saya dalam bidang komputer menandakan ketertarikan saya terhadap bagaimana teknologi komputer bekerja, mulai dari perangkat keras hingga perangkat lunaknya. Kesenangan saya dalam menonton berbagai jenis konten hiburan, seperti film, serial TV, dan dokumenter, menunjukkan apresiasi saya terhadap cerita serta visualisasi kreatif. Di samping itu, minat saya dalam gaming mencerminkan keinginan saya untuk mengeksplorasi tantangan, strategi, dan interaksi sosial yang ditawarkan oleh dunia permainan. Dengan berbagai minat ini, saya percaya bahwa saya memiliki kesempatan untuk terus mengembangkan keterampilan dan pengetahuan saya dalam ranah teknologi serta hiburan digital.<br></p>', '2024-04-09 03:00:15', '2024-04-09 05:05:42'),
(6, 'awards', '<ul><li>sertifikat dicoding laravel</li><li>Pencapaian nilai akademis yang konsisten di atas rata-rata.</li><li>Aktif terlibat dalam berbagai kegiatan di luar kelas, seperti organisasi mahasiswa, proyek-proyek riset, atau kegiatan sosial.</li><li>Memperoleh sertifikasi atau penghargaan yang relevan dengan minat dan bidang saya, seperti sertifikasi dalam web development.</li><li>Pencapaian tertentu dalam kompetisi atau proyek yang saya ikuti.</li><li>Dedikasi, kerja keras, dan kemampuan untuk meraih tujuan yang saya tetapkan.</li></ul>', '2024-04-09 03:00:29', '2024-04-09 05:08:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `metadata`
--

CREATE TABLE `metadata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `metadata`
--

INSERT INTO `metadata` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, '_language', 'laravel, php, html5, css3, bootstrap, javascript, mysql', '2024-04-08 02:38:58', '2024-04-11 03:43:09'),
(2, '_workflow', '<ul><li>github</li><li>gitpod</li></ul>', '2024-04-08 02:38:58', '2024-04-08 03:09:22'),
(3, '_foto', '240409122402.jpg', '2024-04-09 02:29:13', '2024-04-09 05:24:02'),
(4, '_email', 'wawanhermawan2402@gmail.com', '2024-04-09 02:29:13', '2024-04-09 05:24:02'),
(5, '_kota', 'Bandung', '2024-04-09 02:44:07', '2024-04-09 02:44:07'),
(6, '_provinsi', 'Jawa Barat', '2024-04-09 02:44:07', '2024-04-09 02:44:07'),
(7, '_emailnohp', '09808204830', '2024-04-09 02:44:07', '2024-04-09 02:44:07'),
(8, '_facebook', 'Wawan Hermawan', '2024-04-09 02:44:07', '2024-04-09 05:24:02'),
(9, '_twitter', 'Wawan Hermawan', '2024-04-09 02:44:07', '2024-04-09 05:24:02'),
(10, '_linkedin', 'https://www.linkedin.com/in/wawan-hermawan-2983962b3/', '2024-04-09 02:44:07', '2024-04-09 05:24:35'),
(11, '_github', 'Wawan Hermawan', '2024-04-09 02:44:07', '2024-04-09 05:24:02'),
(12, '_nohp', '081945085681', '2024-04-09 02:44:42', '2024-04-09 05:24:02'),
(13, '_halaman_about', '4', '2024-04-09 03:06:06', '2024-04-09 03:06:06'),
(14, '_halaman_interest', '5', '2024-04-09 03:12:23', '2024-04-09 03:12:23'),
(15, '_halaman_award', '6', '2024-04-09 03:12:23', '2024-04-09 03:12:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2024_03_31_060308_table_users_add_column_google_id', 2),
(3, '2024_04_06_021311_user_add_column_avatar', 3),
(4, '2024_04_06_023238_create_halamen_table', 4),
(5, '2024_04_07_013328_create_riwayats_table', 5),
(6, '2024_04_08_090039_create_metadata_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tipe` enum('experience','education') NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayat`
--

INSERT INTO `riwayat` (`id`, `judul`, `tipe`, `tgl_mulai`, `tgl_akhir`, `info1`, `info2`, `info3`, `isi`, `created_at`, `updated_at`) VALUES
(3, 'Asisten Dosen Jaringan Komputer', 'experience', '2023-09-15', '2024-01-31', 'Institut Teknologi Garut', NULL, NULL, 'Sebagai seorang Asisten Dosen Jaringan Komputer, peran saya berkisar pada membantu dosen dalam penyediaan pendidikan yang efektif dan berkualitas kepada mahasiswa. Tugas saya mungkin meliputi berbagai aktivitas, seperti membantu dalam persiapan materi kuliah, mengajar kelompok kecil atau sesi tutorial, mengawasi dan menilai tugas-tugas mahasiswa, serta memberikan bimbingan kepada mahasiswa dalam memahami konsep-konsep yang diajarkan. Selain itu, saya mungkin juga bertanggung jawab dalam menjalankan laboratorium komputer, membantu mahasiswa dalam memecahkan masalah teknis, dan memastikan bahwa lingkungan belajar sesuai dengan standar keamanan dan kesehatan. Sebagai Asisten Dosen, saya memiliki kesempatan untuk mendukung pengembangan akademik mahasiswa, berkontribusi dalam penyelenggaraan program pendidikan, serta mengasah keterampilan komunikasi dan kepemimpinan saya dalam konteks pendidikan tinggi.', '2024-04-09 04:23:30', '2024-04-09 05:11:49'),
(5, 'Institut Teknologi Garut', 'education', '2021-09-12', NULL, 'Ilmu Komputer', 'Teknik Informatika', '3,89', NULL, '2024-04-09 05:16:37', '2024-04-09 05:16:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` text NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`, `avatar`) VALUES
(1, 'Wawan Hermawan', 'wawanhermawan2402@gmail.com', NULL, NULL, NULL, '2024-03-30 23:58:34', '2024-04-05 19:29:46', '107141702180453758276', '107141702180453758276.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
