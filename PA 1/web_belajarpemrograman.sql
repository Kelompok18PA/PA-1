-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2021 pada 01.09
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_belajarpemrograman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `answers`
--

CREATE TABLE `answers` (
  `aid` int(255) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `ans_id`, `course_name`) VALUES
(1, 'Home Tool Markup Language', 1, 'html'),
(2, 'Hyperlinks and Text Markup Language', 1, 'html'),
(3, ' Hyper Text Markup Language', 1, 'html'),
(4, ' Hyper Train Markup Language', 1, 'html'),
(5, '  Mozilla', 2, 'html'),
(6, '  Google', 2, 'html'),
(7, 'Microsoft', 2, 'html'),
(8, 'W3C', 2, 'html'),
(9, '<head>', 3, 'html'),
(10, '<heading>', 3, 'html'),
(11, '<h6>', 3, 'html'),
(12, '<h1>', 3, 'html'),
(13, '<lb>', 4, 'html'),
(14, '<br>', 4, 'html'),
(15, '<break>', 4, 'html'),
(16, '<bk>', 4, 'html'),
(17, 'programming language', 5, 'java'),
(18, 'web designing language', 5, 'java'),
(19, 'OOPS language', 5, 'java'),
(20, 'general purpose language', 5, 'java');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(4) NOT NULL,
  `cat_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1, 'php'),
(2, 'java'),
(3, 'javascript'),
(4, 'python'),
(5, 'android'),
(6, 'jQuery'),
(8, 'IR'),
(9, 'hadoop'),
(10, 'hadoop'),
(11, 'comedy nights'),
(12, 'css'),
(13, 'spring');

-- --------------------------------------------------------

--
-- Struktur dari tabel `commentsection`
--

CREATE TABLE `commentsection` (
  `cid` int(11) NOT NULL,
  `uid` varchar(120) NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL,
  `video_id` int(255) NOT NULL,
  `video_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `commentsection`
--

INSERT INTO `commentsection` (`cid`, `uid`, `date`, `message`, `video_id`, `video_path`) VALUES
(153, 'sunil yadav', '2019-04-15 19:05:17', '5', 50, 'comedy knights'),
(155, 'sunil', '2021-03-13 15:50:57', 'very helpful', 51, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `courses`
--

INSERT INTO `courses` (`id`, `topic_name`, `description`, `course_name`) VALUES
(1, 'C - Home', '<h1 style=\"margin-left:200px\"><span style=\"color:#3498db\"><strong>C Tutorial</strong></span></h1>\r\n\r\n<p>Bahasa pemrograman C merupakan salah satu bahasa pemrograman komputer. Dibuat pada tahun 1972 oleh Dennis Ritchie untuk Sistem Operasi Unix di Bell Telephone Laboratories. Meskipun C dibuat untuk memprogram sistem dan jaringan komputer namun bahasa ini juga sering digunakan dalam mengembangkan software aplikasi.</p>\r\n\r\n<h1>Audience</h1>\r\n\r\n<p>This tutorial has been prepared for the beginners to help them understand the basic to advanced concepts related to C Programming language.</p>\r\n\r\n<h1>Prerequisites</h1>\r\n\r\n<p>Before you start practicing various types of examples given in this reference, we assume that you are already aware about computer programs and computer programming languages.</p>\r\n', 'C'),
(34, 'C - Basic Syntax', '<h1 style=\"margin-left:80px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\">C - Basic Syntax</span></span></h1>\r\n\r\n<p>C merupakan salah satu bahasa pemrograman tertua yang masih eksis dan digunakan di berbagai proyek penting seperti kernel Linux. Selain itu beberapa bahasa pemrograman seperti Python dan PHP pun menggunakan C untuk parser-nya dan tentu saja untuk membuat beberapa ekstensi kedua bahasa tersebut memerlukan kemahiran bahasa C yang cukup.\r\n\r\nUmumnya banyak yang belajar bahasa C dengan menggunakan gcc ada juga yang menggunakan clang. Tapi bila ingin praktis silahkan gunakan saja gcc. Karena ini interactive coding, kamu cukup menggunakan browser dan tetep stay di Codepolitan.</p>\r\n\r\n<h3>Example</h3>\r\nBuat lah sebuah program yang menghasilkan output \"Hello world\"\r\n\r\n<strong>Jawaban : </strong>\r\n<p><a href=\"https://onlinegdb.com/4Kg5eQHmeT\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <stdio.h>\r\n\r\nint main () {\r\n	printf(\"Hello world\\n\");\r\n\r\n}\r\n</pre>\r\n\r\n<p>\r\nSilahkan jalankan kode di atas dan lihat apa hasilnya\r\nSilahkan buat statement printf() lebih banyak lagi sesuai dengan yang kamu inginkan\r\nUmumnya header stdio.h harus selalu disertakan di dalam kode program C bila ingin menampilkan output ke konsol. Kemudian harus selalu ada function main() yang akan dipanggil lebih dahulu saat proses kompilasi.\r\nKamu juga akan selalu menggunakan printf() untuk formatting antara variabel dan informasi yang akan ditampilkan\r\n</p>\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nHello world\r\n</pre>\r\n\r\n', 'C'),
(37, 'C - Basic Datatypes', '<p style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>C - Basic Datatypes</strong></span></span></p>\r\n\r\n<p> Di C ada beberapa tipe data dasar yang wajib diingat. Diantaranya:\r\n\r\n<li>short</li>\r\n<li>int</li>\r\n<li>long</li>\r\n<li>float</li>\r\n<li>double</li>\r\n<li>char</li>\r\n<li>array\r\npointer ke\r\nstring</li>\r\n\r\nAda juga modifier seperti unsigned yang dapat mengubah rentang default dari tipe data angka bulat dan angka koma.\r\n\r\nUntuk formatting pada printf(), kamu dapat menggunakan beberapa tanda berikut:\r\n\r\n<li>%d untuk tipe data int dan short</li>\r\n<li>%li untuk tipe data long</li>\r\n<li>%f untuk tipe data float dan double</li>\r\n<li>%c untuk tipe data char</li>\r\n<li>%s untuk tipe data string</li>\r\n<li>%p untuk tipe data pointer</li>\r\n</p>\r\n\r\n\r\n<h3>Example</h3>\r\nBuatlah sebuah program yang menggunakan tipe dasar yang ada di atas\r\n<b>Jawaban :</b>\r\n<p>\r\n<a href=\"https://onlinegdb.com/1QoVPSJ71K\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <stdio.h>\r\n\r\nint main () {\r\n	short a = 240;\r\n	long b = 1505453234;\r\n	int c = 1350;\r\n	float d = 3.14;\r\n	double e = 1204.0;\r\n	char f = \'A\';\r\n	char g[] = \"Lorem ipsum sit dolor amet\";\r\n\r\n	printf(\"%d\\n\", a);\r\n	printf(\"%li\\n\", b);\r\n	printf(\"%d\\n\", c);\r\n	printf(\"%f\\n\", d);\r\n	printf(\"%f\\n\", e);\r\n	printf(\"%c\\n\", f);\r\n	printf(\"%s\\n\", g);\r\n\r\n}\r\n</pre>\r\n\r\n<pre>\r\n240\r\n1505453234\r\n1350\r\n3.140000\r\n1204.000000\r\nA\r\nLorem ipsum sit dolor amet</pre>\r\n\r\n\r\n', 'C'),
(38, 'C - Convert Data Type', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>C - Convert Data Types</strong></span></span></h1>\r\n\r\n<p>Kamu dapat melakukan konversi tipe data dari satu tipe data ke tipe data lain di C. Kamu dapat melakukannya dengan memberikan tanda (tipe_data) di depan variabel yang akan dikonversi.\r\n\r\nKemudian variabel yang akan dikonversi tersebut harus diterima oleh variabel lain yang sesuai dengan tipe data yang diinginkan.\r\n</p>\r\n<p>\r\nSilahkan jalankan kode di bawah dan lihat apa hasilnya\r\nSilahkan buat variable lain lebih banyak lagi sesuai dengan yang kamu inginkan dan coba konversi ke tipe lain\r\n</p>\r\n\r\n<h2>Example</h2>\r\n<p>Mulailah sebuah program yang dapat mengkonversi tipe data dari satu tipe data ke tipe data lainnya</p>\r\n\r\n<b>Jawaban :</b>\r\n\r\n<p><a href=\"https://onlinegdb.com/9tEZ9i7Fz\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <stdio.h>\r\n\r\nint main () {\r\n\r\n	int c = 1350;\r\n	float d = 3.14;\r\n\r\n	int new_c = (int) d;\r\n	float new_d = (float) c;\r\n\r\n	printf(\"%d\\n\", new_c);\r\n	printf(\"%f\\n\", new_d);\r\n\r\n}</pre>\r\n\r\n\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\n3\r\n1350.000000\r\n</pre>\r\n\r\n\r\n', 'C'),
(39, 'C - Basic Operator', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>C- Basic Operator</strong></span></span></h1>\r\n\r\n<p>\r\nDi C ada beberapa operator aritmatika yang perlu diingat:\r\n\r\n<li>+ untuk tambah</li>\r\n<li>* untuk perkalian</li>\r\n<li>- untuk pengurangan</li>\r\n<li>/ untuk pembagian</li>\r\n<li>% untuk modulus (sisa bagi)</li>\r\n<li>++ untuk menambahkan nilai ke variabel itu sendiri sebanyak 1v\r\n<li>-- untuk mengurangi nilai ke variabel itu sendiri sebanyak 1</li>\r\nOperator ini hanya berlaku untuk tipe data short, int, dan long\r\n</p>\r\n\r\n<h3>Example</h3>\r\n<p>Buatlah satu program yang menggunakan operator aritmatika yang ada diatas<p>\r\n<b>Jawaban :</b> \r\n<p><a href=\"https://onlinegdb.com/9BcK8ShyY\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <stdio.h>\r\n\r\nint main () {\r\n\r\n	int x = 10;\r\n	int y = 20;\r\n\r\n	int result = x + y;\r\n	printf(\"%d\\n\", result);\r\n\r\n	result = x - y;\r\n	printf(\"%d\\n\", result);\r\n\r\n	result = x / y;\r\n	printf(\"%d\\n\", result);\r\n\r\n	result = x * y;\r\n	printf(\"%d\\n\", result);\r\n\r\n	result = y % x;\r\n	printf(\"%d\\n\", result);\r\n\r\n	x++;\r\n	printf(\"%d\\n\", x);\r\n\r\n	y--;\r\n	printf(\"%d\\n\", y);\r\n\r\n}\r\n</pre>\r\n\r\n<h3>Output\r\n</h3>\r\n<pre>\r\n30\r\n-10\r\n0\r\n200\r\n0\r\n11\r\n19\r\n</pre>\r\n\r\n\r\n\r\n', 'C'),
(41, 'C - If Else', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>C - If Else</strong></span></span></h1>\r\n\r\n<p>\r\nUntuk menambah logika lain, kamu dapat menambahkan else if setelah if dan sebelum else untuk menambah logika yang ingin kamu terapkan pada aplikasi kamu.\r\n\r\nDengan demikian kamu dapat membuat logika bisnis yang sangat kompleks dan memiliki varian yang disesuaikan dengan keperluan aplikasi. Tentu saja else if ini memerlukan operator pembandingan dan logika.\r\n</p>\r\n\r\n<p>\r\nSilahkan eksekusi kode di bawah ini dan lihat output yang akan dihasilkan\r\nCoba tambahkan else if lain pada kode di sebelah kanan dan coba hasilnya.\r\n</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"https://onlinegdb.com/6VHT0foT3\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <stdio.h>\r\n\r\nint main () {\r\n	\r\n    // Untuk latihan coba ganti nilai x, output akan berbeda\r\n	int x = 90;\r\n	\r\n    // Mengecek nilai x\r\n	if (x > 80)\r\n	{\r\n		printf(\"Selamat, kamu dapat nilai A!\\n\");\r\n	}\r\n	else if (x > 70 && x <= 80)\r\n	{\r\n		printf(\"Selamat, kamu dapat nilai B!\\n\");\r\n	}\r\n	else if (x > 60 && x <= 70)\r\n	{\r\n		printf(\"Selamat, kamu dapat nilai C!\\n\");\r\n	}\r\n	else if (x > 45 && x <= 60)\r\n	{\r\n		printf(\"Selamat, kamu dapat nilai D!\\n\");\r\n	}\r\n	else\r\n	{\r\n		printf(\"Selamat, kamu dapat nilai E. Remedial yah!\\n\");\r\n	}\r\n}</pre>\r\n\r\n\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nSelamat, kamu dapat nilai A!\r\n</pre>\r\n\r\n', 'C'),
(42, 'C - Array', '<h1 style=\"margin-left:120px\"><span style=\"color:#ffffff\"><span style=\"font-size:24px\"><strong><span style=\"background-color:#3498db\">C - Array</span></strong></span></span></h1>\r\n\r\n<p>\r\nArray adalah sebuah kesatuan dari suatu tipe data misal array dari char, int, float ataupun lainnya.\r\n\r\nUntuk mendefinisikan array, kamu dapat menggunakan cara dinamis dan statis. Saat membuat array kamu dapat melewatkan angka yang akan menjadi ukuran array. Indeks array di C akan dimulai dari 0 sampai n - 1.\r\n\r\nSedangkan untuk array dinamis, kamu tidak perlu melewatkan ukuran array. Sehingga boleh diisi berapapun banyaknya.\r\n</p>\r\n\r\n<p>\r\nSilahkan jalankan kode di bawah ini dan lihat outputnya\r\nSilahkan buat array yang lain dan coba tampilkan ukuran array tersebut\r\n</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"https://onlinegdb.com/ZWsz1VtUu\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <stdio.h>\r\n#include <string.h>\r\n\r\nint main () {\r\n	// Mendeklarasikan array\r\n	int angka[] = {1, 2, 3, 4, 5};\r\n	char huruf[sizeof(angka)] = {\'a\', \'b\', \'c\', \'d\', \'e\'};\r\n	char ipsum[] = \"Lorem ipsum sit dolor amet\";\r\n	char ipsum2[sizeof(ipsum)];\r\n	char ipsum3[] = \"Lorem ipsum\";\r\n\r\n	strcpy(ipsum2, ipsum);\r\n\r\n	printf(\"%lu\\n\", sizeof(angka));\r\n	printf(\"%lu\\n\", strlen(huruf));\r\n	printf(\"%lu\\n\", strlen(ipsum));\r\n	printf(\"%lu\\n\", strlen(ipsum2));\r\n	printf(\"%lu\\n\", strlen(ipsum3));\r\n}\r\n</pre>\r\n\r\n<h3>Output\r\n</h3>\r\n\r\n<pre>20\r\n5\r\n26\r\n26\r\n11</pre>\r\n</pre>\r\n', 'C'),
(44, 'C++ - Home', '<h1 style=\"margin-left:160px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>C++ - Home</strong></span></span></h1>\r\n\r\n<p>C++ adalah bahasa pemrograman komputer yang dibuat oleh Bjarne Stroustrup, yang merupakan perkembangan dari bahasa C dikembangkan di Bell Labs. Pada awal tahun 1970-an, bahasa itu merupakan peningkatan dari bahasa sebelumnya, yaitu B</p>\r\n\r\n<h1>Audience</h1>\r\n\r\n<p>This tutorial is designed for software programmers who need to learn C++ programming language from scratch.</p>\r\n\r\n<h1>Prerequisites</h1>\r\n\r\n<p>You should have a basic understanding of Computer Programming terminologies. A basic understanding of any of the programming languages is a plus.</p>\r\n', 'CPP'),
(45, 'C++ - Basic Syntax', '<p style=\"margin-left:160px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>C++ - Basic Syntax</strong></span></span></p>\r\n\r\n<p>C++ merupakan salah satu bahasa pemrograman tertua yang masih eksis dan digunakan di berbagai proyek penting seperti kernel Linux. Selain itu beberapa bahasa pemrograman seperti Python dan PHP pun menggunakan C++ untuk parser-nya dan tentu saja untuk membuat beberapa ekstensi kedua bahasa tersebut memerlukan kemahiran bahasa C++ yang cukup.\r\n\r\nUmumnya banyak yang belajar bahasa C++ dengan menggunakan gcc ada juga yang menggunakan clang. Tapi bila ingin praktis silahkan gunakan saja gcc. Karena ini interactive coding, kamu cukup menggunakan browser dan tetep stay di Codepolitan.</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"https://onlinegdb.com/Ap9ARRG4gT\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <iostream>\r\n\r\nusing namespace std;\r\n\r\nint main () {\r\n	printf(\"Hello world\\n\");\r\n\r\n}\r\n</pre>\r\n\r\n<p>\r\nSilahkan jalankan kode di sebelah kanan dan lihat apa hasilnya\r\nSilahkan buat statement printf() lebih banyak lagi sesuai dengan yang kamu inginkan\r\nUmumnya header stdio.h harus selalu disertakan di dalam kode program C++ bila ingin menampilkan output ke konsol. Kemudian harus selalu ada function main() yang akan dipanggil lebih dahulu saat proses kompilasi.\r\nKamu juga akan selalu menggunakan printf() untuk formatting antara variabel dan informasi yang akan ditampilkan\r\n</p>\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nHello world\r\n</pre>', 'CPP'),
(46, 'C++ - Basic Datatypes', '<p style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>C++ - Basic Data Type</strong></span></span></p>\r\n\r\n<p>Tipe Data adalah jenis data yang memiliki batasan tempat dan karakteristik sesuai dengan interprestasi data dan dapat diolah oleh komputer untuk memenuhi kebutuhan dalam pemrograman komputer. tipe data berguna untuk mempresentasikan jenis dari suatu nilai yang terdapat dalam program.</p>\r\n<p> Dalam penyimpanan data di dalam variabel seorang programmer membutuhkan beberapa format / tipe data penyimpanan misalnya untuk numerik atau text, maka dari C++ menyediakan banyak tipe data yang mempunyai fungsi dan kegunaan berbeda-beda. dan berikut adalah macam-macam tipe data C++ untuk penyimpanan variabel :\r\n<li>Integer (int)</li>\r\n<li>Floating Point (float)</li>\r\n<li>Double Floating Point (double)</li>\r\n<li>Boolean (bool)</li>\r\n<li>Character (char)</li>\r\n<li>Valueless (void)</li>\r\n<li>Wide Character (wchar_t)</li>\r\n</p>\r\n<p> Daftar tipe data diatas merupakan dasar dari tipe data yang lainnya, setiap tipe data memiliki fungsi sendiri-sendiri dan penulisan sendiri-sendiri. Tapi dari dasar tipe data diatas bisa kita modifikasi menggunakan satu atau lebih dengan type Modifiers, tipe modifiers sendiri adalah sebuah kata kunci atau keyword yang digunakan untuk mengubah sifat sifat dari tipe data tertentu. Berikut adalah macam dari tipe modifiers:\r\n<li>short</li>\r\n<li>long</li>\r\n<li>signed</li>\r\n<li>unsigned</li>\r\n</p>\r\n<h3>Example</h3>\r\n<p><a href=\"https://onlinegdb.com/YV57jwCUr\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include \r\n\r\nint main () {\r\n	short a = 300;\r\n	long b = 1605453789;\r\n	int c = 1880;\r\n	float d = 3.14;\r\n	double e = 1308.0;\r\n	char f = \'B\';\r\n	char g[10] = \"Bagus\";\r\n\r\n	printf(\"%d\\n\", a);\r\n	printf(\"%li\\n\", b);\r\n	printf(\"%d\\n\", c);\r\n	printf(\"%f\\n\", d);\r\n	printf(\"%f\\n\", e);\r\n	printf(\"%c\\n\", f);\r\n	printf(\"%s\\n\", g);\r\n\r\n}\r\n</pre>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\n300\r\n1605453789\r\n1880\r\n3.140000\r\n1308.000000\r\nB\r\nBagus\r\n</pre>\r\n', 'CPP'),
(47, 'C++ - Convert Data Type', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>C++ - Convert Data Type</strong></span></span></h1>\r\n\r\n<p>C++ memungkinkan kita untuk mengonversi data dari satu tipe ke tipe lainnya. Ini dikenal sebagai konversi tipe.\r\n\r\nAda dua jenis konversi tipe di C++.\r\n\r\n<li>Konversi Tersirat</li>\r\n<li>Konversi Eksplisit (juga dikenal sebagai Type Casting)</li>\r\n</p>\r\n\r\n<p><h3>Konversi Jenis Tersirat</h3>\r\nKonversi tipe yang dilakukan secara otomatis oleh compiler dikenal sebagai konversi tipe implisit. Jenis konversi ini juga dikenal sebagai konversi otomatis.\r\n</p>\r\n\r\n<h2>Example</h2>\r\n\r\n<p><a href=\"https://onlinegdb.com/PxhPALgRts\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <iostream>\r\nusing namespace std;\r\n\r\nint main() {\r\n   // assigning an int value to num_int\r\n   int num_int = 9;\r\n\r\n   // declaring a double type variable\r\n   double num_double;\r\n \r\n   // implicit conversion\r\n   // assigning int value to a double variable\r\n   num_double = num_int;\r\n\r\n   cout << \"num_int = \" << num_int << endl;\r\n   cout << \"num_double = \" << num_double << endl;\r\n\r\n   return 0;\r\n}\r\n</pre>\r\n\r\n<h3>Output</h3>\r\n\r\n<pre>\r\nnum_int = 9 \r\nnum_double = 9\r\n</pre>\r\n\r\n<p>Dalam program ini, kami telah menetapkan <b>int</b> data ke <b>double</b> variabel.</p>\r\n<p>Di sini, <b>int</b> nilai secara otomatis dikonversi <b>double</b> oleh kompiler sebelum ditetapkan ke to <b>jumlah_ganda</b> variabel. Ini adalah contoh konversi tipe implisit.</p>\r\n\r\n<p> <h3>Konversi Eksplisit C++</h3> </p>\r\nSaat pengguna secara manual mengubah data dari satu jenis ke jenis lainnya, ini dikenal sebagai konversi eksplisit . Jenis konversi ini juga dikenal sebagai tipe casting .\r\n\r\nAda tiga cara utama di mana kita dapat menggunakan konversi eksplisit dalam C++. Mereka:\r\n\r\n<li>Pengecoran tipe C-style (juga dikenal sebagai notasi cor)</li>\r\n<li>Notasi fungsi (juga dikenal sebagai casting tipe gaya C++ lama )</li>\r\n<li>Ketik operator konversi</li>\r\n\r\n<h2>Example</h2>\r\n\r\n<p><a href=\"https://onlinegdb.com/judIX81F8\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <iostream>\r\n\r\nusing namespace std;\r\n\r\nint main() {\r\n    // initializing a double variable\r\n    double num_double = 3.56;\r\n    cout << \"num_double = \" << num_double << endl;\r\n\r\n    // C-style conversion from double to int\r\n    int num_int1 = (int)num_double;\r\n    cout << \"num_int1   = \" << num_int1 << endl;\r\n\r\n    // function-style conversion from double to int\r\n    int num_int2 = int(num_double);\r\n    cout << \"num_int2   = \" << num_int2 << endl;\r\n\r\n    return 0;\r\n}</pre>\r\n\r\n<h3>Output</h3>\r\n<pre>\r\nnum_double = 3,56 \r\nnum_int1 = 3 \r\nnum_int2 = 3\r\n</pre>\r\n', 'CPP'),
(48, 'C++ - Basic Operator', '<h1 style=\"margin-left:120px\"><span style=\"color:#3498db\"><span style=\"font-size:24px\"><strong>C++ - Basic Operator</strong></span></span></h1>\r\n\r\n<p>\r\nOperator adalah simbol yang melakukan operasi pada variabel dan nilai. Misalnya, <b>+</b> adalah operator yang digunakan untuk penjumlahan, sedangkan <b>-</b> adalah operator yang digunakan untuk pengurangan.\r\n\r\nOperator dalam C++ dapat diklasifikasikan menjadi 6 jenis:\r\n\r\n<li>Operator Aritmatika</li>\r\n<li>Operator Penugasan</li>\r\n<li>Operator Relasional</li>\r\n<li>Operator Logika</li>\r\n</p>\r\n\r\n<h2> Operator Aritmatika </h2>\r\n<h3>Example</h3>\r\n<p><a href=\"https://onlinegdb.com/ZONPxPQpf\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <stdio.h>\r\n\r\nusing namespace std;\r\n\r\nint main() {\r\n    int a, b;\r\n    a = 7;\r\n    b = 2;\r\n\r\n    // printing the sum of a and b\r\n    cout << \"a + b = \" << (a + b) << endl;\r\n\r\n    // printing the difference of a and b\r\n    cout << \"a - b = \" << (a - b) << endl;\r\n\r\n    // printing the product of a and b\r\n    cout << \"a * b = \" << (a * b) << endl;\r\n\r\n    // printing the division of a by b\r\n    cout << \"a / b = \" << (a / b) << endl;\r\n\r\n    // printing the modulo of a by b\r\n    cout << \"a % b = \" << (a % b) << endl;\r\n\r\n    return 0;\r\n}\r\n</pre>\r\n\r\n<h3>Output</h3>\r\n<pre>\r\na + b = 9\r\na - b = 5\r\na * b = 14\r\na / b = 3\r\na% b = 1\r\n</pre>\r\n<p>Di sini, operator <b>+</b>, <b>-</b>dan <b>*</b>menghitung penambahan, pengurangan, dan perkalian masing-masing seperti yang kita harapkan.</p>\r\n\r\n<h2>Operator Penugasan C++</h2>\r\n<h3>Example</h3>\r\n<p><a href=\"https://onlinegdb.com/uBB1NYPMp\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n<pre>\r\n#include <iostream>\r\nusing namespace std;\r\n\r\nint main() {\r\n    int a, b;\r\n\r\n    // 2 is assigned to a\r\n    a = 2;\r\n\r\n    // 7 is assigned to b\r\n    b = 7;\r\n\r\n    cout << \"a = \" << a << endl;\r\n    cout << \"b = \" << b << endl;\r\n    cout << \"\\nAfter a += b;\" << endl;\r\n\r\n    // assigning the sum of a and b to a\r\n    a += b;  // a = a +b\r\n    cout << \"a = \" << a << endl;\r\n\r\n    return 0;\r\n}\r\n</pre>\r\n\r\n<h3>Output</h3>\r\n<pre>\r\na = 2\r\nb = 7\r\n\r\nSetelah a += b;\r\na = 9\r\n</pre>\r\n\r\n<h2>Operator Relasional C++</h2>\r\n<p>Operator relasional digunakan untuk memeriksa hubungan antara dua operan.</p>\r\n<p>Di sini, <b>></b>adalah operator relasional. Ini memeriksa apakah <b>Sebuah</b> lebih besar dari <b>b</b> atau tidak.\r\n\r\nJika relasinya <b>benar</b> , ia mengembalikan <b>1</b> sedangkan jika hubungan itu <b>salah</b> , ia mengembalikan <b>0</b> .</p>\r\n\r\n<h3>Example</h3>\r\n<p><a href=\"https://onlinegdb.com/ubrZ-h135\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <iostream>\r\nusing namespace std;\r\n\r\nint main() {\r\n    int a, b;\r\n    a = 3;\r\n    b = 5;\r\n    bool result;\r\n\r\n    result = (a == b);   // false\r\n    cout << \"3 == 5 is \" << result << endl;\r\n\r\n    result = (a != b);  // true\r\n    cout << \"3 != 5 is \" << result << endl;\r\n\r\n    result = a > b;   // false\r\n    cout << \"3 > 5 is \" << result << endl;\r\n\r\n    result = a < b;   // true\r\n    cout << \"3 < 5 is \" << result << endl;\r\n\r\n    result = a >= b;  // false\r\n    cout << \"3 >= 5 is \" << result << endl;\r\n\r\n    result = a <= b;  // true\r\n    cout << \"3 <= 5 is \" << result << endl;\r\n\r\n    return 0;\r\n}\r\n</pre>\r\n\r\n<h3>Output</h3>\r\n<pre>\r\n3 == 5 adalah 0\r\n3 != 5 adalah 1\r\n3 > 5 adalah 0\r\n3 < 5 adalah 1\r\n3 >= 5 adalah 0\r\n3 <= 5 adalah 1\r\n</pre>\r\n\r\n<h2>Operator Logika C++</h3>\r\n<p>Operator logika digunakan untuk memeriksa apakah suatu ekspresi <b>benar</b> atau <b>salah</b>. Jika ekspresinya <b>benar</b> , ia mengembalikan <b>1</b> sedangkan jika ekspresinya <b>salah</b> , ia mengembalikan <b>0</b>.</p>\r\n\r\n<h3>Example</h3>\r\n<p><a href=\"https://onlinegdb.com/lyPWkFD34\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n<pre>\r\n#include <iostream>\r\nusing namespace std;\r\n\r\nint main() {\r\n    bool result;\r\n\r\n    result = (3 != 5) && (3 < 5);     // true\r\n    cout << \"(3 != 5) && (3 < 5) is \" << result << endl;\r\n\r\n    result = (3 == 5) && (3 < 5);    // false\r\n    cout << \"(3 == 5) && (3 < 5) is \" << result << endl;\r\n\r\n    result = (3 == 5) && (3 > 5);    // false\r\n    cout << \"(3 == 5) && (3 > 5) is \" << result << endl;\r\n\r\n    result = (3 != 5) || (3 < 5);    // true\r\n    cout << \"(3 != 5) || (3 < 5) is \" << result << endl;\r\n\r\n    result = (3 != 5) || (3 > 5);    // true\r\n    cout << \"(3 != 5) || (3 > 5) is \" << result << endl;\r\n\r\n    result = (3 == 5) || (3 > 5);    // false\r\n    cout << \"(3 == 5) || (3 > 5) is \" << result << endl;\r\n\r\n    result = !(5 == 2);    // true\r\n    cout << \"!(5 == 2) is \" << result << endl;\r\n\r\n    result = !(5 == 5);    // false\r\n    cout << \"!(5 == 5) is \" << result << endl;\r\n\r\n    return 0;\r\n}\r\n</pre>\r\n\r\n<h3>Output</h3>\r\n<pre>\r\n(3 != 5) && (3 < 5) adalah 1\r\n(3 == 5) && (3 < 5) adalah 0\r\n(3 == 5) && (3 > 5) adalah 0\r\n(3 != 5) || (3 < 5) adalah 1\r\n(3 != 5) || (3 > 5) adalah 1\r\n(3 == 5) || (3 > 5) adalah 0\r\n!(5 == 2) adalah 1\r\n!(5 == 5) adalah 0\r\n</pre>\r\n\r\n', 'CPP'),
(49, 'C++ - If Else', '<h1 style=\"margin-left:120px\"><span style=\"font-size:24px\"><span style=\"color:#3498db\"><strong>C++ - If Else</strong></span></span></h1>\r\n\r\n<p>\r\nDalam pemrograman komputer, kami menggunakan ifpernyataan untuk menjalankan kode blok hanya ketika kondisi tertentu terpenuhi.\r\n\r\nMisalnya, pemberian nilai (A, B, C) berdasarkan nilai yang diperoleh seorang siswa.\r\n\r\n<li>jika persentasenya di atas 90 , berikan nilai A</li>\r\n<li>jika persentasenya di atas 75 , berikan nilai B</li>\r\n<li>jika persentasenya di atas 65 , berikan nilai C</li>\r\n</p>\r\nAda tiga bentuk <b>if...else</b> pernyataan dalam C++.\r\n\r\n<li><pre>if</pre> pernyataan</li>\r\n<li><pre>if...else</pre> pernyataan</li>\r\n<li><pre>if...else if...else</pre> pernyataan</li>\r\n</p>\r\n\r\n<h3>If</h3>\r\n</p>\r\n\r\n<p>\r\nSintaks dari <b>if</b> pernyataan tersebut adalah:\r\n<pre>\r\nif (condition) {\r\n   // body of if statement\r\n}\r\n</pre>\r\nThe <b>if</b> pernyataan mengevaluasi <b>condition</b> dalam tanda kurung <b>( ).</b>\r\n\r\n<li>Jika <b>condition</b> mengevaluasi ke <b>true</b>, kode di dalam tubuh <b>if</b> dieksekusi.</li>\r\n<li>Jika <b>condition</b> mengevaluasi ke <b>false</b>, kode di dalam tubuh <b>if</b> akan dilewati.</li>\r\n</p>\r\n<p>\r\n<pre>\r\n<b>Catatan:</b> Kode di dalam <b>{ }</b> adalah isi <b>if</b> pernyataan.\r\n</pre>\r\n</p>\r\n\r\n<h3>Example</h3>\r\n\r\n<p><a href=\"https://onlinegdb.com/MAUEngQMH\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <iostream>\r\nusing namespace std;\r\n\r\nint main() {\r\n    int number;\r\n\r\n    cout << \"Enter an integer: \";\r\n    cin >> number;\r\n\r\n    // checks if the number is positive\r\n    if (number > 0) {\r\n        cout << \"You entered a positive integer: \" << number << endl;\r\n    }\r\n    cout << \"This statement is always executed.\";\r\n    return 0;\r\n}\r\n</pre>\r\n\r\n\r\n<h3>Output1</h3>\r\n\r\n<pre>\r\nMasukkan bilangan bulat: 5\r\nAnda memasukkan angka positif: 5\r\nPernyataan ini selalu dijalankan.\r\n</pre>\r\n<p>\r\nKetika pengguna masuk <b>5</b>, kondisi <b>number > 0</b> dievaluasi <b>true</b> dan pernyataan di dalam tubuh <b>if</b> dieksekusi.\r\n</p>\r\n\r\n<h3>Output2</h3>\r\n<pre>\r\nMasukkan nomor: -5\r\nPernyataan ini selalu dijalankan.\r\n</pre>\r\n\r\n<p>Ketika pengguna masuk <b>-5</b>, kondisi <b>number > 0</b> dievaluasi <b>false</b> dan pernyataan di dalam tubuh <b>if</b> tidak dieksekusi.</p>\r\n\r\n<h3>if...else</h3>\r\n<p>\r\nJika <b>conditionb</b> mengevaluasi <b>true</b>,\r\n\r\n<li>kode di dalam tubuh <b>if</b> dieksekusi</li>\r\n<li>kode di dalam tubuh <b>else</b> dilewati dari eksekusi</li>\r\nJika <b>condition</b> mengevaluasi <b>false</b>,\r\n\r\n<li>kode di dalam tubuh <b>else</b> dieksekusi</li>\r\n<li>kode di dalam tubuh <b>if</b> dilewati dari eksekusi</li>\r\n</p>\r\n\r\n<h3>Example</h3>\r\n<p><a href=\"https://onlinegdb.com/xTo8FlYqn\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n\r\n<pre>\r\n#include <iostream>\r\nusing namespace std;\r\n\r\nint main() {\r\n     int number;\r\n\r\n    cout << \"Enter an integer: \";\r\n    cin >> number;\r\n    if (number >= 0) {\r\n        cout << \"You entered a positive integer: \" << number << endl;\r\n    }\r\n    else {\r\n        cout << \"You entered a negative integer: \" << number << endl;\r\n    }\r\n    cout << \"This line is always printed.\";\r\n    return 0;\r\n}\r\n\r\n<h3>Output</h3>\r\n<pre>Masukkan bilangan bulat: 4\r\nAnda memasukkan bilangan bulat positif: 4.\r\nBaris ini selalu dicetak.\r\n</pre>\r\n</pre>\r\n\r\n<h3>if...else if...else</h3>\r\n\r\n<p>\r\nThe <pre>if...else</pre> pernyataan digunakan untuk mengeksekusi blok kode antara dua alternatif. Namun, jika kita perlu membuat pilihan di antara lebih dari dua alternatif, kita menggunakan <pre>if...else if...else</pre> pernyataan.\r\n</p>\r\n\r\n<h3>Example</h3>\r\n<p><a href=\"https://onlinegdb.com/8mzJrLfwq\" rel=\"nofollow\" target=\"_blank\">&nbsp;Live Demo</a></p>\r\n<pre>\r\n#include <iostream>\r\nusing namespace std;\r\n\r\nint main() {\r\n     int number;\r\n\r\n    cout << \"Enter an integer: \";\r\n    cin >> number;\r\n    if (number > 0) {\r\n        cout << \"You entered a positive integer: \" << number << endl;\r\n    } \r\nelse if (number < 0) {\r\n      cout << \"You entered a negative integer: \" << number << endl;\r\n     } \r\nelse {\r\n        cout << \"You entered 0.\" << endl;\r\n    }\r\n     cout << \"This line is always printed.\";\r\n    return 0;\r\n}\r\n</pre>\r\n\r\n<h3>Output</h3>\r\n<pre>\r\nMasukkan bilangan bulat: 1\r\nAnda memasukkan bilangan bulat positif: 1.\r\nBaris ini selalu dicetak.\r\n</pre>', 'CPP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `faq`
--

INSERT INTO `faq` (`id`, `faq_title`, `faq_description`) VALUES
(1, 'what is your website is about ?', 'this website is a free TV shows ratting website'),
(2, 'How to rate the videos ?', 'Go to view videos section and select your favourite TV show and give ratting there'),
(3, 'how to log in ?', 'goto bingeflix.com/login and from there you can login');

-- --------------------------------------------------------

--
-- Struktur dari tabel `image`
--

CREATE TABLE `image` (
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `image`
--

INSERT INTO `image` (`img`) VALUES
('uploadimg/4.png'),
('uploadimg/4.png'),
('uploadimg/3logo.png'),
('uploadimg/4.png'),
('uploadimg/4.png'),
('uploadimg/3logo.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `email`) VALUES
(1, 'sunil yadav', '1234', 'sam123.sy28@gmail.com'),
(3, 'sunil ', '1234', 'sdjcjsavj@gmail.com'),
(26, 'nico', '12345', 'jbsadjvb'),
(28, 'admin', 'admin', 'samndjdsfadg'),
(30, '', '', ''),
(35, 'nico', '1234', 'nicholas@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mytable`
--

CREATE TABLE `mytable` (
  `id` int(255) NOT NULL,
  `video_path` varchar(255) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mytable`
--

INSERT INTO `mytable` (`id`, `video_path`, `video_name`, `img`) VALUES
(1, 'path1', 'myvideo', 'httpvideo'),
(2, 'path2', 'myvideo2', 'httpvideo2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `programming_languages`
--

CREATE TABLE `programming_languages` (
  `id` int(255) NOT NULL,
  `language_name` varchar(255) DEFAULT NULL,
  `language_image` varchar(255) DEFAULT NULL,
  `language_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `programming_languages`
--

INSERT INTO `programming_languages` (`id`, `language_name`, `language_image`, `language_description`) VALUES
(0, 'C', 'uploadimg/c.jpg', ''),
(9, 'CPP', 'uploadimg/cpp.png', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `qid` int(250) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `ans_id` int(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`qid`, `question`, `ans_id`, `course_name`) VALUES
(1, 'what does html stands for', 1, 'html'),
(2, ' Who is making the Web standards?', 5, 'html'),
(3, ' Choose the correct HTML element for the largest heading:', 9, 'html'),
(4, 'What is the correct HTML element for inserting a line break?', 13, 'html'),
(5, 'what is java ?', 17, 'java');

-- --------------------------------------------------------

--
-- Struktur dari tabel `question_test`
--

CREATE TABLE `question_test` (
  `id` int(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `opt1` varchar(255) NOT NULL,
  `opt2` varchar(255) NOT NULL,
  `opt3` varchar(255) NOT NULL,
  `opt4` varchar(255) NOT NULL,
  `answer` int(100) NOT NULL,
  `course_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `question_test`
--

INSERT INTO `question_test` (`id`, `question`, `opt1`, `opt2`, `opt3`, `opt4`, `answer`, `course_id`) VALUES
(1, 'What does PHP stand for?', 'PHP: Hypertext Preprocessor', 'Private Home Page', 'Personal Hypertext Processor', 'i dont know', 0, 1),
(2, 'How do you write \"Hello World\" in PHP', ' Document.Write(\"Hello World\")', ' echo \"Hello World\"', '\"Hello World\"', 'i dont know', 1, 1),
(14, 'what is haddop', 'i dont know', 'whatever ', 'bigdata soluntion', 'bigdata', 2, 9),
(15, 'The practice of creating objects based on predefined classes is often referred to as..', ' class creation', 'object creation', 'object instantiation', 'class instantiation', 3, 1),
(19, '', '', '', '', '', 0, 0),
(20, 'question 1', 'option 1', 'option 2', 'option 3', 'option 4 ', 1, 13),
(21, '', '', '', '', '', 0, 0),
(22, 'question 1', 'option 1', 'option 2', 'option 3', 'option 4 ', 1, 14),
(23, '', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `uid` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `totalques` int(255) DEFAULT NULL,
  `answerscorrect` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`uid`, `username`, `totalques`, `answerscorrect`) VALUES
(1, 'sunil yadav', 5, 4),
(2, 'sunil yadav', 5, 0),
(3, 'sunil yadav', 5, 0),
(4, 'sunil yadav', 5, 0),
(5, 'sunil yadav', 5, 0),
(6, 'sunil yadav', 5, 0),
(7, 'sunil yadav', 5, 0),
(8, 'sunil yadav', 5, 0),
(9, 'sunil yadav', 5, 0),
(10, 'sunil yadav', 5, 0),
(11, 'sunil yadav', 5, 0),
(12, 'sunil yadav', 5, 0),
(13, 'sunil yadav', 5, 0),
(14, 'sunil yadav', 5, 0),
(15, 'sunil yadav', 5, 0),
(16, 'sunil yadav', 5, 0),
(17, 'sunil yadav', 5, 0),
(18, 'sunil yadav', 5, 0),
(19, 'sunil yadav', 5, 3),
(20, 'sunil yadav', 5, 3),
(21, 'sunil yadav', 5, 0),
(22, 'sunil yadav', 5, 2),
(23, 'sunil yadav', 5, 2),
(24, 'sunil yadav', 5, 5),
(25, 'sunil yadav', 5, 1),
(26, 'sunil yadav', 5, 0),
(27, 'sunil yadav', 5, 1),
(28, 'sunil yadav', 5, 1),
(29, 'sunil yadav', 5, 1),
(30, 'sunil yadav', 5, 0),
(31, 'sunil yadav', 5, 0),
(32, 'sunil yadav', 5, 0),
(33, 'sunil yadav', 5, 0),
(34, 'sunil yadav', 5, 0),
(35, 'sunil yadav', 5, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `img`) VALUES
(15, 'sunil yadav', 2365, 'sam123.sy28@gmail.com', 'img1.jpg'),
(16, 'sunil yadav', 541, 'sam123.sy28@gmail.com', 'img1.jpg'),
(17, 'sunil yadav', 520, 'sam123.sy28@gmail.com', 'img1.jpg'),
(18, 'sunil yadav', 56321, 'sam123.sy28@gmail.com', 'img1.jpg'),
(19, 'sunil yadav', 5641, 'sam123.sy28@gmail.com', 'ANDROID.png'),
(20, 'sunil yadav', 856412, 'sam123.sy28@gmail.com', 'danish.jpg'),
(21, 'sunil yadav', 56441, 'sam123.sy28@gmail.com', 'javalogo.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `video_id` int(255) NOT NULL,
  `video_path` varchar(255) NOT NULL,
  `video_name` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `video_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `videos`
--

INSERT INTO `videos` (`video_id`, `video_path`, `video_name`, `course_name`, `video_image`) VALUES
(51, 'https://www.youtube.com/embed/LGKniBZoxvc', 'How to download jcalender in Netbeans | Hindi', 'java', '../../uploadimg/4.png'),
(52, 'https://www.youtube.com/embed/QmKJrnt4rQg', 'How to download jcalender in Netbeans | Hindi', 'java', '../../uploadimg/v.png'),
(54, 'https://www.youtube.com/embed/9vIi56spxo8', 'How to do this', 'java', '../../uploadimg/ANDROID.png'),
(56, 'https://www.youtube.com/embed/VEQYRJkoRBY', 'this is a python video', 'python', '../../uploadimg/2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos_demo`
--

CREATE TABLE `videos_demo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `video_info`
--

CREATE TABLE `video_info` (
  `course_id` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `video_info`
--

INSERT INTO `video_info` (`course_id`, `image`, `description`, `course_name`) VALUES
(20, '../../uploadimg/java_online.png', 'its a complete java tutorial', 'java');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `commentsection`
--
ALTER TABLE `commentsection`
  ADD PRIMARY KEY (`cid`);

--
-- Indeks untuk tabel `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `programming_languages`
--
ALTER TABLE `programming_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indeks untuk tabel `question_test`
--
ALTER TABLE `question_test`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- Indeks untuk tabel `videos_demo`
--
ALTER TABLE `videos_demo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `video_info`
--
ALTER TABLE `video_info`
  ADD PRIMARY KEY (`course_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `commentsection`
--
ALTER TABLE `commentsection`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT untuk tabel `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT untuk tabel `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `mytable`
--
ALTER TABLE `mytable`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `programming_languages`
--
ALTER TABLE `programming_languages`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `question_test`
--
ALTER TABLE `question_test`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `videos_demo`
--
ALTER TABLE `videos_demo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `video_info`
--
ALTER TABLE `video_info`
  MODIFY `course_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
