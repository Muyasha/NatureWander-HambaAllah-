-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 02:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naturewander`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'fahriza', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'riyaldo', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'yasir', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `blog1`
--

CREATE TABLE `blog1` (
  `id_blog` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog1`
--

INSERT INTO `blog1` (`id_blog`, `judul`, `isi`, `gambar`) VALUES
(1, 'Mendaki di Gunung Semeru', 'Saya kembali lagi ke Kota Malang. Tujuan saya kali ini mendatangi Kota Malang adalah untuk mendaki Gunung Semeru. Saya dan teman-teman di komunitas Backpacker Indonesia akan melakukan pendakian ke Gunung Semeru yang merupakan gunung tertinggi di Pulau Jawa. Tinggi Gunung Semeru yang mencapai 3676 mdpl, sudah cukup membuat jantung saya berdegub kencang saat membayangkan tingginya.', '1701529669.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `cerita_pengunjung`
--

CREATE TABLE `cerita_pengunjung` (
  `id_cerita` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `cerita` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cerita_pengunjung`
--

INSERT INTO `cerita_pengunjung` (`id_cerita`, `judul`, `lokasi`, `cerita`, `gambar`, `status`) VALUES
(1, 'Mendaki di Gunung Semeru', 'Gunung Semeru', 'Saya kembali lagi ke Kota Malang. Tujuan saya kali ini mendatangi Kota Malang adalah untuk mendaki Gunung Semeru. Saya dan teman-teman di komunitas Backpacker Indonesia akan melakukan pendakian ke Gunung Semeru yang merupakan gunung tertinggi di Pulau Jawa. Tinggi Gunung Semeru yang mencapai 3676 mdpl, sudah cukup membuat jantung saya berdegub kencang saat membayangkan tingginya.', '1701937373.jpeg', 1),
(13, 'Menghampiri lokasi Nyi Roro Kidul', 'Pantai Parangtritis', 'Saat mengunjungi Pantai Parangtritis, saya merasakan hembusan angin yang kuat dan aroma asin dari ombak yang memecah di sepanjang garis pantai. Pasir putih yang luas membentang di bawah langit biru cerah, mengundang langkah-langkah santai saya untuk menjelajahi sepanjang tepi pantai. Para penjaja suvenir dan kuda-kuda dengan sadel warna-warni menanti wisatawan yang ingin menjelajahi pantai ini dengan cara yang lebih unik.\r\n\r\nOmbak besar yang menghantam pantai Parangtritis menciptakan suara bergemuruh yang mengisi udara. Meskipun cuaca cerah, deburan ombak yang kuat menunjukkan kekuatan laut yang tak terbendung. Di kejauhan, saya melihat pemandangan Gunung Merapi yang megah, memberikan sentuhan alam yang memukau ke sepanjang garis pantai. Meski keramaian pengunjung terasa, ada kesan damai yang datang dari suara ombak yang terus-menerus. Pantai Parangtritis benar-benar memberikan pengalaman yang sederhana namun menakjubkan dalam keindahan alamnya yang alami.', '1701937651.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_foto` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_wisata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id_foto`, `foto`, `id_wisata`) VALUES
(1, 'Gunung_Merapi1.jpg', 1),
(2, 'Gunung_Merapi2.jpg', 1),
(3, 'Gunung_Merapi3.jpg', 1),
(4, 'Pantai_Parangtritis1.jpg', 2),
(5, 'Pantai_Parangtritis2.jpg', 2),
(6, 'Pantai_Parangtritis3.jpg', 2),
(7, 'Gunung-Rinjani1.jpg', 8),
(8, 'Gunung-Rinjani2.jpg', 8),
(9, 'Gunung-Rinjani3.jpg', 8),
(10, 'Pantai-Kuta1.jpg', 7),
(11, 'Pantai-Kuta2.jpg', 7),
(12, 'Pantai-Kuta3.jpg', 7),
(13, 'Taman-Nasional-Gunung Leuser1.jpg', 9),
(14, 'Taman-Nasional-Gunung Leuser2.jpg', 9),
(15, 'Taman-Nasional-Gunung Leuser3.jpg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_wisata`
--

CREATE TABLE `kategori_wisata` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_wisata`
--

INSERT INTO `kategori_wisata` (`id_kategori`, `nama`, `deskripsi`) VALUES
(1, 'Gunung', 'Gunung merupakan salah satu destinasi wisata yang populer di Indonesia. Gunung menawarkan keindahan alam yang memukau, mulai dari pemandangan alam yang asri, udara yang sejuk, hingga tantangan untuk mendaki. Di Indonesia terdapat banyak gunung yang populer untuk wisata, seperti Gunung Semeru, Gunung Rinjani, Gunung Bromo, Gunung Merapi, dan Gunung Kerinci'),
(2, 'Pantai', 'Pantai adalah area pesisir laut yang biasanya memiliki pasir, batuan, atau vegetasi. Pantai adalah tempat yang populer untuk berenang, berjemur, bermain olahraga air, dan piknik. Pantai juga merupakan tujuan wisata yang populer, dengan banyak orang yang mengunjunginya untuk menikmati pemandangan, suasana, dan aktivitasnya. '),
(3, 'Cagar Alam', 'Cagar alam adalah kawasan hutan yang dilindungi karena keunikan tumbuhan, satwa dan ekosistem yang dimiliki. Cagar alam memiliki fungsi utama sebagai tempat pelestarian keanekaragaman hayati, baik flora maupun fauna. Namun, cagar alam juga dapat menjadi objek wisata yang menarik bagi wisatawan.\r\n\r\nWisata cagar alam dapat menjadi sarana edukasi bagi wisatawan untuk mengenal lebih dekat tentang kekayaan alam Indonesia. Wisatawan dapat melihat berbagai jenis flora dan fauna yang hidup di cagar alam. Selain itu, wisatawan juga dapat mempelajari tentang ekosistem yang ada di cagar alam.');

-- --------------------------------------------------------

--
-- Table structure for table `most_popular1`
--

CREATE TABLE `most_popular1` (
  `id_place` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `most_popular1`
--

INSERT INTO `most_popular1` (`id_place`, `gambar`, `tempat`, `deskripsi`) VALUES
(1, 'image-5.png', 'Pantai Ancol ', 'ini deskripsi pantai ancol'),
(2, 'image-11.jpg', 'Pantai Melasti Ungasan', 'Pantai Melasti Ungasan adalah salah satu pantai terindah di Bali. Pantai ini terletak di Desa Ungasan, Kecamatan Kuta Selatan, Kabupaten Badung, Bali. Pantai Melasti dapat dicapai dengan berkendara sekitar 45 menit dari Bandara Internasional Ngurah Rai. \r\nPantai Melasti memiliki garis pantai yang panjang dan landai, dengan pasir putih yang lembut dan air laut yang jernih berwarna biru kehijauan. Pantai ini dikelilingi oleh tebing-tebing tinggi yang menjulang, sehingga menambah keindahannya.'),
(3, '1701630729.jpg', 'Gunung Semeru', 'Gunung Semeru, yang juga dikenal sebagai Mahameru, adalah gunung tertinggi di Pulau Jawa, Indonesia, dengan ketinggian mencapai 3.676 meter di atas permukaan laut. Gunung ini terletak di Taman Nasional Bromo Tengger Semeru, yang merupakan salah satu destinasi wisata alam paling populer di Indonesia.'),
(4, 'image-13.jpg', 'Gunung Bromo', 'Gunung Bromo adalah salah satu destinasi wisata yang paling terkenal di Indonesia, terletak di Taman Nasional Bromo Tengger Semeru, Jawa Timur. Tempat ini menawarkan pemandangan alam yang spektakuler, termasuk gunung berapi aktif, lautan pasir, dan panorama matahari terbit yang memukau.'),
(5, 'image-14.jpg', 'Cagar Alam Kawah Ijen', 'Kawah Ijen merupakan bagian dari gunung berapi kompleks Ijen, yang terletak di ujung timur Gunung Ijen. Kawah ini terbentuk akibat runtuhnya dinding kawah purba gunung ini. Kawah Ijen memiliki panjang sekitar 1 kilometer dan lebar sekitar 0,8 kilometer, dengan kedalaman mencapai sekitar 300 meter. Namun, daya tarik utama dari Kawah Ijen bukan hanya ukurannya, melainkan fenomena alam yang langka yang terjadi di dalamnya.');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id_wisata` int(11) NOT NULL,
  `nama_lokasi` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `foto_gambar` varchar(255) NOT NULL,
  `jumlah_pengunjung` int(11) NOT NULL DEFAULT 0,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id_wisata`, `nama_lokasi`, `deskripsi`, `lokasi`, `foto_gambar`, `jumlah_pengunjung`, `id_kategori`) VALUES
(1, 'Gunung Merapi', 'Gunung Merapi, yang terletak di pulau Jawa, Indonesia, adalah salah satu gunung berapi paling aktif dan ikonik di dunia. Dengan ketinggian mencapai 2.963 meter di atas permukaan laut, Merapi memiliki bentuk kerucut yang indah namun berbahaya. Daerah sekitarnya dikelilingi oleh lereng yang subur dan merupakan tempat tinggal bagi banyak penduduk, meskipun ancaman letusan selalu ada. Merapi sering menunjukkan aktivitas vulkaniknya dengan letusan kecil hingga besar, menyebabkan aliran lava, awan panas, dan material piroklastik. Keberadaan Gunung Merapi telah membentuk lanskap budaya dan spiritual di sekitarnya, dengan masyarakat lokal yang memandangnya sebagai entitas suci yang memiliki kekuatan mistis. Meskipun risiko letusan tetap ada, pemantauan yang ketat dan upaya mitigasi bencana telah diimplementasikan untuk melindungi penduduk dan memahami dinamika gunung ini.', 'https://www.google.com/maps/place/Gunung+Merapi/@-7.5407169,110.4250814,14z/data=!3m1!4b1!4m6!3m5!1s0x2e7a641ec0ff2fa5:0xe92612624cad8800!8m2!3d-7.5407175!4d110.4457241!16zL20vMDQ4ajVo?entry=ttu', 'Gunung_Merapi1.jpg', 20, 1),
(2, 'Pantai Parangtritis', 'Pantai Parangtritis, terletak di selatan Yogyakarta, Indonesia, memikat pengunjung dengan keindahan alamnya yang memukau dan atmosfer yang magis. Terkenal dengan garis pantainya yang panjang, pasir putih yang lembut, dan ombak yang menggulung, Parangtritis menjadi destinasi wisata yang populer. Pohon kelapa yang menjulang dan langit biru yang cerah menambah pesona pantai ini. Pantai ini juga melibatkan elemen budaya lokal, dengan kuda kereta andong yang menjadi ikonik dan keramahtamahan pedagang lokal yang menawarkan berbagai suvenir dan makanan khas. Wisatawan dapat menikmati sunset yang menakjubkan di Pantai Parangtritis, menciptakan pengalaman yang tak terlupakan di tepi Samudera Hindia yang memukau.', 'https://www.google.com/maps/place/Pantai+Parangtritis/@-8.0253988,110.3081287,14z/data=!3m1!4b1!4m6!3m5!1s0x2e7b00975eac533d:0x351bfe1453e22e36!8m2!3d-8.024608!4d110.3298045!16s%2Fg%2F11b_012ymp?entry=ttu', 'Pantai_Parangtritis1.jpg', 46, 2),
(7, 'Pantai Kuta', '\r\nPantai Kuta adalah salah satu pantai yang terkenal di Pulau Bali, Indonesia. Terletak di sebelah selatan Denpasar, Pantai Kuta dikenal karena keindahan pasir putihnya yang luas, ombak yang cocok untuk berselancar, dan pemandangan matahari terbenam yang spektakuler. Pantai ini sering dianggap sebagai salah satu pantai terbaik di Bali dan menjadi tujuan wisata utama bagi pengunjung yang mencari keindahan alam dan kegiatan rekreasi.\r\n\r\nPantai Kuta menawarkan suasana yang hidup dan ramai, terutama di sepanjang tepi pantai yang penuh dengan warung, restoran, toko suvenir, dan tempat hiburan malam. Di sepanjang garis pantai, Anda akan menemukan pengunjung yang menikmati matahari, bermain olahraga air seperti berselancar, atau hanya berjalan-jalan menikmati pemandangan.\r\n\r\nOmbak di Pantai Kuta cocok untuk berbagai tingkatan pengalaman berselancar, menjadikannya tempat yang populer bagi para peselancar pemula hingga tingkat lanjutan. Selain itu, pantai ini juga sering digunakan untuk kegiatan lain seperti jogging, bersepeda, atau sekadar bersantai di tepi pantai sambil menikmati angin laut yang menyegarkan.\r\n\r\nMeskipun Pantai Kuta memiliki daya tarik yang kuat bagi para wisatawan, penting untuk diingat bahwa kepadatan pengunjung di sekitar area ini bisa tinggi terutama selama musim liburan. Meski demikian, keindahan pantai ini dan berbagai aktivitas yang ditawarkan membuatnya menjadi destinasi yang populer di Pulau Bali.', 'https://www.google.com/maps/place/Pantai+Kuta/@-8.7180324,115.1577133,15z/data=!3m1!4b1!4m6!3m5!1s0x2dd246bc2ab70d43:0x82feaae12f4ab48e!8m2!3d-8.7184926!4d115.1686322!16s%2Fg%2F11c1p6r11n?entry=ttu', '1702198856.jpg', 5, 2),
(8, 'Gunung Rinjani', 'Gunung Rinjani adalah gunung berapi yang terletak di Pulau Lombok, Indonesia. Merupakan gunung tertinggi kedua di Indonesia dengan ketinggian sekitar 3.726 meter di atas permukaan laut. Gunung ini merupakan bagian dari Taman Nasional Gunung Rinjani yang meliputi area seluas sekitar 41.330 hektar.\r\n\r\nGunung Rinjani terbentuk oleh aktivitas vulkanik dan memiliki kaldera yang luas, dengan danau kawah bernama Segara Anak di bagian tengahnya. Gunung ini juga memiliki puncak yang dikenal sebagai Gunung Baru Jari, yang merupakan puncak vulkanik muda yang terus tumbuh.\r\n\r\nPendakian ke Gunung Rinjani menawarkan pengalaman petualangan yang menakjubkan, dengan pemandangan alam yang spektakuler sepanjang perjalanan. Rute pendakian utama adalah melalui Desa Senaru atau Sembalun. Selama pendakian, para pendaki dapat menikmati keindahan alam, hutan tropis, danau kawah, serta panorama indah dari puncak gunung.\r\n\r\nSegara Anak, danau kawah di dalam Gunung Rinjani, juga memiliki keunikan tersendiri. Di tengah danau, terdapat puncak kecil bernama Gunung Baru Jari yang masih aktif. Selain itu, tempat ini juga diyakini memiliki nilai spiritual bagi masyarakat setempat.\r\n\r\nGunung Rinjani bukan hanya tujuan pendakian, tetapi juga menjadi daya tarik pariwisata yang populer di Indonesia. Keindahan alamnya yang luar biasa dan pengalaman mendaki yang menantang membuatnya menjadi destinasi favorit bagi para pendaki dan wisatawan petualang.', 'https://www.google.com/maps/place/Gn.+Rinjani/@-8.4112945,116.4367061,14z/data=!3m1!4b1!4m6!3m5!1s0x2dcc2d800216cccf:0x3c03cdbf11d30a1e!8m2!3d-8.4112952!4d116.4573488!16zL20vMDR4bHBi?entry=ttu', '1702199000.jpg', 2, 1),
(9, 'Taman Nasional Gunung Leuser', 'Taman Nasional Gunung Leuser adalah salah satu taman nasional yang terletak di Pulau Sumatera, Indonesia. Taman nasional ini didirikan pada tahun 1980 dan dinamai sesuai dengan Gunung Leuser, yang merupakan salah satu puncak tertinggi di Sumatera. Taman Nasional Gunung Leuser terkenal karena keanekaragaman hayati dan ekosistem hutan hujannya yang luas. Berikut adalah beberapa poin utama tentang Taman Nasional Gunung Leuser: Ekosistem Hutan Hujan Tropis: Taman Nasional Gunung Leuser melindungi salah satu ekosistem hutan hujan tropis terakhir di Indonesia. Hutan ini melibatkan berbagai jenis tumbuhan, termasuk pohon tinggi, epifit, dan tumbuhan merambat. Keanekaragaman Hayati: Taman nasional ini menjadi rumah bagi berbagai spesies flora dan fauna langka, termasuk harimau Sumatera, badak Sumatera, orangutan Sumatera, gajah Sumatera, dan berbagai jenis primata dan burung endemik. Kawasan Konservasi Orangutan: Taman Nasional Gunung Leuser merupakan salah satu kawasan konservasi yang penting bagi populasi orangutan Sumatera. Orangutan Sumatera adalah spesies yang terancam punah, dan upaya konservasi di taman nasional ini berfokus pada perlindungan habitat alami mereka. Dukungan Pemukiman Adat: Beberapa komunitas lokal, termasuk suku-suku adat seperti suku Karo, suku Alas, dan suku Simeulue, tinggal di sekitar Taman Nasional Gunung Leuser. Mereka sering kali berperan sebagai mitra dalam upaya konservasi dan pengelolaan taman nasional. Ekoturisme: Meskipun ada tantangan terkait dengan pelestarian alam dan ekosistem, taman nasional ini juga menawarkan potensi untuk pengembangan ekoturisme. Wisatawan dapat menikmati keindahan alam, trekking, dan pengamatan satwa liar sambil berkontribusi pada pendapatan lokal dan pemahaman pentingnya pelestarian alam. Ancaman dan Tantangan: Taman Nasional Gunung Leuser menghadapi berbagai ancaman, termasuk deforestasi, perburuan ilegal, dan konflik antara manusia dan hewan liar. Upaya konservasi yang terus-menerus diperlukan untuk melindungi keanekaragaman hayati dan ekosistem yang unik ini.', 'https://www.google.com/maps/place/Taman+Nasional+Gunung+Leuser/@3.7843782,97.0929663,11z/data=!3m1!4b1!4m6!3m5!1s0x3039861c87a73591:0x3f1b67119f4d54b2!8m2!3d3.5192923!4d97.4634372!16zL20vMDg5enMy?entry=ttu', '1702199124.jpg', 2, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `blog1`
--
ALTER TABLE `blog1`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indexes for table `cerita_pengunjung`
--
ALTER TABLE `cerita_pengunjung`
  ADD PRIMARY KEY (`id_cerita`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `Foreign` (`id_wisata`);

--
-- Indexes for table `kategori_wisata`
--
ALTER TABLE `kategori_wisata`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `most_popular1`
--
ALTER TABLE `most_popular1`
  ADD PRIMARY KEY (`id_place`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id_wisata`),
  ADD KEY `FOREIGN KEY` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog1`
--
ALTER TABLE `blog1`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cerita_pengunjung`
--
ALTER TABLE `cerita_pengunjung`
  MODIFY `id_cerita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kategori_wisata`
--
ALTER TABLE `kategori_wisata`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `most_popular1`
--
ALTER TABLE `most_popular1`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id_wisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `Foreign` FOREIGN KEY (`id_wisata`) REFERENCES `wisata` (`id_wisata`);

--
-- Constraints for table `wisata`
--
ALTER TABLE `wisata`
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_wisata` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
