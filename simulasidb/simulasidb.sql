-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2020 at 04:02 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simulasidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_soal`
--

CREATE TABLE `tbl_bank_soal` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `pilihan_a` varchar(256) NOT NULL,
  `pilihan_b` varchar(256) NOT NULL,
  `pilihan_c` varchar(256) NOT NULL,
  `pilihan_d` varchar(256) NOT NULL,
  `pilihan_e` varchar(256) NOT NULL,
  `nilai_a` int(11) NOT NULL,
  `nilai_b` int(11) NOT NULL,
  `nilai_c` int(11) NOT NULL,
  `nilai_d` int(11) NOT NULL,
  `nilai_e` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank_soal`
--

INSERT INTO `tbl_bank_soal` (`id`, `kategori_id`, `pertanyaan`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`, `nilai_a`, `nilai_b`, `nilai_c`, `nilai_d`, `nilai_e`) VALUES
(59, 1, '<p>Seorang penjual buah membeli buah dengan harga Rp450.000,00, dan pedagang tersebut berhasil menjual semuanya dengan harga Rp573.750,00. Berapakah persentase keuntungan yang didapat oleh penjual buah itu?<br></p>', '20%', '22,5%', '25%', '25,5%', '27,5%', 0, 0, 0, 0, 5),
(60, 1, '<p>Seseorang mendapatkan hadiah mobil dalam suatu program televisi. Di pasaran umum, harga mobil tersebut adalah Rp 150.000.000,00.Adapun pajak ditetapkan 2/3 dari harga tersebut. Jika ia diharuskan membayar pajak sebesar Rp 450,00 per Rp 1.000,00, berapakah besarnya pajak yang harus dibayarnya?<br></p>', 'Rp 45.000.000,00', 'Rp 37.500.000,00', 'Rp 30.000.000,00', 'Rp 25.750.000,00', 'Rp 25.000.000,00', 5, 0, 0, 0, 0),
(61, 1, '<p>Keseluruhan jumlah televisi dagangan Rudi adalah 56 buah. Di dalam gudang terdapat 24 buah televisi lebih banyak dibandingkan televisi-televisi yang dipajang di etalase toko. Berapakah jumlah televisi di dalam gudang Rudi?<br></p>', '36', '38', '40', '42', '44', 0, 0, 5, 0, 0),
(62, 1, '<p>2, 6, 11, 17, 24, 32, ...., ....<br></p>', '41 dan 51', '40 dan 50', '40 dan 51', '41 dan 50', '41 dan 52', 5, 0, 0, 0, 0),
(63, 2, '<p>Pada hari terakhir sidang BPUKI yang pertama, Dr. Radjiman Wedyodiningrat membentuk panitia kecil atau panitia delapan yang diketuai oleh .... <br></p>', 'Ahmad Subardjo', 'Moh. Yamin', 'Ir. Soekarno', 'H. Agus Salim', 'Drs. Moh Hatta', 0, 0, 5, 0, 0),
(64, 2, '<p>Yang bukan termasuk panitia kecil untuk menampung usul usul yang masuk adalah .... <br></p>', 'Muh. Yamin', 'A. A Maramis', 'Oto Iskandar Dinata', 'Ahmad Subardjo', 'Wahid Hasyim', 0, 0, 0, 5, 0),
(77, 2, '<p>Hak-hak yang termasuk dalam hak asasi manusia berdasarkan Undang-Undang Dasar 1945 pasal 28 ayat (1) adalah sebagai berikut, <b>kecuali</b> ….<br></p>', 'Hak untuk tidak disiksa', 'Hak untuk dituntut atas dasar hukum yang berlaku surut', 'Hak untuk diakui sebagai pribadi di hadapan hukum', 'Hak untuk tidak diperbudak', 'Hak beragama', 0, 5, 0, 0, 0),
(82, 2, '<p>Beberapa cara dilakukan untuk membina persatuan dan kesatuan seperti berikut, <b>kecuali</b> ….<br></p>', 'Transmigrasi', 'Berbahasa Indonesia dalam pergaulan', 'Pengadaan Pekan Olahraga Nasional (PON)', 'Pengiriman misi kesenian daerah', 'Urbanisasi', 0, 0, 0, 0, 5),
(85, 2, '<p>Semboyan pendidikan nasional, <b>Tutwuri handayani</b>, berarti ….<br></p>', 'Di depan memberikan contoh keteladanan yang baik', 'Di belakang memberikan semangat untuk terus berkarya', 'Di belakang menyusun kekuatan untuk dapat memberikan dorongan untuk terus maju', 'Di belakang mampu memberikan pengawasan serta dorongan untuk terus maju', 'Di depan memberikan tarikan dan semangat untuk terus maju', 0, 0, 0, 5, 0),
(86, 1, '<p>Jika dari satu pak kartu bridge diambil satu kartu secara acak, berapakah peluang yang terambil tersebut kartu berangka 2?<br></p>', '1/11', '1/12', '1/13', '1/14', '1/15', 0, 0, 5, 0, 0),
(88, 1, '<p>Nilai rata-rata ulangan untuk mata pelajaran biologi dari 32 murid adalah 7,5. Setelah ditambah dengan nilai Agung, rata-ratanya menjadi 7,4. Berapakah nilai Agung?<br></p>', '4,2', '4,3', '4,4', '4,5', '4,6', 5, 0, 0, 0, 0),
(89, 1, '<p>Semua prajurit Singasari menyimpan keris di pinggangnya. Sebagian prajurit Singasari bersenjatakan tombak panjang. Pernyataan yang sesuai dengan pernyataan di atas adalah ….<br></p>', 'Prajurit Singasari yang menyimpan keris di pinggangnya pasti bersenjatakan tombak panjang.', 'Sebagian prajurit Singasari bersenjatakan tombak panjang dan sebagian lainnya bersenjatakan panah.', 'Sebagian prajurit Singasari menyimpan keris di pinggangnya dan bersenjatakan tombak panjang.', 'Sebagian prajurit Singasari tidak menyimpan keris di pinggangnya namun bersenjatakan tombak panjang.', 'Sebagian prajurit Singasari menyimpan keris di pinggangnya dan bersenjatakan panah.', 0, 0, 5, 0, 0),
(92, 1, '<p>3, 5, 8, 12, 17, 23, ...., ....<br></p>', '30 dan 37', '29 dan 36', '29 dan 37', '31 dan 39', '30 dan 38', 0, 0, 0, 0, 5),
(94, 1, '<p>5, 9, 7, 11, 9, 13, ...., ....<br></p>', '17 dan 21', '17 dan 15', '11 dan 15', '11 dan 9', '15 dan 19', 0, 0, 5, 0, 0),
(96, 3, '<p>Setelah diterima sebagai PNS, sepuluh tahun berikutnya saya rasa saya akan berada di posisi ....<br></p>', 'Lebih baik dari saat ini', 'Sama seperti ini', 'Belum jelas, karena saya tidak tahu nasib saya', 'Sama seperti saat ini, namum berbeda tempat kerja', 'Bukan PNS lagi', 5, 4, 2, 3, 1),
(97, 2, '<p>Berdasarkan teori kausalitas, diketahui bahwa sumber formal dari Pancasila adalah ....<br></p>', 'Kitab Kertanegara', 'Piagam Jakarta', 'Alinea IV Pembukaan UUD 1945', 'Tata kehidupan bangsa Indonesia', 'Hasil sidang BPUPKI I', 0, 0, 5, 0, 0),
(98, 2, 'Sebagai sebuah ideologi, Pancasila mengandung unsur tujuan hidup yang dijabarkan melalui sila yang ....<br>', 'Pertama', 'Kedua', 'Ketiga', 'Keempat', 'Kelima', 0, 0, 0, 0, 5),
(99, 2, 'Nilai nilai dalam Pancasila akan tetap ada sepanjang masa dalam kehidupan bangsa Indonesia, baik dalam adat istiadat, kebudayaan, kegiatan kenegaraan, maupun dalam keagamaan. Hal Tersebut merupakan salah satu tanda bahwa nilai Pancasila bersifat ....<br>', 'Majemuk', 'Tunggal', 'Objektif', 'Subjektif', 'Kausatif', 0, 0, 5, 0, 0),
(100, 2, 'Sebagai paradigma pembangunan nasional berarti Pancasila menjadi dasar bagi segala aspek pembangunan serta meliputi asas asas pembangunan nasional berikut, <b>kecuali</b> ....<br>', 'Demokrasi', 'Manfaat', 'Adil dan merata', 'Persatuan pembangunan', 'Kesadaran hukum', 0, 0, 0, 5, 0),
(101, 2, 'Sebagai sebuah ideologi terbuka, Pancasila memiliki nilai nilai yang dapat berubah dan dinamis sesuai dengan keadaan dan perkembangan zaman. Nilai ini disebut dengan ....<br>', 'Nilai dasar', 'Nilai proletar', 'Nilai instrumental', 'Nilai dinamika', 'Nilai inovasi', 0, 0, 5, 0, 0),
(102, 2, 'Inti nilai nilai Pancasila bersifat universal ini berarti ....<br>', 'Nilai nilai Pancasila dibuat berdasarkan ideologi dari seluruh dunia', 'Nilai nilai Pancasila dapat diterapkan dan digunakan juga oleh negara lain', 'Nilai nilai pancasila dibuat melampaui zamannya', 'Nilai nilai Pancasila dibuat dengan mempertimbangkan kondisi dunia', 'Nilai nilai Pancasila menjadi lambang perdamaian dunia', 0, 5, 0, 0, 0),
(103, 2, '<p>Dasar negara Pancasila merupakan hasil dari sidang BPUPKI. <b>BPUPKI</b> sendiri kemudian dibubarkan pada ....<br></p>', '11 Juli 1945', '16 Juli 1945', '27 Juli 1945', '7 Agustus 1945', '9 Agustus 1945', 0, 0, 0, 5, 0),
(104, 2, 'Persatuan, kekeluargaan, keseimbangan lahir batin, musyawarah, dan keadilan rakyat adalah dasar negara yang disampaikan oleh ....<br>', 'Supomo', 'Ir Soekarno', 'M Yamin', 'Rajidman Wediodiningrat', 'Ahmad Subardjo', 5, 0, 0, 0, 0),
(105, 2, 'Sila dalam Pancasila yang tidak mendasari, meliputi, dan menjiwai sila lainnya adalah sila ....<br>', 'Pertama', 'Kedua', 'Ketiga', 'Keempat', 'Kelima', 0, 0, 0, 0, 5),
(106, 2, 'Penghayatan dan pengamalan akan Bineka Tunggal Ika secara sungguh sungguh merupakan nilai dari sila ....<br>', 'Pertama', 'Kedua', 'Ketiga', 'Keempat', 'Kelima', 0, 0, 5, 0, 0),
(107, 2, 'Dalam sejarah pemberlakuan konstitusi di Indonesia terjadi beberapa kali periode pemberlakuan konstitusi dengan periode terpendek adalah konstitusi .... <br>', 'UUD 1945', 'RIS', 'UUDS 1950', 'Dekrit Presiden 1959', 'UUD 1945 Hasil Amandemen', 0, 5, 0, 0, 0),
(108, 2, 'Pemberaian grasi, amnesti, abolisi, dan rehabilisasi oleh Presiden diatur secara lengkap dalam UUD 1945 Pasal ....<br>', '11', '12', '13', '14', '16', 0, 0, 0, 5, 0),
(109, 2, 'Pasal 23 UUD 1945 secara khusus mengatur tentang segala macam hal yang berkaitan dengan ....<br>', 'Keuangan', 'DPR', 'Kekuasaan Kehakiman', 'Wilayah Negara', 'Warga Negara dan Penduduk', 5, 0, 0, 0, 0),
(110, 2, 'Perubahan UUD 1945 pertama kali dilakukan pada sidang umum MPR pada tahun .... <br>', '1998', '1999', '2000', '2001', '2002', 0, 5, 0, 0, 0),
(111, 2, 'Ditinjau dari segi sistematika, UUD 1945 setelah amandemen terdiri atas .... bagian<br>', '1', '2', '3', '5', '7', 0, 5, 0, 0, 0),
(112, 2, 'Setelah mengalami amandemen sebanyak empat kali, UUD 1945 memiliki .... bab<br>', '16', '19', '20', '21', '25', 0, 0, 0, 5, 0),
(113, 2, 'Pemilihan umum Republik Indonesia pertama kali diselenggarakan pada masa periode konstitusi .... <br>', 'UUD 1945', 'Konstitusi RIS', 'UUDS 1950', 'Dekrit Presiden 1959', 'UUD 1945 Hasil Amandemen', 0, 0, 5, 0, 0),
(114, 2, 'Presiden tidak dapat membekukan dan/atau membubarkan DPR. Hal tersebut merupakan isi pasal UUD 1945 yang mengalami perubahan dalam amandemen UUD 1945 yang ....<br>', 'Pertama dan Kedua', 'Pertama', 'Kedua', 'Ketiga', 'Keempat', 0, 0, 0, 5, 0),
(115, 2, 'Salah satu bab yang dihapus dalam UUD 1945 hasil amandemen adalah bab tentang ....<br>', 'Dewan Pertimbangan Agung', 'Badan Pemeriksa Keuangan', 'Kementrian Negara', 'Kekuasaan Kehakiman', 'Hak Asasi Manusia', 5, 0, 0, 0, 0),
(116, 2, 'UUD 1945 atau Konstitusi Negara Republik Indonesia Untuk pertama kalinya disahkan dan ditetapkan oleh ....<br>', 'BPUPKI', 'Panitia Sembilan', 'PPKI', 'KNPI', 'DPR', 0, 0, 5, 0, 0),
(117, 2, 'Bhineka Tunggal Ika seharusnya bersifat inklusif maksudnya ....<br>', 'Mengembangkan konsep baru dari unsur asli dengan unsur yang datang dari luar', 'Mayoritas tidak memaksakan kehendaknya pada minoritas', 'Adanya kebebasan beragama sesuai yang diyakini', 'Persatuan adalah hal mutlak ditengah perbedaan', 'Perbedaan adalah hal mutlak ditengah persatuan', 0, 5, 0, 0, 0),
(118, 2, 'Bhineka Tunggal Ika dilandasi oleh sifat sifat dibawah ini, <b>kecuali </b>....<br>', 'Saling percaya', 'Saling hormat', 'Saling cinta', 'Rukun', 'Eksklusif', 0, 0, 0, 0, 5),
(119, 2, 'Indonesia terdiri atas <b>Zelfbesturende landschappen</b> berarti ....<br>', 'Daerah daerah swapraja', 'Kota dan setingkatnya', 'Desa dan setingkatnya', 'Daerah persemakmuran', 'Daerah bekas jajahan', 5, 0, 0, 0, 0),
(120, 2, 'Indonesia juga terdiri atas <b>Volksgemeenschappen</b> berarti ....<br>', 'Daerah daerah swapraja', 'Kota dan setingkatnya', 'Desa dan setingkatnya', 'Daerah persemakmuran', 'Daerah bekas jajahan', 0, 0, 5, 0, 0),
(121, 2, 'Dalam negara persatuan, bagaimana letak kepentingan individu?<br>', 'Kepentingan individu seimbang dengan kepentingan kolektif', 'Kepentingan individu diakomodir secara aktif', 'Kepentingan kelompok bersifat mutlak diakomodir', 'Kepentingan individu dan kelompok dibawah kepentingan negara', 'Kepentingan individu tidak bisa diakomodasikan karena kepentingan kelompok lebih penting', 5, 0, 0, 0, 0),
(122, 2, 'Tentara Keamanan rakyat merupakan cikal bakal dari TNI. Tokoh yang menjabat sebagai Kepala Staf Tentara Keamanan Rakyat pertama kali adalah .... <br>', 'Urip Sumohardjo', 'Jendral Soedirman', 'T.B Simatupang', 'A. H Nasution', 'Supriyadi', 5, 0, 0, 0, 0),
(123, 2, 'Provinsi Papua Barat adalah salah satu provinsi yang lahir setelah era reformasi. Provinsi ini beribu kota di ....<br>', 'Raja Ampat', 'Sentani', 'Manokwari', 'Sorong', 'Kaimana', 0, 0, 5, 0, 0),
(124, 2, 'Deklarasi Djuanda diumumkan oleh pemerintah Indonesia pada ....<br>', '11 Desember 1957', '13 Desember 1957', '19 Desember 1957', '11 April 1960', '13 April 1960', 0, 5, 0, 0, 0),
(125, 2, '<p>Perundingan yang berhasil mengakhiri konfrontasi fisik antara Indonesia dengan Belanda adalah ....&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br></p>', 'Perundingan New York', 'Perundingan Linggarjati', 'Perundingan Renville', 'Perundingan Roem Royen', 'Konferensi Meja Bundar', 0, 0, 0, 0, 5),
(126, 2, 'Selainmembagi wilayah Indonesia ke dalam provinsi provinsi, PPKI juga membentuk sebanyak .... kementerian untuk membantu kerja presiden<br>', '8', '10', '12', '13', '16', 0, 0, 5, 0, 0),
(127, 2, 'Konsep negara kepulauan berdasarkan Deklarasi Djuanda diakui dalam Konvensi Hukum Laut PBB tahun ....<br>', '1960', '1968', '1978', '1980', '1982', 0, 0, 0, 0, 5),
(128, 2, 'Provinsi berikut ini adalah provinsi yang lahir setelah era orde baru, <b>kecuali</b> ....<br>', 'Provinsi Kepulauan Bangka Belitung', 'Provinsi Gorontalo', 'Provinsi Banten', 'Provinsi Maluku Utara', 'Provinsi Riau', 0, 0, 0, 0, 5),
(129, 2, 'Pada tanggal 19 Desember 1961, Presiden Soekarno mengumandangkan Tri Komando Rakyat (Trikora) sebagai komando Pembebasan Irian Barat di kota ....<br>', 'Jakarta', 'Yogyakarta', 'Surabaya', 'Ambon', 'Jayapura', 0, 5, 0, 0, 0),
(130, 2, 'Provinsi provinsi dibawah ini merupakan provinsi yang terbentuk pada masa awal kemerdekaan Republik Indonesia, <b>kecuali</b> ....<br>', 'Sumatra', 'DKI Jakarta', 'Jawa Tengah', 'Maluku', 'Sunda Kecil', 0, 5, 0, 0, 0),
(131, 2, 'Sidang BPUPKI yang kedua dimulai pada tanggal ....<br>', '29 Mei 1945', '4 Juni 1945', '22 Juni 1945', '10 Juli 1945', '14 Juli 1945', 0, 0, 0, 5, 0),
(132, 1, '<p>ALEGORI = ....<br></p>', 'Kenangan', 'Umpama', 'Biasanya', 'Alasan', 'Keadaan', 0, 5, 0, 0, 0),
(133, 1, 'LENGAS = ....<br>', 'Benci', 'Meleset', 'Lari', 'Menghindar', 'Lembab', 0, 0, 0, 0, 5),
(134, 1, 'STANZA = ....<br>', 'Puisi', 'Halte', 'Bait', 'Romantis', 'Gelap', 0, 0, 5, 0, 0),
(135, 1, 'Mumuk &gt;&lt; ....<br>', 'Lubak', 'Hancur', 'Keropos', 'Padat', 'Kuat', 0, 0, 0, 5, 0),
(136, 1, 'Berdus &gt;&lt; ....<br>', 'Kempis', 'Lebam', 'Perih', 'Bengkak', 'Buang', 5, 0, 0, 0, 0),
(137, 1, 'Akronim &gt;&lt; ....<br>', 'Singkatan', 'Perbedaan', 'Kepanjangan', 'Kesesuaian', 'Ketetapan', 0, 0, 5, 0, 0),
(138, 1, 'Flute : Tiup = .... : ....<br>', 'Dengar : Musik', 'Herpa : Petik', 'Senar : Gitar', 'Betot : Bass', 'Perkusi : Konga', 0, 5, 0, 0, 0),
(139, 1, 'Padi : Sebulir = .... : ....<br>', 'Pasir : Sebutir', 'Kayu : Segenggam', 'Darah : Segumpal', 'Segenggam : Beras', 'Selembar : Daun', 0, 0, 5, 0, 0),
(140, 1, '<p>Dani memiliki pabrik konveksi. Pabrik konveksi Dani mencoba memproduksi kaus anak anak. Kaus yang di produksi dari pabrik Dani dijual dengan harga relatif murah dengan sasaran konsumen masyarakat Bandung dan sekitarnya. Ternyata kaus tersebut laku keras sehingga pabrik milik Hamdani mendapat keuntungan besar. Berdasarkan penglaman ini, Hamdani ingin mengembangkan usahanya di kota kota besar seperti Semarang, Surabaya, dan Yogyakarta.</p><p>Kesimpulan yang tepat untuk melengkapi paragraf analogi di atas adalah ....<br></p><p> <br></p>', 'Produksi kaus Dani disukai oleh banyak konsumen dari berbagai kalangan', 'Pabrik kaus Dani meraup keuntungan yang cukup besar', 'Dani sangat senang usaha kausnya berhasil', 'Dani beranggapan bahwa produknya pasti akan laku keras', 'Harga kaus produksi pabrik Dani terjangkau semua orang', 0, 0, 0, 0, 5),
(141, 1, '30, 31, ...., ...., 40, 45<br>', '33, 37', '32, 34', '31, 34', '33, 36', '31, 33', 0, 0, 0, 5, 0),
(142, 1, '6, ...., 29, 174, ...., 1002, 995<br>', '34, 51', '35, 51', '35, 162', '36, 167', '36, 154', 0, 0, 0, 5, 0),
(143, 1, '29, 66, 127, 218, ....<br>', '343', '244', '246', '341', '345', 0, 0, 0, 0, 5),
(144, 1, '(1,69 : 13) x 1,3 = ....<br>', '1,69', '0,169', '16,9', '169', '1690', 0, 5, 0, 0, 0),
(145, 1, '-34 x (-22) - (-2020) = ....<br>', '2768', '2668', '2568', '2478', '2786', 5, 0, 0, 0, 0),
(146, 1, 'Jika rata rata dari 2, 3, x, dan y, adalah 5. Maka rata rata dari 4, 5, 6, x, dan y adalah .... <br>', '4,6', '5,0', '5,6', '6,0', '6,4', 0, 0, 0, 5, 0),
(147, 1, 'Sebuah kantor memiliki 8 bagian, masing masing dengan 10 -16 seksi. Setiap seksi sedikitnya ada 40 pegawai tetapi tidak lebih dari 60 pegawai. Jika 10% pegawai pada setiap seksi adalah juru tulis, berapakan minimum jumlah juru tulis di satu bagian?<br>', '40', '60', '65', '96', '100', 5, 0, 0, 0, 0),
(148, 1, 'Sepuluh tahun yang lalu, Rudi adalah sepertiga dari usianya sekatang. Lima belas tahun yang akan datang perbandingan antara usia Marlena dan usia Rudi adalah 3 : 5. Berapa tahun usia Marlena 5 tahun yang akan datang?<br>', '30', '20', '15', '12', '8', 0, 0, 0, 0, 5),
(149, 1, 'Semua pegawai mendapat gaji pokok. Sebagian pegawai mendapat bonus penghasilan. <b>Kesimpulannya</b> ....<br>', 'Semua pegawai tidak mendapat gaji pokok dan bonus penghasilan', 'Semua pegawai mendapat gaji pokok dan bonus penghasilan', 'Sebagian pegawai mendapat gaji pokok dan bonus penghasilan', 'Pegawai yang diberi gaji pokok pasti mendapat bonus penghasilan', 'Sebagian pegawai mendapat bonus penghasilan saja', 0, 0, 5, 0, 0),
(150, 1, '<p>Semua pasangan yang menikah di KUA adalah pasangan sah. Pasangan yang sah pasti memiliki buku nikah. Riana dan Budi mempunyai buku nikah. <b>Kesimpulannya</b> ....<br></p>', 'Rina dan Budi tidak menikah', 'Buku nikah Rina dan Budi palsu', 'Rina dan Budi menikah di KUA', 'Rina dan Budi pasangan yang tidak sah', 'Budi dan Rina belum tentu sah', 0, 0, 5, 0, 0),
(151, 1, 'Semua pemilik mobil harus mempunyai surat izin mengemudi. Lantip memiliki 2 mobil mewah. <b>Kesimpulannya</b> ....<br>', 'Lantip tidak membutuhkan surat izin mengemudi', 'Lantip wajib memiliki surat izin mengemudi', 'Lantip boleh memiliki surat mengemudi', 'Tidak dapat ditarik kesimpulan', 'Semua salah', 0, 5, 0, 0, 0),
(152, 1, 'Kendaraan roda dua dan bermesin boleh memasuki tol. Sementara kereta kuda beroda dua. <b>Kesimpulannya </b>....<br>', 'Tidak ada kesimpulan', 'Kereta kuda harus masuk jalan tol', 'Kereta kuda boleh masuk jalan tol', 'Kereta kuda dilarang masuk jalan tol', 'Semua salah', 0, 0, 0, 5, 0),
(153, 1, 'Semua balita mendapat imunisasi. Beberapa balita mendapat vitamin. <b>Kesimpulannya</b> ....<br>', 'Semua balita mendapat imunisasi dan vitamin', 'Balita yang telah imunisasi biasanya mendapat vitamin', 'Sebagian balita mendapat vitamin saja', 'Sebagian balita mendapat vitamin dan imunisasi', 'Semua salah', 0, 0, 0, 5, 0),
(154, 1, 'Nur mempunyai 3 buah mobil. Harga mobil 1 lebih mahal dibandingkan harga mobil 2. Harga mobil 3 lebih mahal dari harga mobil 2. Manakah pernyataan berikut yang benar?<br>', 'Harga mobil 2 lebih kecil dari rata rata harga mobil 1 dan 3', 'Harga mobil 3 lebih mahal dari pada harga mobil 1', 'Harga mobil 1 lebih mahal dari pada harga mobil 3', 'Harga mobil 1 ditambah harga mobil 2 lebih besar dari pada harga mobil 1 ditambah harga mobil 3', 'Tidak ada jawaban yang benar', 5, 0, 0, 0, 0),
(155, 1, 'Gaji Pak Maryadi adalah Rp. 300.000,00 lebih banyak dari pada gaji Pak Gito, sedangkan gaji Pak Agus adalah sepertiga gaji dari Pak Gito. Jadi ....<br>', 'Tidak diketahui apakah gaji Pak Maryadi lebih banyak atau lebih sedikit dari gaji Pak Agus', 'Gaji Pak Maryadi lebih sedikit dari gaji Pak Agus', 'Gaji Pak Maryadi sama banyaknya dengan gaji Pak Agus', 'Gaji Pak Maryadi sama banyaknya dengan gaji Pak Gito', 'Gaji Pak Maryadi lebih banyak dari gaji Pak Agus', 0, 0, 0, 0, 5),
(156, 3, '<p>Suatu saat saya mengingkari sebuah janji yang saya buat dengan teman saya maka saya ....<br></p>', 'Merasa biasa saja, teman saya tersebut pernah ingkar janji juga', 'Merasa malu terhadap diri sendiri', 'Merasa tenang karena baru pertama kali ini saya ingkar', 'Merasa sangat bersalah', 'Merasa takut akan dibenci atau dimarahi oleh teman saya', 1, 4, 2, 5, 3),
(157, 3, 'Dalam sebuah perlombaan saya tidak berhasil menjadi yang terbaik. Saya akan ....<br>', 'Biasa saja', 'Tetap berlatih seperti biasa', 'Terpukul dan merasa gagal', 'Akan mencobanya lagi dan berusaha dengan lebih baik lagi', 'Mengevaluasi kegagalan saya', 2, 3, 1, 5, 4),
(158, 3, '<p>Untuk mendapat kenaikan jabatan, saya harus bersaing dengan teman kantor dari divisi lain. Saya akan ....<br></p>', 'Fokus memberikan kinerja terbaik di posisi saya saat ini', 'Mencari kelemahan saingan saya untuk menglahkannya', 'Meminta bantuan teman yang berpengaruh untuk mempromosikan saya', 'Berusaha mendekati atasan dan mempengaruhinya supaya memilih saya', 'Membuat isu buruk tentang saingan saya, supaya ia tereliminiasi dari persaingan', 5, 2, 3, 4, 1),
(159, 3, 'Dalam bekerja saya mempunyai teman yang ....<br>', 'Banyak membantu saya', 'Memacu saya untuk menjadi lebih baik', 'Baik kepada saya', 'Mengerti tugasnya', 'Pintar menghangatkan suasana', 2, 5, 3, 4, 1),
(160, 2, '<p>Bahasa Indonesia baku berfungsi untuk ….<br></p>', 'Komunikasi di seluruh wilayah negara Indonesia', 'komunikasi antara orang-orang yang berlainan suku bangsa namun masih dalam batas wilayah negara Indonesia', 'Komunikasi dinas, resmi, dan di sekolah', 'Komunikasi antara atasan dan bawahan dalam suatu kantor', 'Komunikasi secara nasional', 0, 0, 5, 0, 0),
(161, 2, 'Kasihan sekali orang itu. Hanya sendirian ia ketika mengalami kesusahan, tanpa ada saudara atau kerabatnya yang berusaha untuk membantunya. Pernyataan di atas dapat diperibahasakan dengan ....', 'Air lalu kubang tohor', 'Air mata jatuh ke perut', 'Air diminum rasa duri, nasi dimakan rasa sekam', 'Air yang tenang jangan disangka tiada berbuaya', 'Air susu dibalas air tuba', 0, 5, 0, 0, 0),
(162, 2, 'Makna peribahasa udang tak tahu bungkuknya adalah ….', 'Orang yang tidak menyadari akan kebaikan dirinya sendiri', 'Orang yang tidak menyadari akan keberuntungan dirinya sendiri', 'Orang yang tidak menyadari akan kemalangan dirinya sendiri', 'Orang yang tidak menyadari akan keunggulan dirinya sendiri', 'Orang yang tidak menyadari akan keburukan dirinya sendiri', 0, 0, 0, 0, 5),
(163, 2, 'Penulisan partikel <b>pun</b> yang tepat dibawah ini adalah ….', 'Biarpun sendirian, ia nekat berangkat juga', 'Karena rasa laparnya, makanan apapun juga akan dimakannya', 'Sekalipun ia belum pernah mengunjungi rumah orang tuanya', 'Serupiahpun tidak lagi tersisa di saku celananya', 'Jangankan berdua, bertigapun aku tidak takut pada mereka', 5, 0, 0, 0, 0),
(164, 2, 'Kata ibu dan bapak Joko itu anak yang kreatif. Penjedaan kalimat di atas yang tepat jika yang dimaksudkan adalah Joko anak yang kreatif adalah ….', 'Kata ibu dan bapak Joko itu/anak yang kreatif', 'Kata ibu dan bapak Joko/itu anak yang kreatif', 'Kata ibu dan bapak/Joko itu anak yang', 'Kata ibu dan bapak Joko itu anak/ yang kreatif', 'Kata ibu/dan bapak Joko itu anak yang kreatif', 0, 0, 5, 0, 0),
(165, 2, 'Di antara kalimat-kalimat berikut, manakah kalimat yang berkonotasi baik?', 'Tiga serdadu Belanda tewas dalam serangan mendadak yang dilancarkan para pejuang', 'Cut Nyak Meutia wafat dan dimakamkan di Alue Kurieng, Aceh', 'Lelaki tua itu mati di dekat kandang kerbau', 'Bangkai perampok itu terbujur kaku di pinggir jalan', 'Anak kecil itu mati mengenaskan setelah terlindas truk', 0, 5, 0, 0, 0),
(166, 2, 'Di antara kalimat-kalimat berikut, manakah yang merupakan kalimat yang baku?', 'Mereka jebak pencuri itu hingga akhirnya tertangkap', 'Situ sudah lama menunggu adikmu di tempat ini', 'Ia teriak-teriak hingga suaranya serak', 'Ia berjalan cepat agar tidak terlambat masuk sekolah', 'Dua anak lelaki itu berantem di pinggir kali', 0, 0, 0, 5, 0),
(167, 2, 'Di antara kalimat-kalimat berikut, manakah kalimat yang tidak menggunakan frase idiomatik?', 'Kepala sekolah sedang bertemu guru baru di depan sekolah', 'Benar-benar keras kepala anak itu, nasihat orang tuanya tidak juga didengarnya', 'Dasar kepala udang, soal yang mudah pun tidak bisa dijawabnya!', 'Kelompok pemusik itu sedang naik daun', 'Pak Darto adalah tiang kampung di kampung Jaya karena usianya lebih dari seratus tahun', 5, 0, 0, 0, 0),
(168, 2, 'Pengarang itu menyerahkan naskah karangan kepada kepala redaksi penerbit Citra. Bentuk pasif dari kalimat tersebut adalah ….', 'Naskah karangan diterima kepala redaksi penerbit Citra dari pengarang', 'Naskah karangan diserahkan kepala redaksi penerbit Citra kepada pengarang', 'Kepala redaksi penerbit Citra menerima naskah karangan dari pengarang', 'Naskah karangan pengarang diserahkan kepada kepala redaksi penerbit Citra', 'Naskah karangan diserahkan pengarang kepada kepala redaksi penerbit Citra', 0, 0, 0, 0, 5),
(169, 2, 'Di antara kalimat-kalimat berikut, manakah kalimat aktif intransistif?', 'Ia belajar dengan tekun', 'Pak Hasan bekerja di kantor', 'Ia menangis meraung-raung', 'Ia melukis dengan kedua kakinya', 'Anak kecil itu memeluk ibunya eraterat', 0, 0, 5, 0, 0),
(170, 2, '<p>Kata Pancasila terdapat di dalam sebuah kitab tulisan pujangga Indonesia masa lalu. Apa nama kitab tersebut dan siapakah pengarangnya?<br></p>', 'Kitab Sutasoma karangan Mpu Tantular', 'Kitab Sutasoma karangan Mpu Kanwa', 'Kitab Hariwangsa karangan Mpu Panuluh', 'Kitab Bharatayuddha karangan Mpu Sedah', 'Kitab Negarakertagama karangan Mpu Prapanca', 0, 0, 0, 0, 5),
(171, 2, 'Rumusan masalah dasar negara Indonesia ini muncul pertama kali sewaktu dilaksanakannya sidang pertama Badan Penyelidik Usaha-Usaha Persiapan Kemerdekaan Indonesia (BPUPKI) pada tanggal 29 Mei 1945 – 1 Juni 1945. Terdapat 3 tokoh Nasional Indonesia ketika itu yang memaparkan Asas Dasar Negara Republik Indonesia. Selain Ir. Soekarno dan Mr. Muhammad Yamin, seorang tokoh lainnya adalah ....', 'Prof. Dr. Soepomo', 'Dr. Buntaran Martoatmodjo', 'Mr. A.D. Cokronegoro', 'Mr. Syafruddin Prawiranegara', 'Mr. Mohammad Roem', 5, 0, 0, 0, 0),
(172, 2, '<p>Pada Piagam Jakarta (Jakarta Charter) yang akan ditetapkan serta disahkan sebagai Undang-Undang Dasar 1945 masih terdapat masalah yang bisa mengganggu persatuan rakyat Indonesia, terutama pada alinea ke-4 tentang perumusan lima asas falsafah negara Indonesia Merdeka, dimana asas pertama menyebutkan: Ketuhanan dengan kewajiban menjalankan syariat Islam bagi pemeluk-pemeluknya. Berkat peran 4 tokoh Islam dalam memberikan pandangan dan pendapatnya hingga asas pertama falsafah negara tersebut akhirnya berbunyi: Ketuhanan Yang Maha Esa. Salah seorang dari 4 tokoh Islam tersebut adalah .…<br></p>', 'Haji Abdul Malik Karim Amrullah', 'Ki Hajar Dewantara', 'Ki Bagus Hadikusumo', 'Tengku Daud Beureuh', 'Umar Said Cokroaminoto', 0, 0, 5, 0, 0),
(173, 2, 'Fungsi Pancasila di negara kita adalah sebagai ….', 'Ideologi negara', 'Dasar negara', 'Sumber segala sumber hukum', 'Pegangan hidup', 'Semua jawaban A, B, C, dan D benar', 0, 0, 0, 0, 5),
(174, 2, 'Pancasila di negara kita merupakan sumber dari segala hukum di Indonesia. Penjelasan seperti tersebut tercantum pada ….', 'TAP MPR NO IV/MPR/1973', 'TAP MPR NO IV/MPR/1978', 'TAP MPR NO V/MPR/1973', 'TAP MPR NO V/MPR/1978', 'TAP MPR NO VI/MPR/1978', 0, 5, 0, 0, 0),
(175, 2, 'Kata Indonesia berasal dari bahasa Yunani, yaitu <b>Indos</b> dan <b>nesos.</b> Apakah arti dua kata tersebut berikut maknanya secara keseluruhan berdasarkan asal katanya?', 'Indos berarti India dan nesos berarti pulau, sehingga Indonesia bermakna kepulauan yang berada di wilayah India', 'Indos berarti khatulistiwa dan nesos berarti pulau, sehingga Indonesia bermakna kepulauan yang berada di wilayah khatulistiwa', 'Indos berarti pulau dan nesos berarti khatulistiwa, sehingga Indonesia bermakna kepulauan yang berada di wilayah khatulistiwa', 'Indos berarti India dan nesos berarti wilayah yang dekat, sehingga Indonesia bermakna wilayah yang berdekatan dengan India', 'Indos berarti timur dan nesos berarti pulau sehingga Indonesia bermakna kepulauan yang berada di wilayah timur', 5, 0, 0, 0, 0),
(176, 2, 'Kalimat <b>Bhinneka Tunggal Ika</b> berasal dari kalimat yang terdapat di dalam sebuah kitab tulisan pujangga Indonesia masa lalu. Apa nama kitab tersebut dan siapakah pengarangnya?', 'Kitab Sutasoma karangan Mpu Kanwa', 'Kitab Bharatayuddha karangan Mpu Sedah', 'Kitab Hariwangsa karangan Mpu Panuluh', 'Kitab Sutasoma karangan Mpu Tantular', 'Kitab Negarakertagama karangan Mpu Prapanca', 0, 0, 0, 5, 0),
(177, 2, 'Riwayat Kerajaan Kediri berakhir pada tahun 1222 setelah raja terakhir Kerajaan Kediri ditaklukkan Ken Arok pada peperangan di Ganter. Siapakah raja terakhir Kerajaan Kediri tersebut?', 'Sri Maharaja Rakai Sirikan Sri Bameswara', 'Kameswara', 'Kertanegara', 'Kertajaya', 'Jayabhaya', 0, 0, 0, 5, 0),
(178, 2, 'Kitab Kekawin Bharatayuddha digubah oleh Mpu Sedah pada masa pemerintahan Raja Jayabhaya. Sebelum kitab tersebut selesai digubah, Mpu Sedah meninggal dunia. Penggubahan kitab Kekawin Bharatayudha kemudian dilanjutkan oleh ….', 'Mpu Kanwa', 'Mpu Tanakung', 'Mpu Panuluh', 'Mpu Darmaja', 'Mpu Monaguna', 0, 0, 5, 0, 0),
(179, 2, 'Pada tahun 929, Mpu Sendok atau Maharaja Rakai Hino Sri Isyana Wikramadharmotunggadewa memindahkan pusat pemerintahan Kerajaan Mataram ke wilayah Jawa Timur serta membentuk wangsa Isyana. Nama kerajaan kemudian berubah menjadi kerajaan ….', 'Singasari', 'Jenggala', 'Panjalu', 'Majapahit', 'Kahuripan', 0, 0, 0, 0, 5),
(180, 2, 'Salah satu sistem pemerintahan negara Indonesia menurut UUD 1945 adalah ….', 'Negara berdasarkan kekuasaan', 'Negara berdasarkan sistem absolutisme', 'Negara berdasarkan kekuatan rakyat', 'Negara berdasarkan ketuhanan', 'Negara berdasarkan sistem konstitusi', 0, 0, 0, 0, 5),
(181, 2, 'Lembaga Yudikatif sejak masa reformasi dan adanya amandemen UUD 1945 dijalankan oleh ….', 'Mahkamah Agung', 'Mahkamah Konstitusi', 'Dewan Perwakilan Rakyat (DPR)', 'Majelis Permusyawaratan Rakyat (MPR)', 'Dewan Pertimbangan Agung (DPA)', 5, 0, 0, 0, 0),
(182, 2, 'Dewan Perwakilan Daerah (DPD) merupakan dewan yang anggotaanggotanya mewakili daerah atau provinsi masing-masing. Bagaimana mekanisme pemilihan anggota Dewan Perwakilan Daerah (DPD) dan berapa orang jumlah mereka yang mewakili setiap daerah atau provinsi tersebut?', 'Ditunjuk langsung oleh gubernur di daerahnya masing-masing dan jumlah mereka 4 orang', 'Dipilih langsung oleh seluruh anggota Dewan Perwakilan Rakyat Daerah (DPRD) di daerahnya masingmasing dan jumlah mereka 4 orang', 'Dipilih langsung oleh rakyat di daerahnya masing-masing dan jumlah mereka 4 orang', 'Dipilih langsung oleh rakyat di daerahnya masing-masing dan jumlah mereka 5 orang', 'Dipilih berdasarkan prestasi dan ketokohan di daerahnya masingmasing dan jumlah mereka 5 orang', 0, 0, 5, 0, 0),
(183, 2, 'Komisi III Dewan Perwakilan Rakyat (DPR) membawahi bidang ….', 'Pertanian dan pangan', 'Transportasi dan infrastruktur', 'Industri dan perdagangan', 'Hukum, HAM, dan keamanan', 'Kependudukan dan kesejahteraan', 0, 0, 0, 5, 0),
(184, 2, 'Anggota Komisi Yudisial diangkat dan diberhentikan oleh ….', 'Presiden dengan persetujuan Dewan Perwakilan Rakyat', 'Presiden dengan persetujuan Majelis Permusyawaratan Rakyat', 'Mahkamah Konstitusi', 'Mahkamah Agung', 'Jaksa Agung', 5, 0, 0, 0, 0),
(185, 1, '<p>C, G, K, O, ...., .....<br></p>', 'T dan X', 'S dan V', 'S dan W', 'R dan V', 'R dan W', 0, 0, 5, 0, 0),
(186, 1, 'A, B, M, N, C, D, M, N, E, ...., .....', 'F dan M', 'M dan N', 'G dan M', 'G dan N', 'F dan G', 5, 0, 0, 0, 0),
(187, 1, 'E, D, U, G, F, V, I, H, W, ...., .....', 'J dan X', 'K dan J', 'L dan K', 'K dan L', 'J dan K', 0, 5, 0, 0, 0),
(188, 1, 'G, G, Z, J, J, Y, M, M, X, P, ...., ....', 'P dan V', 'V dan P', 'W dan P', 'P dan W', 'S dan W', 0, 0, 0, 5, 0),
(189, 1, 'G, H, I, I, J, K, L, L, M, N, O, ...., ....', 'P dan P', 'P dan Q', 'O dan O', 'O dan P', 'O dan Q', 0, 0, 0, 5, 0),
(190, 1, 'B, W, D, U, F, S, H, Q, ...., .....', 'K dan O', 'J dan P', 'J dan O', 'O dan J', 'J dan N', 0, 0, 5, 0, 0),
(191, 1, 'B, C, D, E, H, C, D, E, N, C, D, ...., .....', 'E dan T', 'D dan T', 'E dan U', 'D dan U', 'F dan T', 5, 0, 0, 0, 0),
(192, 1, '<p>KERIS : JAWA<br></p>', 'Badik : Bali', 'Madura : Celurit', 'Kujang : Sunda', 'Pisau : Dapur', 'Aceh : Rencong', 0, 0, 5, 0, 0),
(193, 1, 'BECAK : KENDARAAN', 'Gadis : Orang', 'Bengawan : Sungai', 'Guru : Murid', 'Baja : Belati', 'Kapal : Perahu', 5, 0, 0, 0, 0),
(194, 1, '<p>INDONESIA : PAPUA NUGINI&nbsp;&nbsp;&nbsp;&nbsp; </p><p>PERANCIS : ….<br></p>', 'Inggris', 'Jerman', 'Spanyol', 'Portugal', 'Belanda', 0, 5, 0, 0, 0),
(195, 1, 'LELAH : ISTIRAHAT', 'Gadis : Orang', 'Makan : Lapar', 'Berolahraga : Sehat', 'Haus : Minum', 'Sakit : Obat', 0, 0, 0, 5, 0),
(196, 1, 'PELANGI : BIANGLALA', 'Kurus : Gemuk', 'Gelap : Terang', 'Alpa : Lengah', 'Banteng : Kerbau', 'Masinis : Nakhoda', 0, 0, 5, 0, 0),
(197, 1, 'DIAGONAL : SEGI EMPAT', 'Persegi panjang : Lebar', 'Segitiga : Sudut', 'Bujur sangkar : Luas', 'Trapesium : Jajaran genjang', 'Diameter : Lingkaran', 0, 0, 0, 0, 5),
(198, 1, 'HIU : LAUT', 'Kaktus : Gurun', 'Hutan : Harimau', 'Burung : Langit', 'Darah : Bakteri', 'Bunga : Taman', 5, 0, 0, 0, 0),
(199, 1, 'PERBUATAN : UCAPAN', 'Beras : Nasi', 'Bukti : Janji', 'Sakit : Opname', 'Hutang : Bayar', 'Sumpah : Perwujudan', 0, 5, 0, 0, 0),
(200, 1, '<p>CEPAT : LAJU</p><p>LAMBAT : ….<br></p>', 'Laun', 'Mundur', 'Melemah', 'Berkurang', 'Pelan', 0, 0, 0, 0, 5),
(201, 1, 'Margaret Thatcher : Inggris', 'Kartini : Indonesia', 'Imelda Marcos : Philipina', 'Indira Gandhi : India', 'Cleopatra : Mesir', 'Bunda Teresa : Albania', 0, 0, 5, 0, 0),
(202, 3, '<p>Setelah meminta bantuan saya lembur semalam untuk kepentingan pribadinya, atasan membebaskan saya untuk tidak masuk kantor selama satu hari. Saya akan ....<br></p>', 'Menerimanya karena bisa saya gunakan untuk beristirahat', 'Tetap masuk kerja karena saya lembur bukan urusan kantor', 'Menerimanya karena memang saya telah membantunya', 'Meminta jatah libur pada saat saya membutuhkan saja', 'Tetap masuk kerja karena saya sudah mendapat imbalan uang', 3, 5, 2, 1, 4),
(203, 3, '<p>Seorang tamu merasa puas dengan pelayanan yang saya berikan dan ingin memberikan uang dengan nilai yang sangat menggiurkan kepada saya. Padahal peraturan kantor tidak memperbolehkan hal tersebut. Saya akan ....<br></p>', 'Menerima dan akan membaginya dengan teman di ruangan saya', 'Menolaknya, namun apabila memaksa akan saya terima', 'Memintanya untuk memberikan di luar kantor karena tidak enak dengan teman yang lain', 'Menerimanya untuk kemudian disampaikan kepada atasan', 'Menolak dengan halus dan memberitahukan tentang peraturan di kantor', 2, 4, 1, 3, 5),
(204, 3, 'Saat terjadi kekosongan pimpinan dibagian tempat saya bekerja, saya diberikan tugas untuk menjadi pelaksana tugas pimpinan. Saya akan ....<br>', 'Meminta waktu untuk memikirkannya', 'Menolaknya karena beban kerjanya sungguh berat', 'Menerima dan melaksanakan dengan sebaik mungkin', 'Menolak dan menyarankan teman lain untuk menggantikan saya', 'Menerima dan meminta bantuan teman untuk membantu saya', 3, 1, 5, 2, 4),
(205, 3, 'Saya sangat senang melakukan perjalanan dan berpetualang karena ....<br>', 'Memberikan energi baru untuk bekerja', 'Bisa melakukan hal hal baru', 'Bisa melupakan beban pekerjaan', 'Membuat hati menjadi tenang', 'Bisa bertemu dengan banyak orang baru', 3, 5, 1, 2, 4),
(206, 3, 'Dalam menghadapi sebuah permasalahan, biasanya saya mempunyai ide ide yang ....<br>', 'Sama dengan banyak orang', 'Segar dan memberi solusi', 'Sedikit ketinggalan jaman', 'Biasa saja', 'Biasa diterima banyak orang', 3, 5, 1, 2, 4),
(207, 3, 'Perusahaan membutuhkan masukan terkait sistem kerja baru dan faslitas karyawan untuk tahun depan. Saya akan ....<br>', 'Membiarkan orang lain mengajukan ide terlebih dahulu', 'Memberikan masukan hanya apabila diperintahkan oleh atasan', 'Tidak ikut memberikan masukan', 'Memberi masukan sistem kerja yang efektif untuk perusahaan dan karyawan', 'Mendukung ide dari teman dekat saya', 3, 4, 1, 5, 2),
(208, 3, 'Saat sedang menikmati makan siang pada jam istirahat, tiba tiba datang seorang tamu yang membutuhkan pelayanan dikantor saya. Kebetulan teman saya di bagian tersebut sedang keluar, saya akan ....<br>', 'Menelepon teman saya untuk segera kembali kekantor', 'Segera membantu tamu tersebut sebisa saya', 'Meminta teman yang lain untuk menemani tamu tersebut', 'Membiarkan saja karena itu bukan tanggung jawab saya', 'Menerima tamu tersebut dan memintanya untuk menunggu', 3, 5, 2, 1, 4),
(209, 3, 'Seorang pelanggan datang dan mengajukan komplain saat saya sedang sibuk mengerjakan pekerjaan saya. Yang saya lakukan adalah ....<br>', 'Menyarankan pelanggan tersebut untuk mengajukan permasalahannya ke teman saya', 'Menolak melayani karena sedang mengerjakan pekerjaan', 'Menghentikan pekerjaan dan melayani pelanggan tersebut terlebih dahulu', 'Tetap mengerjakan pekerjaan sambil mendengarkan permasalahan pelanggan', 'Meminta bantuan teman untuk mengerjakan pekerjaan saya karena saya harus melayani pelanggan', 3, 1, 5, 2, 4),
(210, 3, 'Saat pergantian jam kerja, rekan kerja saya belum datang. Sementara masih ada beberapa orang yang harus dilayani. Saya akan ....<br>', 'Meninggalkan pekerjaan karena jam kerja saya sudah habis', 'Melayani dengan sebal', 'Memintanya untuk menunggu teman saya melanjutkan pelayanan', 'Tetap melanjutkan pelayanan sambil menunggu teman saya datang', 'Berkonsultasi dengan atasan apa yang harus saya lakukan', 1, 4, 2, 5, 3),
(211, 3, 'Saat sedang mengerjakan sebuah proyek, anak teman kerja saya masuk rumah sakit. Saya akan ....<br>', 'Tetap melanjutkan pekerjaan sesuai dengan tugas masing masing', 'Ikut bersedih dan memikirkan keadaan teman saya', 'Menghibur teman saya', 'Memberinya waktu yang cukup untuk merawat anaknya dan membatu menyelesaikan pekerjaannya', 'Menemani teman saya dan menunda penyelesaian pekerjaan', 1, 4, 3, 5, 2),
(212, 3, 'Seorang teman kerja membutuhkan bantuan saya, sementara saat itu saya juga sibuk dengan pekerjaan saya. Saya akan ....<br>', 'Menolaknya karena saya sendiri sedang sibuk', 'Memintanya untuk mencari bantuan teman lain', 'Tidak memedulikannya karena fokus dengan pekerjaan saya', 'Akan membantunya setelah pekerjaan saya selesai', 'Memarahinya karena telah mengganggu saya', 3, 4, 2, 5, 1),
(213, 3, 'Saya sedang melakukan pembayaran di sebuah supermarket saya menyadari bahwa uang kembalian yang saya terima kurang dari seharusnya. Saya akan ....<br>', 'Memberitahu kasir dan memintanya untuk lebih berhati hati', 'Marah dan meminta kasir untuk segera mengembalikan uang saya', 'Mengabaikannya karena mungkin tidak sengaja berbuat kesalahan', 'Membiarkan saja karena tidak seberapa', 'Melakukan konfirmasi untuk mengecek kebebaran uang kembalian', 4, 1, 3, 2, 5),
(214, 3, '<p>Saya akan ditugaskan untuk melakukan sebuah pekerjaan di daerah yang belum saya datangi sama sekali. Saya akan ....<br></p>', 'Menolak tugas tersebut', 'Mencari informaasi selengkap mungkin tentang daerah tersebut ', 'Memikirkannya saat akan berangkat', 'Bertanya kepada teman yang pernah ditugaskan disana', 'Mendatangi kota tersebut sebelum mulai bertugas untuk melakukan survei', 1, 4, 2, 3, 5),
(215, 3, 'Menghadapi sebuah kondisi baru, saya selalu merasa ....<br>', 'Takut', 'Tidak yakin', 'Biasa saja', 'Senang', 'Antusias', 1, 2, 3, 5, 4),
(216, 3, 'Saya harus berbagi ruangan dengan rekan kerja. PAdahal saya merasa lebih nyaman dan bekerja sendiri dalam ruangan. Yang saya lakukan adalah ....<br>', 'Membuat rekan kerja saya tidak nyaman', 'Pindah ke ruangan lain yang kosong', 'Membiasakan diri dan membangun suasanan kerja yang menyenangkan', 'Bekerja dengan setengah hati', 'Melakukan protes kepada atasan karena menempatkan orang di ruangan saya', 1, 4, 5, 3, 2),
(217, 3, 'Atasan saya memberikan penilaian kinerja yang buruk terhadap diri saya, Maka saya akan ....<br>', 'Bekerja dengan baik', 'Merasa sedih', 'Intropeksi diri dan memperbaiki kekuranagn saya', 'Membenci atasan saya', 'Menjadi malas bekerja', 4, 3, 5, 1, 2),
(218, 3, 'Banyak orang yang membicarakan kekurangan dan kelemahan saya dalam bekerja dibelakang saya. Sikap saya adalah ....<br>', 'Merasa marah dan membenci orang yang membicarakan saya', 'Berusaha memperbaiki kekurangan saya tersebut', 'Menegur mereka yang membicarakan saya', 'Biasa saja karena semua orang mempunyai kekurangan dan kelemahan', 'Berusaha mencari kekurangan dan kelemahan orang yang membicarakan saya itu', 1, 5, 3, 4, 2),
(219, 3, 'Saya mengalami kegagalan dalam tes seleksi CPNS, padahal itu merupakan cita cita saya sejak lama. Saya ....<br>', 'Tidak menyerah dan tetap mempersiapkan diri untuk tes selanjutnya', 'Merasa sedih namun hanya sebentar saja', 'Merasa sangat bodoh dan meratapi nasib saya', 'Meninggalkan cita cita saya tersebut dan merasa ini bukan jalan saya', 'Tidak terima dan merasa ada yang salah dalam tes seleksi', 5, 4, 3, 1, 2),
(220, 3, 'Dalam melaksanakan suatu tugas yang telah dipercayakan kepada saya, saya akan ....<br>', 'Selalu menunggu keputusan pimpinan', 'Berani mengambil keputusan sendiri', 'Membuat keputusan dengan bantuan teman yang lain', 'Tidak berani mengambil keputusan sendiri', 'Hanya mengambil keputusan yang berada dalam wewenang saya', 2, 5, 3, 1, 4),
(221, 3, 'Saya tiba tiba mendapat tugas keluar kota sampai dengan delapan bulan. Padahal saya belum membuat laporan kerja bulanan. Saya akan ....<br>', 'Membuat laporan kerja bulanan setelah pulang dari tugas keluar kota', 'Tidak membuat laporan kerja bulanan', 'Menyelesaikan laporan kerja bulanan sebelum sebelum berangkat tugas', 'Meminta bantuan teman untuk mengerjakan laporan kerja bulanan', 'Meminta pertimbangan atasan', 3, 1, 5, 2, 4),
(222, 3, '<p>Disaat kami menyelesaikan sebuah proyek, patner saya mendadak sakit, padahal target waktu yang diberikan sudah sangat dekat. Saya akan ....<br></p>', 'Menyelesaikan pekerjaan sendirian dan memberi kesempatan patner untek beristirahat', 'Segera mencari patner baru', 'Tidak menyelesaikan proyek tersebut', 'Meminta pengunduran teggat waktu', 'Mencari tenaga sementara yang dapat membantu mengerjakan pekerjaan patner saya', 5, 2, 1, 3, 4),
(223, 3, 'Beberapa hari saya akan menghadapi ujian kompetensi, dimana pada ujian sebelumnya saya gagal dengan hasil yang kurang baik. Saya akan ....<br>', 'Belajar berdasarkan soal ujian kompetensi yang kemarin', 'Mempersiapkan diri dengan lebih baik supaya berhasil lolos dengan hasil yang memuaskan', 'Melakukan persiapan dan belajar sewajarnya', 'Mencari kemungkinan jalan pintas untuk lolos uji kompetensi', 'Tidak belajar karena itu tidak berpengaruh terhadap karier saya', 4, 5, 3, 1, 2),
(224, 3, 'Menurut saya, kuliah dan menuntut ilmu saat sudah bekerja adalah ....<br>', 'Sauatu yang sia sia', 'Harus kita lakukan karena tuntutan kantor', 'Boleh dilakukan kalau tidak banyak pekerjaan', 'Dilakukan untuk mendapatkan kenaikan jabatan', 'Penting untuk meningkatkan pengetahuan kita', 1, 2, 4, 3, 5),
(225, 3, 'Saya mendapat tugas untuk melanjutkan pendidikan diluar kota, sementara anak anak saya masih kecil. Yang saya lakukan ....<br>', 'Mempertimbangkannya dengan keluarga', 'Menolak tugas tersebut', 'Menerima tugas tersebut dan membawa keluarga untuk pindah dan tinggal bersama', 'Meminta atasan untuk menunda tugas tersebut', 'Menerima tugas tersebut dan menjalani jauh dari keluarga untuk sementara', 3, 1, 5, 2, 4),
(226, 3, 'Dalam sebuah tim sepak bola, saya memiliki kemampuan dibawah teman teman anggota tim lainnya. Saya akan ....<br>', 'Merasa Minder', 'Malas Berlatih', 'Berlatih lebih giat', 'Keluar dari tim', 'Berlatih sesuai jadwal', 3, 2, 5, 1, 4),
(227, 3, 'Divisi tempat saya bekerja sedang mengalami samalah manajemen keuangan yang sangat serius. Saya akan ....<br>', 'Mencari peluang untuk pindah ke divisi lain yang lebih sehat manajemennya', 'Mencoba mencari solusi dari divisi lain yang pernah mengalami hal serupa', 'Tetap bekerja seperti biasa dan tidak ikut memikirkannya', 'Membiarkan itu menjadi urusan manajer keuangan', 'Menganalisis sumber masalah dan membantu mencari alternatif solusi', 1, 4, 3, 2, 5),
(228, 3, 'Secara ideal saya ingin bekerja dalam sebuah tim yang ....<br>', 'Berprestasi tinggi', 'Tidak menyita banyak waktu', 'Terdiri atas bagian bagian terpisah', 'Saling menopang', 'Memberikan keuntungan', 4, 2, 3, 5, 1),
(229, 3, 'anak buah saya mengerjakan pekerjaannya dengan sangat baik melebihi target yang diberikan. Yang saya lakukan ....<br>', 'Memujinya dan menyemangatinya supaya dia semakin termotivasi', 'Memberikan sedikit penghargaan dan memintanya untuk menjaga prestasi kerjanya', 'Memberikannya target yang sedikit lebih tinggi', 'Mengusulkannya untuk promosi jabatan', 'Biasa saja dan mengganggap itu sebagai prestasi yang wajar', 4, 5, 1, 3, 2),
(230, 3, 'Beberapa anggota kelompok saya cendrung malas dan susah bekerja sama dengan yang lain. Yang saya lakukan ....<br>', 'Langsung mengeluarkan mereka', 'Mencari solusi sendiri dan membuat kebijakan untuk mereka', 'Memarahi dan meminta mereka untuk bekerja serius ', 'Memanggil mereka dan menanyakan apa masalah mereka', 'Membiarkan saja', 2, 4, 3, 5, 1),
(231, 3, 'Kawasan di sekitar perumahan saya banyak rumput yang tinggi sehingga terlihat kumuh dan mengganggu kenyamanan. Yang saya lakukan ....<br>', 'Memanggil orang untuk membersihkannya', 'Membiarkan saja karena bukan urusan saya sendiri', 'Melaporkan kondisi yang ada kepada kepada ketua RT', 'Mengajak warga sekitar untuk bersama sama membersihkan', 'Membersihkan rumput tersebut sendirian', 3, 1, 2, 5, 4),
(232, 3, 'Saya sedang dalam perjalanan ke kantor menggunakan kendaraan umum, Tiba tiba kendaraan tersebut mogok di jalan. Saya akan ....<br>', 'Menggunkan kendaraan tersebut selesai diperbaiki', 'Berusaha mencari kendaraan lain untuk ke kantor', 'Mengabari teman dikantor dan menyampaikan bahwa saya akan terlambat', 'Meminta teman kantor untuk menjemput saya', 'merusaha secepatnya untuk ke kantor supaya tidak terlambat', 1, 4, 2, 3, 5),
(233, 3, 'Saat melaksanakan tugas yang menurut saya berat dan diluar kemampuan, biasanya saya ....<br>', 'Meminta teman untuk membantu saya mengerjakannya', 'Menyerah dan meninggalkan tugas tersebut', 'Belajar dari orang yang lebih mengerti tentang tugas tersebut', 'Berusaha menyelesaikannya sedikit demi sedikit', 'Meminta teman untuk menggantikannya', 3, 1, 4, 5, 2),
(234, 3, 'Suatu hari terjadi kesalah pahaman antara saya dengan rekan kerja saya, saya akan ....<br>', 'Tidak mau peduili selama tidak menggangu pekerjaan', 'Mencari akar permasalahan dan menyelesaikannya dengan baik baik', 'Membiarkan saja', 'Merasa bingung dan cemas', 'Tidak mau bertemu dengan rekan kerja tersebut', 4, 5, 3, 2, 1),
(235, 3, 'Ketika mendapatkan suatu hasil yang buruk atas perbuatan saya, saya bisanya ....<br>', 'Menyalahkan orang lain karean tidak mengingatkan saya', 'Menerima dengan ikhlas segala akibatnya', 'Menerima dengan setengah menyesal ', 'Menyesali terus menerus', 'Menyalahkan orang lain yang mengajak saya melakukan perbuatan tersebut', 2, 5, 4, 3, 1),
(236, 3, 'Saat orang alin menilai saya jelek saya akan ....<br>', 'Tidak peduli', 'Sedih', 'Intropeksi diri', 'Tidak terima dan meminta penjelasan', 'Mencari kejelekan orang tersebut', 2, 4, 5, 3, 1),
(237, 3, 'Patner kerja yang baik menurut saya adalah yang ....<br>', 'Menurut kepada saya', 'Lebih pintar dari pada saya', 'Saling melengkapi dengan saya', 'Berani dan tegas', 'Jujur dan santun', 1, 2, 4, 3, 5),
(238, 3, 'Saya baru saja menerima penghargaan dari kantor atas kinerja saya selama ini. Saya akan ....<br>', 'Bekerja lebih giat untuk memotivasi teman teman kantor yang lain', 'Tetap bekerja seperti biasa', 'Bekerja lebih giat agar mendapat penghargaan lagi', 'Bersyukur dan berusaha mempertahankannya', 'Menunjukkan penghargaan tersebut kepada teman teman kantor', 4, 2, 3, 5, 1),
(239, 3, '<p>Jika harus menilai diri sendiri, saya merupakan tipe orang yang ....<br></p>', 'Senang bekerja keras', 'Santun dan taat peraturan', 'Penuh tanggung jawab', 'Senang menerima tantangan baru', 'Memiliki ambisi tinggi', 4, 1, 3, 5, 2),
(240, 3, 'Hasil survei menunjukan bahwa saat ini perusahaan kami berada di urutan ketiga perusahaan terbaik di kota kami. Untuk menjadi yang terbaik cara yang harus dilakukan menurut saya adalah ....<br>', 'Meningkatkan kinerja perusahaan', 'Membentuk opini publik yang akan dapat mempengaruhi hasil survei', 'Mendekati lembaga survei untuk memenangkan perusahan kami', 'Berusaha mencari kelemahan perusahaan lawan dan mengeksplornya ke masyarakat', 'Tetap seperti biasa, karena hasil survei itu tidak begitu signifikan terhadap perkembangan perusahaan', 5, 4, 2, 3, 1),
(241, 3, '<p>Atasan meminta saya untuk melakukan sebuah pekerjaan yang di luar kemampuan saya. Saya akan ....<br></p>', 'Mempertimbangkan sebelum memutuskan untuk menerima', 'Mencoba setelah sebelumnya menjelaskan kondisi kemampuan saya', 'Menerimanya dengan setengah hati', 'Menolak pekerjaan tersebut', 'Menerimanya dan kemudian meminta bantuan teman untuk menyelesaikannya', 4, 5, 2, 1, 3),
(242, 3, 'Dalam perjalan karir saya, saya mengalami banyak keberhasilan karena saya ....<br>', 'Memiliki nasib yang sangat baik', 'Berani mengambil risiko', 'Saya memiliki sikap yang layak untuk meraih keberhasilan', 'Ulet dan tidak pernah menyerah', 'Banyak orang orang yang membantu', 1, 3, 5, 4, 2),
(243, 3, 'Saat sedang menghadapi suatu masalah saya adalah tipikal orang yang ....<br>', 'Mudah tersinggung', 'Tetap seperti saya yang biasanya', 'Peurung', 'Bingung dan suka cemas', 'Tidak mau bertemu orang', 2, 5, 4, 3, 1),
(244, 3, 'Anak buah saya menolak dan tidak mau melaksanakan tugas yang saya berikan kepadanya. Sikap saya terhadapnya adalah ....<br>', 'Berlapang dada dan membiarkan', 'Langsung memberikan hukuman kepadanya', 'Menanyakan alasan keberatannya dan membuat keputusan dari situ', 'Memindahkannya ke bagian lain yang lebih rendah kedudukannya', 'Memberinya peringatan untuk tidak menolak tugas lagi', 3, 2, 5, 1, 4),
(245, 3, 'Pada saat saya membutuhkan bantuan, teman dekat saya menolak untuk memberikan bantuan. Saya akan ....<br>', 'Sakit hati dan tidak mau membantunya jika dia memerlukannya', 'Menerima keputusannya', 'Tidak mau berteman lagi dengannya', 'Merasa kecewa dengannya', 'Memohon dan memaksa ia untuk membantu saya', 2, 5, 1, 4, 3),
(246, 3, 'Perusahaan membuat kebijakan untuk memotong uang lembur karyawan tanpa pemberitahuan terlebih dahulu. Saya akan ....<br>', 'Tetap bekerja seperti biasa', 'Bekerja dengan malas malasan', 'Mengajak teman sekantor untuk mengadakan demo', 'Mengundurkan diri sendiri perusahan', 'Meminta penjelasan dari atasan terkait kebijakan tersebut', 4, 3, 2, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_soal`
--

CREATE TABLE `tbl_kategori_soal` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(128) NOT NULL,
  `singkatan` varchar(128) NOT NULL,
  `butir_soal` int(11) NOT NULL,
  `ambang_batas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori_soal`
--

INSERT INTO `tbl_kategori_soal` (`id`, `nama_kategori`, `singkatan`, `butir_soal`, `ambang_batas`) VALUES
(1, 'Tes Intelegensi Umum', 'TIU', 35, 80),
(2, 'Tes Wawasan Kebangsaan', 'TWK', 30, 65),
(3, 'Tes Karakteristik Pribadi', 'TKP', 35, 126);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `id` int(11) NOT NULL,
  `simulasi_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`id`, `simulasi_id`, `kategori_id`, `nilai`) VALUES
(7, 11, 1, 50),
(8, 11, 2, 25),
(9, 11, 3, 104),
(10, 12, 1, 20),
(11, 12, 2, 50),
(12, 12, 3, 95),
(13, 13, 1, 30),
(14, 13, 2, 50),
(15, 13, 3, 90),
(31, 19, 1, 20),
(32, 19, 2, 30),
(33, 19, 3, 104),
(34, 20, 1, 35),
(35, 20, 2, 50),
(36, 20, 3, 95);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_simulasi`
--

CREATE TABLE `tbl_simulasi` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `waktu_mulai` datetime NOT NULL,
  `waktu_selesai` datetime NOT NULL,
  `token_simulasi` varchar(256) NOT NULL,
  `status_simulasi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_simulasi`
--

INSERT INTO `tbl_simulasi` (`id`, `user_id`, `list_jawaban`, `waktu_mulai`, `waktu_selesai`, `token_simulasi`, `status_simulasi`) VALUES
(11, 18, '150:1:A:0:T,147:1:E:0:T,146:1:C:0:T,185:1:C:5:T,199:1:B:5:T,148:1:C:0:T,155:1:A:0:T,193:1:C:0:T,188:1:D:5:T,136:1:D:0:T,60:1:A:5:T,144:1:D:0:T,138:1:E:0:T,142:1:E:0:T,187:1:E:0:T,134:1:B:0:T,201:1:C:5:T,194:1:D:0:T,149:1:D:0:T,153:1:C:0:T,135:1:D:5:T,92:1:C:0:T,198:1:D:0:T,151:1:C:0:T,137:1:D:0:T,195:1:B:0:T,132:1:E:0:T,191:1:E:0:T,88:1:C:0:T,139:1:C:5:T,59:1:A:0:T,145:1:B:0:T,152:1:D:5:T,140:1:E:5:T,192:1:C:5:T,171:2:A:5:T,119:2:D:0:T,170:2:A:0:T,184:2:A:5:T,112:2:B:0:T,162:2:B:0:T,169:2:D:0:T,110:2:C:0:T,114:2:B:0:T,77:2:D:0:T,126:2:E:0:T,97:2:D:0:T,163:2:B:0:T,98:2:D:0:T,109:2:B:0:T,174:2:B:5:T,182:2:A:0:T,100:2:A:0:T,121:2:C:0:T,166:2:E:0:T,63:2:C:5:T,108:2:B:0:T,178:2:D:0:T,161:2:A:0:T,64:2:A:0:T,177:2:C:0:T,82:2:D:0:T,131:2:D:5:T,130:2:A:0:T,105:2:C:0:T,219:3:B:4:T,228:3:D:5:T,221:3:E:4:T,211:3:E:2:T,157:3:B:3:T,204:3:A:3:T,246:3:B:3:T,245:3:A:2:T,243:3:D:3:T,213:3:A:4:T,214:3:E:5:T,220:3:D:1:T,232:3:B:4:T,212:3:C:2:T,231:3:C:2:T,203:3:D:3:T,218:3:C:3:T,159:3:E:1:T,242:3:E:2:T,238:3:D:5:T,237:3:A:1:T,240:3:D:3:T,202:3:E:4:T,235:3:E:1:T,215:3:E:4:T,233:3:B:1:T,244:3:E:4:T,236:3:D:3:T,222:3:E:4:T,224:3:E:5:T,234:3:E:1:T,156:3:B:4:T,216:3:E:2:T,223:3:E:2:T,205:3:E:4:T', '2020-01-24 19:41:25', '2020-01-24 21:11:25', 'UOBKYacwscfXPJf0OO13qNCRoZU9Lht/i/MZO+HBW6g=', 'Selesai'),
(12, 18, '151:1:A:0:T,189:1:B:0:T,134:1:D:0:T,185:1:B:0:T,186:1:C:0:T,201:1:D:0:T,89:1:B:0:T,137:1:C:5:T,142:1:E:0:T,187:1:C:0:T,194:1:A:0:T,153:1:A:0:T,152:1:C:0:T,133:1:D:0:T,144:1:D:0:T,154:1:B:0:T,94:1:A:0:T,62:1:B:0:T,136:1:C:0:T,92:1:B:0:T,199:1:E:0:T,59:1:B:0:T,198:1:D:0:T,139:1:D:0:T,196:1:D:0:T,193:1:B:0:T,132:1:C:0:T,197:1:B:0:T,135:1:D:5:T,146:1:D:5:T,148:1:C:0:T,143:1:E:5:T,140:1:D:0:T,147:1:B:0:T,200:1:B:0:T,97:2:C:5:T,117:2:E:0:T,118:2:E:5:T,160:2:E:0:T,170:2:A:0:T,176:2:C:0:T,166:2:E:0:T,119:2:B:0:T,77:2:C:0:T,99:2:C:5:T,177:2:D:5:T,162:2:E:5:T,82:2:E:5:T,101:2:B:0:T,183:2:C:0:T,184:2:D:0:T,112:2:D:5:T,174:2:C:0:T,107:2:D:0:T,168:2:B:0:T,104:2:B:0:T,130:2:B:5:T,128:2:C:0:T,163:2:C:0:T,178:2:B:0:T,126:2:E:0:T,172:2:A:0:T,161:2:E:0:T,120:2:C:5:T,64:2:D:5:T,244:3:D:1:T,232:3:D:3:T,241:3:C:2:T,238:3:E:1:T,230:3:A:2:T,208:3:B:5:T,243:3:D:3:T,235:3:E:1:T,224:3:D:3:T,202:3:B:5:T,237:3:B:2:T,156:3:B:4:T,157:3:D:5:T,221:3:B:1:T,236:3:C:5:T,218:3:A:1:T,204:3:A:3:T,234:3:E:1:T,231:3:A:3:T,240:3:B:4:T,211:3:D:5:T,246:3:B:3:T,226:3:C:5:T,222:3:C:1:T,210:3:E:3:T,214:3:E:5:T,225:3:E:4:T,212:3:C:2:T,96:3:E:1:T,220:3:B:5:T,227:3:A:1:T,229:3:C:1:T,159:3:E:1:T,217:3:D:1:T,213:3:D:2:T', '2020-01-24 21:15:45', '2020-01-24 22:45:45', 'cKC8Vp5x/LZ5RPGbNzwj96IppABuPfQIBuNp49iLBbo=', 'Selesai'),
(13, 16, '152:1:A:0:T,59:1:B:0:T,139:1:B:0:T,88:1:B:0:T,149:1:A:0:T,197:1:A:0:T,136:1:E:0:T,185:1:E:0:T,193:1:E:0:T,92:1:C:0:T,138:1:E:0:T,146:1:D:5:T,200:1:A:0:T,147:1:B:0:T,144:1:B:5:T,137:1:E:0:T,198:1:E:0:T,196:1:D:0:T,192:1:B:0:T,135:1:B:0:T,151:1:D:0:T,199:1:E:0:T,187:1:D:0:T,189:1:D:5:T,194:1:B:5:T,86:1:B:0:T,148:1:C:0:T,188:1:B:0:T,186:1:E:0:T,143:1:D:0:T,145:1:E:0:T,60:1:A:5:T,190:1:D:0:T,140:1:D:0:T,133:1:E:5:T,130:2:B:5:T,128:2:D:0:T,116:2:B:0:T,100:2:D:5:T,173:2:E:5:T,127:2:B:0:T,125:2:B:0:T,121:2:A:5:T,164:2:A:0:T,98:2:A:0:T,85:2:C:0:T,82:2:B:0:T,105:2:C:0:T,109:2:E:0:T,123:2:C:5:T,175:2:A:5:T,163:2:B:0:T,124:2:B:5:T,107:2:E:0:T,106:2:C:5:T,64:2:A:0:T,178:2:B:0:T,111:2:B:5:T,174:2:B:5:T,126:2:A:0:T,131:2:B:0:T,180:2:A:0:T,115:2:D:0:T,101:2:B:0:T,176:2:C:0:T,226:3:D:1:T,227:3:E:5:T,242:3:B:3:T,218:3:A:1:T,232:3:A:1:T,231:3:A:3:T,233:3:A:3:T,212:3:A:3:T,228:3:A:4:T,245:3:A:2:T,221:3:A:3:T,241:3:A:4:T,222:3:A:5:T,214:3:A:1:T,234:3:D:2:T,246:3:A:4:T,213:3:A:4:T,235:3:B:5:T,208:3:D:1:T,243:3:E:1:T,207:3:B:4:T,159:3:C:3:T,202:3:A:3:T,224:3:B:2:T,230:3:A:2:T,217:3:D:1:T,204:3:C:5:T,156:3:A:1:T,215:3:B:2:T,210:3:B:4:T,237:3:D:3:T,225:3:B:1:T,205:3:C:1:T,157:3:C:1:T,236:3:E:1:T', '2020-01-25 10:39:37', '2020-01-25 12:09:37', 'qPjU0UsRtZ+J05RtmvMwAOMqkeTilb9K6qorV43L7Kg=', 'Selesai'),
(19, 16, '190:1:D:0:T,191:1:E:0:T,195:1:E:0:T,145:1:E:0:T,135:1:E:0:T,192:1:E:0:T,60:1:E:0:T,94:1:D:0:T,199:1:E:0:T,132:1:D:0:T,150:1:D:0:T,137:1:D:0:T,134:1:E:0:T,154:1:E:0:T,186:1:D:0:T,62:1:D:0:T,193:1:E:0:T,188:1:E:0:T,140:1:A:0:T,136:1:E:0:T,144:1:E:0:T,92:1:D:0:T,148:1:E:5:T,151:1:E:0:T,147:1:D:0:T,153:1:E:0:T,201:1:E:0:T,196:1:E:0:T,59:1:D:0:T,185:1:E:0:T,200:1:E:5:T,189:1:E:0:T,146:1:D:5:T,61:1:C:5:T,198:1:E:0:T,63:2:E:0:T,177:2:E:0:T,163:2:E:0:T,183:2:D:5:T,171:2:A:5:T,107:2:E:0:T,112:2:C:0:T,105:2:D:0:T,123:2:D:0:T,167:2:E:0:T,100:2:C:0:T,126:2:C:5:T,120:2:E:0:T,176:2:C:0:T,130:2:C:0:T,174:2:E:0:T,99:2:B:0:T,170:2:A:0:T,128:2:E:5:T,106:2:E:0:T,115:2:E:0:T,124:2:D:0:T,114:2:D:5:T,64:2:E:0:T,181:2:E:0:T,173:2:E:5:T,104:2:C:0:T,102:2:E:0:T,77:2:D:0:T,164:2:E:0:T,224:3:E:5:T,225:3:D:2:T,218:3:E:2:T,226:3:D:1:T,210:3:E:3:T,220:3:E:4:T,238:3:B:2:T,239:3:A:4:T,214:3:E:5:T,211:3:E:2:T,237:3:C:4:T,227:3:E:5:T,243:3:E:1:T,217:3:E:2:T,246:3:E:5:T,241:3:E:3:T,236:3:E:1:T,230:3:E:1:T,207:3:E:2:T,232:3:B:4:T,235:3:E:1:T,240:3:A:5:T,213:3:B:1:T,157:3:C:1:T,158:3:D:4:T,204:3:A:3:T,245:3:D:4:T,205:3:E:4:T,222:3:C:1:T,208:3:B:5:T,233:3:E:2:T,156:3:B:4:T,221:3:C:5:T,203:3:D:3:T,212:3:A:3:T', '2020-02-06 14:17:25', '2020-02-06 15:47:25', 'TbH4yam1b/1cqNcqodytQVHlU8OwIjqc+xmitBPLmaY=', 'Selesai'),
(20, 15, '142:1:A:0:T,200:1:C:0:T,149:1:A:0:T,146:1:B:0:T,148:1:C:0:T,196:1:D:0:T,185:1:E:0:T,89:1:E:0:T,193:1:D:0:T,190:1:C:5:T,192:1:B:0:T,195:1:A:0:T,92:1:A:0:T,138:1:B:5:T,199:1:C:0:T,151:1:D:0:T,60:1:A:5:T,143:1:D:0:T,155:1:D:0:T,194:1:E:0:T,62:1:A:5:T,86:1:A:0:T,188:1:B:0:T,198:1:B:0:T,201:1:C:5:T,144:1:C:0:T,154:1:C:0:T,145:1:E:0:T,139:1:B:0:T,133:1:E:5:T,135:1:B:0:T,189:1:C:0:T,152:1:B:0:T,153:1:D:5:T,94:1:B:0:T,166:2:E:0:T,77:2:B:5:T,174:2:D:0:T,110:2:E:0:T,184:2:B:0:T,161:2:D:0:T,118:2:C:0:T,125:2:C:0:T,63:2:B:0:T,102:2:D:0:T,100:2:A:0:T,116:2:C:5:T,177:2:B:0:T,123:2:C:5:T,85:2:B:0:T,120:2:C:5:T,97:2:C:5:T,104:2:C:0:T,129:2:B:5:T,82:2:D:0:T,160:2:D:0:T,171:2:A:5:T,121:2:B:0:T,64:2:D:5:T,101:2:C:5:T,181:2:D:0:T,172:2:A:0:T,127:2:A:0:T,170:2:B:0:T,114:2:D:5:T,227:3:C:3:T,215:3:E:4:T,241:3:A:4:T,226:3:B:2:T,219:3:D:1:T,235:3:E:1:T,210:3:D:5:T,225:3:C:5:T,209:3:D:2:T,242:3:C:5:T,229:3:C:1:T,202:3:B:5:T,221:3:B:1:T,230:3:C:3:T,238:3:D:5:T,232:3:C:2:T,211:3:C:3:T,234:3:C:3:T,206:3:C:1:T,222:3:C:1:T,214:3:A:1:T,156:3:A:1:T,244:3:D:1:T,231:3:B:1:T,157:3:B:3:T,240:3:B:4:T,216:3:E:2:T,237:3:C:4:T,213:3:B:1:T,220:3:E:4:T,243:3:D:3:T,204:3:E:4:T,239:3:A:4:T,212:3:E:1:T,218:3:D:4:T', '2020-02-07 07:56:31', '2020-02-07 09:26:31', '1h0P+BYf/fEFj9RB1dnwx1A1JbSr8fbB5Yqu9E/AV8Q=', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `role_id`, `nama`, `email`, `password`, `is_active`, `date_created`) VALUES
(14, 1, 'Bang Ambo', 'adminsimulasi@simulasi.com', '779e67af1412d15878ed0b6fc605a0e6a3519fd91db7ec2ca903d5eca8465d6cc0147a71d19e7e0235755234b5334ac44b6577939b4069a4933ee45c8cd68335oXKJ8XEslLL3NH4I+YW0DgZdpYtC0kptIRWbyRNIxdw=', 1, 1577627079),
(15, 2, 'Babang Tamvan', 'babangtamvannew@simulasi.com', 'd70a174001b4166a1c80ce283809f8b24858f91f8ae66aad8b5dfc786bcda7d331ff52f501de383cf99c339ead915e30d04546ea8c68d33fded2919ba0d68278wPR05ZXsPezf8jnbZdakmI1tdu4r4VTELBDBMYWY454=', 1, 1577627630),
(16, 2, 'Sobat Ambyar', 'sobatambyar@simulasi.com', 'c8294181c257836383727ed9ee59a3bffcfd92d34ede09d184970dce43c2757b16894b93ce7e5afcf77edf6480c393ee812d6173e0205df81744a66d52a7e71aI4ULyGbYRP2I0xjBT3il16EHZaTuVPKDTy+aEc5VlhY=', 1, 1577628763),
(18, 2, 'Lelah Mishquen Otewe Kaya', 'otewekaya@simulasi.com', '75e439ddc2c538b7ff1bb97fb8852a8802b6373b5fa126de7b11818e7aa694000a7ce290d6541bfddd9caaf1ff9a409e1ea024c636793342ee9665618303b8195xCRYcOyw1lYeVgwhDQLy49wokMb5VxvzDSb8dq16Gg=', 1, 1579868902);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bank_soal`
--
ALTER TABLE `tbl_bank_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `tbl_kategori_soal`
--
ALTER TABLE `tbl_kategori_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `simulasi_id` (`simulasi_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `tbl_simulasi`
--
ALTER TABLE `tbl_simulasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bank_soal`
--
ALTER TABLE `tbl_bank_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `tbl_kategori_soal`
--
ALTER TABLE `tbl_kategori_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_simulasi`
--
ALTER TABLE `tbl_simulasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bank_soal`
--
ALTER TABLE `tbl_bank_soal`
  ADD CONSTRAINT `tbl_bank_soal_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `tbl_kategori_soal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD CONSTRAINT `tbl_nilai_ibfk_1` FOREIGN KEY (`simulasi_id`) REFERENCES `tbl_simulasi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_nilai_ibfk_2` FOREIGN KEY (`kategori_id`) REFERENCES `tbl_kategori_soal` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_simulasi`
--
ALTER TABLE `tbl_simulasi`
  ADD CONSTRAINT `tbl_simulasi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tbl_user_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
