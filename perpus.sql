-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 04:51 AM
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
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `no` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `gambarBuku` varchar(50) NOT NULL,
  `bukuDipinjam` int(5) NOT NULL,
  `jumlahBuku` int(9) NOT NULL,
  `sinopsis` text NOT NULL,
  `jenisBuku` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`no`, `judul`, `pengarang`, `gambarBuku`, `bukuDipinjam`, `jumlahBuku`, `sinopsis`, `jenisBuku`) VALUES
(1, 'Laskar Pelangi', 'Andrea Hirata', '', 0, 10, 'Laskar Pelangi adalah novel yang mengisahkan mengenai kehidupan 10 anak di Pulau Belitung, Provinsi Bangka Belitung. Orang tua dari 10 anak ini mempunyai pekerjaan yang sama, yakni penambang timah. Kendati hidup serba kekurangan, 10 anak ini tetap giat menimba ilmu dan bersekolah. Namun, semangat tinggi itu bertolak belakang dengan keadaan sekolah yang sangat memprihatinkan. Bangunan sekolah jauh dari layak dan hanya memiliki 10 murid. Maka, pemerintah setempat pun menganjurkan untuk menutupnya dengan alasan kurangnya siswa. Meski begitu, Muslimah, guru yang mengajar di sekolah tersebut mempunyai tekad kuat dan berusaha agar sekolah tidak ditutup.', 'Novel'),
(2, 'Mariposa', 'Luluk HF', '', 0, 15, 'Novel Mariposa menceritakan tentang karakternya bersama Acha yang menyukai Iqbal dengan hati dingin. Mereka merupakan teman SMA yang sayangnya Iqbal merupakan orang cuek dan tidak mau untuk berinteraksi terlalu banyak dengan Acha. Acha yang menyukai Iqbal tidak pernah menyerah dan berusaha untuk meyakinkannya untuk menerima cinta tersebut. Penolakan yang terus menerus diterima lama kelamaan membuat Acha menyerah.Acha akhirnya memilih untuk menerima cinta Juna yang merupakan ketua OSIS di sekolah mereka. Namun, ternyata Iqbal sendiri juga menyukai Acha sehingga mencegahnya untuk melakukan hal tersebut.', 'Novel'),
(3, 'Koala Kumal', 'Raditya Dika', '', 0, 5, 'Novel Koala Kumal ini menceritakan tentang kehidupan penulis, yaitu Raditya Dika sendiri yang dikemas dengan tema komedi dan cerita yang disajikan berasal dari cerita nyata alias pengalaman Radit sendiri. Di dalam novel Koala Kumal terdiri dari 12 bab yang menceritakan tentang patah hati, tetapi dengan kondisi yang berbeda-beda, ada patah hati oleh sahabat, orang tanpa nama, dan lainnya. Nah di bab terakhir yang berjudul Koala Kumal menceritakan tentang mantan yang dulu telah memutuskan Dika secara sepihak, namun ia ingin kembali dan menyesal telah putus darinya. Namun, kali ini Dika menanggapi secara berbeda yaitu menanggapi dengan cara yang lebih dewasa.', 'Novel'),
(4, 'Ensiklopedia 4D: Antariksa', 'Devar Entertainment', '', 0, 5, 'Antariksa (Antariksa) adalah salah satu delapan Wasu. Antariksa merupakan personifikasi dari langit yang tinggi atau atmosfer. Dalam kosakata bahasa Indonesia, kata Antariksa merujuk kepada luar angkasa. Antariksa (juga disebut sebagai angkasa), merujuk pada bagian yang relatif kosong dari Jagad Raya, di luar atmosfer dari benda \"celestial\". Istilah luar angkasa digunakan untuk membedakannya dengan ruang udara dan lokasi \"terestrial\". Karena atmosfer Bumi tidak memiliki batas yang jelas, namun terdiri dari lapisan yang secara bertahap semakin menipis dengan naiknya ketinggian, tidak ada batasan yang jelas antara atmosfer dan angkasa. Ketinggian 100 kilometer atau 62 mil ditetapkan oleh Fédération Aéronautique Internationale merupakan definisi yang paling banyak diterima sebagai batasan antara atmosfer dan angkasa.', 'Ensiklopedia'),
(5, 'Ensiklopedia 4D: Dinosaurus', 'Devar Entertainment', '', 0, 5, 'Dinosaurus adalah kelompok hewan purbakala dari klad Dinosauria. Dinosaurus pertama kali muncul pada periode Trias, sekitar 230 juta tahun yang lalu, dan merupakan Vertebrata dominan selama 135 juta tahun, yang dimulai sejak periode Jura (sekitar 201 juta tahun yang lalu) hingga berakhirnya periode Kapur (65 juta tahun yang lalu), dan kemudian musnah akibat peristiwa kepunahan Kapur-Paleogen sebelum Era Mesozoikum. Penelitian fosil dinosaurus menunjukkan bahwa, burung berevolusi dari dinosaurus Theropoda selama periode Jura, oleh sebab itu burung yang hidup sekarang telah diklasifikasikan oleh para paleontolog sebagai salah satu sub-kelompok dinosaurus. Dengan menggunakan bukti fosil, para paleontolog telah mengidentifikasi lebih dari 500 genera dinosaurus yang berbeda, dan lebih dari 1.000 spesies dinosaurus dan burung.', 'Ensiklopedia'),
(6, 'Analisis Kinerja Sistem Informasi Dewan Perwakilan', 'Alfriyanto Nahas, Hustinawati', '', 0, 1, 'Sebagai  bentuk  penerapan  e-governmentdan  usaha  dalam  meningkatkan  mutu  pelayanan,  Dewan  Perwakilan Rakyat   Republik   Indonesia   (DPR   RI)   memanfaatkan   website   resminya   menjadi   media   publikasi   dan dokumentasi kegiatan DPR RI kepada rakyat Indonesia. Adanya website resmi DPR RI yang beralamat dpr.go.id diharapkan dapat memudahan masyarakat dalam mengakses informasi. Dalam menyebarluaskan informasi, salah satu  aspek  yang  diutamakan  dalam  kenyamanan  penggunaan  suatu  sistem  informasi  adalah  aspek  kinerja kegunaan  atau  usability.  Dari  data  keluhan  pengguna  dalam  hal  ini  rakyat  terdapat  beberapa  permasalahan diaspek kegunaan (Usability) seperti pengguna  tidak  mengerti tentang alur penggunaan  website DPR RI. Maka perlu  adanya  analisis  kinerja  website  DPR  RI  terutama  dari  perpektif  masyarakat,  untuk  mengetahui  tingkat usability  website  digunakan  metode  Evaluasi  Heuristik.  Heuristics  Evaluation  Method  adalah  metode  yang memiliki  fungsi  mengetahui  tingkat  usability.  Data  pengujian  ini  dari  pengisian  kuisoener  oleh  responden dengan  kategori  Pendidikan  minimal lulusan  Sekolah  Menengah  Atas  (SMA/Sederajat).  Hasil  dari  analisis adalah tingkat usability dari website DPR RI apakah mudah dipelajari, efisien, pada saat pengguna berinteraksi mudah  mengingat  prosedur/langkah  tanpa  banyak  membuat  banyak  kesalahan  dan  apakah  pengguna  merasa nyaman dalam mengoperasionalkan website.', 'Jurnal'),
(7, 'Implementasi Algoritma AES 256 CBC, BASE 64, Dan S', 'Ferzha Putra Utama, dkk', '', 0, 1, 'Terdapat berbagai macam cara untuk melaksanakan ujian di tingkat perguruan tinggi, selama masa pandemi Covid-19 metode ujian onlinemenjadi banyak digunakan. Meskipun ujian onlinedapat dilaksanakan di mana saja dan kapan saja, sayangnya masih banyak terjadi kecurangan seperti bocornya soal ujian, tersebarnya kunci jawaban secara ilegal, dan pengubahan pada data hasil ujian. Salah satu solusi dalam menjaga integritas hasil ujian berbasis onlineadalah mengenkripsi data ujian dengan metode kriptografi. Penelitian ini mengusulkan menerapkan beberapa metode kriptografi sebagai upaya dalam mengamankan dan memastikan keaslian data ujian onlinemenggunakan algoritma AES 256 CBC, Base 64, dan SHA 256. Penelitian ini menghasilkan aplikasi ujian onlineberbasis website yang dibangun menggunakan teknologi MERN Stack. Hasil pengujian dalam memvalidasi data ujian onlineyang telah dienkripsi menggunakan sistem dan OpenSSLmenunjukkan nilai hashyang sama. Hal ini menunjukkan sistem telah mampu mengenkripsi, mendekripsi, dan memvalidasi data ujian onlinedengan efektif', 'Jurnal'),
(8, 'Perbandingan Performa Algoritma AES dan Twofish Me', 'Benedict Ell Nino', '', 0, 1, 'Nomor Induk Kependudukan merupakan salah satu data penting yang bersifat rahasia. Salah satu cara agar menjaga agar data NIK yang tersimpan tidak mudah diketahui oleh penyerang, adalah dengan menerapkan salah satu pengamanan data digital yakni kriptografi. Penelitian ini menggunakan algoritma AES dan Twofish sebagai algoritma pengujian sebagai salah satu teknik kriptografi untuk mengamankan data NIK, yang diharapkan dapat mengamankan data NIK dengan aman dan cepat. Penelitian ini menggunakan kriteria Strict Avalanche Criterion yaitu kriteria dimana apabila ada perubahan satu bit dalam data masukan berupa plainteks atau kunci, maka akan mengubah data keluaran berupa cipherteks sebanyak 50% dari panjang bit keluaran. Dari hasil penelitian ini menyimpulkan jika algoritma AES dapat digunakan untuk mengenkripsi data NIK dibanding Twofish karena memiliki nilai margin of error yang lebih sedikit dibanding Twofish untuk memenuhi kriteria SAC. Selain itu, algoritma AES memiliki kecepatan enkripsi yang lebih cepat dibanding Twofish.', 'Jurnal'),
(9, 'PERANCANGAN APLIKASI GAME “SUNDAY FUN-DAY” PENUNJA', 'Elsie Naresvari, Teguh Wahyono', '', 1, 1, 'Pengetahuan dasar tentang pengenalan Tuhan sangat penting dalam pertumbuhan anak-anak Kristen. Kegiatan Sekolah Minggu telah disediakan untuk memfasilitasi pengetahuan anak-anak tentang pengenalan Tuhan. Tujuan utama dari penelitian ini adalah merancang, mengembangkan, dan mengimplementasikan aplikasi game \"Sunday Fun-Day\" dengan tujuan untuk memperkuat pemahaman anak-anak Kristen tentang pengenalan Tuhan melalui pendekatan belajar sambil bermain di Sekolah Minggu.Aplikasi game ini diuji coba dengan kelompok anak-anak Kristen di Sekolah Minggu untuk mengevaluasi efektivitasnya dalam meningkatkan pemahaman mereka tentang materi pembelajaran.Aplikasi game ini dirancang dan dikembangkan menggunakan Adobe Animate dengan Action Script 3.0. Hasil keluaran dari penelitian ini adalah aplikasi game Sekolah Minggu berbasis Android yang diberi judul \"Sunday Fun-Day\"sebagai alat evaluasi yang lebih baik bagi pengajar untuk mengukur pemahaman anak-anak tentang materi agama Kristen yang diajarkan,serta pendekatan kualitas pembelajaran di Sekolah Minggu dengan pendekatan yang lebih menarik dan interaktifsehingga dapat memperkuat minat dan keterlibatan anak-anak Kristen dalam kegiatan Sekolah Minggu melalui penggunaan game edukasi yang menggabungkan unsur bermain dalam pembelajaran.', 'Skripsi'),
(10, 'PENENTUAN PENAMBAHAN DOQ BARU DENAN METODE FUZZY T', 'Anisa Dyah Fatmawati', '', 0, 1, 'Telur puyuh merupakan hasil komoditi utama dalam usaha peternakan burung puyuh. Sama seperti komoditas ternak lain, pasar telur puyuh juga terkadang mengalami fluktuasi harga. Hal ini dapat menjadi kerugian bagi peternak jika puncak produktif burung puyuh terjadi saat inflasi harga telur. Hal ini dikarenakan penambahan DOQ baru pada waktu yang tidak tepat. Untuk mengakomodasi kebutuhan peternak tersebut diperlukan aplikasi peramalan untuk memprediksi harga telur puyuh dalam dua bulan kedepan, yang akan dibuat dengan aplikasi berbasis web dan perhitungan peramalan menggunakan metode Fuzzy Time Series Markov Chain. Hasil dari peramalan memiliki tingkat akurasi yang cukup baik dengan nilai MAPE 3.25% dan 795,064.67 pada uji MSE. Kemudian hasil perkiraan harga telur puyuh pada bulan Juni 2020 adalah Rp. 19.385,82 dan pada Juli 2020 adalah Rp. 17.519,90 yang mengindikasikan bulan ini adalah waktu yang kurang tepat untuk menambah DOQ baru.', 'Skripsi'),
(11, 'IMPLEMENTASI CASE-BASED REASONING UNTUK DIAGNOSIS ', 'Agustin Setyo Rini', '', 0, 1, 'Salah satu penyakit yang masih banyak terjangkit di masyarakat adalah penyakit pada organ genitalia (alat reproduksi atau organ intim) dengan segala macam bentuknya. Penyebabnya sangatlah banyak, selain disebabkan oleh bakteri ada juga disebabkan karena perilaku hubungan seksual yang menyimpang dengan gejala yang hampir sama satu sama lain.  Oleh karena itu diperlukan suatu sistem untuk membantu pasien dalam mengetahui diagnosis sementara agar dapat diketahui penanganan pertama. Dalam penelitian ini data yang digunakan adalah data rekam medis pasien berupa data gejala serta diagnosa penyakit pasien yang sudah diketahui kebenarannya. Data diperoleh dari hasil wawancara dan rekam medis pasien yang diperoleh dari pakar. Data yang diperoleh akan diolah dengan menerapkan metode Case-based Reasoning (CBR), berdasarkan gejala yang akan dimasukkan atau dirasakan user. Didalam CBR, kasus baru dapat didiagnosis dengan melakukan penalaran serta memperhatikan kemiripannya dengan satu atau beberapa basis pengetahuan yang berasal dari permasalahan atau kasus yang sudah ada sebelumnya. Jika nilai kemiripannya lebih dari 50% maka solusi kasus lama akan digunakan sebagai solusi sementara atau diagnosis untuk kasus baru (reuse).', 'Skripsi'),
(12, 'IMPLEMENTASI METODE RAPID CENTROID ESTIMATION DAN ', 'Fransdhita Dewana Prianggoro', '', 0, 1, 'Sebagai fasilitas pembentuk karakter bangsa sekolah diharuskan memenuhi kebutuhan sarana dan prasarana penunjang proses belajar siswa. Faktanya banyak sekolah Negeri di Kabupaten Malang yang belum bisa memenuhi kebutuhan tersebut, seperti tidak adanya perpustakaan dan laboratorium yang seharusnya dapat dimanfaatkan siswa untuk menambah pengetahuan dan mengembangkan potensi diri mereka di sekolah, hal ini disebabkan kurang meratanya distribusi fasilitas pada setiap sekolah yang dapat mengakibatkan proses belajar siswa tidak maksimal. Permasalahan tersebut dapat diatasi dengan mengetahui sekolah mana saja yang perlu dilakukan pemerataan, untuk itu perlu dilakukan pengelompokan sekolah- sekolah di Kabupaten Malang berdasarkan fasilitas yang dimiliki sekolah tersebut. Pengelompokan dapat dilakukan dengan cara klasterisasi. Pada penelitian ini akan dilakukan klasterisasi sekolah dengan menggunakan kombinasi metode RCE (Rapid Centroid Estimation) dan K-Means. Untuk menjalankan metode yang digunakan pada penelitian ini dibuat sebuah sistem klasterisasi Sekolah Negeri di Kabupaten Malang. Pada penelitian ini didapatkan rata-rata nilai pengujian Silhouette Coefficient sebesar 0,351 pada hasil klasterisasi sekolah dasar di kecamatan Bululawang, nilai Silhouette Coefficient 0,399 untuk seluruh data SMP, nilai Silhouette Coefficient 0,488 untuk seluruh data SMA dan nilai Silhouette Coefficient 0,468 untuk seluruh data SMK, yang menunjukkan hasil klasterisasi yang baik, karena jika nilai Silhouette Coefficient lebih mendekati nilai 1 dan menjauhi nilai -1 menunjukkan data tepat di cluster tersebut.', 'Skripsi'),
(13, 'RANCANG BANGUN SISTEM KLASTERISASI WILAYAH TANAH L', 'Moch. Rizki Eko Waluyo', '', 0, 1, 'Tanah Longsor adalah suatu peristiwa geologi yang terjadi karena pergerakan massa batuan atau tanah dengan berbagai tipe dan jenis seperti jatuhnya bebatuan atau gumpalan besar tanah. Berdasarkan data yang dihimpun BPBD sepanjang tahun 2017-2018, terjadi sebanyak 212 kejadian dan mengakibatkan lebih dari 60 korban jiwa pada wilayah kabupaten & kota di Jawa Timur. Oleh karena itu, diperlukan usaha mengurangi dampak yang ditimbulkan dengan melakukan klasterisasi terhadap daerah kerawanan di wilayah kabupaten & kota di Jawa Timur. Dalam penelitian ini memanfaatkan teknik data mining dengan menggunakan metode K-Means untuk mengelompokkan wilayah terdampak tanah longsor dan geografis. Selain itu, penelitian ini juga menggunakan metode Pearson Correlation Coefficient untuk mengetahui tingkat keterkaitan antara dampak wilayah tanah longsor dengan geografis. Kesimpulan dari penelitian ini adalah metode K-means dapat digunakan untuk melakukan pengelompokkan wilayah terdampak tanah longsor dan geografis.', 'Skripsi'),
(14, 'PEMBELAJARAN LARAVEL MVC PADA LAIBA (LEARNING APPL', 'Putranda Bagus Cahya Lumintang', '', 1, 1, 'Laravel adalah framework PHP open-source yang dirancang untuk membuat pengembangan aplikasi web lebih mudah dan lebih cepat melalui fitur bawaan Agat framework Laravel MVC dipelajari dengan mudah, terdapat sistem tutorial yang dilakukan dengan bantuan modul untuk membantu mahasiswa dalam belajar. Namun, sistem yang dikembangkan tidak memberikan umpan balik yang membantu mahasiswa dalam belajar. Oleh karena itu, diusulkan aplikasi pembelajaran dengan sistem penilaian otomatis serta umpan balik. Manfaat yang diperoleh bagi mahasiswa yaitu diharapkan dapat membantu mahasiswa dalam memahami Laravel MVC. Sehingga peneliti merancang Learning Application in Balanced Assessment (LAIBA) dengan pembelajaran Laravel.', 'Skripsi'),
(15, 'Membuat Database Dengan Microsoft Access', 'Imam Heryanto', '', 0, 5, 'Buku ini ditujukan bagi para pemula yang sama sekali belum mengenal database ataupun Microsoft Access, juga bagi mereka yang ingin membekali diri untuk belajar database ke tahap lanjut. Pengambilan Studi Kasus dimaksudkan untuk memberikan gambaran yang utuh atau komprehensip bagaimana cara membuat aplikasi database menggunakan Microsoft Access. Bahasan dimulai dari pengenalan database, pembuatan database dalam Microsoft Access, pembuatan table, query, form, report, integrasi form-report sampai dengan pembuatan aplikasi (Aplikasi atau Sistem Informasi Kepegawaian). Pembahasan studi kasus dalam buku ini tidak berarti hanya membahas masalah kepegawaian saja. Diambilnya suatu studi kasus merupakan sarana untuk menjelaskan suatu konsep tertentu agar tidak terlalu teoritik. Para pembaca bisa menerapkan pengetahuan ini untuk kasus yang lain. Penyajian dalam bentuk model soal-jawab dimaksudkan untuk memudahkan cara penyajian atau cara menerangkan suatu permasalahan/konsep tertentu sehingga para pembaca mudah untuk memahaminya.', 'Non-Fiksi'),
(16, 'Jaringan Komputer Berbasis Mikrotik', 'Iwan Sofana', '', 0, 5, 'Perangkat MikroTik saat ini sudah menjadi primadona di kalangan praktisi jaringan komputer, khususnya di Indonesia, Selain handal tidak kalah dibandingkan perangkat buatan vendor lain, harganya pun cukup terjangkau. Bahkan sistem operasi RouterOS yang merupakan sistem operasi bagi MikroTik router, dapat di download dan digunakan secara gratis selama 24 jam. Hal ini tentunya merupakan berita bagus bagi pengguna yang ingin belajar dan mengenal RouterOS. Penulis telah berusaha keras menyusun materi buku ini berdasarkan kurikulum MTCNA yang populer. Sehingga mereka yang tertarik untuk mengikuti ujian sertifikasi MTCNA dapat mengambuil manfaat dengan membaca buku ini. Dalam banyak hal, MTCNA tidak kalah bergengsi dibandingkan sertifikasi CCNA atau program sertifikasi lainnya yang populer. Penulis juga menyertakan CD Pendamping yang di dalamnya berisi berbagai aplikasi bantu, salah satunya adalah SimTik 2017 yang merupkan aplikasi untuk simulasi/presentasi jaringan komputer hasil karya Penulis. Berbagai aplikasi bantu yang disediakan pada CD Pendamping, dapat memudahkan Pembaca yang ingin melakukan praktikum jaringan komputer dengan bekal peralatan seadanya, yaitu dengan cara membangun Virtual Lab MikroTik.', 'Non-Fiksi'),
(17, 'Java Script', 'Betha Sidik', '', 0, 5, 'Saat ini, membuat halaman web yang indah saja belum cukup untuk mendukung optimalisasi dari halaman web kita, tetapi juga diperlukan berbagai tambahan fungsionalitas sehingga halaman web dapat lebih interaktif dan dinamis melalui penggunaan antarmuka (interface). Dengan JavaScript, kita dapat mewujudkan beberapa kebutuhan di atas. Di samping itu, JavaScript juga didukung oleh ketersediaannya yang luas karena pada umumnya sudah disisipkan ke dalam halaman web dan juga merupakan bahasa script yang tidak membutuhkan lisensi dalam penggunaannya', 'Non-Fiksi'),
(18, 'Teori Organisasi dan Administrasi', 'Kusdi', '', 1, 5, 'Buku Teori Organisasi dan Administrasi yang diperuntukkan terutama bagi mahasiswa beserta dosen pengampu mata kuliah teori organisasi ini mampu menjawab berbagai permasalahan terkait organisasi dan administrasi. Dengan pembahasan yang detail dan menggunakan bahasa yang mudah dipahami, buku ini dapat juga digunakan sebagai referensi bagi peneliti bidang organisasi. Para praktisi, administrator, dan manajer, dapat memfokuskan diri pada tema-tema praktis yang disajikan dalam setiap bab.', 'Non-Fiksi'),
(19, 'Microsoft Visual C++', 'Wahana Komputer', '', 0, 5, 'Microsoft Visual Studio adalah sebuah Integrated Development Environment buatan Microsoft Corporation, Microsoft Visual Studio dapat digunakan untuk mengembangkan aplikasi dalam native code ataupun managed code. Versi paling baru dari Microsoft Visual Studio adalah versi 2012. Visual Studio 2012 mendukung bahasa pemrograman visual C++, dimana bahasa pemrograman visual C++ adalah pengembangan dari bahasa pemrograman C++ konvensional. Pada buku ini membahas source kode yang umum dan banyak dipakai oleh kalangan programmer Visual C++, Buku ini sangat cocok bagi Anda yang ingin mempelajari tentang bahasa pemrograman visual C++ ataupun bagi programmer yang telah mahir', 'Non-Fiksi'),
(20, 'Perahu Kertas', 'Dewi Lestari', '', 0, 1, 'Perahu Kertas merupakan satu di antara karya dari Dewi lestari yang sudah diangkat dalam film layar lebar. Perahu Kertas mengisahkan tentang seorang pria bernama Keenan, yang telah menyelesaikan pendidikannya di Belanda yang bercita-cita menjadi seorang seniman lukis. Namun, ayah Keenan tidak mengizinkan dan lebih menginginkan Keenan belajar di perguruan tinggi fakultas ekonomi. Dikisahkan pula seorang perempuan yang bernama Kugy dengan pembawaan ceria dan periang, juga sangat menyukai dongeng. Kebiasaan Kugy menuliskan segala perasaannya pada kertas yang kemudian dibentuk seperti perahu lalu menghanyutkannya di sungai berharap Dewa Neptunus membacanya. Kugy memiliki dua orang sahabat yang bernama Eko dan Noni, mereka berteman sejak masih kecil. Mereka jugalah yang mempertemukan Keenan dan Kugy, yang kemudian berakhir saling menyukai, tetapi keduanya memilih untuk tak mengungkapkan perasaan masing-masing. Hal ini dikarenakan Kugy sudah memiliki Joshua dan Keenan dijodohkan dengan Wanda. Kugy kembali ke Jakarta setelah menamatkan pendidikannya dan bekerja sebagai copywriter. Sedangkan Keenan memiliki tekad untuk menjadi pelukis, meski ditentang ayahnya. Keenan memutuskan untuk pergi ke Bali dan menemui sahabta ibunya yang bernama Pak Wayan, lalu bertemulah ia dengan Luhde Laksmi yang membuatnya jatuh cinta.', 'Novel'),
(21, 'London Love Strory', 'Tisa TS', '', 0, 1, 'London Love Story adalah sebuah film yang kemudian dibuat dalam bentuk novel karena saking banyaknya permintaan yang bermunculan. Penulis novel, Tisa TS, akhirnya membuat buku dengan judul yang sama dengan didampingi oleh Stanley Maulen yang membantunya mengedit novel tersebut. Berbeda dengan film yang sudah ditayangkan, versi novel London Love Story mengisahkan tentang cinta yang akan terjadi di masa depan. Tentang seorang yang dituntut untuk memperjuangkan cintanya juga tentang bagaimana cara memperjuangkan cinta untuk masa yang akan datang. Novel romansa ini juga membubuhkan hal mengenai persahabatan. Meski sangat didominasi dengan kisah percintaan, novel ini juga mengisahkan tentang bagaimana membuka hati agar terus melangkah maju dan percaya akan adanya kesetiaan. Penulis mengambil Kota London sebagai latar tempat dalam cerita tersebut. Tentang beberapa tempat yang indah, kesejukan udaranya, dan lain sebagainya.', 'Novel'),
(22, 'IT Service Management', 'Ernest Brewster, dkk', '', 0, 1, 'Buku ini berisikan materi mengenai tentang bagaimana kita untuk rangkaian konsep dan teknik pengelolaan infrastruktur, pengembangan, serta operasi teknologi informasi dan menjadi ujian untuk para kandidat yang ingin mengetahui lebih lanjut dari IT Service Management.', 'Non-Fiksi'),
(23, 'Teknologi Informasi dan Komunikasi', 'Henry Pandia', '', 0, 1, 'Buku ini terdiri dari 11 bab diantaranya yaitu Perangkat Lunak Pengolah Kata, Bekerja dengan Word Dokumen, Paragraf dan Kolom di Dokumen, Tabel dan Gambar di Dokumen, Membuat Karya dengan Word, Perangkat Lunak Pengolah Angka, Mulai Bekerja dengan Excel, Mengedit Data dan Lembaran Kerja, Rumus dan Fungsi untuk Memanipulasi Data, Mengelola Data, dan Menambahkan dan Memformat Grafik.', 'Non-Fiksi'),
(24, 'Pengantar Sistem Operasi Komputer', 'Satrio Yudho, S.Kom, M.T.I.', '', 0, 1, 'Bab pertama buku membahas dua peran sistem operasi, pertama sebagai perangkat lunak dengan instruksi yang jelas dan tata cara penggunaan, serta dibangun dengan bahasa pemrograman. Kedua, sebagai produk sukses jika memenuhi kebutuhan pengguna, berjalan tanpa kegagalan, dan dapat menghasilkan produk lebih baik. Bab selanjutnya membahas arsitektur komputer modern, terutama arsitektur Von Neumann dengan satu CPU, device controller, dan bus sistem untuk mengakses memori. Bab ketiga membahas overview sistem operasi, termasuk struktur, alokasi sumber daya, dan peran utama sebagai pengelola CPU, memori, I/O, proses, dan user. Inti sistem operasi adalah kernel dengan device driver antara perangkat keras dan resource allocator. Bab 4 hingga 6 menjelaskan manajemen proses, termasuk struktur proses, status thread, pemrosesan interrupt, scheduling, dan algoritma, serta manajemen memori. Bab terakhir membahas deadlock, kondisi di mana sumber daya tidak tersedia, dengan penjelasan mengenai jenis deadlock, seperti deadlock prevention dan avoidance, serta deteksi dan recovery.', 'Non-Fiksi'),
(25, 'Buku Pintar Komputer', 'Haysim M., ST', '', 0, 1, '“BUKU PINTAR KOMPUTER”adalah salah satu buku komputer yang dikarang Hasyim M., ST . Adapun beliau merupakan lulusan Universitas Gunadarma angkatan 1996. dalam buku yang berjumlah 228 halaman, dijelaskan dengan cukup mendetail komputer dari sejarah, hingga istilah-istilah pada komputer. Dimulai dari bab 1 yang berisi “Definisi & Sejarah komputer”. Pada bagian ini akan dijelaskan secara lengkap definisi komputer, sejarah komputer, sampai jenis-jenis komputer. Beralih ke bab 2,  menjelaskan pengertian PC, perkembanagn dan jenis-jenis PC. Pada bab 3 akan dijelaskan mengenai Perangkat keras (Hardware) pada PC. Bab 4 dijelaskan berbagai peralatan input pada PC dan fungsinya. Di bab 5, penjelasan mengenai peralatan proses data pada PC. Bab 6 dan 7 menjelaskan berbagai peralatan yang digunakan untuk menampilkan hasil / output dan peralatan aksesoris untuk mendukung kerja PC. Di bab 8 kita akan menemukan pengertian dari perangkat lunak (software), beserta perkembangannya hingga sekarang. Bagi anda yang ingin membeli komputer, bisa dibaca panduannya di bab 9 dan 10., disana akan diulas secara lengkap bagaimana membeli komputer sebanding dengan kebutuhan yang kita inginkan. Nah, untuk anda yang telah membeli berbagai hardware, dan berkeinginan untuk merakit sendiri hardware-hardware  dan menginstal dengan OS yang diinginkan, anda bisa membaca bab 11 dan 12. Disitu akan dipandu cara-cara merakit hardware dan kemudian menginstalnya dengan OS (Operating System) yang ada. Sampai bab 17, kita akan disuguhi dengan Jaringan Komputer, Tip & Trik PC, Laptop, Virus komputer dan berbagai istilah komputer.', 'Non-Fiksi');

-- --------------------------------------------------------

--
-- Table structure for table `daftarbuku`
--

CREATE TABLE `daftarbuku` (
  `kodeDaftar` int(11) NOT NULL,
  `namaBuku` varchar(100) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `noBuku` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanadmin`
--

CREATE TABLE `pesanadmin` (
  `nis` varchar(50) NOT NULL,
  `isiPesan` text NOT NULL,
  `tanggalPengirim` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanadmin`
--

INSERT INTO `pesanadmin` (`nis`, `isiPesan`, `tanggalPengirim`, `keterangan`, `urutan`) VALUES
('212210015', 'Siswa berhasil melakukan Pra Peminjaman', '27-11-2023', 'sudah', 277),
('212210015', 'Siswa Berhasil Melakukan Transaksi Peminjaman', '27-11-2023', 'sudah', 278),
('212210015', 'Siswa Berhasil Melakukan Transaksi Pengembalian Buku', '27-11-2023', 'sudah', 279),
('212210015', 'Siswa berhasil melakukan Pra Peminjaman', '27-11-2023', 'sudah', 280),
('212210015', 'Siswa Berhasil Melakukan Transaksi Peminjaman', '27-11-2023', 'sudah', 281),
('212210015', 'Siswa Berhasil Melakukan Transaksi Pengembalian Buku', '27-11-2023', 'sudah', 282),
('2147483647', 'Siswa berhasil melakukan Pra Peminjaman', '28-11-2023', 'sudah', 283),
('2147483647', 'Siswa Berhasil Melakukan Transaksi Peminjaman', '28-11-2023', 'sudah', 284),
('2147483647', 'Siswa Berhasil Melakukan Transaksi Pengembalian Buku', '28-11-2023', 'sudah', 285),
('2241720134', 'Siswa berhasil melakukan Pra Peminjaman', '28-11-2023', 'sudah', 286),
('2241720134', 'Siswa Berhasil Melakukan Transaksi Peminjaman', '28-11-2023', 'sudah', 287),
('2241720134', 'Siswa Berhasil Melakukan Transaksi Pengembalian Buku', '28-11-2023', 'sudah', 288),
('2241720134', 'Siswa berhasil melakukan Pra Peminjaman', '28-11-2023', 'sudah', 289),
('212210015', 'Siswa berhasil melakukan Pra Peminjaman', '28-11-2023', 'sudah', 290),
('212210015', 'Siswa Berhasil Melakukan Transaksi Peminjaman', '29-11-2023', 'sudah', 291),
('0', 'Batas waktu peminjaman siswa telah habis, dikenakan denda', '02-12-2023', 'sudah', 292),
('212210015', 'Siswa Berhasil Melakukan Transaksi Pengembalian Buku', '02-12-2023', 'sudah', 293),
('2241720134', 'Siswa Berhasil Melakukan Transaksi Peminjaman', '02-12-2023', 'sudah', 294),
('212210015', 'Siswa berhasil melakukan Pra Peminjaman', '03-12-2023', 'sudah', 295),
('212210015', 'Siswa berhasil melakukan Pra Peminjaman', '03-12-2023', 'sudah', 296),
('212210015', 'Siswa Berhasil Melakukan Transaksi Peminjaman', '03-12-2023', 'sudah', 297),
('212210015', 'Siswa Berhasil Melakukan Transaksi Pengembalian Buku', '03-12-2023', 'sudah', 298),
('212210015', 'Siswa berhasil melakukan Pra Peminjaman', '03-12-2023', 'sudah', 299),
('212210015', 'Siswa Berhasil Melakukan Transaksi Peminjaman', '03-12-2023', 'sudah', 300),
('2241720134', 'Siswa berhasil melakukan Pra Peminjaman', '03-12-2023', 'sudah', 301),
('2241720134', 'Siswa Berhasil Melakukan Transaksi Peminjaman', '03-12-2023', 'sudah', 302),
('2241720190', 'Siswa berhasil melakukan Pra Peminjaman', '03-12-2023', 'sudah', 303);

-- --------------------------------------------------------

--
-- Table structure for table `pesanuser`
--

CREATE TABLE `pesanuser` (
  `nis` varchar(100) NOT NULL,
  `isiPesan` text NOT NULL,
  `tanggalPengirim` varchar(100) NOT NULL,
  `keterangan` varchar(10) NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanuser`
--

INSERT INTO `pesanuser` (`nis`, `isiPesan`, `tanggalPengirim`, `keterangan`, `urutan`) VALUES
('212210015', 'Pra peminjaman berhasil dilakukan, Pesanan anda akan otomatis terhapus apabila sudah melewati jangka waktu 1 hari tanpa menerima persetujuan dari admin', '27-11-2023', 'sudah', 365),
('212210015', 'Anda Berhasil Melakukan Transaksi Peminjaman Buku, Harap mengembalikan buku sebelum batas waktu yang ditentukan', '27-11-2023', 'sudah', 366),
('212210015', 'Anda Berhasil Melakukan Transaksi Pengembalian Buku', '27-11-2023', 'sudah', 367),
('212210015', 'Pra peminjaman berhasil dilakukan, Pesanan anda akan otomatis terhapus apabila sudah melewati jangka waktu 1 hari tanpa menerima persetujuan dari admin', '27-11-2023', 'sudah', 368),
('212210015', 'Anda Berhasil Melakukan Transaksi Peminjaman Buku, Harap mengembalikan buku sebelum batas waktu yang ditentukan', '27-11-2023', 'sudah', 369),
('212210015', 'Anda Berhasil Melakukan Transaksi Pengembalian Buku', '27-11-2023', 'sudah', 370),
('2147483647', 'Pra peminjaman berhasil dilakukan, Pesanan anda akan otomatis terhapus apabila sudah melewati jangka waktu 1 hari tanpa menerima persetujuan dari admin', '28-11-2023', 'sudah', 371),
('2147483647', 'Anda Berhasil Melakukan Transaksi Peminjaman Buku, Harap mengembalikan buku sebelum batas waktu yang ditentukan', '28-11-2023', 'sudah', 372),
('2147483647', 'Transaksi Pra Peminjaman anda tidak disetujui oleh Admin', '28-11-2023', 'sudah', 373),
('2147483647', 'Anda Berhasil Melakukan Transaksi Pengembalian Buku', '28-11-2023', 'belum', 374),
('2241720134', 'Pra peminjaman berhasil dilakukan, Pesanan anda akan otomatis terhapus apabila sudah melewati jangka waktu 1 hari tanpa menerima persetujuan dari admin', '28-11-2023', 'sudah', 375),
('2241720134', 'Anda Berhasil Melakukan Transaksi Peminjaman Buku, Harap mengembalikan buku sebelum batas waktu yang ditentukan', '28-11-2023', 'sudah', 376),
('2241720134', 'Anda Berhasil Melakukan Transaksi Pengembalian Buku', '28-11-2023', 'sudah', 377),
('2241720134', 'Pra peminjaman berhasil dilakukan, Pesanan anda akan otomatis terhapus apabila sudah melewati jangka waktu 1 hari tanpa menerima persetujuan dari admin', '28-11-2023', 'sudah', 378),
('212210015', 'Pra peminjaman berhasil dilakukan, Pesanan anda akan otomatis terhapus apabila sudah melewati jangka waktu 1 hari tanpa menerima persetujuan dari admin', '28-11-2023', 'sudah', 379),
('212210015', 'Anda Berhasil Melakukan Transaksi Peminjaman Buku, Harap mengembalikan buku sebelum batas waktu yang ditentukan', '29-11-2023', 'sudah', 380),
('212210015', 'Batas waktu peminjaman anda telah habis, dikenakan denda', '02-12-2023', 'sudah', 381),
('212210015', 'Anda Berhasil Melakukan Transaksi Pengembalian Buku', '02-12-2023', 'sudah', 382),
('2241720134', 'Anda Berhasil Melakukan Transaksi Peminjaman Buku, Harap mengembalikan buku sebelum batas waktu yang ditentukan', '02-12-2023', 'sudah', 383),
('212210015', 'Pra peminjaman berhasil dilakukan, Pesanan anda akan otomatis terhapus apabila sudah melewati jangka waktu 1 hari tanpa menerima persetujuan dari admin', '03-12-2023', 'sudah', 384),
('212210015', 'Transaksi Pra Peminjaman anda tidak disetujui oleh Admin', '03-12-2023', 'sudah', 385),
('212210015', 'Pra peminjaman berhasil dilakukan, Pesanan anda akan otomatis terhapus apabila sudah melewati jangka waktu 1 hari tanpa menerima persetujuan dari admin', '03-12-2023', 'sudah', 386),
('212210015', 'Anda Berhasil Melakukan Transaksi Peminjaman Buku, Harap mengembalikan buku sebelum batas waktu yang ditentukan', '03-12-2023', 'sudah', 387),
('212210015', 'Anda Berhasil Melakukan Transaksi Pengembalian Buku', '03-12-2023', 'sudah', 388),
('212210015', 'Pra peminjaman berhasil dilakukan, Pesanan anda akan otomatis terhapus apabila sudah melewati jangka waktu 1 hari tanpa menerima persetujuan dari admin', '03-12-2023', 'belum', 389),
('212210015', 'Anda Berhasil Melakukan Transaksi Peminjaman Buku, Harap mengembalikan buku sebelum batas waktu yang ditentukan', '03-12-2023', 'belum', 390),
('2241720134', 'Pra peminjaman berhasil dilakukan, Pesanan anda akan otomatis terhapus apabila sudah melewati jangka waktu 1 hari tanpa menerima persetujuan dari admin', '03-12-2023', 'sudah', 391),
('2241720134', 'Anda Berhasil Melakukan Transaksi Peminjaman Buku, Harap mengembalikan buku sebelum batas waktu yang ditentukan', '03-12-2023', 'sudah', 392),
('2241720190', 'Pra peminjaman berhasil dilakukan, Pesanan anda akan otomatis terhapus apabila sudah melewati jangka waktu 1 hari tanpa menerima persetujuan dari admin', '03-12-2023', 'belum', 393),
('2241720190', 'Transaksi Pra Peminjaman anda tidak disetujui oleh Admin', '03-12-2023', 'belum', 394);

-- --------------------------------------------------------

--
-- Table structure for table `prapeminjaman`
--

CREATE TABLE `prapeminjaman` (
  `nis` varchar(30) NOT NULL,
  `kodePraPeminjaman` varchar(5) NOT NULL,
  `waktuTenggat` varchar(50) NOT NULL,
  `noBuku` varchar(50) NOT NULL,
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayatpeminjaman`
--

CREATE TABLE `riwayatpeminjaman` (
  `kodeTransaksi` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `judulBuku` varchar(100) NOT NULL,
  `tanggalPeminjaman` varchar(100) NOT NULL,
  `tanggalPengembalian` varchar(100) NOT NULL,
  `noBuku` varchar(50) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `denda` varchar(100) NOT NULL,
  `urutan` int(11) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayatpeminjaman`
--

INSERT INTO `riwayatpeminjaman` (`kodeTransaksi`, `nama`, `judulBuku`, `tanggalPeminjaman`, `tanggalPengembalian`, `noBuku`, `nis`, `denda`, `urutan`, `status`) VALUES
('63992', 'Julioez Candita Haga Figo Latupeirissa', 'PERANCANGAN APLIKASI GAME “SUNDAY FUN-DAY” PENUNJA', '03-12-2023', '06-12-2023', '9', '212210015', '0', 1, 'O'),
('65654', 'Byan Nur Cahyo', 'Teori Organisasi dan Administrasi', '03-12-2023', '06-12-2023', '18', '2241720134', '0', 2, 'O');

-- --------------------------------------------------------

--
-- Table structure for table `riwayatpengembalian`
--

CREATE TABLE `riwayatpengembalian` (
  `kodeTransaksi` varchar(50) NOT NULL,
  `noBuku` varchar(50) NOT NULL,
  `denda` varchar(50) NOT NULL,
  `tanggalPengembalian` varchar(100) NOT NULL,
  `kondisiBuku` varchar(100) NOT NULL,
  `urutan` int(11) NOT NULL,
  `tanggalPeminjaman` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `sanksi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayatpengembalian`
--

INSERT INTO `riwayatpengembalian` (`kodeTransaksi`, `noBuku`, `denda`, `tanggalPengembalian`, `kondisiBuku`, `urutan`, `tanggalPeminjaman`, `status`, `sanksi`) VALUES
('63992', '14', '0', '27-11-2023', 'Baik', 62, '27-11-2023', 'On Time', '-'),
('63992', '15', '0', '27-11-2023', 'Baik', 63, '27-11-2023', 'On Time', '-'),
('65654', '15', '0', '28-11-2023', 'Baik', 64, '28-11-2023', 'On Time', '-'),
('65654', '15', '0', '28-11-2023', 'Baik', 65, '28-11-2023', 'On Time', '-'),
('63992', '14', 'undefined', '02-12-2023', 'Baik', 66, '29-11-2023', 'Telat', 'Denda'),
('63992', '10', 'undefined', '03-12-2023', 'Baik', 67, '03-12-2023', 'On Time', 'Denda');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` bigint(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `noTelp` varchar(13) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `cookie` varchar(5) NOT NULL,
  `jenisAkun` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `kelas`, `password`, `noTelp`, `gambar`, `cookie`, `jenisAkun`) VALUES
(0, 'accioxt.', '', 'admin', '081252849142', '65656a5ae9721.jpg', '6355f', 'A'),
(9877, 'asd', 'qwhqjwh', '9877', 'jhhhja', '', '656d8', 'U'),
(212210015, 'Julioez Candita Haga Figo Latupeirissa', 'XI RPL 1', '212210015', '085810154283', '63992e868b8ae.png', '63992', 'U'),
(2241720134, 'boboho', 'tkj', '2241720134', '081252849142', '65654470c7876.jpg', '65654', 'U');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `daftarbuku`
--
ALTER TABLE `daftarbuku`
  ADD PRIMARY KEY (`kodeDaftar`);

--
-- Indexes for table `pesanadmin`
--
ALTER TABLE `pesanadmin`
  ADD PRIMARY KEY (`urutan`);

--
-- Indexes for table `pesanuser`
--
ALTER TABLE `pesanuser`
  ADD PRIMARY KEY (`urutan`);

--
-- Indexes for table `prapeminjaman`
--
ALTER TABLE `prapeminjaman`
  ADD PRIMARY KEY (`urutan`);

--
-- Indexes for table `riwayatpeminjaman`
--
ALTER TABLE `riwayatpeminjaman`
  ADD PRIMARY KEY (`urutan`);

--
-- Indexes for table `riwayatpengembalian`
--
ALTER TABLE `riwayatpengembalian`
  ADD PRIMARY KEY (`urutan`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `daftarbuku`
--
ALTER TABLE `daftarbuku`
  MODIFY `kodeDaftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `pesanadmin`
--
ALTER TABLE `pesanadmin`
  MODIFY `urutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `pesanuser`
--
ALTER TABLE `pesanuser`
  MODIFY `urutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395;

--
-- AUTO_INCREMENT for table `prapeminjaman`
--
ALTER TABLE `prapeminjaman`
  MODIFY `urutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `riwayatpeminjaman`
--
ALTER TABLE `riwayatpeminjaman`
  MODIFY `urutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `riwayatpengembalian`
--
ALTER TABLE `riwayatpengembalian`
  MODIFY `urutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
