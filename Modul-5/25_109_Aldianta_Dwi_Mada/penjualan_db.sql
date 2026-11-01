-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Nov 2026 pada 22.55
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `harga`, `stok`, `supplier_id`) VALUES
(1, 'B001', 'Laptop ASUS', 7500000, 15, 1),
(2, 'B002', 'Mouse Wireless', 150000, 50, 2),
(3, 'B003', 'Keyboard Mechanical', 350000, 30, 3),
(4, 'B004', 'Monitor 24 Inch', 1800000, 10, 4),
(5, 'B005', 'Printer Epson', 1200000, 8, 5),
(6, 'B006', 'Flashdisk 32GB', 60000, 100, 6),
(7, 'B007', 'Harddisk Eksternal 1TB', 850000, 20, 7),
(8, 'B008', 'Headset Gaming', 250000, 25, 8),
(9, 'B009', 'Kabel HDMI 1.5m', 45000, 60, 9),
(10, 'B010', 'Flashdisk 64GB', 110000, 40, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `jenis_kelamin`, `telp`, `alamat`) VALUES
('P001', 'Ahmad Fauzi', 'L', '081234567890', 'Surabaya'),
('P002', 'Siti Aminah', 'P', '081345678901', 'Bangkalan'),
('P003', 'Budi Santoso', 'L', '081456789012', 'Malang'),
('P004', 'Dewi Lestari', 'P', '081567890123', 'Sidoarjo'),
('P005', 'Eko Prasetyo', 'L', '081678901234', 'Gresik'),
('P006', 'Fitri Handayani', 'P', '081789012345', 'Tuban'),
('P007', 'Gunawan Wibisono', 'L', '081890123456', 'Lamongan'),
('P008', 'Hesti Rahmawati', 'P', '081901234567', 'Mojokerto'),
('P009', 'Irfan Hakim', 'L', '081012345678', 'Jombang'),
('P010', 'Joko Widodo', 'L', '081123456789', 'Kediri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `waktu_bayar` datetime NOT NULL,
  `total` int(11) NOT NULL,
  `metode` enum('TUNAI','TRANSFER','EDC') NOT NULL,
  `transaksi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `waktu_bayar`, `total`, `metode`, `transaksi_id`) VALUES
(1, '2026-06-01 10:30:00', 7650000, 'TRANSFER', 1),
(2, '2026-06-02 11:00:00', 350000, 'TUNAI', 2),
(3, '2026-06-03 12:15:00', 1800000, 'EDC', 3),
(4, '2026-06-04 13:20:00', 1200000, 'TRANSFER', 4),
(5, '2026-06-05 14:00:00', 60000, 'TUNAI', 5),
(6, '2026-06-06 15:10:00', 850000, 'EDC', 6),
(7, '2026-06-07 09:45:00', 250000, 'TUNAI', 7),
(8, '2026-06-08 10:50:00', 45000, 'TUNAI', 8),
(9, '2026-06-09 16:00:00', 110000, 'TRANSFER', 9),
(10, '2026-06-10 11:30:00', 150000, 'EDC', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `nama`, `telp`, `alamat`) VALUES
(1, 'PT. Maju Bersama', '08123456', 'Surabaya'),
(2, 'PT. Senang Sekali', '081515563', 'Bangkalan'),
(3, 'PT. Segar Segar', '0845454663', 'Surabaya'),
(4, 'CV. Sumber Makmur', '0811122233', 'Malang'),
(5, 'UD. Berkah Jaya', '0822334455', 'Sidoarjo'),
(6, 'PT. Global Elektronik', '0833445566', 'Jakarta'),
(7, 'CV. Karya Mandiri', '0844556677', 'Bandung'),
(8, 'PT. Mitra Abadi', '0855667788', 'Semarang'),
(9, 'UD. Pangan Utama', '0866778899', 'Yogyakarta'),
(10, 'PT. Sukses Selalu', '0877889900', 'Bali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `waktu_transaksi` date NOT NULL,
  `keterangan` text DEFAULT NULL,
  `total` int(11) NOT NULL,
  `pelanggan_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `waktu_transaksi`, `keterangan`, `total`, `pelanggan_id`) VALUES
(1, '2026-06-01', 'Lunas', 7650000, 'P001'),
(2, '2026-06-02', 'Lunas', 350000, 'P002'),
(3, '2026-06-03', 'Lunas', 1800000, 'P003'),
(4, '2026-06-04', 'Lunas', 1200000, 'P004'),
(5, '2026-06-05', 'Lunas', 60000, 'P005'),
(6, '2026-06-06', 'Lunas', 850000, 'P006'),
(7, '2026-06-07', 'Lunas', 250000, 'P007'),
(8, '2026-06-08', 'Lunas', 45000, 'P008'),
(9, '2026-06-09', 'Lunas', 110000, 'P009'),
(10, '2026-06-10', 'Lunas', 150000, 'P010');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `transaksi_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`transaksi_id`, `barang_id`, `harga`, `qty`) VALUES
(1, 1, 7500000, 1),
(1, 2, 150000, 1),
(2, 3, 350000, 1),
(3, 4, 1800000, 1),
(4, 5, 1200000, 1),
(5, 6, 60000, 1),
(6, 7, 850000, 1),
(7, 8, 250000, 1),
(8, 9, 45000, 1),
(9, 10, 110000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `level` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `hp`, `level`) VALUES
(1, 'admin1', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Surabaya', '081111111111', 1),
(2, 'kasir1', 'c7911af3adbd12a035b189dfe8486753', 'Kasir Satu', 'Bangkalan', '082222222222', 2),
(3, 'kasir2', 'c7911af3adbd12a035b189dfe8486753', 'Kasir Dua', 'Malang', '083333333333', 2),
(4, 'owner', '0d107d09f5bee3065c32b903e08282f3', 'Pemilik Toko', 'Jakarta', '084444444444', 1),
(5, 'gudang1', '827ccb0eea8a706c4c34a16891f84e7b', 'Staf Gudang 1', 'Sidoarjo', '085555555555', 3),
(6, 'gudang2', '827ccb0eea8a706c4c34a16891f84e7b', 'Staf Gudang 2', 'Gresik', '086666666666', 3),
(7, 'operator', '827ccb0eea8a706c4c34a16891f84e7b', 'Operator Web', 'Tuban', '087777777777', 2),
(8, 'keuangan', '827ccb0eea8a706c4c34a16891f84e7b', 'Bagian Keuangan', 'Lamongan', '088888888888', 2),
(9, 'staff3', '827ccb0eea8a706c4c34a16891f84e7b', 'Staff Umum', 'Mojokerto', '089999999999', 3),
(10, 'super', 'b59c67bf196a4758191e42f76670ceba', 'Super Admin', 'Surabaya', '081000000000', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id` (`transaksi_id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`transaksi_id`,`barang_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
