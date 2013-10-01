-- phpMyAdmin SQL Dump
-- version 3.1.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 21, 2012 at 08:43 PM
-- Server version: 5.1.33
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thegioiso`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lever` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `lever`) VALUES
(1, 'tung', '1', 'tungnm.ptit@gmail.com', 1),
(2, 'ptit', '2', 'mjnhtung.ptjt@gmail.com', 0),
(4, 'bang', '1', 'lebang.ptit@yahoo.com.vn', 0),
(5, 'tu', '1', 'tucau@gamil.com', 0),
(9, 'tan', '1', 'tan@gamil.com', 0),
(10, 'manh', '1', 'manh@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderproduce`
--

CREATE TABLE IF NOT EXISTS `orderproduce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iduser` int(10) NOT NULL,
  `idprod` int(10) NOT NULL,
  `number` int(10) NOT NULL,
  `pricetotal` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `orderproduce`
--

INSERT INTO `orderproduce` (`id`, `iduser`, `idprod`, `number`, `pricetotal`) VALUES
(1, 1, 1, 1, 20500000),
(2, 1, 1, 4, 82000000),
(3, 1, 8, 1, 13000000),
(4, 1, 21, 10, 95000000);

-- --------------------------------------------------------

--
-- Table structure for table `productdetail`
--

CREATE TABLE IF NOT EXISTS `productdetail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `os` varchar(100) CHARACTER SET utf8 NOT NULL,
  `cpu` varchar(100) CHARACTER SET utf8 NOT NULL,
  `screen` varchar(100) CHARACTER SET utf8 NOT NULL,
  `camera` varchar(100) CHARACTER SET utf8 NOT NULL,
  `pin` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `productdetail`
--

INSERT INTO `productdetail` (`id`, `os`, `cpu`, `screen`, `camera`, `pin`) VALUES
(1, 'Android OS, v4.1.1 (Jelly Bean)', 'nVidia Tegra 3, Quad-core 1.7 GHz processor - RAM: 1 GB - Bộ nhớ trong: 64 GB', 'cảm ứng điện dung Super LCD2, 16 triệu màu, rộng 4.7 inches', ' 8.0 MP (3264x2448 pixels), hỗ trợ chụp ảnh và quay phim cùng lúc', ' 2100 mAh');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` varchar(15) NOT NULL,
  `image` varchar(200) NOT NULL,
  `kind` int(10) NOT NULL,
  `idDetail` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `kind`, `idDetail`) VALUES
(1, 'iPhone 4S', '20000000', 'images/phone/dien-thoai-di-dong-apple-iphone-4S-dienmay.com-v.jpg', 1, 1),
(2, 'Galaxy Note 2 ', '15900000', 'images/phone/Samsung-Galaxy-Note-II-N7100-m.jpg', 1, 1),
(3, 'Bold Touch 9900', '14000000', 'images/phone/dien-thoai-di-dong-LG-Optimus-black-P970-v.jpg', 1, 1),
(4, 'Galaxy S3 I9300', '15000000', 'images/phone/Samsung-Galaxy-S3-I9300-m.jpg', 1, 1),
(5, 'HTC 8X', '13400000', 'images/phone/HTC-Windows-Phone-8X-m.jpg', 1, 1),
(6, 'Sony LT26i', '13000000', 'images/phone/dien-thoai-di-dong-sony-xperia-p-dienmay.com-v.jpg', 1, 1),
(7, 'Sony Xperia LT28H', '12000000', 'images/phone/dien-thoai-di-dong-sony-xperia-s-dienmay.com-v.jpg', 1, 1),
(8, 'Sony Xperia Acro S', '13000000', 'images/phone/dien-thoai-di-dong-sony-xperia-u-dienmay.com-v.jpg', 1, 1),
(9, 'LG Optimus Vu', '13000000', 'images/phone/dien-thoai-di-dong-LG-Optimus-black-P970-v.jpg', 1, 1),
(10, 'Galaxy S II I9100G', '10000000', 'images/phone/samsung_i9100.jpg', 1, 1),
(11, 'Galaxy Note N7000', '13000000', 'images/phone/Samsung-Galaxy-Note-II-N7100-m.jpg', 1, 1),
(12, 'Nokia 808 PureView', '12000000', 'images/phone/dien-thoai-di-dong-nokia-700--dienmay.com-v.jpg', 1, 1),
(13, 'Sony Xperia LT26ii', '12000000', 'images/phone/Sony-Xperia-SL-LT26ii-m.jpg', 1, 1),
(14, 'LG Optimus 4X HD', '12000000', 'images/phone/dien-thoai-di-dong-LG-Optimus-Sol-E730-dienmay.com-v.jpg', 1, 1),
(15, 'HTC Sensation XL', '10000000', 'images/phone/dien-thoai-di-dong-htc-sensation-XL-dienmay.com-v.jpg', 1, 1),
(16, 'Motorola RAZR', '11000000', 'images/phone/dien-thoai-di-dong-Motorola-RAZR-XT910-dienmay.com-v.jpg', 1, 1),
(17, 'Nokia Lumia 900', '11000000', 'images/phone/dien-thoai-di-dong-Nokia-lumia-800-dienmay.com-v.jpg', 1, 1),
(18, 'Nokia-N9-00', '9000000', 'images/phone/dien-thoai-di-dong-nokia-N9-00-dienmay.com-den-v.jpg', 1, 1),
(19, 'Sony neo-L', '700000', 'images/phone/Sony-Xperia-neo-L-MT25i-m.jpg', 1, 1),
(20, 'Lumia 920', '14000000', 'images/phone/Nokia-Lumia-920-m.jpg', 1, 1),
(21, 'Galaxy Ace', '9500000', 'images/phone/Samsung-Galaxy-Ace-Duos-m.jpg', 1, 1),
(22, 'Lumia 900', '10500000', 'images/phone/Nokia-Lumia-900-m.jpg', 1, 1),
(23, 'Galaxy i9100', '9000000', 'images/phone/samsung_i9100.jpg', 1, 1),
(24, 'Sony Xperia u', '11500000', 'images/phone/dien-thoai-di-dong-sony-xperia-u-dienmay.com-v.jpg', 1, 1),
(25, 'Sony Xperia Ray', '700000', 'images/phone/dien-thoai-di-dong-sony_ericsson-Xperia_Ray-dienmay.com-v.jpg', 1, 1),
(26, 'Galaxy Ace 2', '8500000', 'images/phone/dien-thoai-di-dong-samsung-GalaxyAce2-dienmay.jpg', 1, 1),
(27, 'Galaxy Note', '12000000', 'images/phone/dien-thoai-di-dong-Samsung-Galaxy-Note-dienmay.jpg', 1, 1),
(28, 'Aigo-T710', '6500000', 'images/tablet/Aigo-T710-m.jpg', 2, 1),
(29, 'Apple ipad 2', '14000000', 'images/tablet/apple-ipad-2-wifi-120.jpg', 2, 1),
(30, 'Archos-101-G9', '7000000', 'images/tablet/Archos-101-G9-Turbo-8Gb-m.jpg', 2, 1),
(31, 'Archos-Arnova-7f-G3', '6400000', 'images/tablet/Archos-Arnova-7f-G3-–-Wifi-4GB-m.jpg', 2, 1),
(32, 'Asus-TF600T', '900000', 'images/tablet/Asus-TF600T-m.jpg', 2, 1),
(33, 'Asus-Transformer', '8500000', 'images/tablet/Asus-Transformer-Pad-TF300T-Dock-m.jpg', 2, 1),
(34, 'iPad-3-Wifi-4G', '16000000', 'images/tablet/iPad-3-Wifi-4G-m.jpg', 2, 1),
(35, 'KingCom-JOYPAD', '6000000', 'images/tablet/KingCom-JOYPAD-C72-Wifi-4GB---USB-3G-m.jpg', 2, 1),
(36, 'iPad-2012-32GB', '16500000', 'images/tablet/iPad-2012-wifi-4G-32GB-m.jpg', 2, 1),
(37, 'Transformer-TF700T', '8000000', 'images/tablet/Asus-Transformer-TF700T-Infinity-Dock-(64GB)-m.jpg', 2, 1),
(38, 'acer-iconia-W501', '7000000', 'images/tablet/tablet-acer-iconia-W501-black-dienmay.com-V.jpg', 2, 1),
(39, 'Galaxy-Tab-2-7.0', '1200000', 'images/tablet/Samsung-Galaxy-Tab-2-7.0-m.jpg', 2, 1),
(40, 'Galaxy-Tab-2-10.1', '12500000', 'images/tablet/Samsung-Galaxy-Tab-2-10.1-m.jpg', 2, 1),
(41, 'galaxy-note-10.1', '1200000', 'images/tablet/tablet-samsung-galaxy-note-10.1-dienmay.com-V.jpg', 2, 1),
(42, 'Acer-Aspire-3830', '12300000', 'images/laptop/Acer-Aspire-3830-2352G75Mn-m.gif', 3, 1),
(43, 'Asus-Eee-PC', '10800000', 'images/laptop/Asus-Eee-PC-1225B-dienmay.com-120.jpg', 3, 1),
(44, 'Acer-V5-571P', '14600000', 'images/laptop/Acer-V5-571P-53314G50-m.jpg', 3, 1),
(45, 'Acer-V3-471', '13700000', 'images/laptop/Acer-V3-471-33112G50Ma-m.gif', 3, 1),
(46, 'MacBook-Pro MD101', '21000000', 'images/laptop/Apple-MacBook-Pro-MD101-13inch-m.jpg', 3, 1),
(47, 'Asus-K55A', '11200000', 'images/laptop/Asus-K55A-53212G50-m.jpg', 3, 1),
(48, 'Asus-K46CA', '14300000', 'images/laptop/Asus-K46CA-53314G50-WX014-m.gif', 3, 1),
(49, 'Asus-Zenbook', '18500000', 'images/laptop/Asus-Zenbook-UX21E--2464G128WHP-KX0016V-dienmay.com-120.jpg', 3, 1),
(50, 'Dell-Inspiron', '11000000', 'images/laptop/Dell-Inspiron-5420-2374G50-m.gif', 3, 1),
(51, 'ASUS-K46CM', '12300000', 'images/laptop/ASUS-K46CM-53314G50G-(WX007)-m.gif', 3, 1),
(52, 'HP-Envy-4-', '14000000', 'images/laptop/HP-Envy-4-1101TU-33214G32W8-m.gif', 3, 1),
(53, 'HP-Envy-17', '17500000', 'images/laptop/HP-Envy-17-2100TX-2638G2TG-m.jpg', 3, 1),
(54, 'Sony-Vaio EG26FX', '18000000', 'images/laptop/Sony-Vaio-EG26FX-2434G64WHP-m.jpg', 3, 1),
(55, 'Sony-Vaio T11113FG', '23500000', 'images/laptop/Sony-Vaio-T11113FG-3314G50WHP-m.jpg', 3, 1),
(59, 'Xperia-mini', '5500000', 'images/phone/dien-thoai-di-dong-Sony-Ericsson-Xperia-mini-black-dienmay.jpg', 1, 1),
(61, 'Dell-Vostro', '10400000', 'images/laptop/Dell-Vostro-3550-2454G50G-(867MF71)-m.jpg', 3, 1);
