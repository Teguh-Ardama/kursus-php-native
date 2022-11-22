-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 07:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kursus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `UserName`, `Password`, `updationDate`, `Image`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-05-22 01:51:40', 'user.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`, `id`) VALUES
(1, 'ME', 'gome@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`, `id`) VALUES
(1, 'Kampus III/5, Jl. Kenari I, RT.4/RW.5, Kenari, Kec. Senen, Kota Jakarta Pusat, Daerah Khusus Ibukota Jakarta 10430', 'ask@lspgunadarma.com', '02131930220', 1);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id_driver` int(11) NOT NULL,
  `nama_driver` varchar(100) NOT NULL,
  `telp_driver` varchar(20) NOT NULL,
  `alamat_driver` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id_driver`, `nama_driver`, `telp_driver`, `alamat_driver`) VALUES
(2, 'Udin Sedunia', '081233456789', 'Bekasi'),
(3, 'Ardama', '0812872327385', 'Regensi 3'),
(4, 'Satria', '0812684658', 'Bekasi Jauh'),
(5, 'Tanuki', '01823324', 'asdnjasd'),
(6, 'Suryajana', '023423849', 'asdmkjanksd');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `npm` int(8) NOT NULL,
  `kelas` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_user`, `nama_user`, `email`, `telp`, `alamat`, `npm`, `kelas`) VALUES
(2, 'Teguh Ardama', '17118023', '081296278960', 'Perumahan Regensi 2 Bekasi', 17118023, '4KA28'),
(3, 'user', '17118026', '123127378', 'regensi 1', 17118026, '4KA29'),
(5, 'Teguh', '17118028', '081296278950', 'Perumahan Regensi 2 Bekasi', 17118028, '4KA29'),
(6, 'Shafira Denza', '16118629', '0895389545118', 'Gramapuri Taman Sari Cibitung', 16118629, '4KA23'),
(7, 'aditya', '17118029', '938427398', 'Perumnas 3', 17118029, '4KA28'),
(8, 'udin', '17118022', '54325238', 'asdnkj', 17118022, '4KA28'),
(9, 'Teguh Ardama UYE', '17118021', '081296278960', 'Perumahan Regensi 2 Bekasi', 17118021, '4KA28'),
(10, 'Fariz Azhari', '14118225', '0293842930', 'asfdsdgf', 14118225, '4KA27'),
(11, 'Ade Abdillah', '14118229', '0812323523', 'gdfhgfdhgf', 14118229, '4ka28'),
(12, 'Adam Mulyawan', '14118417', '087888660386', 'Dukuh Jambrut', 14118417, '4KA27');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `jml_latihan` int(11) NOT NULL,
  `jml_jam` int(11) NOT NULL,
  `ket_paket` text NOT NULL,
  `foto_paket` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `harga`, `jml_latihan`, `jml_jam`, `ket_paket`, `foto_paket`, `id`) VALUES
(2, 'Junior Web Programmer (LSP GUNADARMA)', 0, 2, 12, 'Kursus setifikasi Junior Web Programmer yang diadakan oleh universitas gunadarma', '20072022110218e.jpg', 1),
(3, 'Junior Web Programmer (BNSP)', 0, 4, 12, 'Kursus sertifikasi Junior Web Programmer yang diadakan oleh BNSP', '20072022110431p.png', 1),
(4, 'Ahli Perencanaan Jaringan Drainase', 0, 3, 8, 'Kursus Ahli Perencanaan Jaringan Drainase', '21072022090728n.png', 1),
(5, 'Kursus 4', 0, 4, 4, 'Kursus 4', '21072022094519g.jpg', 1),
(6, 'Kursus 5', 0, 5, 5, 'Kursus 5', '210720220945391.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(5, 'Rekening', 'rekening', '																																	123456789 Bank BRI a/n IRFAN'),
(3, 'Tentang Kami', 'aboutus', '												<h3 class=\"my-5 text-center\" style=\"line-height: 1.2; font-size: 1.75rem; color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; margin-top: 3rem !important; margin-bottom: 3rem !important;\">Lembaga Sertifikasi Profesi<br>Universitas JEWEPE</h3><div><div class=\"my-5\" style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; margin-top: 3rem !important; margin-bottom: 3rem !important;\"><p style=\"margin-bottom: 1rem;\">Lembaga Sertifikasi Profesi (LSP) Universitas Gunadarma adalah lembaga sertifikasi profesi yang telah memperoleh sertifikat lisensi no. KEP.817/BNSP/IV/2020 dari Badan Nasional Sertifikasi Profesi (BNSP).</p><p style=\"margin-bottom: 1rem;\">Sebagai lembaga pelaksanaan kegiatan sertifikasi profesi kategori P1, skema yang dimiliki LSP Universitas Gunadarma diselaraskan dengan Kerangka Kualifikasi Nasional Indonesia (KKNI) dan Standar Kualifikasi Kerja Nasional Indonesia (SKKNI).</p><p style=\"margin-bottom: 1rem;\">Memiliki 42 skema dan 294 asesor, LSP Universitas Gunadarma siap melaksanakan uji kompetensi pada seluruh mahasiswa Universitas Gunadarma dari berbagai program studi dalam rangka menyiapkan lulusan Universitas Gunadarma yang memiliki kompetensi mumpuni sesuai bidangnya dan memiliki nilai lebih di pasar tenaga kerja baik nasional maupun internasional.</p><div><br></div></div><div class=\"mb-5\" style=\"color: rgb(33, 37, 41); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; margin-bottom: 3rem !important;\"><h4 class=\"mb-3 d-flex justify-content-evenly align-items-center\" style=\"margin-top: 0px; line-height: 1.2; font-size: 1.5rem; margin-bottom: 1rem !important; display: flex !important; justify-content: space-evenly !important; align-items: center !important;\"></h4></div></div>												'),
(11, 'FAQs', 'faqs', '																																												<div style=\"text-align: justify;\"><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: -webkit-left;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">1. Apakah LSP itu ?</span></p><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: -webkit-left;\">LSP (Lembaga Sertifikasi Profesi) merupakan kelembagaan sertifikasi kompetensi profesi yang dilisensi oleh otoritas sertifikasi, di Indonesia kita dapat menyebutnya dengan BNSP (Badan Nasional Sertifikasi Profesi). LSP bertugas untuk memberikan pelayanan asesmen dan sertifikasi kompetensi profesi. Dalam sertifikasi kompetensi, LSP memiliki peran dalam memastikan dan memelihara kompetensi. Pembentukan LSP ini merupakan amanat Peraturan Pemerintah Nomor 23 tahun 2004.</p><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: -webkit-left;\">&nbsp;</p><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: -webkit-left;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">2. Apakah tujuan Sertifikasi Profesi?</span></p><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: -webkit-left;\">Tujuan sertifikasi adalah untuk memastikan dan memelihara kompetensi yang telah didapat melalui proses pembelajaran, baik formal, non formal, pelatihan kerja, ataupun pengalaman kerja. Karena dalam dunia kerja kompetensi harus dipelihara</p><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: -webkit-left;\">&nbsp;</p><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: -webkit-left;\"><span style=\"margin: 0px; padding: 0px; font-weight: 700;\">2. Apakah tujuan Sertifikasi Profesi?</span></p><p style=\"margin-bottom: 10px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; text-align: -webkit-left;\">Tujuan sertifikasi adalah untuk memastikan dan memelihara kompetensi yang telah didapat melalui proses pembelajaran, baik formal, non formal, pelatihan kerja, ataupun pengalaman kerja. Karena dalam dunia kerja kompetensi harus dipelihara</p></div>																																												');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_trx`
--

CREATE TABLE `tmp_trx` (
  `id_tmp` int(11) NOT NULL,
  `id_trx` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_trx`
--

INSERT INTO `tmp_trx` (`id_tmp`, `id_trx`, `tanggal`, `status`) VALUES
(11, '25052019002954', '2019-05-25', 'Sudah Dibayar'),
(12, '25052019002954', '2019-05-27', 'Sudah Dibayar'),
(13, '25052019002954', '2019-05-28', 'Sudah Dibayar'),
(14, '25052019002954', '2019-05-29', 'Sudah Dibayar'),
(15, '25052019002954', '2019-05-30', 'Sudah Dibayar'),
(16, '25052019002954', '2019-05-31', 'Sudah Dibayar'),
(17, '25052019002954', '2019-05-01', 'Sudah Dibayar'),
(18, '25052019002954', '2019-06-02', 'Sudah Dibayar'),
(19, '25052019002954', '2019-06-03', 'Sudah Dibayar'),
(20, '25052019002954', '2019-06-04', 'Sudah Dibayar'),
(21, '25052019052520', '2019-05-25', 'Sudah Dibayar'),
(22, '25052019052520', '2019-06-02', 'Sudah Dibayar'),
(23, '25052019052520', '0000-00-00', 'Sudah Dibayar'),
(24, '25052019052520', '2019-06-04', 'Sudah Dibayar'),
(25, '25052019052520', '2019-06-05', 'Sudah Dibayar'),
(26, '25052019052520', '2019-06-06', 'Sudah Dibayar'),
(27, '25052019052520', '2019-06-07', 'Sudah Dibayar'),
(28, '25052019052520', '2019-06-08', 'Sudah Dibayar'),
(29, '25052019052520', '2019-06-09', 'Sudah Dibayar'),
(30, '25052019052520', '2019-06-10', 'Sudah Dibayar'),
(31, '20072022111403', '2022-07-20', 'Sudah Dibayar'),
(32, '20072022111403', '2022-07-21', 'Sudah Dibayar'),
(33, '20072022111403', '2022-07-22', 'Sudah Dibayar'),
(34, '20072022111403', '2022-07-23', 'Sudah Dibayar'),
(35, '20072022112604', '2022-07-21', 'Menunggu Pembayaran'),
(36, '20072022112604', '2022-07-22', 'Menunggu Pembayaran'),
(37, '20072022112734', '2022-07-20', 'Terverifikasi'),
(38, '20072022112734', '2022-07-21', 'Terverifikasi'),
(39, '20072022160226', '2022-07-21', 'Menunggu Upload KRS'),
(40, '20072022160226', '2022-07-22', 'Menunggu Upload KRS'),
(41, '20072022160226', '2022-07-23', 'Menunggu Upload KRS'),
(42, '20072022160226', '2022-07-24', 'Menunggu Upload KRS'),
(43, '20072022175427', '2022-07-21', 'Menunggu Upload KRS'),
(44, '20072022175427', '2022-07-22', 'Menunggu Upload KRS'),
(45, '20072022190850', '2022-07-22', 'Terverifikasi'),
(46, '20072022190850', '2022-07-23', 'Terverifikasi'),
(47, '20072022192252', '2022-07-21', 'Menunggu Upload KRS'),
(48, '20072022192252', '2022-07-22', 'Menunggu Upload KRS'),
(49, '20072022192252', '2022-07-23', 'Menunggu Upload KRS'),
(50, '20072022192252', '2022-07-24', 'Menunggu Upload KRS'),
(51, '21072022052857', '2022-07-21', 'Menunggu Upload KRS'),
(52, '21072022052857', '2022-07-22', 'Menunggu Upload KRS'),
(53, '21072022052857', '2022-07-23', 'Menunggu Upload KRS'),
(54, '21072022052857', '2022-07-24', 'Menunggu Upload KRS'),
(55, '21072022053842', '2022-07-21', 'Menunggu Upload KRS'),
(56, '21072022053842', '2022-07-22', 'Menunggu Upload KRS'),
(57, '21072022054155', '2022-07-21', 'Menunggu Konfirmasi'),
(58, '21072022054155', '2022-07-22', 'Menunggu Konfirmasi'),
(59, '21072022061844', '2022-07-21', 'Menunggu Konfirmasi'),
(60, '21072022061844', '2022-07-22', 'Menunggu Konfirmasi'),
(61, '21072022074405', '2022-07-29', 'Terverifikasi'),
(62, '21072022074405', '2022-07-30', 'Terverifikasi'),
(63, '21072022074405', '2022-07-31', 'Terverifikasi'),
(64, '21072022074405', '2022-08-01', 'Terverifikasi'),
(65, '21072022080737', '2022-07-21', 'Terverifikasi'),
(66, '21072022080737', '2022-07-22', 'Terverifikasi'),
(67, '21072022080737', '2022-07-23', 'Terverifikasi'),
(68, '21072022080737', '2022-07-24', 'Terverifikasi'),
(69, '21072022110058', '2022-07-21', 'Menunggu Konfirmasi'),
(70, '21072022110058', '2022-07-22', 'Menunggu Konfirmasi');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trx` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `id_driver` int(11) NOT NULL,
  `tgl_trx` date NOT NULL,
  `stt_trx` varchar(50) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `jam` varchar(20) NOT NULL,
  `catatan` text NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bukti_bayar` text NOT NULL,
  `ubah_tgl` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indexes for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id_driver`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp_trx`
--
ALTER TABLE `tmp_trx`
  ADD PRIMARY KEY (`id_tmp`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trx`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id_driver` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tmp_trx`
--
ALTER TABLE `tmp_trx`
  MODIFY `id_tmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
