-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2017 at 10:00 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL,
  `last_log_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `last_log_date`) VALUES
(1, 'admin', 'admin', '2017-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `login` varchar(12) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `id` int(11) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `security` text NOT NULL,
  `securityanswer` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `pin` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`login`, `password`, `name`, `id`, `mobile`, `security`, `securityanswer`, `email`, `address`, `city`, `state`, `pin`) VALUES
('medha', 'medha', 'Medha', 11, '9410148864', 'What is your nick name?', 'medhuu', 'medha.agarwal234@gmail.com', 'Shivalik Nagar', 'Haridwar', 'Uttrakhand', '249403'),
('sumit', 'sumit', 'Sumit Agarwal', 12, '9498003386', 'What is your pet name?', 'Tommy', 'sumitagarwa1995l@gmail.com', 'Nimkathana', 'Sikar', 'Rajasthan', '332713'),
('chakshu', 'chakshu', 'Chakshu', 14, '9790713787', 'What is your pet name?', 'shaggy', 'chakshujindal247@gmail.com', 'ITC Haridwar', 'Haridwar', 'Uttarakhand', '249403'),
('dev', 'dev', 'Dev Dutt Singh', 15, '9760192223', 'What is your nick name?', 'Dev', 'dev.singh@itc.in', 'ITC, Admin Block, Haridwar', 'Haridwar', 'Uttarakhand', '249403'),
('bijender', 'negi', 'Mr Bijender Negi', 16, '9123654789', 'What is your nick name?', 'negi', 'bijender.negi@itc.in', 'ITC', 'Haridwar', 'Uttarakhand', '249403'),
('sunil', 'sunil', 'Sunil Kumar Jindal', 20, '9927829991', 'What is your pet name?', 'sonia', 'sunil_jindal@rediffmail.com', 'Shivalik Enclave, Ranipur', 'Haridwar', 'Uttarakhand', '249403');

-- --------------------------------------------------------

--
-- Table structure for table `customer_cart`
--

CREATE TABLE `customer_cart` (
  `cartid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `customerid` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_cart`
--

INSERT INTO `customer_cart` (`cartid`, `productid`, `customerid`, `product_name`, `details`, `price`, `quantity`, `date_added`) VALUES
(20, 36, 16, 'BlueStone The Carysa Gold Diamond, Peridot Ring', 'BlueStone The Carysa Gold Diamond, Peridot Ring', 8999, 1, '2017-06-26'),
(21, 20, 16, 'Diesel Magnete Boots', 'High quality shoes from Diesel designed for YOU.', 1999, 4, '2017-06-26'),
(22, 33, 1, 'Elizabeth Arden Beauty Eau de Toilette - 100 ml', 'Elizabeth Arden Beauty Eau de Toilette - 100 ml', 1490, 1, '2017-06-26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `details` text NOT NULL,
  `category` varchar(16) NOT NULL,
  `subcategory` varchar(16) NOT NULL,
  `date_added` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `details`, `category`, `subcategory`, `date_added`) VALUES
(19, 'Puma Contest Lite Sneakers', 2999, 'Puma Shoes at cheap Price', 'Footwear', '', '2017-06-22'),
(20, 'Diesel Magnete Boots', 1999, 'High quality shoes from Diesel designed for YOU.', 'Footwear', '', '2017-06-21'),
(21, 'Clarks Newton Energy Boat Shoes', 2499, 'Especially designed by Hrithik Roshan.', 'Footwear', '', '2017-06-15'),
(22, 'Puma Mens Breeze Flip Flops Thong Sandals', 999, 'Super soft and extra light, made for you.', 'Footwear', '', '2017-06-24'),
(23, 'John Players Men\'s Casual Shirt', 1999, '60% Cotton and 40% linen,\r\nSlim fit,\r\nLong sleeve,\r\nClassic collar,\r\nMachine wash,\r\nMade in India', 'Clothing', '', '2017-06-23'),
(24, 'Uditva Men\'s Churidar & Kurta Set', 1799, 'Traditional Wear', 'Clothing', '', '2017-06-03'),
(25, 'Platinum Studio Solid Men\'s Waistcoat', 3499, 'Solid Men\'s Waistcoat', 'Clothing', '', '2017-06-09'),
(26, 'Fastrack Sports Analog Watch', 2990, 'Analog Watch - For Men', 'Watches', '', '2017-06-01'),
(27, 'Fossil NATE Analog Watch', 3249, 'Fossil NATE Analog Watch - For Men', 'Watches', '', '2017-05-15'),
(28, 'Martian Notifier Smart Watch', 4999, 'Martian Notifier Smart Watch from Switzerland', 'Watches', '', '2017-05-31'),
(29, 'Butterflies Perforated Design Hand Bag', 5499, 'Butterflies Perforated Design Hand Bag', 'HandBag', '', '2017-06-18'),
(30, 'Butterflies Elegant Hand Bag', 3999, 'Butterflies Elegant Hand Bag', 'HandBag', '', '2017-06-12'),
(31, 'Butterflies Laser Cut Hand Bag', 5699, 'Butterflies Laser Cut Designer Hand Bag', 'HandBag', '', '2017-06-22'),
(32, 'Anna Andre Paris Pure Eau de Toilette - 100 ml', 1490, 'Anna Andre Paris Pure Eau de Toilette - 100 ml', 'Perfumes', '', '2017-06-07'),
(33, 'Elizabeth Arden Beauty Eau de Toilette - 100 ml', 1490, 'Elizabeth Arden Beauty Eau de Toilette - 100 ml', 'Perfumes', '', '2017-06-24'),
(34, 'Davidoff Cool Water Eau de Toilette', 1590, 'Davidoff Cool Water Eau de Toilette', 'Perfumes', '', '2017-06-11'),
(35, 'Paco Rabanne Black XS Eau de Toilette', 1890, 'Paco Rabanne Black XS Eau de Toilette', 'Perfumes', '', '2017-06-17'),
(36, 'BlueStone The Carysa Gold Diamond, Peridot Ring', 8999, 'BlueStone The Carysa Gold Diamond, Peridot Ring', 'Jewellery', '', '2017-06-21'),
(37, 'CaratLane Fiore Rose Gold Necklace', 9999, 'CaratLane Fiore Rose Gold Necklace', 'Jewellery', '', '2017-06-10'),
(38, 'CaratLane La FoisFor Her Gold Diamond Ring', 12599, 'CaratLane La FoisFor Her Gold Diamond Ring', 'Jewellery', '', '2017-06-19'),
(39, 'Spiky Stylish Wayfarer Sunglasses', 3599, 'Spiky Stylish Wayfarer Sunglasses', 'Sunglasses', '', '2017-06-06'),
(40, 'EYELOVEYOU Over-sized Sunglasses', 3899, 'EYELOVEYOU Over-sized Sunglasses', 'Sunglasses', '', '2017-06-23'),
(41, 'Angel Glitter Purple Rainbow, Blue Bow Kids Wayfarer Sunglasses', 2599, 'Angel Glitter Purple Rainbow, Blue Bow Kids Wayfarer Sunglasses', 'Sunglasses', '', '2017-06-20'),
(42, 'What If?: Serious Scientific Answers to Absurd Hypothetical Questions', 349, 'What If?: Serious Scientific Answers to Absurd Hypothetical Questions', 'EBooks', '', '2017-06-19'),
(43, 'The Lost Hero (Heroes of Olympus Book 1)', 1199, 'The Lost Hero (Heroes of Olympus Book 1)', 'EBooks', '', '2017-06-04'),
(44, 'The Monk Who Sold His Ferrari', 999, 'The Monk Who Sold His Ferrari: A Fable About Fulfilling Your Dreams & Reaching Your Destiny', 'EBooks', '', '2017-06-05'),
(45, 'The Kill List', 899, 'The Kill List', 'EBooks', '', '2017-06-06'),
(46, 'Divergent', 1400, 'Divergent', 'DVD', '', '2017-06-07'),
(47, 'Frozen', 3989, 'Frozen Animation', 'DVD', '', '2017-06-09'),
(48, 'The Sound Of Music', 1569, 'The Sound Of Music (45th Anniversary Edition)', 'DVD', '', '2017-06-10'),
(49, 'Pokemon Alpha Sapphire', 3549, 'Pokemon Alpha Sapphire', 'Gaming', '', '2017-06-15'),
(50, 'Ultimate Action Triple Pack', 2559, 'Ultimate Action Triple Pack (Includes 3 Games)', 'Gaming', '', '2017-06-11'),
(51, 'Total War: Rome II', 859, 'Total War: Rome II', 'Gaming', '', '2017-06-13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`,`email`),
  ADD UNIQUE KEY `login` (`login`);

--
-- Indexes for table `customer_cart`
--
ALTER TABLE `customer_cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`product_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `customer_cart`
--
ALTER TABLE `customer_cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
