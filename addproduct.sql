-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 05:37 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estore1`
--

-- --------------------------------------------------------

--
-- Table structure for table `addproduct`
--

CREATE TABLE `addproduct` (
  `p_id` int(50) NOT NULL,
  `cet_id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cetegory` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `offprice` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addproduct`
--

INSERT INTO `addproduct` (`p_id`, `cet_id`, `name`, `cetegory`, `price`, `offprice`, `photo`) VALUES
(1, 16, 'Apple', '16', '500', '450', ''),
(2, 18, 'apple', '18', '70', '80', ''),
(3, 18, 'banana', '18', '50', '60', ''),
(4, 21, 't-shirt', '21', '350', '600', ''),
(5, 21, 'leptop', '21', '35000', 'tbtb', ''),
(6, 16, 'Mengo', '16', '76', 'tbtb', ''),
(8, 18, 'Beg', '18', '99', 'tbtb', ''),
(9, 19, 'Books', '19', '45', 'btb', ''),
(10, 21, 'Glass', '21', '199', 'tbt', ''),
(11, 16, 'foidisoi', '16', '12345', '123', 'apple.png'),
(12, 16, 'wkjrhfkur', '16', '4545', '00', 'cac.jpg'),
(13, 16, 'wkjrhfkur', '16', '4545', '00', 'cac.jpg'),
(14, 16, 'wkjrhfkur', '16', '4545', '00', 'cac.jpg'),
(15, 16, 'sfsvs', '16', '3654545', 'off Price', 'ba1.jpg'),
(16, 17, 'jjgh', '17', '6565', '666', 'ki.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addproduct`
--
ALTER TABLE `addproduct`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `cat_id` (`cet_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addproduct`
--
ALTER TABLE `addproduct`
  MODIFY `p_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
