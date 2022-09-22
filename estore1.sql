-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 05:40 AM
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
-- Table structure for table `addcetegory`
--

CREATE TABLE `addcetegory` (
  `cet_id` int(50) NOT NULL,
  `cetegory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addcetegory`
--

INSERT INTO `addcetegory` (`cet_id`, `cetegory`) VALUES
(16, 'Mobile'),
(17, 'Fashion & Beauty'),
(18, 'Grocpries '),
(19, 'Sport'),
(21, 'Man');

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

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cat_id` int(50) NOT NULL,
  `u_id` int(50) NOT NULL,
  `p_id` int(50) NOT NULL,
  `qty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cat_id`, `u_id`, `p_id`, `qty`) VALUES
(55, 1, 6, '1'),
(56, 1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `con_id` int(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`con_id`, `name`, `email`, `message`) VALUES
(1, 'sandip', '', 'good night'),
(2, 'sandip', '', 'good night'),
(3, 'rggr', '', 'frjrgjrg'),
(4, 'rggr', 'sp2064585@gmail.com', 'frjrgjrg'),
(5, 'sandip', 'sp2064585@gmail.com', 'juhuhuh'),
(6, 'hygyg', 'sp2064585@gmail.com', 'huhuh'),
(7, 'hhby', 'sp2064585@gmail.com', 'hbyggtv'),
(8, 'hhby', 'sp2064585@gmail.com', 'hbyggtv'),
(9, 'sandip', 's@gmail.com', 'gfgftffy'),
(10, 'sandip patel', 'sandip012patel@gmail.com', 'hello there'),
(11, 'sandip', 's@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `con_id` int(50) NOT NULL,
  `country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`con_id`, `country`) VALUES
(1, 'india'),
(2, 'USA'),
(3, 'UK');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `username`, `email`, `country`, `password`, `mobile`) VALUES
(1, 'sandip', 's@gmail.com', '', '123', '9773163145'),
(2, 'sandip ', 'Email', '', 'Password', 'Confirm Pa'),
(8, 'sandip', 'sp2064585@gmail.com', '', '123', '123'),
(11, 'sandip', 'sp@gmail.com', '', '123', '123'),
(77, 's@gmail.com', 'sp2064585@gmail.com', '', '8484', '9599'),
(84, 'sandip patel', 'sp2064585@gmail.com', '3', '9897797', '77777'),
(85, 'sandip patel', 'sp2064585@gmail.com', '3', '9897797', '77777'),
(86, 'Username', 'Email', '2', 'Password', 'Confirm Pa'),
(87, 'Username', 'Email', '2', 'Password', 'Confirm Pa'),
(88, 'Username', 'Email', 'UK', 'Password', 'Confirm Pa'),
(89, 'Username', 'Email', 'UK', 'Password', 'Confirm Pa'),
(90, 'kmkmkm', 'jnjn', 'UK', '558484', '58484'),
(91, 'sandip patel', 'sandip012patel@gmail.com', 'india', 'Password', 'Confirm Pa'),
(92, 'sandip', 'sandip012patel@gmail.com', '', '545454', '5544554'),
(93, 'sandip patel', 'sandip012patel@gmail.com', 'USA', '123', '123'),
(94, 'sandippatel', 'sp@gmail.com', 'USA', '123', '123'),
(95, 'hbvgv', 'hbvtv@gv', 'USA', 'k9898', 'kk877'),
(96, 'hbvgv', 'hbvtv@gv', 'USA', 'k9898', 'kk877'),
(97, 'ssssss', 'sp2064585@gmail.com', 'UK', '98989898', '9898989'),
(98, 'spsps', 'sandip012patel@gmail.com', 'USA', '123', '123'),
(99, 'spsps', 'sandip012patel@gmail.com', 'USA', '123', '123'),
(100, 'sss', 'dlldl@ld', 'india', 'el,le', 'ele,');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `sid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`sid`, `cid`, `name`) VALUES
(1, 1, 'gujarat'),
(2, 1, 'Goa'),
(3, 2, 'maxuxo'),
(4, 2, 'newyork'),
(5, 3, 'abc'),
(6, 3, 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `xyz`
--

CREATE TABLE `xyz` (
  `u_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcetegory`
--
ALTER TABLE `addcetegory`
  ADD PRIMARY KEY (`cet_id`);

--
-- Indexes for table `addproduct`
--
ALTER TABLE `addproduct`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `cat_id` (`cet_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `cid` (`cid`);

--
-- Indexes for table `xyz`
--
ALTER TABLE `xyz`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcetegory`
--
ALTER TABLE `addcetegory`
  MODIFY `cet_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `addproduct`
--
ALTER TABLE `addproduct`
  MODIFY `p_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cat_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `con_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `con_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `xyz`
--
ALTER TABLE `xyz`
  MODIFY `u_id` int(50) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `register` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`p_id`) REFERENCES `addproduct` (`p_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `state_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `country` (`con_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
