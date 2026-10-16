-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2025 at 05:15 AM
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
-- Database: `perpustakaan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookID` varchar(20) NOT NULL,
  `judul` varchar(150) NOT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `penerbit` varchar(100) DEFAULT NULL,
  `tahunTerbit` year(4) DEFAULT NULL,
  `isbn` varchar(30) DEFAULT NULL,
  `jenis` enum('fisik','ebook') DEFAULT 'fisik',
  `statusKetersediaan` enum('tersedia','dipinjam') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookID`, `judul`, `penulis`, `penerbit`, `tahunTerbit`, `isbn`, `jenis`, `statusKetersediaan`) VALUES
('B001', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '2005', '9789791227203', 'fisik', 'tersedia'),
('B002', 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia', '2009', '9789792209321', 'fisik', 'dipinjam'),
('B003', 'Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 'Harper', '2015', '9780062316097', 'fisik', 'tersedia'),
('B004', 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', '1960', '9780061120084', 'fisik', 'tersedia'),
('B005', 'The Alchemist', 'Paulo Coelho', 'HarperOne', '1988', '9780061122415', 'fisik', 'dipinjam'),
('B006', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Bloomsbury', '1997', '9780747532699', 'fisik', 'tersedia'),
('B007', '1984', 'George Orwell', 'Secker & Warburg', '1949', '9780451524935', 'fisik', 'tersedia'),
('B008', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner\'s Sons', '1925', '9780743273565', 'fisik', 'tersedia'),
('B009', 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '1951', '9780316769488', 'fisik', 'dipinjam'),
('B010', 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', '0000', '9781503280786', 'fisik', 'tersedia'),
('B011', 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '0000', '9780141439518', 'fisik', 'tersedia'),
('B012', 'Hujan', 'Tere Liye', 'Gramedia Pustaka Utama', '2014', '9786023612435', 'fisik', 'tersedia'),
('B013', 'Cantik Itu Luka', 'Eka Kurniawan', 'Gramedia Pustaka Utama', '2002', '9786020335016', 'fisik', 'tersedia'),
('B014', 'Pulang', 'Leila S. Chudori', 'Gramedia Pustaka Utama', '2012', '9786020305326', 'fisik', 'tersedia'),
('B015', 'Reasons to Stay Alive', 'Matt Haig', 'Canongate Books', '2015', '9781782110948', 'fisik', 'tersedia'),
('B016', 'Animal Farm', 'George Orwell', 'Secker & Warburg', '1945', '9780451526342', 'fisik', 'tersedia'),
('B017', 'Sense and Sensibility', 'Jane Austen', 'Thomas Egerton', '0000', '9780141439662', 'fisik', 'tersedia'),
('B018', 'Karma', 'Tere Liye', 'Gramedia Pustaka Utama', '2015', '9786023612596', 'fisik', 'dipinjam'),
('B019', 'O', 'Eka Kurniawan', 'Gramedia Pustaka Utama', '2018', '9786020309515', 'fisik', 'tersedia'),
('B020', 'Laut Bercerita', 'Leila S. Chudori', 'Gramedia Pustaka Utama', '2017', '9786020357423', 'fisik', 'tersedia'),
('B021', 'Serangkai', 'Valerie Patkar', 'Gramedia', '2023', '9786020631234', 'fisik', 'tersedia'),
('B022', 'Nonversation', 'Valerie Patkar', 'Pustaka Nova', '2022', '9786020635678', 'fisik', 'tersedia'),
('B023', 'Logika Asa', 'Valerie Patkar', 'Erlangga', '2024', '9786020639123', 'fisik', 'tersedia'),
('B024', 'Serangkai II', 'Valerie Patkar', 'Gramedia', '2025', '9786020634321', 'fisik', 'tersedia'),
('B025', 'Antologi Rasa', 'Ika Natassa', 'Gramedia', '2011', '9789797805836', 'fisik', 'tersedia'),
('B026', 'The Architecture of Love', 'Ika Natassa', 'Gramedia', '2018', '9786020339953', 'fisik', 'tersedia'),
('B027', 'Divortiare', 'Ika Natassa', 'Gramedia', '2014', '9786020310335', 'fisik', 'tersedia'),
('B028', 'Critical Eleven', 'Ika Natassa', 'Gramedia', '2015', '9786020311301', 'fisik', 'tersedia'),
('B029', 'Twivortiare', 'Ika Natassa', 'Gramedia', '2017', '9786020336853', 'fisik', 'tersedia'),
('B030', 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '1980', '9786029110997', 'fisik', 'tersedia'),
('B031', 'Ayat-Ayat Cinta', 'Habiburrahman El Shirazy', 'Republika', '2004', '9789795111771', 'fisik', 'tersedia'),
('B032', 'Supernova: Ksatria, Puteri dan Bintang Jatuh', 'Dewi Lestari', 'Bentang Pustaka', '2001', '9789791227524', 'fisik', 'tersedia'),
('B033', 'Negeri Para Bedebah', 'Tere Liye', 'Republika', '2012', '9789795113713', 'fisik', 'tersedia'),
('B034', 'Pulau Buru Tetralogi', 'Pramoedya Ananta Toer', 'Lentera Dipantara', '1970', '9786029110881', 'fisik', 'tersedia'),
('B035', 'Supernova: Petir', 'Dewi Lestari', 'Bentang Pustaka', '2006', '9789791227579', 'fisik', 'tersedia'),
('B036', 'Perahu Kertas', 'Dewi Lestari', 'Gramedia', '2009', '9789792266358', 'fisik', 'tersedia'),
('B037', 'Madilog', 'Tan Malaka', 'Pustaka Pelajar', '1943', '9789799280970', 'fisik', 'tersedia'),
('B038', 'Canting', 'Dee Lestari', 'Bentang Pustaka', '2020', '9786024242104', 'fisik', 'tersedia'),
('B039', 'Bumi', 'Tere Liye', 'Republika', '2010', '9789795112761', 'fisik', 'tersedia'),
('B040', 'Filosofi Kopi', 'Dee Lestari', 'Bentang Pustaka', '2006', '9789791228309', 'fisik', 'tersedia'),
('B041', 'Ronggeng Dukuh Paruk', 'Ahmad Tohari', 'Gramedia', '1982', '9789792261115', 'fisik', 'tersedia'),
('B042', 'Negeri Para Bedebah', 'Tere Liye', 'Republika', '2012', '9789795113713', 'fisik', 'tersedia'),
('B043', 'Bulan', 'Tere Liye', 'Republika', '2013', '9789795114406', 'fisik', 'tersedia'),
('B044', 'Orang-Orang Proyek', 'Ahmad Tohari', 'Gramedia', '1980', '9789792261337', 'fisik', 'tersedia'),
('B045', 'Dilan 1990', 'Pidi Baiq', 'Mizan', '2014', '9789794331598', 'fisik', 'tersedia'),
('B046', 'Dilan 1991', 'Pidi Baiq', 'Mizan', '2015', '9789794332601', 'fisik', 'tersedia'),
('B047', 'Menembus Langit', 'Siti Nurhaliza', 'Gramedia', '2024', '9786020387654', 'fisik', 'tersedia'),
('E001', 'Atomic Habits', 'James Clear', 'Penguin Books', '2018', '9780735211292', 'ebook', 'tersedia'),
('E002', 'Deep Work', 'Cal Newport', 'Grand Central Publishing', '2016', '9781455586691', 'ebook', 'dipinjam'),
('E003', 'The Power of Habit', 'Charles Duhigg', 'Random House', '2012', '9780812981605', 'ebook', 'tersedia'),
('E004', 'Clean Code', 'Robert C. Martin', 'Prentice Hall', '2008', '9780132350884', 'ebook', 'tersedia'),
('E005', 'Thinking, Fast and Slow', 'Daniel Kahneman', 'Farrar, Straus and Giroux', '2011', '9780374533557', 'ebook', 'tersedia'),
('E006', 'The Subtle Art of Not Giving a F*ck', 'Mark Manson', 'Harper', '2016', '9780062457714', 'ebook', 'tersedia'),
('E007', 'Educated', 'Tara Westover', 'Random House', '2018', '9780399590504', 'ebook', 'tersedia'),
('E008', 'The Lean Startup', 'Eric Ries', 'Crown Business', '2011', '9780307887894', 'ebook', 'tersedia'),
('E009', 'Start with Why', 'Simon Sinek', 'Portfolio', '2009', '9781591842804', 'ebook', 'tersedia'),
('E010', 'Emma', 'Jane Austen', 'John Murray', '0000', '9780141439587', 'ebook', 'tersedia'),
('E011', 'Rindu', 'Tere Liye', 'Gramedia Pustaka Utama', '2010', '9789797800237', 'ebook', 'tersedia'),
('E012', 'Lelaki Harimau', 'Eka Kurniawan', 'Gramedia Pustaka Utama', '2004', '9786020307313', 'ebook', 'tersedia'),
('E013', '9 dari Nadira', 'Leila S. Chudori', 'Gramedia Pustaka Utama', '2014', '9786020308075', 'ebook', 'tersedia'),
('E014', 'The Midnight Library', 'Matt Haig', 'Canongate Books', '2020', '9781786892737', 'ebook', 'tersedia'),
('E015', 'Homage to Catalonia', 'George Orwell', 'Secker & Warburg', '1938', '9780156421171', 'ebook', 'tersedia'),
('E016', 'Serangkai', 'Valerie Patkar', 'Gramedia', '2023', '9786020631234', 'ebook', 'tersedia'),
('E017', 'Nonversation', 'Valerie Patkar', 'Pustaka Nova', '2022', '9786020635678', 'ebook', 'tersedia'),
('E018', 'Logika Asa', 'Valerie Patkar', 'Erlangga', '2024', '9786020639123', 'ebook', 'tersedia'),
('E019', 'Serangkai II', 'Valerie Patkar', 'Gramedia', '2025', '9786020634321', 'ebook', 'tersedia'),
('E020', 'Antologi Rasa', 'Ika Natassa', 'Gramedia', '2011', '9789797805836', 'ebook', 'tersedia'),
('E021', 'The Architecture of Love', 'Ika Natassa', 'Gramedia', '2018', '9786020339953', 'ebook', 'tersedia'),
('E022', 'Divortiare', 'Ika Natassa', 'Gramedia', '2014', '9786020310335', 'ebook', 'tersedia'),
('E023', 'Critical Eleven', 'Ika Natassa', 'Gramedia', '2015', '9786020311301', 'ebook', 'tersedia'),
('E024', 'Twivortiare', 'Ika Natassa', 'Gramedia', '2017', '9786020336853', 'ebook', 'tersedia'),
('E025', 'Madilog', 'Tan Malaka', 'Pustaka Pelajar', '1943', '9789799280970', 'ebook', 'tersedia'),
('E026', 'Becoming', 'Michelle Obama', 'Crown', '2018', '9781524763138', 'ebook', 'tersedia'),
('E027', 'Cantik Itu Luka', 'Eka Kurniawan', 'Gramedia', '2002', '9789792294982', 'ebook', 'tersedia'),
('E028', '12 Rules for Life', 'Jordan Peterson', 'Random House', '2018', '9780345816023', 'ebook', 'tersedia'),
('E029', 'The Four Agreements', 'Don Miguel Ruiz', 'Amber-Allen Publishing', '1997', '9781878424310', 'ebook', 'tersedia'),
('E030', 'Laut Bercerita', 'Leila S. Chudori', 'Gramedia', '2013', '9786020313173', 'ebook', 'tersedia'),
('E031', 'Quiet', 'Susan Cain', 'Crown', '2012', '9780307352156', 'ebook', 'tersedia'),
('E032', 'Grit', 'Angela Duckworth', 'Scribner', '2016', '9781501111112', 'ebook', 'tersedia'),
('E033', 'Outliers', 'Malcolm Gladwell', 'Little, Brown and Company', '2008', '9780316017930', 'ebook', 'tersedia'),
('E034', 'Drive', 'Daniel H. Pink', 'Riverhead Books', '2009', '9781594484803', 'ebook', 'tersedia'),
('E035', 'The Stranger', 'Albert Camus', 'Vintage', '1942', '9780679720201', 'ebook', 'tersedia'),
('E036', 'Meditations', 'Marcus Aurelius', 'Penguin Classics', '0000', '9780140449334', 'ebook', 'tersedia'),
('E037', 'Beyond Good and Evil', 'Friedrich Nietzsche', 'Vintage', '0000', '9780140449235', 'ebook', 'tersedia'),
('E038', 'The Republic', 'Plato', 'Penguin Classics', '0000', '9780141442433', 'ebook', 'tersedia'),
('E039', 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 'Scholastic', '1997', '9780590353427', 'ebook', 'tersedia'),
('E040', 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 'Scholastic', '1998', '9780439064873', 'ebook', 'tersedia'),
('E041', 'Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', 'Scholastic', '1999', '9780439136365', 'ebook', 'tersedia'),
('E042', 'Harry Potter and the Goblet of Fire', 'J.K. Rowling', 'Scholastic', '2000', '9780439139601', 'ebook', 'tersedia'),
('E043', 'Harry Potter and the Order of the Phoenix', 'J.K. Rowling', 'Scholastic', '2003', '9780439358071', 'ebook', 'tersedia'),
('E044', 'Harry Potter and the Half-Blood Prince', 'J.K. Rowling', 'Scholastic', '2005', '9780439785969', 'ebook', 'tersedia'),
('E045', 'Harry Potter and the Deathly Hallows', 'J.K. Rowling', 'Scholastic', '2007', '9780545010221', 'ebook', 'tersedia'),
('E046', 'Nineteen Eighty-Four', 'George Orwell', 'Secker & Warburg', '1949', '9780451524935', 'ebook', 'tersedia'),
('E047', 'Brave New World', 'Aldous Huxley', 'Chatto & Windus', '1932', '9780060850524', 'ebook', 'tersedia'),
('E048', 'The Myth of Sisyphus', 'Albert Camus', 'Vintage', '1942', '9780679733737', 'ebook', 'tersedia'),
('E049', 'Sophie\'s World', 'Jostein Gaarder', 'Farrar, Straus and Giroux', '1991', '9780374530716', 'ebook', 'tersedia'),
('E050', 'Walden', 'Henry David Thoreau', 'Ticknor and Fields', '0000', '9780451532167', 'ebook', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `idPeminjaman` int(11) NOT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `bookID` varchar(20) DEFAULT NULL,
  `tanggalPinjam` date DEFAULT NULL,
  `tanggalKembali` date DEFAULT NULL,
  `status` enum('menunggu','dipinjam','dikembalikan','ditolak') NOT NULL,
  `denda` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`idPeminjaman`, `userID`, `bookID`, `tanggalPinjam`, `tanggalKembali`, `status`, `denda`) VALUES
(1, 'P001', 'B001', '2025-05-10', '2025-05-17', 'dikembalikan', 0),
(2, 'P002', 'E001', '2025-05-08', '2025-05-12', 'dikembalikan', 0),
(3, 'P001', 'B006', NULL, NULL, 'dikembalikan', 0),
(4, 'P001', 'B008', '2025-05-29', '2025-05-30', 'dikembalikan', 0),
(5, 'P001', 'B016', '2025-06-10', '2025-06-17', 'dikembalikan', 0),
(6, 'P001', 'B013', '2025-06-11', '2025-06-12', 'dikembalikan', 0),
(7, 'P001', 'B001', '2025-06-10', '2025-06-17', 'dikembalikan', 0),
(8, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(9, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(10, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(11, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(12, 'P001', 'B003', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(13, 'P001', 'B046', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(14, 'P001', 'B043', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(15, 'P001', 'B047', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(16, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(17, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(18, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(19, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(20, 'P001', 'B004', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(21, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(22, 'P001', 'B004', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(23, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(24, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(25, 'P001', 'B001', '2025-06-11', '2025-06-18', 'dikembalikan', 0),
(26, 'P001', 'B001', '2025-06-12', '2025-06-19', 'dikembalikan', 0),
(27, 'P001', 'B001', '2025-06-12', '2025-06-19', 'dikembalikan', 0),
(28, 'P001', 'B006', '2025-06-12', '2025-06-19', 'dikembalikan', 0),
(29, 'P001', 'B004', '2025-06-12', '2025-06-19', 'dikembalikan', 0),
(30, 'P001', 'B007', '2025-06-12', '2025-06-19', 'dikembalikan', 0),
(31, 'P001', 'B003', '2025-06-12', '2025-06-19', 'dikembalikan', 0),
(32, 'P001', 'B001', '2025-06-12', '2025-06-19', 'dikembalikan', 0),
(33, 'P001', 'B019', '2025-06-01', '2025-06-02', 'dikembalikan', 10000),
(34, 'P001', 'B031', '2025-06-03', '2025-06-04', 'dikembalikan', 8000),
(35, 'P001', 'B012', '2025-06-12', '2025-06-19', 'ditolak', 0),
(36, 'P001', 'B003', '2025-06-12', '2025-06-19', 'dikembalikan', 0),
(37, 'P001', 'B047', '2025-06-12', '2025-06-19', 'dikembalikan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `userID` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('admin','pembaca') DEFAULT 'pembaca',
  `phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`userID`, `nama`, `email`, `password`, `role`) VALUES
('A001', 'Issa', 'issa@gmail.com', 'admin434', 'admin'),
('A002', 'Ocha', 'ocha@gmail.com', 'admin324', 'admin'),
('P001', 'Aisy', 'aisy@gmail.com', 'pembaca160', 'pembaca'),
('P002', 'Gian', 'gian@gmail.com', 'pembaca218', 'pembaca'),
('P1748107508927', 'Alana Athaya', 'alana@gmail.com', 'Pembaca123', 'pembaca'),
('P1748411724353', 'Diana Aisyah', 'diana@gmail.com', 'diana123', 'pembaca'),
('P1749454383561', 'Nadia Rahma', 'nadia@gmail.com', 'nadia123', 'pembaca');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `idReview` int(11) NOT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `bookID` varchar(20) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `komentar` varchar(500) DEFAULT NULL,
  `tanggalReview` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`idReview`, `userID`, `bookID`, `rating`, `komentar`, `tanggalReview`) VALUES
(1, 'P001', 'E001', 5, 'Sangat inspiratif dan mudah dipahami!', '2025-05-16'),
(2, 'P002', 'B001', 4, 'Ceritanya bagus, tapi agak lambat di awal', '2025-05-16'),
(3, 'P001', 'E002', 3, 'Topiknya menarik tapi bahasanya terlalu berat', '2025-05-16'),
(4, 'P001', 'E014', 5, 'totally worth to read!', '2025-05-28');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `idWishlist` int(11) NOT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `bookID` varchar(20) DEFAULT NULL,
  `tanggalDitambahkan` date DEFAULT curdate(),
  `statusBaca` enum('belum dibaca','sedang dibaca','sudah dibaca') DEFAULT 'belum dibaca'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`idWishlist`, `userID`, `bookID`, `tanggalDitambahkan`, `statusBaca`) VALUES
(1, 'P001', 'E001', '2025-05-16', 'sedang dibaca'),
(3, 'P001', 'E002', '2025-05-16', 'sudah dibaca'),
(4, 'P001', 'E014', '2025-05-27', 'sudah dibaca'),
(5, 'P001', 'E011', '2025-05-27', 'sedang dibaca'),
(6, 'P1748411724353', 'E008', '2025-05-28', 'belum dibaca'),
(7, 'P001', 'E012', '2025-05-28', 'sedang dibaca'),
(8, 'P001', 'E016', '2025-05-28', 'belum dibaca'),
(9, 'P001', 'E024', '2025-05-28', 'belum dibaca'),
(10, 'P001', 'E010', '2025-05-28', 'belum dibaca'),
(11, 'P001', 'E027', '2025-05-29', 'belum dibaca'),
(12, 'P001', 'E022', '2025-06-10', 'belum dibaca');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`idPeminjaman`),
  ADD KEY `userID` (`userID`),
  ADD KEY `bookID` (`bookID`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`idReview`),
  ADD KEY `userID` (`userID`),
  ADD KEY `bookID` (`bookID`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`idWishlist`),
  ADD KEY `userID` (`userID`),
  ADD KEY `bookID` (`bookID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `idPeminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `idReview` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `idWishlist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `pengguna` (`userID`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `pengguna` (`userID`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `pengguna` (`userID`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
