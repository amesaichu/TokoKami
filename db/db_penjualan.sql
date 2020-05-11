-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Bulan Mei 2020 pada 07.49
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga_beli` varchar(100) DEFAULT NULL,
  `harga_jual` varchar(100) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `harga_beli`, `harga_jual`, `stok`, `satuan`, `image`) VALUES
(5, '18135651', 'Indomie Goreng', '2000', '2500', 10, 'pcs', 'https://img2.ralali.id/mediaflex/500/assets/img/Libraries/306198_INDOMIE-Goreng-85GR_Lsep64Gttfrl2Pfq_1570002999.png'),
(6, '49444364', 'Luwak White Coffee', '15000', '16000', 14, 'renceng', 'https://ecs7.tokopedia.net/img/cache/700/product-1/2019/11/1/600165398/600165398_979dc938-5d6a-4168-a42b-600761c242d6_1078_1078.jpg'),
(7, '22878791', 'Beras Cap Paus', '70000', '73000', 5, 'kg', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/medium//94/MTA-1442587/ikan-paus_ikan-paus-beras-super--2-5-kg-_full02.jpg'),
(8, '82023518', 'Teh Pucuk Harum 350ml', '56000', '60000', 10, 'dus', 'https://id-live-02.slatic.net/p/7b90df9d085c5675379adcd96f305b27.jpg'),
(9, '42130208', 'Bimoli 2lt', '25000', '27000', 8, 'pcs', 'https://cf.shopee.co.id/file/0f56c3373906dfb4b7c12cbf24730b73'),
(10, '71075918', 'Gulaku', '15000', '16000', 10, 'kg', 'https://cdn.monotaro.id/media/catalog/product/cache/6/image/b5fa40980320eb406ba395dece54e4a8/1/x/1xS000003069-11.jpg'),
(11, '18827031', 'Tepung Beras Rose Brand', '130000', '132000', 10, 'dus', 'https://img1.ralali.id/mediaflex/500/assets/img/Libraries/283709-ROSEBRAND-Tepung-Beras-500-Gram-1-Dus_D61g434dDzaoDG5m_1562065970.jpg\r\n'),
(12, '33703512', 'Susu Dancow Coklat 200g', '30000', '31000', 15, 'pcs', 'https://cs1.alfacart.com/product/1/194645-2.jpg'),
(13, '64997480', 'Kecap Manis Bango ', '19500', '20000', 15, 'pcs', 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/medium//97/MTA-5080892/bango_bango_kecap_manis_-275_ml-_kemasan_botol-_full02_jzlieadf.jpg'),
(14, '89886740', 'Santan Kara', '3500', '4000', 12, 'pcs', 'https://s1.bukalapak.com/img/1636557611/w-1000/Sun_Kara_65_Ml_Santan_Kelapa_Siap_Pakai_Santan_Kara.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_toko`
--

CREATE TABLE `data_toko` (
  `id` int(11) NOT NULL,
  `nama_toko` varchar(80) DEFAULT NULL,
  `nama_pemilik` varchar(80) DEFAULT NULL,
  `no_telepon` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_toko`
--

INSERT INTO `data_toko` (`id`, `nama_toko`, `nama_pemilik`, `no_telepon`, `alamat`) VALUES
(1, 'Toko Kita', 'Meldamas', '081252761543', 'Malang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `no_penjualan` varchar(20) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga_barang` varchar(20) DEFAULT NULL,
  `jumlah_barang` int(11) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `sub_total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`no_penjualan`, `nama_barang`, `harga_barang`, `jumlah_barang`, `satuan`, `sub_total`) VALUES
('PJ1584356033', 'Telur', '12500', 1, 'kg', '12500'),
('PJ1584359090', 'Telur', '12500', 9, 'kg', '112500'),
('PJ1584359090', 'Gula Pasir', '8000', 5, 'kg', '40000'),
('PJ1584359090', 'Kopi Kapal Api', '1750', 5, 'sachet', '8750'),
('PJ1584359556', 'Kopi Kapal Api', '1750', 1, 'sachet', '1750'),
('PJ1584359556', 'Gula Pasir', '8000', 1, 'kg', '8000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `id` int(11) NOT NULL,
  `kode_kasir` varchar(10) DEFAULT NULL,
  `nama_kasir` varchar(100) DEFAULT NULL,
  `username_kasir` varchar(20) DEFAULT NULL,
  `password_kasir` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`id`, `kode_kasir`, `nama_kasir`, `username_kasir`, `password_kasir`) VALUES
(2, 'KASIR - 58', 'Almaas', 'almaas_rh', 'almaas123'),
(3, 'KSR-60', 'Dani', 'Dani', 'dani123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `kode_pengguna` varchar(10) DEFAULT NULL,
  `nama_pengguna` varchar(100) DEFAULT NULL,
  `username_pengguna` varchar(20) DEFAULT NULL,
  `password_pengguna` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `kode_pengguna`, `nama_pengguna`, `username_pengguna`, `password_pengguna`) VALUES
(1, 'PGN17', 'Amel', 'Amel_sch', 'amel123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `no_penjualan` varchar(20) DEFAULT NULL,
  `nama_kasir` varchar(100) DEFAULT NULL,
  `tgl_penjualan` varchar(20) DEFAULT NULL,
  `jam_penjualan` varchar(20) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_toko`
--
ALTER TABLE `data_toko`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `data_toko`
--
ALTER TABLE `data_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kasir`
--
ALTER TABLE `kasir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
