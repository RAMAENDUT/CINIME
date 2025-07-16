-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2025 at 09:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Action', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(2, 'Drama', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(3, 'Comedy', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(4, 'Romance', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(5, 'Horror', '2024-12-26 01:07:57', '2024-12-26 01:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `created_at`, `updated_at`, `email`) VALUES
(1, '2024-12-26 08:37:16', '2024-12-26 08:37:16', 'umbararamadhan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_12_13_211307_create_leads_table', 1),
(5, '2021_12_13_211602_create_roles_table', 1),
(6, '2021_12_15_000000_create_users_table', 1),
(7, '2021_12_28_204131_create_movies_table', 1),
(8, '2021_12_28_212835_create_categories_table', 1),
(9, '2021_12_29_221340_create_shows_table', 1),
(10, '2021_12_29_221926_create_rooms_table', 1),
(11, '2021_12_30_235852_create_reservations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `storyline` text NOT NULL,
  `trailer` varchar(100) DEFAULT NULL,
  `rating` double(8,2) NOT NULL,
  `language` varchar(255) NOT NULL,
  `release_date` date NOT NULL,
  `director` varchar(255) NOT NULL,
  `maturity_rating` varchar(255) NOT NULL,
  `running_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `category_id`, `title`, `image`, `storyline`, `trailer`, `rating`, `language`, `release_date`, `director`, `maturity_rating`, `running_time`, `created_at`, `updated_at`) VALUES
(1, 1, 'sword art online the movie: progressive scherzo of deep night', 'posters/sao.jpg', 'Sejak 10.000 pemain dipenjara di lingkungan realitas virtual game selama lebih dari sebulan, VRMMORPG pertama \"Sword Art Online\" telah berubah menjadi game kematian.\r\nSuatu hari, misi Raiders tampaknya berjalan dengan baik dengan bantuan informan wanita Argo, tapi...\r\nSeseorang bayangan bergerak dalam bayang-bayang di belakang layar.', 'https://youtu.be/MLWmlQmLQLw?si=8kAp55Yx1P9-TuCk', 3.84, 'Japanese', '2022-10-22', 'Masakazu Obara - Ayako Kouno', 'PG-13', '01:40:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(2, 2, 'A Silent Voice', 'posters/knk.jpeg', 'Koe no Katachi menceritakan kisah mengharukan tentang reuni Shoukya dengan Shouko dan upayanya yang jujur untuk menebus dirinya sendiri, sambil terus dihantui oleh bayang-bayang masa lalunya.', 'https://youtu.be/nfK6UgLra7g?si=jxlNh12X0rRGhWeT', 4.15, 'Japanese', '2016-09-17', 'Naoko Yamada', 'PG-13', '02:10:00', '2024-12-26 01:08:01', '2024-12-26 02:32:35'),
(3, 4, 'The Tunnel to Summer, the Exit of Goodbyes', 'posters/animediko.jpeg', 'Keluarga Kaoru Touno sedang berantakan. Setelah kematian saudara kandungnya dan perceraian orang tuanya, dia tidak lagi merasa damai di rumah. Setelah pertengkaran sengit dengan ayahnya, Kaoru lari dari rumah dan menemukan dirinya di depan terowongan misterius yang menariknya masuk. Terkejut dengan apa yang dilihatnya di dalam, dia bergegas keluar, membawa burung yang mirip dengan hewan peliharaannya yang sudah mati. Saat keluar, Kaoru menyadari bahwa meskipun dia hanya menghabiskan beberapa menit di dalam terowongan, satu minggu penuh telah berlalu. Pengalaman aneh ini mengingatkannya pada rumor tentang \"Terowongan Urashima\"—sebuah lorong yang mengabulkan keinginan dengan imbalan umur seseorang. Mengingat kebangkitan burung peliharaannya, Kaoru bertanya-tanya apakah kunjungan lain dapat memperbaiki hidupnya yang berantakan. Namun, ketika dia kembali ke pintu masuk terowongan misterius itu, Kaoru menyadari bahwa dia diikuti oleh Anzu Hanashiro, murid pindahan baru di kelasnya. Dia juga tahu tentang rumor tersebut dan memintanya untuk membantu dengan eksperimen—ternyata dia juga memiliki keinginan yang hanya bisa dikabulkan oleh terowongan itu.', 'https://youtu.be/EhPu7arYYYo?si=a2ZMnPHVX0uiVACR', 3.95, 'Japanese', '2022-09-09', 'Tomohisa Taguchi', 'PG-13', '01:22:00', '2024-12-26 01:08:01', '2024-12-26 02:32:56'),
(4, 4, 'Into the Forest of Fireflies\' Light', 'posters/tl.jpeg', 'Selama liburan musim panas di rumah kakeknya, Hotaru Takegawa yang berusia enam tahun tersesat di hutan yang dikabarkan dihuni oleh roh-roh. Saat menangis putus asa, Hotaru didekati oleh Gin—seorang anak laki-laki misterius yang mengenakan topeng—yang menawarkan bantuan. Gembira melihat orang lain, Hotaru berlari ke arah Gin dengan tangan terbuka hanya untuk ditolak dengan kasar. Namun, dia segera mengetahui alasan serius di balik perilaku Gin: sebuah kutukan mengerikan telah dilemparkan padanya. Jika dia disentuh oleh manusia, dia akan menghilang selamanya. Meskipun Gin mendesaknya untuk tidak pernah kembali, Hotaru melakukan sebaliknya, dan tidak lama kemudian, mereka menjadi teman dekat meskipun situasi Gin yang rapuh. Namun, seiring berjalannya waktu dan perasaan mereka semakin kuat, Hotaru dan Gin mulai berjuang dengan batasan yang ditetapkan takdir di antara mereka.', 'https://youtu.be/uVPZwPJ80RQ?si=jKcnfAcZItm7QBtc', 4.10, 'Japanese', '2011-09-17', 'Takahiro Omori', 'G', '00:45:00', '2024-12-26 01:08:01', '2024-12-26 02:32:47'),
(5, 2, 'Grave of the Fireflies', 'posters/nuklir.jpg', 'Saat Perang Dunia II mencapai akhirnya pada tahun 1945, Jepang menghadapi kehancuran luas akibat pengeboman Amerika yang menghancurkan kota demi kota. Hotaru no Haka, juga dikenal sebagai Grave of the Fireflies, adalah kisah tentang Seita dan adiknya Setsuko, dua anak Jepang yang hidupnya hancur oleh perang brutal. Mereka kehilangan ibu, ayah, rumah, dan harapan masa depan yang cerah—semua akibat tragis dari perang. Kini menjadi yatim piatu dan tunawisma, Seita dan Setsuko tidak punya pilihan selain mengembara di pedesaan, dilanda kelaparan dan penyakit. Bertemu dengan ketidakpedulian orang dewasa di sepanjang jalan, mereka menemukan bahwa keadaan putus asa dapat mengubah bahkan orang yang paling baik menjadi kejam, namun harapan muda mereka bersinar terang di tengah kesulitan yang tak henti-hentinya, mencegah mereka menyerah pada nasib yang tak terelakkan.', 'https://youtu.be/lhlh7JVcTt8?si=VzwETLS64BcKa20P', 4.40, 'Japanese', '1988-04-16', 'Isao Takahata', 'PG-13', '01:28:00', '2024-12-26 01:08:01', '2024-12-26 02:38:37'),
(6, 5, 'Spirited Away', 'posters/setan.jpeg', 'Selama perjalanan ke rumah baru mereka, Chihiro Ogino yang berusia 10 tahun, keras kepala, manja, dan naif, tidak senang ketika dia dan orang tuanya menemukan taman hiburan yang ditinggalkan. Saat menjelajah dengan hati-hati, dia menyadari bahwa tempat ini lebih dari sekadar yang terlihat, karena hal-hal aneh mulai terjadi saat senja tiba. Penampakan hantu dan makanan yang mengubah orang tuanya menjadi babi hanyalah permulaan—Chihiro tanpa sadar telah memasuki dunia roh. Kini terjebak, dia harus mengumpulkan keberanian untuk hidup dan bekerja di antara roh-roh, dengan bantuan Haku yang misterius dan karakter unik yang dia temui di sepanjang jalan. Penuh warna dan menarik, Sen to Chihiro no Kamikakushi menceritakan perjalanan Chihiro melalui dunia yang tidak dikenal saat dia berusaha menyelamatkan orang tuanya dan kembali ke rumah.', 'https://youtu.be/ByXuk9QqQkk?si=Ue0onc9uP_XVvxTz', 4.38, 'English', '2001-07-20', 'Hayao Miyazaki', 'PG', '02:04:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(7, 1, 'Digimon Adventure: Last Evolution Kizuna', 'posters/anime_gak_laku.webp', 'Saat Anak-Anak Terpilih dan partner Digimon mereka hidup bahagia bersama di dunia manusia, Taichi Yagami dan Yamato Ishida, bersama teman-teman mereka, mendedikasikan diri untuk menjaga perdamaian yang telah mereka perjuangkan. Meskipun bersatu oleh tanggung jawab ini, masing-masing telah mulai mengambil langkah pertama menuju masa depan di luar menjadi Anak Terpilih. Namun, perjalanan baru ini terganggu oleh kemunculan Menoa Bellucci, seorang profesor Amerika yang mengkhususkan diri dalam penelitian Digimon. Dia membawa kabar tentang beberapa Anak Terpilih dari seluruh dunia yang ditemukan koma, dengan partner Digimon mereka yang hilang. Penyelidikan Menoa menunjukkan bahwa jenis baru Digimon berada di balik fenomena mengkhawatirkan ini: Eosmon, yang bersembunyi di dalam kedalaman internet. Untuk berhasil dalam misi ini, tim harus berusaha melalui jarak yang semakin jauh di antara mereka dan bersatu sekali lagi.', 'https://youtu.be/wR7U3IDmFYA?si=5TqBTjBK-Z0aKt-R', 4.00, 'Japanese', '2020-02-21', 'Tomohisa Taguchi', 'PG-13', '01:34:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(8, 2, 'Your Name', 'posters/knn.jpeg', 'Mitsuha Miyamizu, seorang gadis SMA, mendambakan kehidupan sebagai seorang anak laki-laki di kota Tokyo yang ramai—impian yang sangat kontras dengan kehidupannya saat ini di pedesaan. Sementara itu, di kota, Taki Tachibana menjalani kehidupan sibuk sebagai siswa SMA sambil bekerja paruh waktu dan berharap untuk masa depan di bidang arsitektur. Suatu hari, Mitsuha terbangun di kamar yang bukan miliknya dan tiba-tiba mendapati dirinya hidup dalam impian di Tokyo—tetapi dalam tubuh Taki! Di tempat lain, Taki mendapati dirinya hidup dalam kehidupan Mitsuha di pedesaan yang sederhana. Dalam upaya mencari jawaban atas fenomena aneh ini, mereka mulai mencari satu sama lain. Kimi no Na wa. berpusat pada tindakan Mitsuha dan Taki, yang mulai memiliki dampak dramatis pada kehidupan satu sama lain, menenun mereka ke dalam jalinan yang diikat oleh takdir dan keadaan.\r\n', 'https://youtu.be/xU47nhruN-Q?si=3szl7R3eNRhgt4Ie', 4.40, 'Japanese', '2016-08-26', 'Makoto Shinkai', 'PG-13', '01:46:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(9, 4, 'Weathering with You', 'posters/tnk.jpg', 'Tokyo sedang mengalami hujan deras yang tampaknya mengganggu ritme kehidupan semua orang di sana. Di tengah hujan yang tampaknya tak berujung ini, datanglah Hodaka Morishima, seorang siswa SMA yang melarikan diri, yang berjuang untuk mendukung dirinya sendiri secara finansial—berakhir dengan pekerjaan di penerbit kecil. Pada saat yang sama, Hina Amano yang yatim piatu juga berusaha mencari pekerjaan untuk menghidupi dirinya dan adik laki-lakinya. Nasib mereka berdua terjalin ketika Hodaka mencoba menyelamatkan Hina dari pria-pria jahat, memutuskan untuk melarikan diri bersama. Kemudian, Hodaka menemukan bahwa Hina memiliki kekuatan aneh namun luar biasa: kemampuan untuk memanggil matahari setiap kali dia berdoa. Dengan cuaca Tokyo yang tidak biasa, Hodaka melihat potensi dari kemampuan ini. Dia menyarankan agar Hina menjadi \"gadis sinar matahari\"—seseorang yang akan membersihkan langit untuk orang-orang saat mereka membutuhkannya. Awalnya, segalanya tampak membaik bagi mereka. Namun, sudah menjadi pengetahuan umum bahwa kekuatan selalu datang dengan harga yang mahal.', 'https://youtu.be/Q6iK6DjV_iE?si=nloKP-3kUBZt6N2W\r\n', 4.10, 'Japanese', '2019-07-19', 'Makoto Shinkai', 'PG-13', '01:52:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(10, 2, 'Suzume', 'posters/suzume.jpeg', 'Dalam perjalanan ke sekolah suatu hari, Suzume Iwato bertemu dengan Souta Munakata, seorang pemuda yang mencari area yang ditinggalkan. Gadis SMA tersebut mengarahkan Souta ke reruntuhan terdekat, tetapi karena rasa ingin tahu, dia sendiri memutuskan untuk pergi ke tempat yang sama. Di sana, Suzume menemukan pintu terisolasi dengan alam semesta seperti mimpi di baliknya—tempat yang bisa dia lihat dan rasakan, tetapi tidak bisa dimasuki. Sebuah batu aneh terletak di tanah di dekatnya, tetapi berubah menjadi makhluk seperti kucing dan lari ketika Suzume mengangkatnya. Tiba-tiba takut, dia kembali ke sekolahnya, tidak menyadari bahwa tindakannya meninggalkan pintu terbuka akan membawa konsekuensi. Dengan \"batu kunci\" dilepaskan, kejahatan dari alam semesta lain kini bisa bebas melarikan diri dan menyebabkan kekacauan di seluruh Jepang. Berniat memperbaiki kesalahan berbahayanya, Suzume bergabung dengan Souta—yang tujuan sebenarnya adalah mencegah kejahatan berkembang—dalam menemukan dan mengunci semua pintu yang terbuka sebelum negara hancur.', 'https://youtu.be/5pTcio2hTSw?si=QLCYYx5mhFDui1G7', 4.10, 'Japanese', '2022-11-11', 'Makoto Shinkai', 'PG-13', '02:01:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(11, 1, 'Sword Art Online the Movie: Ordinal Scale', 'posters/sao2.jpeg', 'Pada tahun 2026, empat tahun setelah insiden terkenal Sword Art Online, teknologi baru yang revolusioner muncul: Augma, sebuah perangkat yang menggunakan sistem Augmented Reality. Berbeda dengan Virtual Reality dari NerveGear dan Amusphere, Augma sepenuhnya aman dan memungkinkan pemain menggunakannya saat mereka sadar, menciptakan sensasi instan di pasar. Aplikasi paling populer untuk Augma adalah game Ordinal Scale, yang membenamkan pemain dalam permainan peran fantasi dengan peringkat dan hadiah pemain. Mengikuti tren baru ini, teman-teman Kirito terjun ke dalam permainan, dan meskipun awalnya ragu tentang sistem tersebut, Kirito akhirnya bergabung dengan mereka. Awalnya tampak hanya sebagai hiburan, namun mereka segera menyadari bahwa permainan ini tidak seperti yang terlihat.', 'https://youtu.be/VKyz5SVH1Ug?si=1zSb0AJhqaBn5VaO', 3.78, 'Japanese', '2017-02-18', 'Tomohiko Ito', 'R+', '01:59:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(12, 3, 'Gintama: The Very Final', 'posters/final.jpeg', 'Dua tahun telah berlalu sejak invasi Tendoshuu ke Terminal Pusat O-Edo. Sejak itu, Yorozuya telah berpisah. Meramalkan kembalinya Utsuro, Gintoki Sakata mulai memeriksa garis ley Bumi untuk mencari jejak Altana pria itu. Setelah bertemu dengan sisa-sisa Tendoshuu—yang terus mencari keabadian—Gintoki kembali ke Edo. Kemudian, Shinsengumi dan Yorozuya yang telah berkumpul kembali memulai serangan ke Terminal Pusat yang diduduki. Dengan Altana yang dipanen oleh reruntuhan kapal Tendoshuu dalam bahaya meledak, Yorozuya dan sekutu mereka melawan musuh mereka sementara keselamatan Edo—dan seluruh dunia—bergantung pada keseimbangan. Memenuhi keinginan guru mereka, mantan murid Shouyou Yoshida bersatu dan menghidupkan kembali masa lalu mereka untuk terakhir kalinya dalam upaya menyelamatkan masa depan mereka.', 'https://youtu.be/bwvGmPyNQUE?si=EM_ROdOQ9diHpSs-', 4.50, 'Japanese', '2021-01-08', 'Chizuru Miyawaki - Akie Ishii', 'PG-13', '01:44:00', '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(13, 3, 'Gintama: The Movie: The Final Chapter: Be Forever Yorozuya', 'posters/ginta.jpeg', 'Ketika Gintoki menangkap seorang pembajak film di sebuah pemutaran perdana, dia memeriksa rekaman kamera dan mendapati dirinya terlempar ke versi Edo yang suram dan pasca-apokaliptik, di mana epidemi misterius yang disebut \"Wabah Putih\" telah menghancurkan populasi dunia. Ternyata pembajak film itu bukanlah pembajak sama sekali—itu adalah mesin waktu android, dan Gintoki telah terlempar lima tahun ke masa depan! Shinpachi dan Kagura, rekan-rekannya di Yorozuya, telah berpisah dan sekarang menjadi vigilante solo yang tangguh, sementara dia sendiri telah hilang selama bertahun-tahun, menghilang tanpa jejak setelah menulis pesan aneh di jurnalnya. Dengan menyamar menggunakan penyamaran yang diberikan oleh mesin waktu android, Gintoki secara sembarangan menyatukan kembali tim Yorozuya untuk menyelidiki Wabah Putih, dan segera menemukan bahwa kunci untuk menyelamatkan masa depan terletak pada kegelapan masa lalunya sendiri. Bertekad untuk menghadapi musuh yang kuat, dia membuat penemuan penting—dengan sekelompok teman dan sekutu di sisinya, dia tidak harus bertarung sendirian.', 'https://youtu.be/iSQDBYhJzJQ?si=2Huu2Nl_VNRS9RIO', 4.45, 'Japanese', '2013-07-06', 'Yoichi Fujita', 'PG-13', '01:50:00', NULL, NULL),
(14, 1, 'Gurren Lagann The Movie: The Lights in the Sky are Stars', 'posters/ac.jpeg', 'Manusia telah menikmati kehidupan mewah, damai, dan makmur mereka selama tujuh tahun sejak hari Raja Spiral yang maha kuasa dikalahkan—hari mereka merebut kembali tanah air mereka, Bumi. Namun, anugerah gaya hidup ini membuat mereka tidak siap ketika ancaman yang tidak dikenal dan bermusuhan muncul akibat populasi manusia yang terus bertambah. Bencana ini adalah Anti-Spiral—musuh yang menakutkan dengan kekuatan yang tak tertandingi. Ketika ramalan Raja Spiral yang memprediksi kehancuran \"Dunia Spiral\" mulai menjadi kenyataan, semua bagian sudah siap, dan Tim Dai-Gurren siap bertindak. Dengan harapan mendiang saudaranya untuk melihat masa depan yang lebih baik bagi umat manusia, Simon—bersama dengan Nia Teppelin dan anggota tim lainnya—bertekad untuk menggulingkan Anti-Spiral yang perkasa demi menghidupkan kembali harapan yang hilang bagi umat manusia', 'https://youtu.be/yMYEyoTRSbE?si=YTt2RRJ2jQQKgpDm', 4.20, 'Japanese', '2009-04-22', 'Hiroyuji Imaishi - Yasuhiro Geshi - Hiroshi Ikehata', 'R+', '02:05:00', NULL, NULL),
(15, 1, 'Demon Slayer: Kimetsu no Yaiba - The Movie: Mugen Train', 'posters/kny.jpeg', 'Setelah serangkaian hilangnya orang secara misterius mulai mengganggu sebuah kereta, upaya berulang dari Demon Slayer Corps untuk mengatasi masalah tersebut terbukti sia-sia. Untuk mencegah korban lebih lanjut, Flame Pillar, Kyoujurou Rengoku, mengambil tanggung jawab untuk menghilangkan ancaman tersebut. Menemaninya adalah beberapa darah baru yang paling menjanjikan dari Corps: Tanjirou Kamado, Zenitsu Agatsuma, dan Inosuke Hashibira, yang semuanya berharap dapat menyaksikan aksi heroik dari pembasmi iblis teladan ini secara langsung. Tanpa sepengetahuan mereka, kekuatan iblis yang bertanggung jawab atas hilangnya orang-orang tersebut telah memulai rencana jahat mereka. Di bawah pengaruh iblis ini, kelompok tersebut harus mengumpulkan setiap ons kekuatan mereka dan menghunus pedang mereka untuk menyelamatkan semua dua ratus penumpang di dalam kereta. Ketika situasi mulai lepas kendali, tekad dan komitmen Tanjirou terhadap tugasnya diuji.', 'https://youtu.be/ATJYac_dORw?si=_xsytdaS9RV4iydH', 4.30, 'Japanese', '2020-10-16', 'Haruo Sotozaki', 'R+', '01:56:00', NULL, NULL),
(16, 2, 'Violet Evergarden: The Movie', 'posters/vio.jpg', 'Beberapa tahun telah berlalu sejak berakhirnya Perang Besar. Saat menara radio di Leidenschaftlich terus dibangun, telepon akan segera menjadi lebih relevan, yang mengarah pada penurunan permintaan untuk \"Auto Memory Dolls.\" Meskipun begitu, Violet Evergarden terus meningkat dalam ketenaran setelah kesuksesannya yang terus-menerus dalam menulis surat. Namun, terkadang hal yang paling Anda rindukan adalah hal yang tidak muncul. Film Violet Evergarden mengikuti Violet saat dia terus memahami konsep emosi dan makna cinta. Pada saat yang sama, dia mengejar secercah harapan bahwa pria yang pernah mengatakan kepadanya, \"Aku mencintaimu,\" mungkin masih hidup meskipun bertahun-tahun telah berlalu.', 'https://youtu.be/BUfSen2rYQs?si=1rWSngG8HeQ6lWHt', 4.40, 'Japanese', '2020-09-18', 'Taichi Ishidate', 'PG-13', '02:20:00', NULL, NULL),
(17, 5, 'My Neighbor Totoro', 'posters/toto.jpeg', 'In 1950s Japan, Tatsuo Kusakabe relocates himself and his two daughters, Satsuki and Mei, to the countryside to be closer to their mother, who is hospitalized due to long-term illness. As the girls grow acquainted with rural life, Mei encounters a small, bunny-like creature in the yard one day. Chasing it into the forest, she finds \"Totoro\"—a giant, mystical forest spirit whom she soon befriends. Before long, Satsuki too meets Totoro, and the two girls suddenly find their lives filled with magical adventures in nature and fantastical creatures of the woods.\r\nPada tahun 1950-an di Jepang, Tatsuo Kusakabe memindahkan dirinya dan kedua putrinya, Satsuki dan Mei, ke pedesaan untuk lebih dekat dengan ibu mereka yang dirawat di rumah sakit karena penyakit jangka panjang. Saat kedua gadis itu mulai terbiasa dengan kehidupan pedesaan, Mei suatu hari bertemu dengan makhluk kecil seperti kelinci di halaman. Mengejarnya ke dalam hutan, dia menemukan \"Totoro\"—roh hutan raksasa dan mistis yang segera menjadi temannya. Tak lama kemudian, Satsuki juga bertemu dengan Totoro, dan kedua gadis itu tiba-tiba menemukan hidup mereka dipenuhi dengan petualangan ajaib di alam dan makhluk-makhluk fantastis di hutan.', 'https://youtu.be/92a7Hj0ijLs?si=Q6iDBRvyg29lMYUc', 4.10, 'Japanese', '1988-04-16', 'Hayao Miyazaki', 'G', '01:26:00', NULL, NULL),
(18, 5, 'Akira', 'posters/akira.jpeg', 'Pada tahun 1988 di Jepang, sebuah ledakan yang disebabkan oleh seorang anak laki-laki dengan kekuatan psikis menghancurkan kota Tokyo dan memicu Perang Dunia III. Untuk mencegah kehancuran lebih lanjut, dia ditangkap dan ditahan, tidak pernah terdengar lagi. Sekarang, pada tahun 2019, versi kota yang telah dipulihkan yang dikenal sebagai Neo-Tokyo—daerah yang penuh dengan kekerasan geng dan terorisme terhadap pemerintah saat ini—berdiri di tempatnya. Di sini, Shoutarou Kaneda memimpin \"the Capsules,\" sekelompok orang yang dikenal karena mengendarai sepeda motor besar yang dimodifikasi dan selalu berkonflik dengan rival mereka \"the Clowns.\" Selama salah satu pertempuran ini, sahabat Shoutarou, Tetsuo Shima, terlibat dalam kecelakaan dengan seorang esper yang menemukan dirinya di jalanan Tokyo setelah melarikan diri dari institusi pemerintah. Melalui pertemuan ini, Tetsuo mulai mengembangkan kemampuannya sendiri yang misterius, sementara pemerintah berusaha mengarantina psikis terbaru ini dalam upaya putus asa untuk mencegahnya melepaskan kekuatan destruktif yang sekali lagi dapat membuat kota bertekuk lutut.', 'https://youtu.be/nA8KmHC2Z-g?si=ZEU3Mu63pIJuqHGk', 4.00, 'English', '1988-07-16', 'Katsuhiro Otomo', 'R+', '02:04:00', NULL, NULL),
(19, 5, 'Perfect Blue', 'posters/per.jpeg', 'Grup idola J-pop CHAM! telah menghibur penggemarnya selama dua tahun terakhir. Sayangnya, semua hal baik harus berakhir, dan CHAM! harus melihat salah satu anggotanya, Mima Kirigoe, meninggalkan grup untuk mengejar karir aktingnya. Meskipun pilihan Mima mendapat tanggapan yang beragam, dia berharap penggemarnya akan terus mendukungnya. Namun, kehidupan Mima mulai berubah drastis setelah kepergiannya dari grup. Ingin melepaskan citra idola popnya, dia mengambil peran dalam serial drama kriminal, dan karirnya sebagai aktris secara bertahap menjadi lebih menuntut dan melelahkan bagi Mima dan manajernya, Rumi Hidaka. Menambah kegelisahan Mima, seorang penggemar yang terobsesi dan tidak mampu menerima bahwa Mima telah berhenti menjadi idola yang polos, mulai menguntitnya; sebuah situs web anonim baru mulai meniru kehidupannya dengan detail yang rumit; dan CHAM! juga tampaknya lebih baik tanpa dirinya. Satu per satu, setiap perkembangan yang mengganggu membuat Mima semakin tidak stabil dan tidak mampu membedakan kenyataan dari fantasi.', 'https://youtu.be/2O09gQC-KvA?si=H1XKZEKFue5O5ti4', 4.30, 'Japanese', '1998-02-28', 'Satoshi Kon', 'R+', '01:21:00', NULL, NULL),
(20, 5, 'Vampire Hunter D: Bloodlust', 'posters/vam.jpg', 'Ketika kenyamanan sinar matahari mulai memudar, makhluk-makhluk dengan keindahan serafik menjadi penguasa malam yang tak terbantahkan, menanamkan ketakutan pada setiap makhluk hidup. Air berubah menjadi es di hadapan monster penghisap darah ini, dan korban mereka menyadari bahwa dingin yang aneh ini adalah pertanda kematian mereka yang tak terelakkan. Untungnya, jumlah vampir semakin berkurang berkat para pemburu hadiah yang tak kenal takut yang melacak dan membunuh predator yang hampir abadi ini. Suatu malam, tragedi menimpa keluarga Elbourne ketika putri mereka, Charlotte, diculik oleh Meier Link, seorang penguasa vampir yang dihormati dan dilindungi oleh pasukan monster. Untuk menyelamatkan Charlotte yang mereka cintai, keluarganya merekrut Marcus Brothers, sekelompok pemburu vampir yang dikenal karena kekejamannya; dan D, seorang dhampir yang membawa pedang—setengah vampir, setengah manusia yang memiliki kekuatan dari kedua spesies dan kelemahan dari keduanya. Para pemburu bergegas menyelamatkan Charlotte, tetapi jika penculiknya memutuskan untuk mengubahnya menjadi vampir, mereka harus mengeliminasi dia. Selain itu, misi mereka harus diselesaikan sebelum Meier mencapai kastil vampir Carmilla yang tak tertembus dan membawa Charlotte keluar dari jangkauan manusia selamanya.', 'https://youtu.be/44xT9LSrgJ4?si=sHKGepzaDWei7bwB', 4.00, 'English', '2000-08-25', 'Yohsiaki Kawajiri', 'R+', '01:42:00', NULL, NULL),
(21, 4, 'I Want To Eat Your Pancreas', 'posters/eat.jpeg', 'Protagonis yang penyendiri: seorang kutu buku yang sangat terlepas dari dunia tempat ia tinggal. Dia tidak tertarik pada orang lain dan yakin bahwa tidak ada yang tertarik padanya juga. Ceritanya dimulai ketika dia menemukan sebuah buku tulisan tangan berjudul Living with Dying. Dia segera mengidentifikasinya sebagai buku harian rahasia milik teman sekelasnya yang populer dan ceria, Sakura Yamauchi. Sakura kemudian mengungkapkan kepadanya tentang penyakit pankreas yang dideritanya dan bahwa waktunya terbatas. Hanya keluarganya yang tahu tentang penyakit terminalnya; bahkan teman-teman terdekatnya tidak tahu. Meskipun mengetahui hal ini, dia tidak menunjukkan simpati terhadap penderitaan Sakura, tetapi terjebak dalam gelombang keceriaan Sakura yang terus-menerus, dia akhirnya setuju untuk menemani Sakura di hari-hari terakhirnya. Saat pasangan yang berlawanan ini berinteraksi, hubungan mereka semakin kuat, terjalin melalui pilihan-pilihan yang mereka buat setiap hari. Ketidakpedulian dan ketidakpastian Sakura yang tampak mengganggu aliran hidup protagonis yang impasif, secara bertahap membuka hatinya saat dia menemukan dan merangkul makna sejati dari kehidupan.', 'https://youtu.be/MmoBvmJA9XI?si=w2EFN2B7sx30_5QI', 4.30, 'Japanese', '2018-09-01', 'Shinichiro Ushijima', 'PG-13', '01:48:00', NULL, NULL),
(22, 4, '5 Centimeters per Second', 'posters/5.jpg', 'Apa yang terjadi ketika dua orang saling mencintai tetapi tidak ditakdirkan untuk bersama? Takaki Toono dan Akari Shinohara adalah teman masa kecil, tetapi keadaan di luar kendali mereka memisahkan mereka. Mereka berjanji untuk tetap berhubungan, dan meskipun waktu yang berlalu memperlebar jarak di antara mereka, rantai kenangan tetap ada. Byousoku 5 Centimeter adalah drama romantis yang berfokus pada kenyataan pahit hubungan jarak jauh. Terjebak di masa lalu dan tidak mampu membuat kenangan baru, Takaki dan Akari berpegang pada harapan untuk bertemu lagi. Mereka menjalani kehidupan sehari-hari dengan setengah hati, menyakiti diri mereka sendiri dan orang-orang di sekitar mereka.', 'https://youtu.be/iPsu_sk-e7Q?si=AxCmUiDu_qSaY8K0', 3.80, 'Japanese', '2007-03-03', 'Makoto Shinkai', 'PG-13', '00:22:00', NULL, NULL),
(23, 3, 'KonoSuba: God\'s Blessing on This Wonderful World! - Legend of Crimson', 'posters/kono.jpg', 'Tidak mengherankan bahwa pasukan Raja Iblis takut pada Crimson Demons, klan asal Megumin dan Yunyun. Bahkan jika jenderal Raja Iblis menyerang desa mereka, Crimson Demons dapat dengan mudah mengusir mereka dengan penguasaan sihir tingkat lanjut dan kuat. Ketika Yunyun menerima surat yang tampaknya serius tentang potensi bencana yang akan datang ke kampung halamannya, dia segera memberi tahu Kazuma Satou dan anggota partainya. Setelah serangkaian kesalahpahaman konyol, ternyata itu hanya lelucon oleh sesama iblis yang ingin menjadi penulis. Meskipun begitu, Megumin menjadi khawatir tentang keluarganya dan berangkat menuju desa Crimson Demons bersama gengnya. Di sana, Kazuma dan yang lainnya memutuskan untuk melihat keajaiban tempat kelahiran Megumin. Namun, mereka segera menyadari bahwa ancaman konyol yang mereka terima mungkin lebih dari sekadar lelucon.', 'https://youtu.be/h4dX58X6ln4?si=r2uUtKV7AD78zFi4', 4.20, 'Japanese', '2019-10-30', 'Takaomi Kanasaki', 'PG-13', '01:30:00', NULL, NULL),
(24, 3, 'Summer Wars', 'posters/sum.jpg', 'OZ, dunia virtual yang terhubung ke internet, telah menjadi sangat populer di seluruh dunia sebagai tempat bagi orang-orang untuk terlibat dalam berbagai aktivitas, seperti bermain olahraga atau berbelanja, melalui avatar yang dibuat dan disesuaikan oleh pengguna. OZ juga memiliki keamanan yang hampir tidak bisa ditembus karena enkripsi yang kuat, memastikan bahwa data pribadi yang dikirimkan melalui jaringan akan tetap aman untuk melindungi pengguna. Karena aplikasi yang nyaman ini, sebagian besar masyarakat menjadi sangat bergantung pada realitas simulasi, bahkan sampai mempercayakan sistem ini untuk mengembalikan penjelajah asteroid tak berawak, Arawashi. Kenji Koiso adalah seorang jenius matematika berusia 17 tahun dan moderator paruh waktu OZ yang diundang oleh gadis yang disukainya, Natsuki Shinohara, dalam perjalanan musim panas. Namun tanpa sepengetahuannya, petualangan ini mengharuskannya berperan sebagai tunangannya. Tak lama setelah tiba di rumah keluarga Natsuki, yang sedang mempersiapkan ulang tahun ke-90 nenek buyutnya, dia menerima pesan aneh yang dikodekan di ponselnya dari pengirim yang tidak dikenal yang menantangnya untuk memecahkannya. Kenji berhasil memecahkan kode tersebut, tetapi dia tidak tahu bahwa keahliannya dalam matematika baru saja menempatkan Bumi dalam bahaya besar.', 'https://youtu.be/2BB5V6CgDOg?si=z_MDi5lRI49YH7tX', 4.00, 'Japanese', '2009-08-01', 'Mamoru Hosoda', 'PG-13', '00:00:00', '2024-12-26 18:54:00', NULL),
(25, 3, 'Spy x Family Code: White', 'posters/spy.jpeg', 'Loid Forger, seorang mata-mata elit, diperingatkan oleh atasannya bahwa dia mungkin akan dipindahkan dari misinya yang sedang berlangsung, Operasi Strix. Untuk mempertahankan posisinya, dia harus membuat kemajuan signifikan menuju tujuan operasi, yang melibatkan putri angkatnya, Anya, untuk mendapatkan cukup Stella Stars agar menjadi Sarjana Kekaisaran di Akademi Eden. Setelah mengetahui tentang kontes memasak yang memberikan Stella Star kepada pemenang, Loid meneliti makanan penutup favorit juri untuk meningkatkan peluang Anya. Namun, untuk menciptakan meremere favorit juri dengan sempurna membutuhkan lebih dari sekadar mengikuti resep. Oleh karena itu, keluarga Forger pergi berlibur ke wilayah Frigis untuk mencoba meremere asli. Tidak semua berjalan lancar dalam perjalanan tersebut, karena keluarga Forger akhirnya terlibat dalam plot jahat untuk menyalakan kembali perang antara negara Ostania dan Westalis.', 'https://youtu.be/6Gx7EG8sBdw?si=3OEoS1InJuK2VcYm', 4.00, 'Japanese', '2023-12-22', 'Kazuhiro Furuhashi - Takahsi Katagiri', 'PG-13', '01:50:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `show_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `seat_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `show_id`, `user_id`, `seat_number`, `created_at`, `updated_at`) VALUES
(1, 5, 30, 16, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(2, 26, 63, 6, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(3, 14, 64, 19, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(4, 30, 33, 8, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(5, 46, 8, 5, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(6, 2, 35, 11, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(7, 14, 21, 18, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(8, 34, 47, 12, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(9, 45, 37, 20, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(10, 48, 43, 0, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(11, 49, 52, 7, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(12, 13, 63, 15, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(13, 44, 31, 16, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(14, 14, 47, 17, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(15, 2, 30, 29, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(16, 41, 42, 10, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(17, 12, 44, 15, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(18, 38, 29, 12, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(19, 25, 7, 14, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(20, 4, 11, 26, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(21, 26, 22, 12, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(22, 40, 67, 18, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(23, 39, 11, 17, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(24, 10, 14, 11, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(25, 6, 59, 8, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(26, 6, 61, 24, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(27, 42, 43, 13, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(28, 41, 6, 12, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(29, 13, 68, 8, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(30, 2, 58, 11, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(31, 25, 57, 18, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(32, 41, 26, 8, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(33, 26, 15, 15, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(34, 22, 41, 27, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(35, 44, 34, 0, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(36, 38, 49, 6, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(37, 44, 64, 15, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(38, 2, 2, 2, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(39, 15, 12, 22, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(40, 12, 24, 19, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(41, 21, 23, 22, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(42, 49, 23, 18, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(43, 1, 25, 2, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(44, 14, 51, 11, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(45, 41, 46, 11, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(46, 42, 34, 2, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(47, 10, 53, 9, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(48, 22, 30, 15, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(49, 31, 12, 14, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(50, 5, 41, 7, '2024-12-26 01:08:02', '2024-12-26 01:08:02'),
(51, 1, 1, 7, '2024-12-26 01:14:54', '2024-12-26 01:14:54'),
(52, 1, 1, 8, '2024-12-26 01:14:54', '2024-12-26 01:14:54'),
(53, 49, 2, 15, '2024-12-26 11:19:05', '2024-12-26 11:19:05'),
(54, 49, 2, 16, '2024-12-26 11:19:05', '2024-12-26 11:19:05'),
(55, 3, 1, 2, '2024-12-27 02:18:22', '2024-12-27 02:18:22'),
(56, 1, 72, 1, '2025-07-16 07:17:57', '2025-07-16 07:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `code`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(2, 2, 'Manager', '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(3, 3, 'Customer', '2024-12-26 01:07:57', '2024-12-26 01:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, 20, '2024-12-26 01:07:57', '2024-12-26 01:07:57'),
(2, 30, '2024-12-26 01:07:57', '2024-12-26 01:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `remaining_seats` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `movie_id`, `room_id`, `price`, `date`, `start_time`, `end_time`, `remaining_seats`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 50000.00, '2025-12-02', '06:46:00', '08:45:42', 26, '2024-12-26 01:08:01', '2025-07-16 07:17:57'),
(2, 8, 2, 50000.00, '2025-01-11', '06:39:10', '08:22:28', 26, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(3, 12, 1, 50000.00, '2025-01-09', '06:08:10', '10:32:07', 19, '2024-12-26 01:08:01', '2024-12-27 02:18:22'),
(4, 11, 2, 50000.00, '2025-01-05', '07:38:36', '08:09:07', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(5, 10, 2, 50000.00, '2024-12-29', '07:04:55', '08:49:55', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(15, 3, 2, 50000.00, '2025-01-02', '06:19:53', '08:37:17', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(17, 6, 1, 50000.00, '2025-01-10', '08:03:13', '10:45:23', 20, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(22, 4, 2, 50000.00, '2025-01-08', '07:03:10', '08:31:18', 28, '2024-12-26 01:08:01', '2024-12-26 01:08:02'),
(25, 2, 1, 50000.00, '2024-12-29', '06:27:32', '08:19:59', 18, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(46, 9, 2, 50000.00, '2025-01-05', '06:10:40', '09:55:02', 29, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(48, 7, 1, 50000.00, '2025-01-08', '06:02:21', '10:46:03', 19, '2024-12-26 01:08:01', '2024-12-26 01:08:01'),
(49, 5, 2, 50000.00, '2025-01-04', '05:40:57', '09:35:39', 26, '2024-12-26 01:08:01', '2024-12-26 11:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `wants_manager` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `email`, `email_verified_at`, `password`, `first_name`, `last_name`, `wants_manager`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@cinemat.com', '2024-12-26 01:07:57', '$2y$10$FCXefV0Dy/0Et4OHWHWJRO.KyncmxejK9gP9uEw4XU2UAX4.DU73a', 'admin', 'DuBuque', 0, 'htJOC0dQJ8tnKfdFJ3Zd0gum2xQfM2kJpRMLIDw9fBvrsWvgkzHei1sLbF9x', '2024-12-26 01:07:58', '2024-12-26 01:07:58'),
(2, 2, 'manager', 'manager@cinemat.com', '2024-12-26 01:07:58', '$2y$10$SCERCycLV.AJh82BVd4Wq.RdipETNq6jDqbBEBWuhgxYY0QjyLu0a', 'manager', NULL, 0, 'IBVKFZNuJpOAiApFwo34Emiy0PLxypiBjCRwEvsrzBp8eFoM0I4tYgzBH8aG', '2024-12-26 01:07:58', '2024-12-26 01:07:58'),
(69, 3, 'RAMAENDUT', 'umbararamadhan@gmail.com', NULL, '$2y$10$sJSaNmhnFy6aepZuPBGbz.LfLGQbyLfJ.kwdUQlPCgzanJ4/cpzru', 'RAMA', 'ENDUT', 0, NULL, '2024-12-26 09:28:47', '2024-12-26 09:28:47'),
(70, 2, 'RAMAENDUT1', 'umbararamadhan1@gmail.com', NULL, '$2y$10$aC2RW5ki85dLWKZNtQXtMerwsFwQAKBXKuTGz6GU10s36Q./IRWNS', 'RAMA', 'ENDUT', 0, NULL, '2024-12-26 09:30:23', '2024-12-26 09:37:55'),
(71, 3, 'RAMAENDUT5', 'umbararamadhan5@gmail.com', NULL, '$2y$10$QvDnT96eKEt9pmvaoWb81O5hB/HssxMpee3D1We6oXDY.ngTWybD2', 'Ramadhan', 'Umbara', 1, NULL, '2024-12-26 09:39:44', '2024-12-26 09:39:44'),
(72, 3, 'ismet', 'looring@gmail.com', NULL, '$2y$10$iDmAWO82Vl9fJ7BXNyR9y.9uhm.PG/owEoHOrOn/7bIlWCuN9nbDe', 'ismet', 'Umbara', 0, NULL, '2025-07-16 06:51:49', '2025-07-16 06:51:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `leads_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_code_unique` (`code`),
  ADD UNIQUE KEY `roles_title_unique` (`title`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
