-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 29 Mar 2022 pada 16.24
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','resepsionis') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'resepsionis',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `nama`, `username`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'admin', '$2y$10$dYyG3cVJAT6W92HSONrIwe90e4IKPjGV/rpQluozk.H6PdCLieJfK', NULL, '2022-03-29 10:23:50', '2022-03-29 10:23:50'),
(2, 'Resepsionis', 'resepsionis', 'resepsionis', '$2y$10$n56ETaENxw.GUY9l.R.6Culp6CgVy.EfYHK4pWYpJAtOKy5IzAC.W', NULL, '2022-03-29 10:23:50', '2022-03-29 10:23:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_hotels`
--

CREATE TABLE `fasilitas_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_fasilitas_hotel` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_hotels`
--

INSERT INTO `fasilitas_hotels` (`id`, `nama_fasilitas_hotel`, `foto_fasilitas_hotel`, `deskripsi_fasilitas_hotel`) VALUES
(1, 'Kolam Renang', '988_1648551195.jpg', 'Kolam renang buat renang lah hehe'),
(2, 'Restoran', '679_1648551287.jpg', 'Restoran anu tempat makan'),
(3, 'Parkiran', '734_1648551321.jpg', 'Jelas buat tempat parkir'),
(4, 'WiFi', '908_1648554226.jpg', 'buat internetan lah, emang buat apa lagi?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_kamars`
--

CREATE TABLE `fasilitas_kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_kamars`
--

INSERT INTO `fasilitas_kamars` (`id`, `kamar_id`, `nama_fasilitas_kamar`) VALUES
(1, 1, 'TV'),
(2, 1, 'AC'),
(3, 2, 'TV '),
(4, 2, 'AC'),
(5, 1, 'WiFi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamars`
--

CREATE TABLE `kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_kamar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jum_kamar` int(11) NOT NULL,
  `harga_kamar` int(11) DEFAULT NULL,
  `deskripsi_kamar` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kamars`
--

INSERT INTO `kamars` (`id`, `nama_kamar`, `foto_kamar`, `jum_kamar`, `harga_kamar`, `deskripsi_kamar`) VALUES
(1, 'repellat', '243_1648552960.jpg', 8, 587431, 'Voluptatum qui et ut quo sed. Vel quia itaque tenetur voluptatem corrupti odit. Nobis illo nisi quisquam animi animi molestiae. Cumque numquam est aperiam qui labore.'),
(2, 'itaque', '807_1648552974.jpg', 5, 342423, 'Delectus quia ex at aliquam. Inventore ut dolor quo numquam placeat qui. Provident repellat enim nemo.'),
(3, 'cupiditate', '957_1648553001.jpg', 7, 649624, 'Molestias accusantium odio aliquid. Dolor illo voluptas dicta. Placeat eligendi commodi vero quo reiciendis maxime.'),
(4, 'harum', '442_1648553303.jpg', 5, 309436, 'Maxime voluptate doloribus ipsum dolorem iste porro. Velit est aut reprehenderit sequi repellendus. At dolores ut unde similique nostrum. Nesciunt est assumenda mollitia quam minima.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_01_29_085859_create_admins_table', 1),
(3, '2022_02_02_141153_create_kamars_table', 1),
(4, '2022_02_05_020928_create_fasilitas_kamars_table', 1),
(5, '2022_02_07_101413_create_fasilitas_hotels_table', 1),
(6, '2022_02_07_134645_create_pemesanans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanans`
--

CREATE TABLE `pemesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tgl_checkin` date NOT NULL,
  `tgl_checkout` date NOT NULL,
  `jum_kamar_dipesan` int(11) NOT NULL,
  `nama_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tamu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pesan','checkin','checkout','batal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pesan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesanans`
--

INSERT INTO `pemesanans` (`id`, `kamar_id`, `tgl_checkin`, `tgl_checkout`, `jum_kamar_dipesan`, `nama_pemesan`, `email_pemesan`, `no_hp`, `nama_tamu`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '2022-03-30', '2022-04-02', 1, 'Sadina Permata', 'najwa.budiman@gmail.co.id', '(+62) 898 1164 7215', 'Indra Situmorang S.Kom', 'pesan', '2022-03-26 17:00:00', '2022-03-26 17:00:00'),
(2, 2, '2022-03-31', '2022-04-01', 3, 'Maimunah Aryani S.Pt', 'sabar.palastri@yahoo.com', '0334 7682 029', 'Jaga Ilyas Adriansyah M.Kom.', 'pesan', '2022-03-28 17:00:00', '2022-03-28 17:00:00'),
(3, 1, '2022-04-04', '2022-04-07', 2, 'Liman Marpaung', 'mutia83@yahoo.co.id', '0802 6767 341', 'Raharja Kurniawan', 'pesan', '2022-04-02 17:00:00', '2022-04-02 17:00:00'),
(4, 2, '2022-03-28', '2022-03-31', 1, 'Sabri Thamrin', 'bahuraksa67@yahoo.co.id', '(+62) 403 4530 051', 'Bagas Nainggolan', 'pesan', '2022-03-24 17:00:00', '2022-03-24 17:00:00'),
(5, 1, '2022-03-26', '2022-03-27', 1, 'Soleh Winarno S.Ked', 'aryani.karna@yahoo.com', '0327 8900 950', 'Yance Sudiati S.Pd', 'pesan', '2022-03-24 17:00:00', '2022-03-24 17:00:00'),
(6, 2, '2022-03-27', '2022-03-28', 3, 'Ade Hutapea', 'genta24@gmail.co.id', '(+62) 386 4352 5829', 'Genta Handayani', 'pesan', '2022-03-24 17:00:00', '2022-03-24 17:00:00'),
(7, 2, '2022-03-24', '2022-03-27', 2, 'Juli Ophelia Suartini M.Farm', 'silvia21@yahoo.co.id', '(+62) 744 0392 931', 'Aurora Wastuti', 'pesan', '2022-03-20 17:00:00', '2022-03-20 17:00:00'),
(8, 2, '2022-04-05', '2022-04-07', 3, 'Zelaya Kusmawati S.Psi', 'sidiq64@yahoo.com', '0516 8689 658', 'Padmi Hartati', 'pesan', '2022-04-03 17:00:00', '2022-04-03 17:00:00'),
(9, 2, '2022-04-05', '2022-04-06', 3, 'Saka Narpati', 'kenes29@yahoo.co.id', '0703 0225 093', 'Johan Nababan S.I.Kom', 'pesan', '2022-04-01 17:00:00', '2022-04-01 17:00:00'),
(10, 2, '2022-04-01', '2022-04-04', 3, 'Wardaya Jarwi Prasetya', 'dian46@yahoo.com', '0608 6609 072', 'Dian Genta Mayasari M.M.', 'pesan', '2022-03-30 17:00:00', '2022-03-30 17:00:00'),
(11, 3, '2022-04-04', '2022-04-06', 2, 'Hendra Sitorus', 'permadi.anita@yahoo.co.id', '(+62) 340 9464 9824', 'Tantri Winarsih', 'pesan', '2022-04-01 17:00:00', '2022-04-01 17:00:00'),
(12, 1, '2022-04-01', '2022-04-04', 3, 'Sari Yuliana Wulandari', 'daliono.mardhiyah@gmail.com', '(+62) 437 3604 8727', 'Daniswara Nugroho S.Pd', 'pesan', '2022-03-28 17:00:00', '2022-03-28 17:00:00'),
(13, 2, '2022-04-02', '2022-04-03', 1, 'Cawisadi Darimin Sihombing S.Gz', 'agnes73@gmail.co.id', '0811 924 062', 'Gaiman Ramadan', 'pesan', '2022-03-29 17:00:00', '2022-03-29 17:00:00'),
(14, 1, '2022-04-04', '2022-04-06', 2, 'Agnes Sadina Farida S.Ked', 'pudjiastuti.umi@yahoo.com', '(+62) 22 2492 405', 'Elisa Ulva Lailasari M.TI.', 'pesan', '2022-04-02 17:00:00', '2022-04-02 17:00:00'),
(15, 1, '2022-04-01', '2022-04-03', 2, 'Syahrini Nasyidah', 'saefullah.cengkir@gmail.co.id', '0405 4117 689', 'Ajimat Situmorang', 'pesan', '2022-03-28 17:00:00', '2022-03-28 17:00:00'),
(16, 3, '2022-03-24', '2022-03-26', 1, 'Heru Hartana Natsir M.M.', 'fharyanti@gmail.co.id', '(+62) 640 7768 932', 'Mulyanto Irwan Permadi M.Farm', 'pesan', '2022-03-21 17:00:00', '2022-03-21 17:00:00'),
(17, 2, '2022-03-23', '2022-03-25', 3, 'Nurul Alika Hariyah', 'daru18@gmail.co.id', '0808 1213 713', 'Carla Vanya Agustina', 'pesan', '2022-03-19 17:00:00', '2022-03-19 17:00:00'),
(18, 2, '2022-04-01', '2022-04-02', 2, 'Balidin Megantara', 'widya.putra@gmail.com', '0656 7577 7907', 'Hendri Hutasoit', 'pesan', '2022-03-28 17:00:00', '2022-03-28 17:00:00'),
(19, 1, '2022-03-25', '2022-03-28', 3, 'Agnes Permata', 'dian.situmorang@gmail.com', '0777 4414 0687', 'Uchita Padma Widiastuti S.H.', 'batal', '2022-03-23 17:00:00', '2022-03-29 11:36:54'),
(20, 3, '2022-03-24', '2022-03-25', 1, 'Laila Farida', 'hani57@yahoo.com', '(+62) 882 4739 7642', 'Amalia Gawati Halimah M.Ak', 'pesan', '2022-03-21 17:00:00', '2022-03-21 17:00:00'),
(21, 3, '2022-03-30', '2022-03-31', 2, 'alan', 'maulanakayyis354@gmail.com', '08889482795', 'rapid', 'pesan', '2022-03-29 10:33:35', '2022-03-29 10:33:35'),
(22, 4, '2022-03-30', '2022-03-31', 2, 'rapid', 'rapidly@gmail.com', '12345678912', 'malik', 'pesan', '2022-03-29 10:36:14', '2022-03-29 10:36:14'),
(23, 1, '2022-03-30', '2022-03-31', 2, 'Diva', 'admin@example.com', '08889482795', 'Maulana Kayyis', 'checkin', '2022-03-29 11:33:52', '2022-03-29 11:37:34'),
(24, 1, '2022-03-30', '2022-03-31', 2, 'alan', 'maulanakayyis354@gmail.com', '08889482795', 'rapid', 'pesan', '2022-03-29 14:38:57', '2022-03-29 14:38:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indeks untuk tabel `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fasilitas_kamars_kamar_id_foreign` (`kamar_id`);

--
-- Indeks untuk tabel `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanans_kamar_id_foreign` (`kamar_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kamars`
--
ALTER TABLE `kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD CONSTRAINT `fasilitas_kamars_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD CONSTRAINT `pemesanans_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
