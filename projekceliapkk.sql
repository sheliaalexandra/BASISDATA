-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2025 pada 04.30
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekceliapkk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dbpenjualan`
--

CREATE TABLE `dbpenjualan` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status` enum('pending','proses','selesai','dibatalkan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `idpenjualan` int(11) NOT NULL,
  `idproduk` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbcart`
--

CREATE TABLE `tbcart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbcart_item`
--

CREATE TABLE `tbcart_item` (
  `id` int(11) NOT NULL,
  `id_cart` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbproduk`
--

CREATE TABLE `tbproduk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` text NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbproduk`
--

INSERT INTO `tbproduk` (`id`, `nama`, `harga`, `deskripsi`, `foto`, `kategori`) VALUES
(1, 'puding coklat', 5000, 'enak banget loh', 'pudingcoklat.jpg', 'makanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` enum('costumer','admin','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`id`, `username`, `password`, `role`) VALUES
(1, 'shelia', '$2y$10$/JGWwAKSjSkaVEpOU0ufCegWIfX3wzN18ss7Uz4MspjPBrwWbhYsG', 'costumer'),
(2, 'celi', '$2y$10$Sy12/QuIPNhOceDoIqvWzuMtkEEnCZhcrQM.PW49kuESQz4xY.6Dm', 'admin'),
(3, 'ceyi', '$2y$10$Vc.cxaVMEr9uCB6q4sfjf.5aMZkHoDgJOoqx84AIz5D0CrIUlOJe2', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dbpenjualan`
--
ALTER TABLE `dbpenjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD KEY `idpenjualan` (`idpenjualan`),
  ADD KEY `idproduk` (`idproduk`);

--
-- Indeks untuk tabel `tbcart`
--
ALTER TABLE `tbcart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbcart_item`
--
ALTER TABLE `tbcart_item`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbproduk`
--
ALTER TABLE `tbproduk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbcart`
--
ALTER TABLE `tbcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbcart_item`
--
ALTER TABLE `tbcart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
