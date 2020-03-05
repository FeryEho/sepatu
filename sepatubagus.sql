-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Des 2017 pada 06.55
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sepatubagus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`) VALUES
('admin', '150fb021c56c33f82eef99253eb36ee1', 'Administrator', 'redaksi@bukulokomedia.com', '08238923848', 'admin', 'N'),
('fery', 'dfd1f77aa12baacdba90554cc7cf4529', 'Fery Febrianto', 'ferycahibbjik@gmail.com', '089609260553', 'admin', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(15, '', 'http://', 'contohiklan.jpg', '2011-03-13'),
(16, '', 'http://', 'ilove_indonesia.jpg', '2011-03-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(10, 'Katalog 001', 'test.jpg', '2011-01-31', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `header`
--

CREATE TABLE IF NOT EXISTS `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(34, '4', '', 'header-email 01.jpg', '2017-11-27'),
(35, '5', '', 'nike-header.jpg', '2017-11-27'),
(36, '6', '', 'Sepatu-Basket-Nike-Header-20150113160505.jpg', '2017-11-27'),
(37, '7', '', 'Sepatu-Lari-Puma-Header-20150113153125.jpg', '2017-11-27'),
(32, 'vans', '', 'header 11.jpg', '2017-11-27'),
(33, '3', '', 'bg-banner.jpg', '2017-11-27'),
(30, 'asd', '', 'header 12.jpg', '2017-11-27'),
(31, 'af', '', 'adidas-x-parley-ocean-plastic-ultraboost-designboom-04-24-2017-fullheader-1024x370.jpg', '2017-11-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE IF NOT EXISTS `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `kategori_seo`) VALUES
(22, 'Sepatu Distro', 'sepatu-distro'),
(21, 'Sepatu Wanita', 'sepatu-wanita'),
(20, 'Sepatu Kerja', 'sepatu-kerja'),
(19, 'Sepatu Olahraga', 'sepatu-olahraga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(74, 124, 'Rizal Faizal', '', ' terima  kasih  atas  perhatiannya   ', '2011-02-22', '20:38:30', 'Y'),
(76, 54, 'Rizal Faizal', '', ' gawatttttttttt   ', '2011-02-23', '23:36:53', 'Y'),
(77, 54, 'Rizal Faizal', '', ' fewfg   ', '2011-02-23', '23:39:46', 'Y'),
(78, 54, 'fff', '', ' ffffffffffff   ', '2011-02-23', '23:41:36', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE IF NOT EXISTS `kota` (
  `id_kota` int(3) NOT NULL,
  `id_perusahaan` int(10) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  `ongkos_kirim` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `id_perusahaan`, `nama_kota`, `ongkos_kirim`) VALUES
(5, 5, 'Jakarta', 15000),
(6, 6, 'Bandung', 15000),
(7, 5, 'Surabaya', 13000),
(8, 5, 'Semarang', 17500),
(9, 6, 'Medan', 20000),
(10, 6, 'Aceh', 25000),
(11, 6, 'Banjarmasin', 17500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `id_main` int(5) NOT NULL,
  `nama_menu` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mainmenu`
--

INSERT INTO `mainmenu` (`id_main`, `nama_menu`, `link`, `aktif`) VALUES
(10, 'BERANDA', 'index.php', 'Y'),
(11, 'PROFIL ', 'profil-kami.html', 'Y'),
(12, 'PRODUK', 'semua-produk.html', 'Y'),
(13, 'KERANJANG BELANJA', 'keranjang-belanja.html', 'Y'),
(14, 'CARA PEMBELIAN', 'cara-pembelian.html', 'Y'),
(15, 'DOWNLOAD KATALOG', 'semua-download.html', 'Y'),
(16, 'HUBUNGI KAMI', 'hubungi-kami.html', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `static_content` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('user','admin') COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  `urutan` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `static_content`, `gambar`, `status`, `aktif`, `urutan`) VALUES
(18, 'Tambah Produk', '?module=produk', '', '', 'admin', 'Y', 5),
(42, 'Lihat Order Masuk', '?module=order', '', '', 'admin', 'Y', 8),
(10, 'Manajemen Modul', '?module=modul', '', '', 'admin', 'Y', 19),
(31, 'Tambah Kategori Produk', '?module=kategori', '', '', 'admin', 'Y', 4),
(43, 'Edit Profil', '?module=profil', '<p class="MsoNormal">\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]-->\r\n<!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:"";\r\nmargin:0cm;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:"Times New Roman";\r\nmso-fareast-font-family:"Times New Roman";}\r\n@page Section1\r\n{size:612.0pt 792.0pt;\r\nmargin:72.0pt 90.0pt 72.0pt 90.0pt;\r\nmso-header-margin:35.4pt;\r\nmso-footer-margin:35.4pt;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n-->\r\n<!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Times New Roman";}\r\n</style>\r\n<![endif]--><font size="2"><em><strong>Sepatu Bagus.com</strong></em>&nbsp; adalah toko fashion Sepatu online, yang menyediakan segala kebutuhan fashion Sepatu anda. </font><font size="2"><em><strong><font size="2">Sepatu Bagus.com</font></strong></em> ingin memberikan kemudahan kepada para calon pembeli, cara santai, mudah dan hemat dalam berbelanja fashion berkualias dengan harga yang terjangkau.\r\n</font>\r\n</p>\r\n<p class="MsoNormal">\r\n<font size="2">Karena itulah website ini dibuat sedemikian sederhananya sehingga diharapkan dapat membantu para pengunjung untuk dapat menelusuri produk-produk yang ditawarkan secara lebih mudah.<br />\r\n</font>\r\n</p>\r\n<p class="MsoNormal">\r\n<font size="2">Selain melayani pesanan produk-produk yang ada di toko online, kami menerima pembuatan/pemesanan fashion sesuai design/pola&nbsp; yang anda inginkan.<br />\r\n</font>\r\n</p>\r\n<p class="MsoNormal">\r\n<font size="2">Akhirnya, kami mengucapkan terima kasih atas kunjungan anda di </font><font size="2"><em><strong><font size="2">Sepatu Bagus.com</font></strong></em>.\r\n</font>\r\n</p>\r\n', '12sfhijau.jpg', 'admin', 'Y', 7),
(44, 'Lihat Pesan Masuk', '?module=hubungi', '', '', 'admin', 'Y', 9),
(45, ' Edit Cara Pembelian', '?module=carabeli', '<ol>\r\n	<li>Klik pada tombol&nbsp;<span style="font-weight: bold">Beli</span> pada produk yang ingin Anda pesan.</li>\r\n	<li>Produk yang Anda pesan akan masuk ke dalam <span style="font-weight: bold">Keranjang Belanja</span>. Anda dapat melakukan perubahan jumlah produk yang diinginkan dengan mengganti angka di kolom <span style="font-weight: bold">Jumlah</span>, kemudian klik tombol <span style="font-weight: bold">Update</span>. Sedangkan untuk menghapus sebuah produk dari Keranjang Belanja, klik tombol Kali yang berada di kolom paling kanan.</li>\r\n	<li>Jika sudah selesai, klik tombol <span style="font-weight: bold">Selesai Belanja</span>, maka akan tampil form untuk pengisian data kustomer/pembeli.</li>\r\n	<li>Setelah data pembeli selesai diisikan, klik tombol <span style="font-weight: bold">Proses</span>, maka akan tampil data pembeli beserta produk yang dipesannya (jika diperlukan catat nomor ordernya). Dan juga ada total pembayaran serta nomor rekening pembayaran.</li>\r\n	<li>Apabila telah melakukan pembayaran, maka produk/barang akan segera kami kirimkan. <br />\r\n	</li>\r\n</ol>\r\n', 'gedung.jpg', 'admin', 'Y', 10),
(47, 'Edit Link Terkait', '?module=banner', '', '', 'user', 'Y', 13),
(48, 'Edit Ongkos Kirim', '?module=ongkoskirim', '', '', 'user', 'Y', 11),
(49, 'Ganti Password', '?module=password', '', '', 'user', 'Y', 1),
(53, 'User Yahoo Messenger', '?module=ym', '', '', 'user', 'Y', 15),
(52, 'Lihat Laporan Transaksi', '?module=laporan', '', '', 'user', 'Y', 14),
(56, 'Edit Jasa Pengiriman', '?module=jasapengiriman', '<span class="center_content2"><font size="2"><span class="center_content">\r\n<div class="profil">\r\n<div>\r\n<span class="center_content">\r\n<div>\r\n<strong>Selamat Datang di&nbsp; Sepatu Bagus.Com ..&gt;_&lt;..\r\n</strong>\r\n</div>\r\n<div>\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]-->\r\n<!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:"";\r\nmargin:0cm;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:"Times New Roman";\r\nmso-fareast-font-family:"Times New Roman";}\r\nspan.centercontent\r\n{mso-style-name:center_content;}\r\n@page Section1\r\n{size:612.0pt 792.0pt;\r\nmargin:72.0pt 90.0pt 72.0pt 90.0pt;\r\nmso-header-margin:35.4pt;\r\nmso-footer-margin:35.4pt;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n-->\r\n<!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n<p class="MsoNormal">\r\n<!--[if gte mso 9]><xml>\r\n<w:WordDocument>\r\n<w:View>Normal</w:View>\r\n<w:Zoom>0</w:Zoom>\r\n<w:Compatibility>\r\n<w:BreakWrappedTables/>\r\n<w:SnapToGridInCell/>\r\n<w:WrapTextWithPunct/>\r\n<w:UseAsianBreakRules/>\r\n</w:Compatibility>\r\n<w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n</w:WordDocument>\r\n</xml><![endif]-->\r\n<!--\r\n/* Style Definitions */\r\np.MsoNormal, li.MsoNormal, div.MsoNormal\r\n{mso-style-parent:"";\r\nmargin:0cm;\r\nmargin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:12.0pt;\r\nfont-family:"Times New Roman";\r\nmso-fareast-font-family:"Times New Roman";}\r\nspan.centercontent\r\n{mso-style-name:center_content;}\r\n@page Section1\r\n{size:612.0pt 792.0pt;\r\nmargin:72.0pt 90.0pt 72.0pt 90.0pt;\r\nmso-header-margin:35.4pt;\r\nmso-footer-margin:35.4pt;\r\nmso-paper-source:0;}\r\ndiv.Section1\r\n{page:Section1;}\r\n-->\r\n<!--[if gte mso 10]>\r\n<style>\r\n/* Style Definitions */\r\ntable.MsoNormalTable\r\n{mso-style-name:"Table Normal";\r\nmso-tstyle-rowband-size:0;\r\nmso-tstyle-colband-size:0;\r\nmso-style-noshow:yes;\r\nmso-style-parent:"";\r\nmso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\nmso-para-margin:0cm;\r\nmso-para-margin-bottom:.0001pt;\r\nmso-pagination:widow-orphan;\r\nfont-size:10.0pt;\r\nfont-family:"Times New Roman";}\r\n</style>\r\n<![endif]-->\r\n</p>\r\n<p class="MsoNormal">\r\n<span class="centercontent"><span style="font-size: 10pt; font-family: Arial">Kami menyediakan berbagai macam jenis fashion berkualitas\r\ntinggi untuk segala kebutuhan penampilan anda. Mulai dari Sepatu olahraga, sepatu santai, sepatu kerja dan lainnya.</span></span>\r\n</p>\r\n<p class="MsoNormal">\r\n<span class="centercontent"><span style="font-size: 10pt; font-family: Arial">Berkonsep Toko online, kami berusaha memanjakan sekaligus\r\nmemudahkan para customer untuk berbelanja di toko online kami. \r\nKenyamanan dan\r\nkeamanan pun kami jaga sehingga tercipta hubungan baik penjual dan \r\npembeli.</span></span>\r\n</p>\r\n<p class="MsoNormal">\r\n<span class="centercontent"><span style="font-size: 10pt; font-family: Arial">Selamat berbelanja. Dan terima kasih atas kunjungan anda&hellip;</span></span>\r\n</p>\r\n</div>\r\n</span>\r\n</div>\r\n</div>\r\n</span></font></span>\r\n', 'hai.jpg', 'user', 'Y', 12),
(57, 'Edit Rekening Bank', '?module=bank', '', '', 'user', 'Y', 16),
(58, 'Edit Selamat Datang', '?module=welcome', '<strong>mobilestore.com</strong> merupakan website resmi dari Toko HP Lokomedia \r\nyang bermarkas di Jl. Arwana No.24 Minomartani Yogyakarta 55581. \r\nDirintis pertama kali oleh Lukmanul Hakim pada tanggal 14 Maret 2008.<br />\r\n<br />\r\nProduk\r\nunggulan dari Toko HP Lokomedia adalah produk-produk serta aksesoris \r\nbertema Nokia yang merupakan merk produk handphone paling terdepan saat \r\nini.\r\n', 'gedung.jpg', 'user', 'Y', 6),
(59, 'Ganti Header', '?module=header', '', '', 'user', 'Y', 18),
(61, 'Edit Menu Utama', '?module=menuutama', '', '', 'user', 'Y', 2),
(62, 'Edit Sub Menu', '?module=submenu', '', '', 'user', 'Y', 3),
(63, 'Edit Download Katalog', '?module=download', '', '', 'user', 'Y', 17);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_bank`
--

CREATE TABLE IF NOT EXISTS `mod_bank` (
  `id_bank` int(5) NOT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `no_rekening` varchar(100) NOT NULL,
  `pemilik` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mod_bank`
--

INSERT INTO `mod_bank` (`id_bank`, `nama_bank`, `no_rekening`, `pemilik`, `gambar`) VALUES
(1, 'Mandiri', '126.00.05244.71.9', 'Fery Febrianto', 'mandiri.gif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_ym`
--

CREATE TABLE IF NOT EXISTS `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `mod_ym`
--

INSERT INTO `mod_ym` (`id`, `nama`, `username`) VALUES
(2, 'Fery Febrianto', 'Fery_eho');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id_orders` int(5) NOT NULL,
  `nama_kustomer` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat` text COLLATE latin1_general_ci NOT NULL,
  `telpon` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `status_order` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'Baru',
  `tgl_order` date NOT NULL,
  `jam_order` time NOT NULL,
  `id_kota` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id_orders`, `nama_kustomer`, `alamat`, `telpon`, `email`, `status_order`, `tgl_order`, `jam_order`, `id_kota`) VALUES
(45, 'Ucok', 'Jauh', '08911111111', 'ucokaja@gmail.com', 'Lunas/Terkirim', '2017-11-27', '09:42:58', 11),
(53, 'wardhan', 'pamulang', '080989999', 'wakarimasen@lol.com', 'Lunas/Terkirim', '2017-12-03', '10:52:02', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id_orders` int(5) NOT NULL,
  `id_produk` int(5) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `orders_detail`
--

INSERT INTO `orders_detail` (`id_orders`, `id_produk`, `jumlah`) VALUES
(2, 16, 1),
(3, 17, 1),
(0, 56, 1),
(0, 58, 1),
(0, 60, 1),
(0, 50, 1),
(0, 51, 1),
(0, 55, 1),
(0, 61, 1),
(0, 58, 1),
(0, 60, 1),
(0, 56, 1),
(4, 44, 1),
(5, 53, 1),
(0, 58, 1),
(0, 47, 1),
(0, 58, 1),
(0, 61, 1),
(0, 58, 1),
(6, 61, 1),
(7, 58, 1),
(8, 43, 1),
(9, 58, 1),
(11, 43, 1),
(12, 44, 1),
(13, 43, 1),
(13, 58, 1),
(16, 58, 1),
(17, 50, 1),
(18, 45, 1),
(19, 41, 1),
(20, 59, 1),
(31, 58, 1),
(31, 42, 2),
(35, 59, 1),
(35, 54, 1),
(35, 61, 2),
(0, 54, 1),
(0, 59, 1),
(38, 54, 1),
(39, 59, 1),
(40, 61, 1),
(41, 54, 1),
(42, 54, 1),
(42, 55, 1),
(43, 61, 1),
(43, 58, 1),
(45, 96, 2),
(51, 103, 1),
(53, 102, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_temp`
--

CREATE TABLE IF NOT EXISTS `orders_temp` (
  `id_orders_temp` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `id_produk` int(5) NOT NULL,
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `jumlah` int(5) NOT NULL,
  `tgl_order_temp` date NOT NULL,
  `jam_order_temp` time NOT NULL,
  `stok_temp` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `orders_temp`
--

INSERT INTO `orders_temp` (`id_orders_temp`, `username`, `id_produk`, `id_session`, `jumlah`, `tgl_order_temp`, `jam_order_temp`, `stok_temp`) VALUES
(229, NULL, 94, 'eg83958ombosgrqm7qcevae8u4', 1, '2017-12-02', '11:16:38', 50);

-- --------------------------------------------------------

--
-- Struktur dari tabel `poling`
--

CREATE TABLE IF NOT EXISTS `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `rating`, `aktif`) VALUES
(1, 'Bagus', 'Jawaban', 27, 'Y'),
(2, 'Lumayan', 'Jawaban', 80, 'Y'),
(3, 'Tidak', 'Jawaban', 21, 'Y'),
(8, 'Bagaimana tampilan web ini?', 'Pertanyaan', 0, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `produk_seo` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `berat` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `tgl_masuk` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `dibeli` int(5) NOT NULL DEFAULT '1',
  `diskon` int(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `nama_produk`, `produk_seo`, `deskripsi`, `harga`, `stok`, `berat`, `tgl_masuk`, `gambar`, `dibeli`, `diskon`) VALUES
(101, 22, 'Fans Sport', 'fans-sport', '<p>\r\nsepatu fans sport ini adalah sepatu distro\r\n</p>\r\n<p>\r\ndesain elegan dan mewah\r\n</p>\r\n<p>\r\nbahan : kalep / kulit\r\n</p>\r\n<p>\r\nwarna : hitam, putih, abu abu, merah\r\n</p>\r\n<p>\r\nsize/ukuran : 28-37\r\n</p>\r\n<p>\r\nharga : sekitar rp.380000 \r\n</p>\r\n', 380000, 20, '1.00', '2017-11-27', '71fans sport joging.png', 1, 10),
(102, 22, 'Vans Boot Wanita', 'vans-boot-wanita', '<p>\r\nSepatu distro Vans Boot buat Wanita\r\n</p>\r\n<p>\r\ndesain elegan dan mewah\r\n</p>\r\n<p>\r\nbahan : kulit\r\n</p>\r\n<p>\r\nwarna : merah, putih, abu abu, hitam\r\n</p>\r\n<p>\r\nsize : 24-35\r\n</p>\r\n<p>\r\nharga : Rp. 270000 \r\n</p>\r\n', 270000, 19, '1.00', '2017-11-27', '11vans cewe.png', 2, 0),
(103, 20, 'BHF - N112 Sepatu Kerja', 'bhf--n112-sepatu-kerja', '<p>\r\nSepatu BHF - N112 ini adalah sepatu kerja \r\n</p>\r\n<p>\r\nbahan : kulit asli\r\n</p>\r\n<p>\r\nwarna&nbsp; : hitam, orange merah\r\n</p>\r\n<p>\r\nsize : 25-37\r\n</p>\r\n<p>\r\nharga : Rp 540000 \r\n</p>\r\n', 540000, 20, '1.00', '2017-11-27', '53BFH-153 kulit asli.jpg', 1, 10),
(93, 19, 'Adidas Predator Futsal', 'adidas-predator-futsal', '<p>\r\nSepatu Merk Adidas Predator\r\n</p>\r\n<p>\r\nWarna : Biru, Merah, Abu-abu, Hitam-Putih\r\n</p>\r\n<p>\r\nBahan : Nyaman dan adem saat di pakai\r\n</p>\r\n<p>\r\nCocok buat style dan nyaman saat anda memakainya pada saat futsal maupun buat santai.\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 340000, 20, '1.00', '2017-11-22', '70adidas1.png', 1, 10),
(94, 22, 'DC Sport Black', 'dc-sport-black', '<p>\r\nDC SPORT BLACK\r\n</p>\r\n<p>\r\nSepatu distro yang memiliki keindahan desain pada sebuah sepatu yang murah \r\n</p>\r\n<p>\r\n<strong>Bahan : Kulit</strong>\r\n</p>\r\n<p>\r\n<strong>Yaman di pakai</strong>\r\n</p>\r\n<p>\r\n<strong>Desain Mewah dan elegan</strong>\r\n</p>\r\n<p>\r\n<strong>Harga : Rp.240.000</strong>\r\n</p>\r\n<p>\r\n<strong>Warna</strong> : Black, White, Grey/abu-abu, Red. \r\n</p>\r\n', 240000, 50, '1.00', '2017-11-23', '84DC black.png', 1, 0),
(95, 22, 'Nike Sport ', 'nike-sport-', '<p>\r\nSepatu sport yang satu ini adalah sepatu sport yang terbilang murah dan terjangkau harganya.\r\n</p>\r\n<p>\r\n<strong>Nike Sport</strong>\r\n</p>\r\n<p>\r\n<strong>Bahan : Kulit</strong>\r\n</p>\r\n<p>\r\n<strong>Warna : White-Black, Grey-Black-White, Red, White</strong>\r\n</p>\r\n<p>\r\nNyaman dipakai tidak membuat kaki lecet\r\n</p>\r\n<p>\r\nEmpuk pada bantalan alas kaki \r\n</p>\r\n<p>\r\n<strong>Harga : Rp. 160.000&nbsp;</strong>\r\n</p>\r\n<p>\r\n<strong>Diskon : 10%</strong> \r\n</p>\r\n', 160000, 50, '1.00', '2017-11-23', '21nike.png', 1, 10),
(96, 19, 'Adidas Predator 1', 'adidas-predator-1', '<p>\r\nSepatu Futsal Adidas\r\n</p>\r\n<p>\r\nSepatu yang berkualitas tinggi, dapat mempercepat akselerasi pada pengguna saat berlari.\r\n</p>\r\n<p>\r\nTersedia berbagai macam warna :\r\n</p>\r\n<p>\r\n- Biru\r\n</p>\r\n<p>\r\n- Putih\r\n</p>\r\n<p>\r\n- Merah\r\n</p>\r\n<p>\r\n- Hitam\r\n</p>\r\n<p>\r\n- dll\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\nBahan :\r\n</p>\r\n<p>\r\n- Mercurial\r\n</p>\r\n<p>\r\n- dan komponen lain. \r\n</p>\r\n', 1000000, 8, '1.00', '2017-11-27', '76adidas.png', 3, 20),
(97, 21, 'Higjt HilL - Emas Mewah', 'higjt-hill--emas-mewah', '<p>\r\nHight hill ini adalah produk luar negri. \r\n</p>\r\n<p>\r\ndengan tampilan yang elegan dan mewah.\r\n</p>\r\n<p>\r\nbahan : 30% emas\r\n</p>\r\n<p>\r\nsize/ukuran : 27-35\r\n</p>\r\n<p>\r\nwarna : emas \r\n</p>\r\n<p>\r\nharga sekitar 1500000 \r\n</p>\r\n', 1500000, 5, '1.00', '2017-11-27', '54high hill emas mewah,png.png', 1, 5),
(98, 21, 'Kaniwa Mahameru Hag', 'kaniwa-mahameru-hag', '<p>\r\nKoniwa ini sepatu yang dibikin oleh perajin indonesia bisa disebut HandMade\r\n</p>\r\n<p>\r\nbahan : kulit\r\n</p>\r\n<p>\r\nwarna : putih, hitam, merah, putih-hitam, merah-putih dll.\r\n</p>\r\n<p>\r\nsize/ukuran : 26-38\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 730000, 10, '1.00', '2017-11-27', '83kaniwa mahameru hag tinggi.png', 1, 5),
(99, 21, 'Mort Of War - Sepatu Sandal', 'mort-of-war--sepatu-sandal', '<p>\r\nSepatu wanita ini adalah sepatu yang berbentuk sandal\r\n</p>\r\n<p>\r\nnyaman untuk di pakai buat santai dan bepergian.\r\n</p>\r\n<p>\r\nbahan : kulit dan plastik\r\n</p>\r\n<p>\r\nwarna : merah, putih, biru dongker, hitam, dll\r\n</p>\r\n<p>\r\nsize/ukuran : 24-36\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 210000, 30, '1.00', '2017-11-27', '42sepatu sendal.png', 1, 10),
(100, 21, 'Kaniwa Malabar', 'kaniwa-malabar', '<p>\r\nKoniwa ini sangatlah bagus buat acara-acara penting\r\n</p>\r\n<p>\r\nsepaty ini adalah hand made indonesia\r\n</p>\r\n<p>\r\nbahan : kulit dan plastik\r\n</p>\r\n<p>\r\nwarna : putih, hitam, merah, abu-abu\r\n</p>\r\n<p>\r\nukuran : 24-35 \r\n</p>\r\n', 420000, 20, '1.00', '2017-11-27', '32kaniwa-malabar handmade wanita.png', 1, 30),
(92, 22, 'Vans Of The Wall', 'vans-of-the-wall', '<p>\r\n<strong>Vans Of The Wall</strong> adalah sepatu import dari luar negeri\r\n</p>\r\n<p>\r\n<strong>Bahan</strong> : Kulit Sapi Asli\r\n</p>\r\n<p>\r\nNyaman dipakai, desain bagus, pas buat anak muda \r\n</p>\r\n<p>\r\n<strong>Tersedia ukuran 29-35</strong>\r\n</p>\r\n<p>\r\n<strong>Harga sekitar</strong> : 260.000\r\n</p>\r\n<p>\r\n&nbsp;\r\n</p>\r\n', 260000, 20, '1.00', '2017-11-21', '55vans cat.png', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekilasinfo`
--

CREATE TABLE IF NOT EXISTS `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`) VALUES
(6, 'Kartun anime terfavorit di kalangan anak muda jaman sekarang adalah ONE PIECE sang Raja Bajak Laut', '2017-11-23', 'luffy.jpg'),
(7, 'Cristiano Ronaldo menjadi pemain terbaik dan mendapatkan penghargaan balon DOOR sampai saat ini', '2017-11-23', 'IMG_20140914_073343.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_pengiriman`
--

CREATE TABLE IF NOT EXISTS `shop_pengiriman` (
  `id_perusahaan` int(10) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shop_pengiriman`
--

INSERT INTO `shop_pengiriman` (`id_perusahaan`, `nama_perusahaan`, `gambar`) VALUES
(6, 'JNE', ''),
(5, 'TIKI', ''),
(7, 'POS EKSPRESS', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE IF NOT EXISTS `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT '1',
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('127.0.0.1', '2011-01-23', 406, '1295797934'),
('127.0.0.1', '2011-01-22', 199, '1295712739'),
('127.0.0.1', '2011-01-20', 18, '1295484485'),
('127.0.0.1', '2011-01-19', 10, '1295452438'),
('127.0.0.1', '2011-01-25', 2, '1295961873'),
('127.0.0.1', '2011-01-26', 4, '1296050267'),
('127.0.0.1', '2011-01-27', 7, '1296110326'),
('127.0.0.1', '2011-01-28', 7, '1296233314'),
('127.0.0.1', '2011-01-29', 574, '1296320383'),
('127.0.0.1', '2011-01-30', 290, '1296393287'),
('127.0.0.1', '2011-01-31', 133, '1296493024'),
('127.0.0.1', '2011-02-01', 79, '1296521132'),
('110.138.43.143', '2011-02-01', 31, '1296540211'),
('66.249.71.118', '2011-02-01', 1, '1296528448'),
('67.195.115.24', '2011-02-01', 6, '1296538036'),
('125.161.211.231', '2011-02-01', 1, '1296529398'),
('222.124.98.187', '2011-02-01', 3, '1296531520'),
('66.249.71.77', '2011-02-01', 1, '1296532249'),
('66.249.71.20', '2011-02-01', 1, '1296534199'),
('117.20.62.233', '2011-02-01', 13, '1296537677'),
('110.137.200.121', '2011-02-01', 24, '1296540049'),
('127.0.0.1', '2011-02-16', 179, '1297875502'),
('127.0.0.1', '2011-02-17', 301, '1297961988'),
('127.0.0.1', '2011-02-18', 54, '1297990124'),
('127.0.0.1', '2011-02-22', 118, '1298393910'),
('127.0.0.1', '2011-02-23', 77, '1298479971'),
('127.0.0.1', '2011-02-24', 1, '1298510525'),
('127.0.0.1', '2011-03-13', 225, '1300027455'),
('127.0.0.1', '2011-03-14', 44, '1300115678'),
('127.0.0.1', '2011-03-15', 121, '1300195187'),
('127.0.0.1', '2011-03-16', 116, '1300292361'),
('127.0.0.1', '2011-03-17', 4, '1300331607'),
('127.0.0.1', '2011-03-18', 52, '1300422211'),
('127.0.0.1', '2011-03-27', 75, '1301234016'),
('127.0.0.1', '2011-03-28', 16, '1301307056'),
('127.0.0.1', '2011-03-29', 77, '1301409884'),
('::1', '2017-11-20', 71, '1511197179'),
('::1', '2017-11-21', 21, '1511197985'),
('::1', '2017-11-22', 109, '1511368993'),
('::1', '2017-11-23', 233, '1511453931'),
('::1', '2017-11-27', 62, '1511757288'),
('::1', '2017-12-01', 89, '1512146128'),
('::1', '2017-12-02', 135, '1512206089'),
('::1', '2017-12-03', 10, '1512274040');

-- --------------------------------------------------------

--
-- Struktur dari tabel `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `id_sub` int(5) NOT NULL,
  `nama_sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `link_sub` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_main` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `submenu`
--

INSERT INTO `submenu` (`id_sub`, `nama_sub`, `link_sub`, `id_main`) VALUES
(33, 'Sepatu Kerja', 'kategori-20-sepatu-kerja.html', 12),
(25, 'KOLEKSI BAJU', 'kategori-17-koleksi-baju.html', 0),
(32, 'Sepatu Wanita', 'kategori-21-sepatu-wanita.html', 12),
(30, 'LIHAT KERANJANG', 'keranjang-belanja.html', 13),
(21, 'SELESAI BELANJA', 'selesai-belanja.html', 13),
(31, 'Sepatu Distro', 'kategori-22-sepatu-distro.html', 12),
(29, 'Sepatu Olahraga', 'kategori-19-sepatu-olahraga.html', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password1` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `last login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password1`, `password`, `nama_lengkap`, `email`, `no_telp`, `level`, `blokir`, `id_session`, `last login`) VALUES
('wardhan', 'coba', 'c3ec0f7b054e729c5a716c8125839829', 'wardhan', 'wardhan@gmail.com', '085710511160', 'user', 'N', 'eg83958ombosgrqm7qcevae8u4', '2017-12-02 04:17:19'),
('test', '123', '202cb962ac59075b964b07152d234b70', 'testing', '123@gmail.com', '123321', 'user', 'N', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `mainmenu`
--
ALTER TABLE `mainmenu`
  ADD PRIMARY KEY (`id_main`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_bank`
--
ALTER TABLE `mod_bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_orders`);

--
-- Indexes for table `orders_temp`
--
ALTER TABLE `orders_temp`
  ADD PRIMARY KEY (`id_orders_temp`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `shop_pengiriman`
--
ALTER TABLE `shop_pengiriman`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mainmenu`
--
ALTER TABLE `mainmenu`
  MODIFY `id_main` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `mod_bank`
--
ALTER TABLE `mod_bank`
  MODIFY `id_bank` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_orders` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `orders_temp`
--
ALTER TABLE `orders_temp`
  MODIFY `id_orders_temp` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `shop_pengiriman`
--
ALTER TABLE `shop_pengiriman`
  MODIFY `id_perusahaan` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id_sub` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
