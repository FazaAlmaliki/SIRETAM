-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2022 pada 12.42
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siretam2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'blue');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(46, 'Tentang Kami', 'tentang-kami', '<p>Bukakapak&nbsp;merupakan salah satu perusahaan e-commerce di Indonesia. Didirikan pada tahun 2020, Bukakapak&nbsp;awalnya merupakan toko daring yang memungkinkan para pelaku Usaha Kecil dan Menengah (UKM) untuk merambah ke dunia maya. Perusahaan ini kini telah melakukan ekspansi ke berbagai lini bisnis lain, termasuk membantu meningkatkan penjualan para warung tradisional lewat layanan Mitra.</p>\r\n', '2014-04-07', 'blackexo_sampul1.PNG', 'admin', 70, '13:10:57', 'Senin'),
(48, 'Alamat Perusahaan', 'alamat-perusahaan', '<p>Bukakapak&nbsp;merupakan salah satu perusahaan e-commerce di Indonesia. Didirikan pada tahun 2020, Bukakapak&nbsp;awalnya merupakan toko daring yang memungkinkan para pelaku Usaha Kecil dan Menengah (UKM) untuk merambah ke dunia maya. Perusahaan ini kini telah melakukan ekspansi ke berbagai lini bisnis lain, termasuk membantu meningkatkan penjualan para warung tradisional lewat layanan Mitra.</p>\r\n', '2014-04-07', 'blackexo_sampul.PNG', 'admin', 49, '13:32:28', 'Senin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'SiReTam (Sistem Rekomendasi Alat Pertambangan)', 'siretam@gmail.com', 'http://localhost/SiReTam', '', '123456789', '082187560053', 'Siretam (Sistem Rekomendasi Alat Pertambangan) adalah sebuah sistem yang dibangun untuk tujuan merekomendasikan alat pertambangan', 'SiReTam, Rekomendasi, Marketplace', 'mine_car.png', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`) VALUES
(19, 'Teknologi', '', 'teknologi', 'Y', 2),
(2, 'Olahraga', '', 'olahraga', 'Y', 4),
(21, 'Ekonomi', '', 'ekonomi', 'Y', 7),
(22, 'Politik', '', 'politik', 'N', 0),
(23, 'Hiburan', '', 'hiburan', 'Y', 3),
(31, 'Kesehatan ', '', 'kesehatan-', 'Y', 5),
(36, 'Komunitas', '', 'komunitas', 'N', 0),
(34, 'Seni & Budaya', '', 'seni--budaya', 'N', 0),
(37, 'Sekitar Kita', '', 'sekitar-kita', 'N', 0),
(39, 'Internasional', '', 'internasional', 'Y', 1),
(40, 'Kuliner', '', 'kuliner', 'Y', 0),
(41, 'Metropolitan', '', 'metropolitan', 'Y', 6),
(42, 'Dunia Islam', '', 'dunia-islam', 'N', 0),
(44, 'Wisata', '', 'wisata', 'N', 0),
(46, 'Daerah', '', 'daerah', 'N', 0),
(47, 'Gaya Hidup', '', 'gaya-hidup', 'Y', 0),
(48, 'Hukum', '', 'hukum', 'Y', 0),
(52, 'Sejarah Indonesia', 'admin', 'sejarah-indonesia', 'N', 0),
(53, 'Tokoh', 'admin', 'tokoh', 'N', 0),
(54, 'Tutorial', 'admin', 'tutorial', 'N', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(84, 650, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Nice  story, Roy suryo dan Susilo bambang yudhoyono memang cucak rowo. :)   ', '2012-01-05', '00:15:45', 'Y', 'robby.prihandaya@gmail.com'),
(88, 650, 'Udin Sedunia', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', 'www.belajarkonseling.com'),
(90, 650, 'Rizal Faizal', 'www.rizal-online.co.cc', ' asyik  aja  dehh...   ', '2012-02-25', '15:01:40', 'Y', 'www.rizal-online.co.cc'),
(91, 645, 'Eka Praja W', 'komputerkampus.com', ' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ', '2012-03-08', '20:06:07', 'Y', 'komputerkampus.com'),
(137, 650, 'Lukmanul Hakim', '', ' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ', '2013-01-19', '18:56:25', 'Y', 'lukmanul.haskim@gmai;.com'),
(146, 645, 'Tommy Utama', 'tommy.utama@gmail.com', ' Calon  hakim  agung  Muhammad  Daming  Sanusi  menyatakan,  hukuman  mati  tidak  layak  diberlakukan  bagi  pelaku  pemerkosaan.   ', '2014-07-21', '21:03:04', 'Y', 'tommy.utama@gmail.com'),
(147, 655, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Mudah-mudahan  windows  8.2  tampilannya  lebih  keren  lagi  dari  windows  8.1 sebelumnya  yang  kurang  enak  di gunakan.  heheheee   ', '2014-07-22', '08:33:04', 'Y', 'robby.prihandaya@gmail.com'),
(144, 650, 'Tommy Utama', 'tommy.utama@gmail.com', 'Pengamat  politik  dari  Charta  Politika,  Yunarto  Wijaya  mempertanyakan  dasar  keputusan  SBY  menunjuk  Roy  Suryo  sebagai  Menpora.   ', '2014-07-21', '20:59:16', 'Y', 'tommy.utama@gmail.com'),
(143, 650, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Menurut  Yunarto,  Roy  selama  ini  lebih  dikenal  sebagai  pakar  foto  digital  dan  video  serta  dosen  di  sebuah  perguruan  tinggi  negeri.   ', '2014-07-21', '20:57:52', 'Y', 'udin.sedunia@gmail.com'),
(148, 662, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'pantat negara yahudi yang sangat perlu untuk dihancurkan /  musnahkan  dan  bantai  seluruh  warga israel..!!!   ', '2014-07-24', '09:29:20', 'Y', 'robby.prihandaya@gmail.com'),
(149, 662, 'Edo Ikfianda', 'edomuhammad90@gmail.com', 'Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.', '2014-08-09', '17:34:35', 'Y', 'edomuhammad90@gmail.com'),
(152, 650, 'Dewi Safitriir', 'dewi_safitri@gmail.com', 'Peremimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei  menyampaikan  pernyataan  kontroversial  terkait  ketegangan  di  Gaza.Israele.   ', '2014-08-17', '17:46:28', 'Y', 'dewi_safitri@gmail.com'),
(153, 662, 'Robby Prihandaya', 'ww.phpmu.com', 'Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.\r\n\r\nAnda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.', '2015-03-25', '06:10:12', 'Y', 'robby.prihandaya@gmail.com'),
(154, 642, 'Tommy Utama', 'tommyutama.com', ' Para  pengunjuk  rasa  membawa  bendera-bendera  Palestina  dan  foro-foto  pemimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei.   ', '2016-11-24', '10:24:15', 'Y', 'tommy.utama@gmail.com'),
(164, 656, 'Robby Prihandaya', 'https://phpmu.com', 'Komentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.', '2018-04-20', '10:41:54', 'Y', 'robby.prihandaya@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'Capture1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(117, 157, 'Download', 'download', 'Ya', 'Bottom', 23),
(112, 22, 'Dalam Negeri', '#', 'Ya', 'Bottom', 20),
(151, 0, 'Semua Produk', 'produk', 'Ya', 'Bottom', 5),
(116, 0, 'Tentang Kami', 'hubungi', 'Ya', 'Bottom', 4),
(121, 0, 'Konsultasi', 'konsultasi', 'Ya', 'Bottom', 11),
(126, 22, 'Luar Negeri', '#', 'Ya', 'Bottom', 21),
(148, 0, 'Konfirmasi Orders', 'konfirmasi', 'Ya', 'Bottom', 7),
(149, 0, 'Tracking Orders', 'konfirmasi/tracking', 'Ya', 'Bottom', 8),
(152, 0, 'Semua Supplier', 'produk/reseller', 'Ya', 'Bottom', 6),
(155, 0, 'Laporan Orders', 'members/orders_report', 'Ya', 'Bottom', 9),
(157, 0, 'Konten', '#', 'Ya', 'Bottom', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen Administrator', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<strong>Haloo!</strong>, Kami berkomitmen memberikan layanan terbaik untuk Anda,&nbsp;menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<br />\r\n<br />\r\nKami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_bonus`
--

CREATE TABLE `rb_bonus` (
  `id_bonus` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `waktu_bonus` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_bonus`
--

INSERT INTO `rb_bonus` (`id_bonus`, `username`, `nominal`, `status`, `waktu_bonus`) VALUES
(8, 'arsenio', 100000, '1', '2017-04-10 23:55:38'),
(7, 'robby', 100000, '1', '2017-04-10 23:55:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kategori_produk`
--

CREATE TABLE `rb_kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `kategori_seo` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kategori_produk`
--

INSERT INTO `rb_kategori_produk` (`id_kategori_produk`, `nama_kategori`, `kategori_seo`) VALUES
(15, 'Excavator', 'excavator'),
(16, 'Dump Truck', 'dump-truck');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kategori_produk_sub`
--

CREATE TABLE `rb_kategori_produk_sub` (
  `id_kategori_produk_sub` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori_sub` varchar(255) NOT NULL,
  `kategori_seo_sub` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kategori_produk_sub`
--

INSERT INTO `rb_kategori_produk_sub` (`id_kategori_produk_sub`, `id_kategori_produk`, `nama_kategori_sub`, `kategori_seo_sub`) VALUES
(1, 2, 'Kiyora Sedang', 'kiyora-sedang'),
(2, 2, 'Kiyora Dalam', 'kiyora-dalam'),
(3, 1, 'Motherboard', 'motherboard'),
(4, 1, 'Storage External', 'storage-external'),
(6, 15, 'Komatsu', 'komatsu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_keterangan`
--

CREATE TABLE `rb_keterangan` (
  `id_keterangan` int(5) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_keterangan`
--

INSERT INTO `rb_keterangan` (`id_keterangan`, `id_reseller`, `keterangan`, `tanggal_posting`) VALUES
(1, 2, '<b>Informasi dari Reseller :</b><p></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis.&nbsp; dfsdfsdf</p><p>Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero. ertert</p>', '2017-03-31'),
(2, 6, '<p>asdasdasd</p>', '2019-09-07'),
(3, 1, '<p>ZXZXZX</p>', '2019-09-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_konfirmasi_pembayaran`
--

CREATE TABLE `rb_konfirmasi_pembayaran` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_konfirmasi_pembayaran`
--

INSERT INTO `rb_konfirmasi_pembayaran` (`id_konfirmasi_pembayaran`, `id_penjualan`, `total_transfer`, `id_rekening`, `nama_pengirim`, `tanggal_transfer`, `bukti_transfer`, `waktu_konfirmasi`) VALUES
(1, 14, 'Rp 3,605,000', 2, 'Robby Prihandaya', '2017-06-01', 'Transfer_Member_PHP.png', '2017-06-01 17:17:55'),
(2, 58, 'Rp 700,000', 1, 'ttt', '2018-09-12', '', '2018-09-12 14:43:39'),
(3, 68, 'Rp 1,332,900', 1, 'Reseller Utama', '2018-12-26', '234.JPG', '2018-12-26 08:19:57'),
(4, 91, 'Rp 399,000', 1, 'Murni Jaya', '2019-03-22', 'Screenshot_20190227-155933_BCA_mobile.jpg', '2019-03-22 06:28:27'),
(5, 117, 'Rp 114,000', 1, 'Umar Lapakers', '2020-06-28', '', '2020-06-28 08:44:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_konfirmasi_pembayaran_konsumen`
--

CREATE TABLE `rb_konfirmasi_pembayaran_konsumen` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_konfirmasi_pembayaran_konsumen`
--

INSERT INTO `rb_konfirmasi_pembayaran_konsumen` (`id_konfirmasi_pembayaran`, `id_penjualan`, `total_transfer`, `id_rekening`, `nama_pengirim`, `tanggal_transfer`, `bukti_transfer`, `waktu_konfirmasi`) VALUES
(2, 19, 'Rp 1,278,000', 1, 'Robby Prihandaya', '2017-06-02', '00011.jpg', '2017-06-02 15:19:40'),
(3, 43, 'Rp 4,799,000', 0, 'Dewiit Safitri ', '2017-06-04', '0755.png', '2017-06-04 11:27:01'),
(5, 47, 'Rp 728,000', 1, 'Agus Raharjo', '2017-06-07', '1.png', '2017-06-07 21:06:06'),
(6, 57, 'Rp 945,900', 1, 'Robby Prihandaya', '2018-12-11', '', '2018-12-11 14:01:05'),
(7, 57, 'Rp 945,900', 1, 'Robby Prihandaya', '2018-12-11', '', '2018-12-11 14:02:22'),
(8, 57, 'Rp 945,900', 1, 'Robby Prihandaya', '2018-12-11', 'zhe_mandiri_logo.png', '2018-12-11 14:03:11'),
(9, 61, 'Rp 110,900', 1, 'Robby Prihandaya', '2018-12-23', 'bukti_transfer_phpmu1.jpeg', '2018-12-23 07:39:30'),
(10, 85, 'Rp 776,000', 2, 'Robby Prihandaya', '2019-03-21', 'bukti_transfer3.jpg', '2019-03-21 12:04:31'),
(11, 86, 'Rp 141,000', 1, 'Robby Prihandaya', '2019-03-21', 'IMG-20190217-WA0002.jpg', '2019-03-21 12:09:00'),
(12, 87, 'Rp 82,000', 1, 'Muhammad Arsenio', '2019-03-21', 'IMG-20190115-WA0013.jpg', '2019-03-21 12:11:56'),
(13, 106, 'Rp 776,000', 1, 'Robby Prihandaya', '2019-07-03', 'Screenshot.png', '2019-07-03 07:45:36'),
(14, 133, 'Rp 5,288,000', 0, 'Gunawan', '2020-10-11', 'favicon.png', '2020-10-11 23:59:25'),
(15, 130, 'Rp 22,449,000', 0, 'Gunawan', '2020-10-12', 'favicon1.png', '2020-10-12 00:00:29'),
(16, 129, 'Rp 100,000', 0, 'robby', '2020-10-12', 'favicon2.png', '2020-10-12 00:50:50'),
(17, 141, 'Rp 10,586,000', 0, 'gunawan 1', '2020-10-12', 'favicon3.png', '2020-10-12 01:02:31'),
(18, 140, 'Rp 5,277,000', 0, 'ter', '2020-10-12', 'favicon4.png', '2020-10-12 01:02:46'),
(19, 143, 'Rp 42,304,000', 0, 'Gunawan', '2020-10-14', 'mycoding.png', '2020-10-14 00:10:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_konsumen`
--

CREATE TABLE `rb_konsumen` (
  `id_konsumen` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_daftar` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_konsumen`
--

INSERT INTO `rb_konsumen` (`id_konsumen`, `username`, `password`, `nama_lengkap`, `email`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `alamat_lengkap`, `kecamatan`, `kota_id`, `no_hp`, `foto`, `tanggal_daftar`) VALUES
(28, 'FazaAlmaliki', '2b6c18f857cc0d93fc5be5bdfd443819ad294cd2b7e7a2803bd6de853e9b7553039627bf180a40075d49535f89a86b2347b72fceca55bed4ff83c34a93459a6d', 'Muhamad Faza Almaliki', 'muhamadfazaalmaliki@gmail.com', 'Laki-laki', '2001-03-02', 'Kendari', 'Jl. Sao - Sao No 266 ', 'Kadia', 182, '082187560053', '', '2022-06-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_kota`
--

CREATE TABLE `rb_kota` (
  `kota_id` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_kota`
--

INSERT INTO `rb_kota` (`kota_id`, `provinsi_id`, `nama_kota`) VALUES
(17, 1, 'Badung'),
(32, 1, 'Bangli'),
(94, 1, 'Buleleng'),
(114, 1, 'Denpasar'),
(128, 1, 'Gianyar'),
(161, 1, 'Jembrana'),
(170, 1, 'Karangasem'),
(197, 1, 'Klungkung'),
(447, 1, 'Tabanan'),
(27, 2, 'Bangka'),
(28, 2, 'Bangka Barat'),
(29, 2, 'Bangka Selatan'),
(30, 2, 'Bangka Tengah'),
(56, 2, 'Belitung'),
(57, 2, 'Belitung Timur'),
(334, 2, 'Pangkal Pinang'),
(106, 3, 'Cilegon'),
(232, 3, 'Lebak'),
(331, 3, 'Pandeglang'),
(402, 3, 'Serang'),
(403, 3, 'Serang'),
(455, 3, 'Tangerang'),
(456, 3, 'Tangerang'),
(457, 3, 'Tangerang Selatan'),
(62, 4, 'Bengkulu'),
(63, 4, 'Bengkulu Selatan'),
(64, 4, 'Bengkulu Tengah'),
(65, 4, 'Bengkulu Utara'),
(175, 4, 'Kaur'),
(183, 4, 'Kepahiang'),
(233, 4, 'Lebong'),
(294, 4, 'Muko Muko'),
(379, 4, 'Rejang Lebong'),
(397, 4, 'Seluma'),
(39, 5, 'Bantul'),
(135, 5, 'Gunung Kidul'),
(210, 5, 'Kulon Progo'),
(419, 5, 'Sleman'),
(501, 5, 'Yogyakarta'),
(151, 6, 'Jakarta Barat'),
(152, 6, 'Jakarta Pusat'),
(153, 6, 'Jakarta Selatan'),
(154, 6, 'Jakarta Timur'),
(155, 6, 'Jakarta Utara'),
(189, 6, 'Kepulauan Seribu'),
(77, 7, 'Boalemo'),
(88, 7, 'Bone Bolango'),
(129, 7, 'Gorontalo'),
(130, 7, 'Gorontalo'),
(131, 7, 'Gorontalo Utara'),
(361, 7, 'Pohuwato'),
(50, 8, 'Batang Hari'),
(97, 8, 'Bungo'),
(156, 8, 'Jambi'),
(194, 8, 'Kerinci'),
(280, 8, 'Merangin'),
(293, 8, 'Muaro Jambi'),
(393, 8, 'Sarolangun'),
(442, 8, 'Sungaipenuh'),
(460, 8, 'Tanjung Jabung Barat'),
(461, 8, 'Tanjung Jabung Timur'),
(471, 8, 'Tebo'),
(22, 9, 'Bandung'),
(23, 9, 'Bandung'),
(24, 9, 'Bandung Barat'),
(34, 9, 'Banjar'),
(54, 9, 'Bekasi'),
(55, 9, 'Bekasi'),
(78, 9, 'Bogor'),
(79, 9, 'Bogor'),
(103, 9, 'Ciamis'),
(104, 9, 'Cianjur'),
(107, 9, 'Cimahi'),
(108, 9, 'Cirebon'),
(109, 9, 'Cirebon'),
(115, 9, 'Depok'),
(126, 9, 'Garut'),
(149, 9, 'Indramayu'),
(171, 9, 'Karawang'),
(211, 9, 'Kuningan'),
(252, 9, 'Majalengka'),
(332, 9, 'Pangandaran'),
(376, 9, 'Purwakarta'),
(428, 9, 'Subang'),
(430, 9, 'Sukabumi'),
(431, 9, 'Sukabumi'),
(440, 9, 'Sumedang'),
(468, 9, 'Tasikmalaya'),
(469, 9, 'Tasikmalaya'),
(37, 10, 'Banjarnegara'),
(41, 10, 'Banyumas'),
(49, 10, 'Batang'),
(76, 10, 'Blora'),
(91, 10, 'Boyolali'),
(92, 10, 'Brebes'),
(105, 10, 'Cilacap'),
(113, 10, 'Demak'),
(134, 10, 'Grobogan'),
(163, 10, 'Jepara'),
(169, 10, 'Karanganyar'),
(177, 10, 'Kebumen'),
(181, 10, 'Kendal'),
(196, 10, 'Klaten'),
(209, 10, 'Kudus'),
(249, 10, 'Magelang'),
(250, 10, 'Magelang'),
(344, 10, 'Pati'),
(348, 10, 'Pekalongan'),
(349, 10, 'Pekalongan'),
(352, 10, 'Pemalang'),
(375, 10, 'Purbalingga'),
(377, 10, 'Purworejo'),
(380, 10, 'Rembang'),
(386, 10, 'Salatiga'),
(398, 10, 'Semarang'),
(399, 10, 'Semarang'),
(427, 10, 'Sragen'),
(433, 10, 'Sukoharjo'),
(445, 10, 'Surakarta (Solo)'),
(472, 10, 'Tegal'),
(473, 10, 'Tegal'),
(476, 10, 'Temanggung'),
(497, 10, 'Wonogiri'),
(498, 10, 'Wonosobo'),
(31, 11, 'Bangkalan'),
(42, 11, 'Banyuwangi'),
(51, 11, 'Batu'),
(74, 11, 'Blitar'),
(75, 11, 'Blitar'),
(80, 11, 'Bojonegoro'),
(86, 11, 'Bondowoso'),
(133, 11, 'Gresik'),
(160, 11, 'Jember'),
(164, 11, 'Jombang'),
(178, 11, 'Kediri'),
(179, 11, 'Kediri'),
(222, 11, 'Lamongan'),
(243, 11, 'Lumajang'),
(247, 11, 'Madiun'),
(248, 11, 'Madiun'),
(251, 11, 'Magetan'),
(256, 11, 'Malang'),
(255, 11, 'Malang'),
(289, 11, 'Mojokerto'),
(290, 11, 'Mojokerto'),
(305, 11, 'Nganjuk'),
(306, 11, 'Ngawi'),
(317, 11, 'Pacitan'),
(330, 11, 'Pamekasan'),
(342, 11, 'Pasuruan'),
(343, 11, 'Pasuruan'),
(363, 11, 'Ponorogo'),
(369, 11, 'Probolinggo'),
(370, 11, 'Probolinggo'),
(390, 11, 'Sampang'),
(409, 11, 'Sidoarjo'),
(418, 11, 'Situbondo'),
(441, 11, 'Sumenep'),
(444, 11, 'Surabaya'),
(487, 11, 'Trenggalek'),
(489, 11, 'Tuban'),
(492, 11, 'Tulungagung'),
(61, 12, 'Bengkayang'),
(168, 12, 'Kapuas Hulu'),
(176, 12, 'Kayong Utara'),
(195, 12, 'Ketapang'),
(208, 12, 'Kubu Raya'),
(228, 12, 'Landak'),
(279, 12, 'Melawi'),
(364, 12, 'Pontianak'),
(365, 12, 'Pontianak'),
(388, 12, 'Sambas'),
(391, 12, 'Sanggau'),
(395, 12, 'Sekadau'),
(415, 12, 'Singkawang'),
(417, 12, 'Sintang'),
(18, 13, 'Balangan'),
(33, 13, 'Banjar'),
(35, 13, 'Banjarbaru'),
(36, 13, 'Banjarmasin'),
(43, 13, 'Barito Kuala'),
(143, 13, 'Hulu Sungai Selatan'),
(144, 13, 'Hulu Sungai Tengah'),
(145, 13, 'Hulu Sungai Utara'),
(203, 13, 'Kotabaru'),
(446, 13, 'Tabalong'),
(452, 13, 'Tanah Bumbu'),
(454, 13, 'Tanah Laut'),
(466, 13, 'Tapin'),
(44, 14, 'Barito Selatan'),
(45, 14, 'Barito Timur'),
(46, 14, 'Barito Utara'),
(136, 14, 'Gunung Mas'),
(167, 14, 'Kapuas'),
(174, 14, 'Katingan'),
(205, 14, 'Kotawaringin Barat'),
(206, 14, 'Kotawaringin Timur'),
(221, 14, 'Lamandau'),
(296, 14, 'Murung Raya'),
(326, 14, 'Palangka Raya'),
(371, 14, 'Pulang Pisau'),
(405, 14, 'Seruyan'),
(432, 14, 'Sukamara'),
(19, 15, 'Balikpapan'),
(66, 15, 'Berau'),
(89, 15, 'Bontang'),
(214, 15, 'Kutai Barat'),
(215, 15, 'Kutai Kartanegara'),
(216, 15, 'Kutai Timur'),
(341, 15, 'Paser'),
(354, 15, 'Penajam Paser Utara'),
(387, 15, 'Samarinda'),
(96, 16, 'Bulungan (Bulongan)'),
(257, 16, 'Malinau'),
(311, 16, 'Nunukan'),
(450, 16, 'Tana Tidung'),
(467, 16, 'Tarakan'),
(48, 17, 'Batam'),
(71, 17, 'Bintan'),
(172, 17, 'Karimun'),
(184, 17, 'Kepulauan Anambas'),
(237, 17, 'Lingga'),
(302, 17, 'Natuna'),
(462, 17, 'Tanjung Pinang'),
(21, 18, 'Bandar Lampung'),
(223, 18, 'Lampung Barat'),
(224, 18, 'Lampung Selatan'),
(225, 18, 'Lampung Tengah'),
(226, 18, 'Lampung Timur'),
(227, 18, 'Lampung Utara'),
(282, 18, 'Mesuji'),
(283, 18, 'Metro'),
(355, 18, 'Pesawaran'),
(356, 18, 'Pesisir Barat'),
(368, 18, 'Pringsewu'),
(458, 18, 'Tanggamus'),
(490, 18, 'Tulang Bawang'),
(491, 18, 'Tulang Bawang Barat'),
(496, 18, 'Way Kanan'),
(14, 19, 'Ambon'),
(99, 19, 'Buru'),
(100, 19, 'Buru Selatan'),
(185, 19, 'Kepulauan Aru'),
(258, 19, 'Maluku Barat Daya'),
(259, 19, 'Maluku Tengah'),
(260, 19, 'Maluku Tenggara'),
(261, 19, 'Maluku Tenggara Barat'),
(400, 19, 'Seram Bagian Barat'),
(401, 19, 'Seram Bagian Timur'),
(488, 19, 'Tual'),
(138, 20, 'Halmahera Barat'),
(139, 20, 'Halmahera Selatan'),
(140, 20, 'Halmahera Tengah'),
(141, 20, 'Halmahera Timur'),
(142, 20, 'Halmahera Utara'),
(191, 20, 'Kepulauan Sula'),
(372, 20, 'Pulau Morotai'),
(477, 20, 'Ternate'),
(478, 20, 'Tidore Kepulauan'),
(1, 21, 'Aceh Barat'),
(2, 21, 'Aceh Barat Daya'),
(3, 21, 'Aceh Besar'),
(4, 21, 'Aceh Jaya'),
(5, 21, 'Aceh Selatan'),
(6, 21, 'Aceh Singkil'),
(7, 21, 'Aceh Tamiang'),
(8, 21, 'Aceh Tengah'),
(9, 21, 'Aceh Tenggara'),
(10, 21, 'Aceh Timur'),
(11, 21, 'Aceh Utara'),
(20, 21, 'Banda Aceh'),
(59, 21, 'Bener Meriah'),
(72, 21, 'Bireuen'),
(127, 21, 'Gayo Lues'),
(230, 21, 'Langsa'),
(235, 21, 'Lhokseumawe'),
(300, 21, 'Nagan Raya'),
(358, 21, 'Pidie'),
(359, 21, 'Pidie Jaya'),
(384, 21, 'Sabang'),
(414, 21, 'Simeulue'),
(429, 21, 'Subulussalam'),
(68, 22, 'Bima'),
(69, 22, 'Bima'),
(118, 22, 'Dompu'),
(238, 22, 'Lombok Barat'),
(239, 22, 'Lombok Tengah'),
(240, 22, 'Lombok Timur'),
(241, 22, 'Lombok Utara'),
(276, 22, 'Mataram'),
(438, 22, 'Sumbawa'),
(439, 22, 'Sumbawa Barat'),
(13, 23, 'Alor'),
(58, 23, 'Belu'),
(122, 23, 'Ende'),
(125, 23, 'Flores Timur'),
(212, 23, 'Kupang'),
(213, 23, 'Kupang'),
(234, 23, 'Lembata'),
(269, 23, 'Manggarai'),
(270, 23, 'Manggarai Barat'),
(271, 23, 'Manggarai Timur'),
(301, 23, 'Nagekeo'),
(304, 23, 'Ngada'),
(383, 23, 'Rote Ndao'),
(385, 23, 'Sabu Raijua'),
(412, 23, 'Sikka'),
(434, 23, 'Sumba Barat'),
(435, 23, 'Sumba Barat Daya'),
(436, 23, 'Sumba Tengah'),
(437, 23, 'Sumba Timur'),
(479, 23, 'Timor Tengah Selatan'),
(480, 23, 'Timor Tengah Utara'),
(16, 24, 'Asmat'),
(67, 24, 'Biak Numfor'),
(90, 24, 'Boven Digoel'),
(111, 24, 'Deiyai (Deliyai)'),
(117, 24, 'Dogiyai'),
(150, 24, 'Intan Jaya'),
(157, 24, 'Jayapura'),
(158, 24, 'Jayapura'),
(159, 24, 'Jayawijaya'),
(180, 24, 'Keerom'),
(193, 24, 'Kepulauan Yapen (Yapen Waropen)'),
(231, 24, 'Lanny Jaya'),
(263, 24, 'Mamberamo Raya'),
(264, 24, 'Mamberamo Tengah'),
(274, 24, 'Mappi'),
(281, 24, 'Merauke'),
(284, 24, 'Mimika'),
(299, 24, 'Nabire'),
(303, 24, 'Nduga'),
(335, 24, 'Paniai'),
(347, 24, 'Pegunungan Bintang'),
(373, 24, 'Puncak'),
(374, 24, 'Puncak Jaya'),
(392, 24, 'Sarmi'),
(443, 24, 'Supiori'),
(484, 24, 'Tolikara'),
(495, 24, 'Waropen'),
(499, 24, 'Yahukimo'),
(500, 24, 'Yalimo'),
(124, 25, 'Fakfak'),
(165, 25, 'Kaimana'),
(272, 25, 'Manokwari'),
(273, 25, 'Manokwari Selatan'),
(277, 25, 'Maybrat'),
(346, 25, 'Pegunungan Arfak'),
(378, 25, 'Raja Ampat'),
(424, 25, 'Sorong'),
(425, 25, 'Sorong'),
(426, 25, 'Sorong Selatan'),
(449, 25, 'Tambrauw'),
(474, 25, 'Teluk Bintuni'),
(475, 25, 'Teluk Wondama'),
(60, 26, 'Bengkalis'),
(120, 26, 'Dumai'),
(147, 26, 'Indragiri Hilir'),
(148, 26, 'Indragiri Hulu'),
(166, 26, 'Kampar'),
(187, 26, 'Kepulauan Meranti'),
(207, 26, 'Kuantan Singingi'),
(350, 26, 'Pekanbaru'),
(351, 26, 'Pelalawan'),
(381, 26, 'Rokan Hilir'),
(382, 26, 'Rokan Hulu'),
(406, 26, 'Siak'),
(253, 27, 'Majene'),
(262, 27, 'Mamasa'),
(265, 27, 'Mamuju'),
(266, 27, 'Mamuju Utara'),
(362, 27, 'Polewali Mandar'),
(38, 28, 'Bantaeng'),
(47, 28, 'Barru'),
(87, 28, 'Bone'),
(95, 28, 'Bulukumba'),
(123, 28, 'Enrekang'),
(132, 28, 'Gowa'),
(162, 28, 'Jeneponto'),
(244, 28, 'Luwu'),
(245, 28, 'Luwu Timur'),
(246, 28, 'Luwu Utara'),
(254, 28, 'Makassar'),
(275, 28, 'Maros'),
(328, 28, 'Palopo'),
(333, 28, 'Pangkajene Kepulauan'),
(336, 28, 'Parepare'),
(360, 28, 'Pinrang'),
(396, 28, 'Selayar (Kepulauan Selayar)'),
(408, 28, 'Sidenreng Rappang/Rapang'),
(416, 28, 'Sinjai'),
(423, 28, 'Soppeng'),
(448, 28, 'Takalar'),
(451, 28, 'Tana Toraja'),
(486, 28, 'Toraja Utara'),
(493, 28, 'Wajo'),
(25, 29, 'Banggai'),
(26, 29, 'Banggai Kepulauan'),
(98, 29, 'Buol'),
(119, 29, 'Donggala'),
(291, 29, 'Morowali'),
(329, 29, 'Palu'),
(338, 29, 'Parigi Moutong'),
(366, 29, 'Poso'),
(410, 29, 'Sigi'),
(482, 29, 'Tojo Una-Una'),
(483, 29, 'Toli-Toli'),
(53, 30, 'Bau-Bau'),
(85, 30, 'Bombana'),
(101, 30, 'Buton'),
(102, 30, 'Buton Utara'),
(182, 30, 'Kendari'),
(198, 30, 'Kolaka'),
(199, 30, 'Kolaka Utara'),
(200, 30, 'Konawe'),
(201, 30, 'Konawe Selatan'),
(202, 30, 'Konawe Utara'),
(295, 30, 'Muna'),
(494, 30, 'Wakatobi'),
(73, 31, 'Bitung'),
(81, 31, 'Bolaang Mongondow (Bolmong)'),
(82, 31, 'Bolaang Mongondow Selatan'),
(83, 31, 'Bolaang Mongondow Timur'),
(84, 31, 'Bolaang Mongondow Utara'),
(188, 31, 'Kepulauan Sangihe'),
(190, 31, 'Kepulauan Siau Tagulandang Biaro (Sitaro)'),
(192, 31, 'Kepulauan Talaud'),
(204, 31, 'Kotamobagu'),
(267, 31, 'Manado'),
(285, 31, 'Minahasa'),
(286, 31, 'Minahasa Selatan'),
(287, 31, 'Minahasa Tenggara'),
(288, 31, 'Minahasa Utara'),
(485, 31, 'Tomohon'),
(12, 32, 'Agam'),
(93, 32, 'Bukittinggi'),
(116, 32, 'Dharmasraya'),
(186, 32, 'Kepulauan Mentawai'),
(236, 32, 'Lima Puluh Koto/Kota'),
(318, 32, 'Padang'),
(321, 32, 'Padang Panjang'),
(322, 32, 'Padang Pariaman'),
(337, 32, 'Pariaman'),
(339, 32, 'Pasaman'),
(340, 32, 'Pasaman Barat'),
(345, 32, 'Payakumbuh'),
(357, 32, 'Pesisir Selatan'),
(394, 32, 'Sawah Lunto'),
(411, 32, 'Sijunjung (Sawah Lunto Sijunjung)'),
(420, 32, 'Solok'),
(421, 32, 'Solok'),
(422, 32, 'Solok Selatan'),
(453, 32, 'Tanah Datar'),
(40, 33, 'Banyuasin'),
(121, 33, 'Empat Lawang'),
(220, 33, 'Lahat'),
(242, 33, 'Lubuk Linggau'),
(292, 33, 'Muara Enim'),
(297, 33, 'Musi Banyuasin'),
(298, 33, 'Musi Rawas'),
(312, 33, 'Ogan Ilir'),
(313, 33, 'Ogan Komering Ilir'),
(314, 33, 'Ogan Komering Ulu'),
(315, 33, 'Ogan Komering Ulu Selatan'),
(316, 33, 'Ogan Komering Ulu Timur'),
(324, 33, 'Pagar Alam'),
(327, 33, 'Palembang'),
(367, 33, 'Prabumulih'),
(15, 34, 'Asahan'),
(52, 34, 'Batu Bara'),
(70, 34, 'Binjai'),
(110, 34, 'Dairi'),
(112, 34, 'Deli Serdang'),
(137, 34, 'Gunungsitoli'),
(146, 34, 'Humbang Hasundutan'),
(173, 34, 'Karo'),
(217, 34, 'Labuhan Batu'),
(218, 34, 'Labuhan Batu Selatan'),
(219, 34, 'Labuhan Batu Utara'),
(229, 34, 'Langkat'),
(268, 34, 'Mandailing Natal'),
(278, 34, 'Medan'),
(307, 34, 'Nias'),
(308, 34, 'Nias Barat'),
(309, 34, 'Nias Selatan'),
(310, 34, 'Nias Utara'),
(319, 34, 'Padang Lawas'),
(320, 34, 'Padang Lawas Utara'),
(323, 34, 'Padang Sidempuan'),
(325, 34, 'Pakpak Bharat'),
(353, 34, 'Pematang Siantar'),
(389, 34, 'Samosir'),
(404, 34, 'Serdang Bedagai'),
(407, 34, 'Sibolga'),
(413, 34, 'Simalungun'),
(459, 34, 'Tanjung Balai'),
(463, 34, 'Tapanuli Selatan'),
(464, 34, 'Tapanuli Tengah'),
(465, 34, 'Tapanuli Utara'),
(470, 34, 'Tebing Tinggi'),
(481, 34, 'Toba Samosir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pembayaran_bonus`
--

CREATE TABLE `rb_pembayaran_bonus` (
  `id_pembayaran_bonus` int(10) NOT NULL,
  `username` varchar(60) NOT NULL,
  `nominal_bayar` int(10) NOT NULL,
  `waktu_bayar` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pembayaran_bonus`
--

INSERT INTO `rb_pembayaran_bonus` (`id_pembayaran_bonus`, `username`, `nominal_bayar`, `waktu_bayar`) VALUES
(1, 'arsenio', 50000, '2017-04-11'),
(2, 'robby', 70000, '2017-04-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pembelian`
--

CREATE TABLE `rb_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `kode_pembelian` varchar(50) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `waktu_beli` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pembelian`
--

INSERT INTO `rb_pembelian` (`id_pembelian`, `kode_pembelian`, `id_supplier`, `waktu_beli`) VALUES
(1, 'PO-0001', 1, '2017-05-23 10:13:05'),
(2, 'PO-0002', 2, '2017-05-24 07:05:11'),
(3, 'PO-0003', 1, '2017-05-27 14:58:50'),
(5, 'PO-0004', 1, '2017-05-30 09:30:02'),
(6, 'PO-0005', 1, '2017-06-01 10:29:39'),
(8, 'PO-0006', 1, '2019-02-20 07:44:57'),
(9, 'PO-2007', 2, '2019-03-21 10:01:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pembelian_detail`
--

CREATE TABLE `rb_pembelian_detail` (
  `id_pembelian_detail` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_pesan` int(11) NOT NULL,
  `jumlah_pesan` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pembelian_detail`
--

INSERT INTO `rb_pembelian_detail` (`id_pembelian_detail`, `id_pembelian`, `id_produk`, `harga_pesan`, `jumlah_pesan`, `satuan`) VALUES
(1, 1, 1, 260000, 100, 'pcs'),
(2, 1, 2, 455000, 150, 'pcs'),
(3, 2, 1, 255000, 235, 'pcs'),
(5, 2, 2, 3000000, 58, 'pcs'),
(9, 3, 1, 600000, 3, 'pcs'),
(7, 3, 2, 3000000, 43, 'pcs'),
(12, 5, 6, 320000, 25, 'unit'),
(13, 5, 5, 6990000, 10, 'unit'),
(14, 5, 4, 1000000, 45, 'unit'),
(16, 6, 13, 45900, 16, 'pcs'),
(17, 6, 12, 490000, 12, 'unit'),
(18, 6, 11, 8299000, 10, 'pcs'),
(19, 6, 9, 584000, 15, 'unit'),
(20, 6, 8, 275000, 6, 'unit'),
(21, 6, 7, 879000, 11, 'unit'),
(22, 6, 3, 14998000, 1, 'unit'),
(23, 6, 0, 0, 0, ''),
(26, 8, 13, 55000, 8, 'pcs'),
(27, 9, 13, 55000, 13, 'pcs');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pencairan_bonus`
--

CREATE TABLE `rb_pencairan_bonus` (
  `id_pencairan_bonus` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `bonus_referral` int(11) NOT NULL,
  `waktu_pencairan` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pencairan_bonus`
--

INSERT INTO `rb_pencairan_bonus` (`id_pencairan_bonus`, `id_reseller`, `bonus_referral`, `waktu_pencairan`) VALUES
(2, 1, 20000, '2017-06-04 13:39:15'),
(4, 1, 24450, '2019-03-22 08:18:17'),
(5, 1, 75900, '2020-10-12 00:07:24'),
(6, 1, 0, '2020-10-12 00:07:31'),
(7, 10, 0, '2020-10-12 00:16:05'),
(8, 10, 4, '2020-10-12 01:07:22'),
(9, 10, 6, '2020-10-12 01:07:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_pencairan_reward`
--

CREATE TABLE `rb_pencairan_reward` (
  `id_pencairan_reward` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `id_reward` int(11) NOT NULL,
  `reward_date` varchar(10) NOT NULL,
  `waktu_pencairan` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_pencairan_reward`
--

INSERT INTO `rb_pencairan_reward` (`id_pencairan_reward`, `id_reseller`, `id_reward`, `reward_date`, `waktu_pencairan`) VALUES
(5, 2, 1, '2019-03', '2019-03-22 09:12:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_penjualan`
--

CREATE TABLE `rb_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `id_penjual` int(11) NOT NULL DEFAULT '0',
  `status_pembeli` enum('reseller','konsumen') NOT NULL,
  `status_penjual` enum('admin','reseller') NOT NULL,
  `kurir` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `proses` enum('0','1','2') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_penjualan`
--

INSERT INTO `rb_penjualan` (`id_penjualan`, `kode_transaksi`, `id_pembeli`, `id_penjual`, `status_pembeli`, `status_penjual`, `kurir`, `service`, `ongkir`, `waktu_transaksi`, `proses`) VALUES
(2, 'TRX-0002', 2, 1, 'reseller', 'admin', '', '', 0, '2017-05-28 08:23:40', '1'),
(3, 'TRX-0003', 3, 1, 'reseller', 'admin', '', '', 0, '2017-05-28 09:00:33', '1'),
(4, 'TRX-0004', 2, 1, 'reseller', 'admin', '', '', 0, '2017-05-30 10:50:55', '1'),
(12, 'TRX-20170531115350', 1, 1, 'konsumen', 'reseller', '', '', 0, '2017-05-31 11:53:50', '0'),
(14, 'TRX-20170601121916', 2, 1, 'reseller', 'admin', '', '', 0, '2017-06-01 12:19:16', '1'),
(15, 'TRX-20170601171840', 2, 1, 'reseller', 'admin', '', '', 0, '2017-06-01 17:18:40', '1'),
(20, 'TRX-20170602152730', 1, 1, 'konsumen', 'reseller', '', '', 0, '2017-06-02 15:27:30', '0'),
(73, 'TRX-20190216111223', 1, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 17000, '2019-02-16 11:12:51', '0'),
(74, 'TRX-20190216112320', 1, 2, 'konsumen', 'reseller', 'jne', 'YES', 17000, '2019-02-16 11:23:38', '0'),
(42, 'TRX-20170604112343', 3, 1, 'reseller', 'admin', '', '', 0, '2017-06-04 11:23:47', '1'),
(43, 'TRX-20170604112516', 3, 3, 'konsumen', 'reseller', '', '', 0, '2017-06-04 11:25:16', '1'),
(75, 'TRX-20190220070740', 2, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-02-20 07:07:40', '1'),
(76, 'TRX-20190220070746', 2, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-02-20 07:07:46', '1'),
(77, 'TRX-20190220072137', 2, 1, 'reseller', 'admin', '', '', 0, '2019-02-20 07:21:37', '1'),
(53, 'TRX-20180725083202', 1, 2, 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', 76500, '2018-07-25 08:32:02', '0'),
(79, 'TRX-20190223150806', 1, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 34000, '2019-02-23 15:08:06', '1'),
(58, 'TRX-20180912144318', 2, 1, 'reseller', 'admin', '', '', 0, '2018-09-12 14:43:18', '2'),
(61, 'TRX-20181223070005', 1, 2, 'konsumen', 'reseller', 'tiki', 'ONS', 10000, '2018-12-23 07:00:16', '2'),
(62, 'TRX-20181223080117', 1, 2, 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', 8000, '2018-12-23 08:01:17', '0'),
(63, 'TRX-20181223080145', 26, 2, 'konsumen', 'reseller', 'tiki', 'ONS', 17000, '2018-12-23 08:09:17', '0'),
(67, 'TRX-20181226072823', 2, 1, 'reseller', 'admin', '', '', 0, '2018-12-26 07:28:23', '1'),
(68, 'TRX-20181226073542', 2, 1, 'reseller', 'admin', '', '', 0, '2018-12-26 07:35:42', '2'),
(81, 'TRX-20190321080106', 2, 1, 'reseller', 'admin', '', 'TRX-20190220072137', 0, '2019-03-21 08:01:06', '1'),
(91, 'TRX-20190322062742', 1, 1, 'reseller', 'admin', '', '', 0, '2019-03-22 06:27:42', '1'),
(82, 'TRX-20190321114415', 2, 1, 'reseller', 'admin', '', '', 0, '2019-03-21 11:44:15', '1'),
(83, 'TRX-20190321115249', 2, 1, 'reseller', 'admin', '', 'TRX-20190321114415', 0, '2019-03-21 11:52:49', '1'),
(85, 'TRX-20190321120328', 1, 2, 'konsumen', 'reseller', 'jne', 'YES', 17000, '2019-03-21 12:03:28', '1'),
(86, 'TRX-20190321120745', 1, 2, 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', 11000, '2019-03-21 12:07:45', '1'),
(87, 'TRX-20190321121109', 2, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 17000, '2019-03-21 12:11:09', '2'),
(88, 'TRX-20190322062417', 1, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-22 06:24:17', '1'),
(89, 'TRX-20190322062422', 1, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-22 06:24:22', '1'),
(90, 'TRX-20190322062426', 1, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-22 06:24:26', '1'),
(92, 'TRX-20190322063729', 1, 1, 'reseller', 'admin', '', 'TRX-20190322062742', 0, '2019-03-22 06:37:29', '1'),
(93, 'TRX-20190322063829', 1, 1, 'reseller', 'admin', '', '', 0, '2019-03-22 06:38:29', '1'),
(94, 'TRX-20190322063914', 1, 1, 'reseller', 'admin', '', 'TRX-20190322063829', 0, '2019-03-22 06:39:14', '1'),
(95, 'TRX-20190324101735', 3, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-24 10:17:35', '1'),
(96, 'TRX-20190324101739', 3, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-24 10:17:39', '1'),
(97, 'TRX-20190324101743', 3, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-24 10:17:43', '1'),
(98, 'TRX-20190324101747', 3, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-24 10:17:47', '1'),
(99, 'TRX-20190324101751', 3, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2019-03-24 10:17:51', '1'),
(100, 'TRX-20190324110240', 1, 1, 'konsumen', 'reseller', '', '', 0, '2019-03-24 11:16:41', '0'),
(101, 'TRX-20190325103704', 1, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 17000, '2019-03-25 10:38:02', '0'),
(105, 'TRX-20190703062416', 1, 1, 'konsumen', 'reseller', 'pos', 'Express Sameday Barang', 18000, '2019-07-03 06:24:16', '0'),
(106, 'TRX-20190703074508', 1, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 17000, '2019-07-03 07:45:08', '2'),
(107, 'TRX-20190817071150', 1, 3, 'konsumen', 'reseller', '', '', 0, '2019-08-17 07:11:50', '0'),
(108, 'TRX-20190831204112', 1, 3, 'konsumen', 'reseller', 'tiki', 'REG', 216000, '2019-08-31 20:41:12', '0'),
(109, 'TRX-20190901064338', 1, 1, 'konsumen', 'reseller', '', '', 0, '2019-09-01 06:52:03', '0'),
(110, 'TRX-20191203113328', 1, 2, 'konsumen', 'reseller', '', '', 0, '2019-12-03 11:33:40', '0'),
(111, 'TRX-20191203113402', 1, 2, 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', 11000, '2019-12-03 11:34:02', '1'),
(112, 'TRX-20191203114327', 1, 2, 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', 17000, '2019-12-03 11:43:27', '1'),
(140, 'TRX-20201012004011', 27, 10, 'konsumen', 'reseller', '', '', 0, '2020-10-12 00:40:11', '1'),
(114, 'TRX-20200612101356', 1, 2, 'konsumen', 'reseller', 'jne', 'REG', 11000, '2020-06-12 10:16:06', '0'),
(115, 'TRX-20200625165712', 1, 3, 'konsumen', 'reseller', 'tiki', 'ECO', 50000, '2020-06-25 16:57:12', '0'),
(116, 'TRX-20200625165750', 1, 3, 'konsumen', 'reseller', '', '', 0, '2020-06-25 16:57:50', '0'),
(117, 'TRX-20200628084041', 1, 1, 'reseller', 'admin', '', '', 0, '2020-06-28 08:40:41', '1'),
(119, 'TRX-20200628084811', 1, 1, 'reseller', 'admin', '', '', 0, '2020-06-28 08:48:11', '1'),
(141, 'TRX-20201012010139', 27, 10, 'konsumen', 'reseller', 'tiki', 'REG', 32000, '2020-10-12 01:01:39', '1'),
(121, 'TRX-20200703172915', 1, 2, 'konsumen', 'reseller', '', '', 0, '2020-07-03 17:29:29', '0'),
(125, 'TRX-20200707133923', 1, 2, 'konsumen', 'reseller', 'cod', 'Cash on delivery', 500, '2020-07-07 13:39:23', '0'),
(128, 'TRX-20200707135033', 1, 2, 'konsumen', 'reseller', 'jne', 'YES', 10000, '2020-07-07 13:50:33', '0'),
(129, 'TRX-20200707140121', 1, 2, 'konsumen', 'reseller', '', '', 0, '2020-07-07 14:01:42', '2'),
(130, 'TRX-20201011234546', 27, 3, 'konsumen', 'reseller', '', '', 0, '2020-10-11 23:45:46', '2'),
(131, 'TRX-20201011235304', 10, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2020-10-11 23:53:04', '1'),
(133, 'TRX-20201011235649', 27, 10, 'konsumen', 'reseller', 'jne', 'REG', 11000, '2020-10-11 23:56:49', '1'),
(142, 'TRX-20201014000642', 10, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2020-10-14 00:06:42', '1'),
(143, 'TRX-20201014000849', 27, 10, 'konsumen', 'reseller', 'jne', 'REG', 88000, '2020-10-14 00:08:49', '1'),
(144, 'TRX-20201015211456', 27, 2, 'konsumen', 'reseller', 'jne', 'Cash on delivery', 500, '2020-10-15 21:14:56', '0'),
(147, 'TRX-20201015214738', 27, 2, 'konsumen', 'reseller', 'tiki', 'ECO', 10000, '2020-10-15 21:47:38', '0'),
(149, 'TRX-20201015215733', 27, 10, 'konsumen', 'reseller', 'jne', 'CTC', 12000, '2020-10-15 21:57:33', '0'),
(151, 'TRX-20220625191155', 29, 3, 'konsumen', 'reseller', '', '', 0, '2022-06-25 19:11:55', '0'),
(152, 'TRX-20220626215948', 11, 1, 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', 0, '2022-06-26 21:59:48', '1'),
(156, 'TRX-20220627155119', 28, 11, 'konsumen', 'reseller', 'PT. ', 'Cash on delivery', 1000000, '2022-06-27 15:51:19', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_penjualan_detail`
--

CREATE TABLE `rb_penjualan_detail` (
  `id_penjualan_detail` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_penjualan_detail`
--

INSERT INTO `rb_penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `jumlah`, `diskon`, `harga_jual`, `satuan`) VALUES
(159, 92, 20, 7, 0, 57000, 'pcs'),
(158, 91, 13, 7, 0, 57000, 'pcs'),
(3, 2, 2, 3, 50000, 3200000, 'pcs'),
(5, 2, 1, 1, 0, 650000, 'pcs'),
(7, 3, 1, 2, 0, 650000, 'pcs'),
(8, 3, 2, 50, 120000, 3200000, 'pcs'),
(9, 4, 11, 5, 0, 8500000, 'pcs'),
(10, 4, 12, 10, 0, 500000, 'unit'),
(11, 4, 13, 15, 0, 55000, 'pcs'),
(12, 4, 9, 12, 0, 625000, 'unit'),
(13, 4, 8, 3, 0, 300000, 'unit'),
(14, 4, 7, 7, 0, 900000, 'unit'),
(15, 4, 6, 1, 0, 330000, 'unit'),
(16, 4, 5, 8, 0, 7100000, 'unit'),
(29, 10, 13, 1, 0, 65000, 'pcs'),
(126, 69, 1, 1, 0, 70000, 'pcs'),
(30, 10, 2, 1, 0, 3500000, 'pcs'),
(138, 75, 14, 10, 0, 95000, 'pcs'),
(32, 12, 2, 1, 0, 3500000, 'pcs'),
(33, 12, 1, 1, 0, 700000, 'pcs'),
(37, 14, 13, 5, 0, 55000, 'pcs'),
(38, 14, 4, 3, 0, 1110000, 'unit'),
(40, 15, 9, 2, 50000, 625000, 'unit'),
(41, 15, 12, 3, 0, 500000, 'unit'),
(127, 69, 8, 2, 0, 34500, 'unit'),
(137, 74, 1, 1, 0, 70000, 'pcs'),
(46, 19, 12, 1, 0, 608000, 'unit'),
(47, 19, 9, 1, 0, 670000, 'unit'),
(48, 20, 2, 1, 0, 3500000, 'pcs'),
(139, 76, 14, 2, 0, 95000, 'pcs'),
(136, 74, 13, 1, 0, 57000, 'pcs'),
(135, 73, 13, 1, 0, 57000, 'pcs'),
(134, 73, 1, 1, 0, 70000, 'pcs'),
(81, 43, 4, 1, 0, 1299000, 'unit'),
(79, 42, 2, 5, 0, 3200000, 'pcs'),
(80, 42, 4, 7, 0, 1110000, 'unit'),
(82, 43, 2, 1, 0, 3500000, 'pcs'),
(141, 78, 5, 1, 0, 755000, 'unit'),
(140, 77, 13, 10, 0, 60000, 'pcs'),
(142, 78, 14, 1, 0, 100000, 'pcs'),
(143, 79, 14, 1, 0, 100000, 'pcs'),
(144, 79, 4, 1, 0, 40900, 'unit'),
(95, 53, 13, 1, 0, 60000, 'pcs'),
(96, 53, 8, 1, 0, 345000, 'unit'),
(145, 79, 7, 1, 0, 89000, 'unit'),
(146, 79, 12, 1, 0, 23000, 'unit'),
(147, 80, 16, 4, 0, 0, 'asd'),
(103, 58, 6, 10, 0, 70000, 'unit'),
(111, 61, 13, 1, 0, 60000, 'pcs'),
(112, 61, 4, 1, 0, 40900, 'unit'),
(113, 62, 5, 1, 0, 755000, 'unit'),
(114, 63, 1, 1, 0, 70000, 'pcs'),
(115, 63, 12, 1, 0, 23000, 'unit'),
(123, 68, 3, 5, 0, 164980, 'unit'),
(122, 67, 4, 1, 0, 124900, 'unit'),
(124, 68, 9, 8, 0, 63500, 'unit'),
(148, 81, 17, 10, 0, 60000, 'pcs'),
(149, 82, 18, 5, 0, 720000, 'Unit'),
(150, 83, 19, 5, 0, 720000, 'Unit'),
(152, 85, 19, 1, 0, 759000, 'Unit'),
(153, 86, 17, 2, 0, 65000, 'pcs'),
(154, 87, 17, 1, 0, 65000, 'pcs'),
(155, 88, 12, 5, 0, 0, 'unit'),
(156, 89, 11, 10, 0, 0, 'pcs'),
(157, 90, 10, 3, 0, 0, 'pcs'),
(160, 93, 13, 3, 0, 57000, 'pcs'),
(161, 94, 20, 3, 0, 57000, 'pcs'),
(162, 95, 26, 5, 0, 34750000, 'Unit'),
(163, 96, 25, 6, 0, 21449000, 'Unit'),
(164, 97, 24, 2, 0, 21465000, 'Unit'),
(165, 98, 23, 1, 0, 31520000, 'Unit'),
(166, 99, 21, 12, 0, 13000000, 'Unit'),
(167, 100, 12, 1, 0, 66000, 'unit'),
(168, 101, 9, 1, 15000, 68500, 'unit'),
(172, 105, 11, 1, 0, 89000, 'pcs'),
(173, 106, 19, 1, 0, 759000, 'Unit'),
(174, 107, 25, 1, 0, 22449000, 'Unit'),
(175, 107, 21, 2, 0, 16500000, 'Unit'),
(176, 108, 26, 2, 0, 35750000, 'Unit'),
(177, 108, 21, 1, 0, 16500000, 'Unit'),
(178, 109, 11, 1, 0, 89000, 'pcs'),
(179, 109, 10, 1, 0, 59900, 'pcs'),
(180, 109, 12, 2, 0, 66000, 'unit'),
(181, 111, 19, 1, 0, 759000, 'Unit'),
(182, 112, 19, 1, 0, 759000, 'Unit'),
(204, 133, 0, 0, 0, 0, ''),
(184, 114, 14, 1, 0, 100000, 'pcs'),
(185, 115, 26, 1, 0, 35750000, 'Unit'),
(186, 116, 25, 1, 0, 22449000, 'Unit'),
(187, 117, 13, 2, 0, 57000, 'pcs'),
(189, 119, 18, 4, 0, 720000, 'Unit'),
(211, 140, 29, 1, 0, 5277000, 'Unit'),
(191, 121, 14, 1, 0, 100000, 'pcs'),
(195, 125, 14, 1, 0, 100000, 'pcs'),
(198, 128, 14, 1, 0, 100000, 'pcs'),
(199, 129, 14, 1, 0, 100000, 'pcs'),
(200, 130, 25, 1, 0, 22449000, 'Unit'),
(201, 131, 29, 10, 0, 0, 'Unit'),
(203, 133, 29, 1, 0, 5277000, 'Unit'),
(212, 141, 29, 2, 0, 5277000, 'Unit'),
(213, 142, 29, 4, 0, 0, 'Unit'),
(214, 143, 29, 8, 0, 5277000, 'Unit'),
(215, 144, 7, 1, 0, 89000, 'unit'),
(218, 147, 4, 1, 0, 40900, 'unit'),
(220, 149, 29, 1, 0, 5277000, 'Unit'),
(222, 151, 26, 1, 0, 35750000, 'Unit'),
(223, 152, 36, 5, 0, 0, 'Satuan'),
(226, 156, 36, 2, 0, 12500000, 'Satuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_penjualan_temp`
--

CREATE TABLE `rb_penjualan_temp` (
  `id_penjualan_detail` int(11) NOT NULL,
  `session` varchar(50) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) DEFAULT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `waktu_order` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_penjualan_temp`
--

INSERT INTO `rb_penjualan_temp` (`id_penjualan_detail`, `session`, `id_produk`, `jumlah`, `diskon`, `harga_jual`, `satuan`, `waktu_order`) VALUES
(7, 'TRX-20180812160418', 13, 1, 0, 60000, 'pcs', '2018-08-12 16:04:18'),
(8, 'TRX-20180812163525', 11, 1, 0, 8900000, 'pcs', '2018-08-12 16:35:25'),
(10, 'TRX-20180911095555', 6, 1, 0, 75000, 'unit', '2018-09-11 09:55:55'),
(11, 'TRX-20180911104512', 13, 1, 0, 60000, 'pcs', '2018-09-11 10:45:12'),
(12, 'TRX-20180911113613', 8, 1, 0, 34500, 'unit', '2018-09-11 11:36:13'),
(13, 'TRX-20180911114335', 5, 1, 0, 755000, 'unit', '2018-09-11 11:43:35'),
(14, 'TRX-20180911114532', 6, 1, 0, 75000, 'unit', '2018-09-11 11:45:32'),
(15, 'TRX-20180911120326', 5, 1, 0, 755000, 'unit', '2018-09-11 12:03:26'),
(16, 'TRX-20180912152157', 6, 1, 0, 75000, 'unit', '2018-09-12 15:21:57'),
(17, 'TRX-20180912182409', 7, 1, 0, 89000, 'unit', '2018-09-12 18:24:09'),
(18, 'TRX-20181221080543', 5, 1, 0, 755000, 'unit', '2018-12-21 08:05:43'),
(20, 'TRX-20181221080543', 12, 1, 0, 23000, 'unit', '2018-12-21 08:21:19'),
(21, 'TRX-20181222101726', 5, 1, 0, 755000, 'unit', '2018-12-22 10:17:26'),
(22, 'TRX-20181222101726', 11, 1, 0, 89000, 'pcs', '2018-12-22 10:17:44'),
(23, 'TRX-20181222101726', 4, 1, 0, 40900, 'unit', '2018-12-22 10:23:08'),
(33, 'TRX-20190203063622', 9, 1, 0, 53500, 'unit', '2019-02-03 06:36:22'),
(31, 'TRX-20181226094641', 13, 1, 0, 57000, 'pcs', '2018-12-26 09:46:41'),
(43, 'TRX-20190324190938', 14, 1, 0, 100000, 'pcs', '2019-03-24 19:09:38'),
(48, 'TRX-20190326080841', 14, 1, 0, 100000, 'pcs', '2019-03-26 08:08:41'),
(49, 'TRX-20190326150117', 14, 1, 0, 100000, 'pcs', '2019-03-26 15:01:17'),
(54, 'TRX-20191203113328', 19, 1, NULL, 759000, 'Unit', '2019-12-03 11:33:28'),
(55, 'TRX-20191221134255', 25, 1, 0, 22449000, 'Unit', '2019-12-21 13:42:55'),
(64, 'TRX-20201011013137', 9, 2, 15000, 68500, 'unit', '2020-10-11 01:31:37'),
(69, 'TRX-20220626220118', 36, 1, NULL, 12500000, 'Satuan', '2022-06-26 22:01:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_produk`
--

CREATE TABLE `rb_produk` (
  `id_produk` int(11) NOT NULL,
  `id_produk_perusahaan` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `id_kategori_produk_sub` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `produk_seo` varchar(255) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_reseller` int(11) NOT NULL,
  `harga_konsumen` int(11) NOT NULL,
  `berat` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `waktu_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_produk`
--

INSERT INTO `rb_produk` (`id_produk`, `id_produk_perusahaan`, `id_kategori_produk`, `id_kategori_produk_sub`, `id_reseller`, `nama_produk`, `produk_seo`, `satuan`, `harga_beli`, `harga_reseller`, `harga_konsumen`, `berat`, `gambar`, `keterangan`, `username`, `waktu_input`) VALUES
(35, 0, 15, 6, 0, ' Hydraulic Excavator Seri PC18MR-3', '-hydraulic-excavator-seri-pc18mr3', 'Satuan', 12000000, 12500000, 13000000, '1200', 'PC18MR-3-768x768.png', '<p>Komatsu seri PC18MR-3 merupakan <em>hydraulic</em> <em>excavator</em> mini dengan kemampuan kerja yang luar biasa terutama pada pekerjaan sektor konstruksi, agro, kehutanan, dan pertambangan. <em>Excavator </em>ini memiliki <em>operating weight</em>&nbsp; 1,7 Kg dan mampu beroperasi pada area sempit sekalipun. Unit ini sangat mudah dalam pemeliharanya dan pada bagian kanopi telah dilengkapi oleh ROPS sehingga membuatnya lebih aman.</p>\r\n', 'admin', '2022-06-26 21:56:30'),
(36, 0, 15, 6, 11, 'Hydraulic Excavator Seri PC18MR-3', 'hydraulic-excavator-seri-pc18mr3', 'Satuan', 12000000, 12250000, 12500000, '1200', 'PC18MR-3-768x7681.png', '<p>Komatsu seri PC18MR-3 merupakan <em>hydraulic</em> <em>excavator</em> mini dengan kemampuan kerja yang luar biasa terutama pada pekerjaan sektor konstruksi, agro, kehutanan, dan pertambangan. <em>Excavator </em>ini memiliki <em>operating weight</em>&nbsp; 1,7 Kg dan mampu beroperasi pada area sempit sekalipun. Unit ini sangat mudah dalam pemeliharanya dan pada bagian kanopi telah dilengkapi oleh ROPS sehingga membuatnya lebih aman.</p>\r\n', 'admin', '2022-06-26 21:59:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_produk_diskon`
--

CREATE TABLE `rb_produk_diskon` (
  `id_produk_diskon` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `diskon` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_produk_diskon`
--

INSERT INTO `rb_produk_diskon` (`id_produk_diskon`, `id_produk`, `id_reseller`, `diskon`) VALUES
(1, 13, 2, 8000),
(2, 12, 2, 42000),
(3, 9, 2, 15000),
(4, 7, 2, 10000),
(5, 4, 2, 89000),
(7, 2, 2, 100000),
(8, 14, 1, 10),
(9, 14, 2, 0),
(10, 16, 2, 342),
(11, 12, 1, 0),
(12, 11, 1, 0),
(13, 10, 1, 0),
(14, 26, 3, 0),
(15, 25, 3, 0),
(16, 24, 3, 0),
(17, 23, 3, 0),
(18, 21, 3, 0),
(19, 27, 1, 1000),
(20, 29, 10, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_provinsi`
--

CREATE TABLE `rb_provinsi` (
  `provinsi_id` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_provinsi`
--

INSERT INTO `rb_provinsi` (`provinsi_id`, `nama_provinsi`) VALUES
(1, 'Bali'),
(2, 'Bangka Belitung'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Riau'),
(18, 'Lampung'),
(19, 'Maluku'),
(20, 'Maluku Utara'),
(21, 'Nanggroe Aceh Darussalam (NAD)'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_rekening`
--

CREATE TABLE `rb_rekening` (
  `id_rekening` int(5) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_rekening`
--

INSERT INTO `rb_rekening` (`id_rekening`, `nama_bank`, `no_rekening`, `pemilik_rekening`) VALUES
(2, 'Bank Mandiri Syariah', '123456789', 'PT. Darma Karya Elektrik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_rekening_reseller`
--

CREATE TABLE `rb_rekening_reseller` (
  `id_rekening_reseller` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_rekening_reseller`
--

INSERT INTO `rb_rekening_reseller` (`id_rekening_reseller`, `id_reseller`, `nama_bank`, `no_rekening`, `pemilik_rekening`) VALUES
(1, 2, 'Bank Danamon', '56234234000', 'Syarii Sentral'),
(2, 2, 'Bank BCA', '10823422', 'Syarii Sentral'),
(3, 3, 'Bank Mandiri', '234123123332', 'Kalifah Umayyah'),
(6, 10, 'BNI', '123456789', 'Gunawan'),
(7, 11, 'BNI', '123456789', 'PT. Darma Karya Elektrik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_reseller`
--

CREATE TABLE `rb_reseller` (
  `id_reseller` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_reseller` varchar(255) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kode_pos` int(7) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `referral` varchar(50) NOT NULL,
  `tanggal_daftar` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_reseller`
--

INSERT INTO `rb_reseller` (`id_reseller`, `username`, `password`, `nama_reseller`, `kota_id`, `alamat_lengkap`, `no_telpon`, `email`, `kode_pos`, `keterangan`, `foto`, `referral`, `tanggal_daftar`) VALUES
(11, 'PT.DarmaKaryaElektrik', 'd2e67b3d37db65ff09bbf1e7c5880761a90c8f35a3ab8ca52255521c52f3fff335e1862bcaeeba591982adca6733213482f73113546aa751fac205a51b577bad', 'PT. Darma Karya ', 182, 'Kompleks Perumahan Citraland Kendari', '082187560053', 'DarmaKarya@gmail.com', 93222, 'Perusahaan Penyedia Alat Pertambangan', 'avatar044.png', 'darmakarya', '2022-06-26 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_reseller_cod`
--

CREATE TABLE `rb_reseller_cod` (
  `id_cod` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nama_alamat` varchar(255) NOT NULL,
  `biaya_cod` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_reseller_cod`
--

INSERT INTO `rb_reseller_cod` (`id_cod`, `id_reseller`, `nama_alamat`, `biaya_cod`) VALUES
(1, 1, 'Ulak Karang', 5500),
(2, 1, 'Tunggul Hitam', 6500),
(4, 1, 'Lubuk Begalung', 7600),
(5, 2, 'Ulak Karang', 0),
(6, 2, 'Air Tawar', 500),
(7, 11, 'Kendari, Provinsi Sulawesi Tenggara', 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_reward`
--

CREATE TABLE `rb_reward` (
  `id_reward` int(5) NOT NULL,
  `posisi` int(100) NOT NULL,
  `reward` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_setting`
--

CREATE TABLE `rb_setting` (
  `id_setting` int(11) NOT NULL,
  `referral` int(11) NOT NULL,
  `tanggal_pencairan` varchar(11) NOT NULL,
  `aktif` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_setting`
--

INSERT INTO `rb_setting` (`id_setting`, `referral`, `tanggal_pencairan`, `aktif`) VALUES
(1, 5, '1', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rb_supplier`
--

CREATE TABLE `rb_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `kontak_person` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rb_supplier`
--

INSERT INTO `rb_supplier` (`id_supplier`, `nama_supplier`, `kontak_person`, `alamat_lengkap`, `no_hp`, `alamat_email`, `kode_pos`, `no_telpon`, `fax`, `keterangan`) VALUES
(1, ' PT United Tractors Tbk', 'PT United Tractors Tbk', 'Jl. Raya Bekasi No.KM.22, RT.7/RW.1, Cakung Bar., Kec. Cakung, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta ', '02124579999', 'utcall@unitedtractors.com', 13910, '02124579999', '0214600657', 'Perusahaan Distributor Alat Pertambangan ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `id` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`id`, `ip`, `tanggal`, `hits`, `online`) VALUES
(460, '::1', '2022-06-27', 48, '1656325032'),
(459, '127.0.0.1', '2022-06-27', 125, '1656320243');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(32, 0, 'Muhamad Faza Almaliki', 'muhamadfazaalmaliki@gmail.com', 'Bagaimana mendaftar sebagai supplier ya?', '2022-06-26', '23:09:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(22, 'SiReTam (Sistem Rekomendasi Alat Pertambangan)', 'admin', 'Admin SiReTam', 'phpmu-tigo', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', 'edbd881f1ee2f76ba0bd70fd184f87711be991a0401fd07ccd4b199665f00761afc91731d8d8ba6cbb188b2ed5bfb465b9f3d30231eb0430b9f90fe91d136648', 'Admin SiReTam', 'SiReTam@gmail.com', '082187560053', 'mine_car.png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'cfcd208495d565ef66e7dff9f98764da-20180421112213', 18),
(15, '8462a1a67fbed2bef22d490d88e35944-20200619140142', 18),
(16, '67cfd69a4e5fb27fc4aeb0fa8383161e-20201010235217', 44),
(22, '67cfd69a4e5fb27fc4aeb0fa8383161e-20201010235217', 62),
(18, '67cfd69a4e5fb27fc4aeb0fa8383161e-20201010235217', 18),
(19, '67cfd69a4e5fb27fc4aeb0fa8383161e-20201010235217', 43);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indeks untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indeks untuk tabel `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rb_bonus`
--
ALTER TABLE `rb_bonus`
  ADD PRIMARY KEY (`id_bonus`);

--
-- Indeks untuk tabel `rb_kategori_produk`
--
ALTER TABLE `rb_kategori_produk`
  ADD PRIMARY KEY (`id_kategori_produk`);

--
-- Indeks untuk tabel `rb_kategori_produk_sub`
--
ALTER TABLE `rb_kategori_produk_sub`
  ADD PRIMARY KEY (`id_kategori_produk_sub`);

--
-- Indeks untuk tabel `rb_keterangan`
--
ALTER TABLE `rb_keterangan`
  ADD PRIMARY KEY (`id_keterangan`);

--
-- Indeks untuk tabel `rb_konfirmasi_pembayaran`
--
ALTER TABLE `rb_konfirmasi_pembayaran`
  ADD PRIMARY KEY (`id_konfirmasi_pembayaran`);

--
-- Indeks untuk tabel `rb_konfirmasi_pembayaran_konsumen`
--
ALTER TABLE `rb_konfirmasi_pembayaran_konsumen`
  ADD PRIMARY KEY (`id_konfirmasi_pembayaran`);

--
-- Indeks untuk tabel `rb_konsumen`
--
ALTER TABLE `rb_konsumen`
  ADD PRIMARY KEY (`id_konsumen`);

--
-- Indeks untuk tabel `rb_kota`
--
ALTER TABLE `rb_kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indeks untuk tabel `rb_pembayaran_bonus`
--
ALTER TABLE `rb_pembayaran_bonus`
  ADD PRIMARY KEY (`id_pembayaran_bonus`);

--
-- Indeks untuk tabel `rb_pembelian`
--
ALTER TABLE `rb_pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `rb_pembelian_detail`
--
ALTER TABLE `rb_pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indeks untuk tabel `rb_pencairan_bonus`
--
ALTER TABLE `rb_pencairan_bonus`
  ADD PRIMARY KEY (`id_pencairan_bonus`);

--
-- Indeks untuk tabel `rb_pencairan_reward`
--
ALTER TABLE `rb_pencairan_reward`
  ADD PRIMARY KEY (`id_pencairan_reward`);

--
-- Indeks untuk tabel `rb_penjualan`
--
ALTER TABLE `rb_penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indeks untuk tabel `rb_penjualan_detail`
--
ALTER TABLE `rb_penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indeks untuk tabel `rb_penjualan_temp`
--
ALTER TABLE `rb_penjualan_temp`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indeks untuk tabel `rb_produk`
--
ALTER TABLE `rb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `rb_produk_diskon`
--
ALTER TABLE `rb_produk_diskon`
  ADD PRIMARY KEY (`id_produk_diskon`);

--
-- Indeks untuk tabel `rb_provinsi`
--
ALTER TABLE `rb_provinsi`
  ADD PRIMARY KEY (`provinsi_id`);

--
-- Indeks untuk tabel `rb_rekening`
--
ALTER TABLE `rb_rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `rb_rekening_reseller`
--
ALTER TABLE `rb_rekening_reseller`
  ADD PRIMARY KEY (`id_rekening_reseller`);

--
-- Indeks untuk tabel `rb_reseller`
--
ALTER TABLE `rb_reseller`
  ADD PRIMARY KEY (`id_reseller`);

--
-- Indeks untuk tabel `rb_reseller_cod`
--
ALTER TABLE `rb_reseller_cod`
  ADD PRIMARY KEY (`id_cod`);

--
-- Indeks untuk tabel `rb_reward`
--
ALTER TABLE `rb_reward`
  ADD PRIMARY KEY (`id_reward`);

--
-- Indeks untuk tabel `rb_setting`
--
ALTER TABLE `rb_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `rb_supplier`
--
ALTER TABLE `rb_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT untuk tabel `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rb_bonus`
--
ALTER TABLE `rb_bonus`
  MODIFY `id_bonus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `rb_kategori_produk`
--
ALTER TABLE `rb_kategori_produk`
  MODIFY `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `rb_kategori_produk_sub`
--
ALTER TABLE `rb_kategori_produk_sub`
  MODIFY `id_kategori_produk_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `rb_keterangan`
--
ALTER TABLE `rb_keterangan`
  MODIFY `id_keterangan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `rb_konfirmasi_pembayaran`
--
ALTER TABLE `rb_konfirmasi_pembayaran`
  MODIFY `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rb_konfirmasi_pembayaran_konsumen`
--
ALTER TABLE `rb_konfirmasi_pembayaran_konsumen`
  MODIFY `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `rb_konsumen`
--
ALTER TABLE `rb_konsumen`
  MODIFY `id_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `rb_kota`
--
ALTER TABLE `rb_kota`
  MODIFY `kota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `rb_pembayaran_bonus`
--
ALTER TABLE `rb_pembayaran_bonus`
  MODIFY `id_pembayaran_bonus` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rb_pembelian`
--
ALTER TABLE `rb_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `rb_pembelian_detail`
--
ALTER TABLE `rb_pembelian_detail`
  MODIFY `id_pembelian_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `rb_pencairan_bonus`
--
ALTER TABLE `rb_pencairan_bonus`
  MODIFY `id_pencairan_bonus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `rb_pencairan_reward`
--
ALTER TABLE `rb_pencairan_reward`
  MODIFY `id_pencairan_reward` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rb_penjualan`
--
ALTER TABLE `rb_penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT untuk tabel `rb_penjualan_detail`
--
ALTER TABLE `rb_penjualan_detail`
  MODIFY `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT untuk tabel `rb_penjualan_temp`
--
ALTER TABLE `rb_penjualan_temp`
  MODIFY `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `rb_produk`
--
ALTER TABLE `rb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `rb_produk_diskon`
--
ALTER TABLE `rb_produk_diskon`
  MODIFY `id_produk_diskon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `rb_provinsi`
--
ALTER TABLE `rb_provinsi`
  MODIFY `provinsi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `rb_rekening`
--
ALTER TABLE `rb_rekening`
  MODIFY `id_rekening` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `rb_rekening_reseller`
--
ALTER TABLE `rb_rekening_reseller`
  MODIFY `id_rekening_reseller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `rb_reseller`
--
ALTER TABLE `rb_reseller`
  MODIFY `id_reseller` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `rb_reseller_cod`
--
ALTER TABLE `rb_reseller_cod`
  MODIFY `id_cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `rb_reward`
--
ALTER TABLE `rb_reward`
  MODIFY `id_reward` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `rb_setting`
--
ALTER TABLE `rb_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rb_supplier`
--
ALTER TABLE `rb_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
