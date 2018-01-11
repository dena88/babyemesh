-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.8-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema babyemesh
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ babyemesh;
USE babyemesh;

--
-- Table structure for table `babyemesh`.`admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`,`email`,`password`,`name`,`note`) VALUES 
 (1,'demo','demo','demo','');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE `cargo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`cargo`
--

/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` (`id`,`name`,`price`,`status`) VALUES 
 (1,'Flat Rate',5,1),
 (2,'Fast Cargo',10,1);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`,`parent_id`,`rank`,`link`) VALUES 
 (2,0,2,'category/2/desktops_all_in_ones.html'),
 (3,0,3,'category/3/category/3/category/3/category/3/category/3/category/3/category/3/category/3/category/3/category/3/category/3/category/3/category/3/category/3/category/3/computer_components_parts.html.html.html.html.html.html.html.html.html.html.html.html.html'),
 (15,0,1,'category/15/laptops_netbooks.html'),
 (16,0,4,'category/16/category/16/tabletebook.html.html'),
 (17,0,6,'category/17/category/17/drives_storage_blank_media.html.html'),
 (18,0,5,'category/18/category/18/software.html.html'),
 (19,18,0,'category/19/mac_os.html'),
 (20,18,0,'category/20/windows.html'),
 (21,16,0,'category/21/apple_tablets.html'),
 (22,16,0,'category/22/android_tablets.html'),
 (23,15,0,'category/23/acer_laptops.html'),
 (24,15,0,'category/24/samsung_laptops.html'),
 (25,15,0,'category/25/hp_laptops.html'),
 (26,2,0,''),
 (27,2,0,''),
 (28,2,0,''),
 (29,3,0,''),
 (30,3,0,''),
 (31,3,0,''),
 (32,17,0,'');
INSERT INTO `category` (`id`,`parent_id`,`rank`,`link`) VALUES 
 (33,17,0,''),
 (34,17,0,'');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`category_description`
--

DROP TABLE IF EXISTS `category_description`;
CREATE TABLE `category_description` (
  `ids` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  PRIMARY KEY (`ids`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`category_description`
--

/*!40000 ALTER TABLE `category_description` DISABLE KEYS */;
INSERT INTO `category_description` (`ids`,`category_id`,`language_id`,`category_name`,`description`,`meta_description`,`meta_keyword`) VALUES 
 (89,15,2,'Baby gear','Laptops & Netbooks','Laptops & Netbooks','Laptops & Netbooks'),
 (90,15,1,'Perlengkapan Bayi','Dizüstü Bilgisayarlar','Dizüstü Bilgisayarlar','Dizüstü Bilgisayarlar'),
 (91,2,2,'Dairy Food & Vitamins','Desktops & All-In-Ones','Desktops & All-In-Ones','Desktops & All-In-Ones'),
 (92,2,1,'Makanan Susu & Vitamin','Masaüstü Bilgisayalar','Masaüstü Bilgisayalar','Masaüstü Bilgisayalar'),
 (101,19,2,'Baby Toys','Mac OS','Mac OS','Mac OS'),
 (102,19,1,'Mainan Bayi','Mac OS','Mac OS','Mac OS'),
 (103,20,2,'Educational Toys','Windows','Windows','Windows'),
 (104,20,1,'Mainan Edukasi','Windows','Windows','Windows'),
 (105,21,2,'Crib','Apple Tablets','Apple Tablets','Apple Tablets'),
 (106,21,1,'Tempat Tidur Bayi','Apple Tabletler','Apple Tabletler','Apple Tabletler'),
 (107,22,2,'Bedding & Bedding','Android Tablets','Android Tablets','Android Tablets'),
 (108,22,1,'Selimut & Bedong','Android Tabletler','Android Tabletler','Android Tabletler');
INSERT INTO `category_description` (`ids`,`category_id`,`language_id`,`category_name`,`description`,`meta_description`,`meta_keyword`) VALUES 
 (109,23,2,'Diaper','Acer Laptops','Acer Laptops','Acer Laptops'),
 (110,23,1,'Popok','Acer Dizüstüler','Acer Dizüstüler','Acer Dizüstüler'),
 (111,24,2,'Baby Bag','Samsung Laptops','Samsung Laptops','Samsung Laptops'),
 (112,24,1,'Tas Perlengkapan Bayi','Samsung Dizüstüler','Samsung Dizüstüler','Samsung Dizüstüler'),
 (113,25,2,'Baby Octopus','Hp Laptops','Hp Laptops','Hp Laptops'),
 (114,25,1,'Gurita Bayi','Hp Dizüstüler','Hp Dizüstüler','Hp Dizüstüler'),
 (115,16,2,'Room','Tablet/eBook ','Tablet/eBook ','Tablet/eBook '),
 (116,16,1,'Kamar','Tablet Bilgisayar/e-Kitaplar','Tablet Bilgisayar/e-Kitaplar','Tablet Bilgisayar/e-Kitaplar'),
 (117,18,2,'Baby & Child Toys','Software','Software','Software'),
 (118,18,1,'Mainan Bayi & Anak','Yazilim','Yazilim','Yazilim'),
 (119,17,2,'Baby & Child Clothes','Drives, Storage & Blank Media','Drives, Storage & Blank Media','Drives, Storage & Blank Media'),
 (120,17,1,'Pakaian Bayi & Anak','Sürücüler, Depolama ve Boş Medya','Sürücüler, Depolama ve Boş Medya','Sürücüler, Depolama ve Boş Medya');
INSERT INTO `category_description` (`ids`,`category_id`,`language_id`,`category_name`,`description`,`meta_description`,`meta_keyword`) VALUES 
 (175,3,2,'Feeding & Breastfeeding Equipment','Computer Components & Parts','Computer Components & Parts','Computer Components & Parts'),
 (176,3,1,'Perlengkapan Makan & Menyusui','Bilgisayar Parcalari','Bilgisayar Parcalari','Bilgisayar Parcalari'),
 (177,26,1,'Susu & Minuman Bayi','Susu & Minuman Bayi','Susu & Minuman Bayi','Susu & Minuman Bayi'),
 (178,26,2,'Milk & Baby Beverages','Milk & Baby Beverages','Milk & Baby Beverages','Milk & Baby Beverages'),
 (179,27,1,'Makanan Bayi','','',''),
 (180,28,1,'Vitamin Bayi','','',''),
 (181,27,2,'Baby food','','',''),
 (182,28,2,'Baby Vitamins','','',''),
 (183,29,1,'Peralatan Makan & Minum','','',''),
 (184,30,1,'Perlengkapan Menyusui','','',''),
 (185,31,1,'Pengolah Makanan','','',''),
 (186,31,2,'Food Processing','','',''),
 (187,30,2,'Breastfeeding Supplies','','',''),
 (188,29,2,'Eating & Drinking Equipment','','',''),
 (189,32,1,'Pakaian Anak Laki (2-12 tahun)','','','');
INSERT INTO `category_description` (`ids`,`category_id`,`language_id`,`category_name`,`description`,`meta_description`,`meta_keyword`) VALUES 
 (190,33,1,'Pakaian Anak Perempuan (2-12 tahun)','','',''),
 (191,34,1,'Pakaian Bayi (0-2 tahun)','','',''),
 (192,32,2,'Boy Clothes (2-12 years old)','','',''),
 (193,33,2,'Girl Clothing (2-12 years old)','','',''),
 (194,34,2,'Baby Clothes (0-2 years old)','','','');
/*!40000 ALTER TABLE `category_description` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`category_path`
--

DROP TABLE IF EXISTS `category_path`;
CREATE TABLE `category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`category_path`
--

/*!40000 ALTER TABLE `category_path` DISABLE KEYS */;
INSERT INTO `category_path` (`category_id`,`path_id`,`level`) VALUES 
 (1,1,1),
 (1,2,0),
 (2,2,0),
 (3,3,0),
 (15,15,0),
 (16,16,0),
 (17,17,0),
 (18,18,0),
 (19,18,0),
 (19,19,1),
 (20,18,0),
 (20,20,1),
 (21,16,0),
 (21,21,1),
 (22,16,0),
 (22,22,1),
 (23,15,0),
 (23,23,1),
 (24,15,0),
 (24,24,1),
 (25,15,0),
 (25,25,1),
 (26,18,0),
 (26,26,1);
/*!40000 ALTER TABLE `category_path` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `currency` float NOT NULL,
  `code` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `standart` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`currency`
--

/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` (`id`,`name`,`currency`,`code`,`symbol`,`standart`) VALUES 
 (1,'TL',1,'TL','₺',1),
 (2,'Euro',0.353,'EUR','€',0);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`extension`
--

DROP TABLE IF EXISTS `extension`;
CREATE TABLE `extension` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `loadpage` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`extension`
--

/*!40000 ALTER TABLE `extension` DISABLE KEYS */;
INSERT INTO `extension` (`id`,`name`,`type`,`loadpage`) VALUES 
 (1,'Paypal','payment','paypal'),
 (2,'Bank Transfer / EFT','payment','banktransfer');
/*!40000 ALTER TABLE `extension` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `flag` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `default` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`language`
--

/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` (`id`,`language_name`,`file_name`,`flag`,`code`,`default`) VALUES 
 (1,'Indonesia','indonesia','http://www.sanmak.com.tr/img/trFlagBig.png','tr',''),
 (2,'English','english','http://www.sanmak.com.tr/img/enFlagBig.png','en','1');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`modules`
--

/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` (`id`,`name`,`details`,`type`,`product_id`,`rank`) VALUES 
 (1,'Slider','','slide',1,1),
 (2,'Slider','','slide',2,2),
 (3,'Most Sell Products','','sell',3,2),
 (4,'Most Sell Products','','sell',4,1),
 (5,'Populer Products','','popular',5,1),
 (6,'Populer Products','','popular',6,2),
 (16,'Slider','','slide',5,3),
 (17,'Most Sell Products','','sell',7,3),
 (18,'Populer Products','','popular',2,3),
 (21,'Most Sell Products','','sell',0,0),
 (22,'Slider','','slide',0,4);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`option`
--

DROP TABLE IF EXISTS `option`;
CREATE TABLE `option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_type` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`option`
--

/*!40000 ALTER TABLE `option` DISABLE KEYS */;
INSERT INTO `option` (`id`,`option_type`,`rank`) VALUES 
 (1,'selectbox',1),
 (2,'checkbox',2),
 (3,'radio',3),
 (4,'textarea',6),
 (5,'date',5),
 (6,'file',4),
 (7,'input',7);
/*!40000 ALTER TABLE `option` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`option_description`
--

DROP TABLE IF EXISTS `option_description`;
CREATE TABLE `option_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`option_description`
--

/*!40000 ALTER TABLE `option_description` DISABLE KEYS */;
INSERT INTO `option_description` (`id`,`option_id`,`language_id`,`option_name`) VALUES 
 (18,2,1,'Boyut'),
 (17,2,2,'Size'),
 (13,1,2,'Color'),
 (14,1,1,'Renk'),
 (15,2,2,'Gift'),
 (16,2,1,'Hediye');
/*!40000 ALTER TABLE `option_description` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`option_value`
--

DROP TABLE IF EXISTS `option_value`;
CREATE TABLE `option_value` (
  `option_value_row_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `value_name` varchar(255) NOT NULL,
  PRIMARY KEY (`option_value_row_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`option_value`
--

/*!40000 ALTER TABLE `option_value` DISABLE KEYS */;
INSERT INTO `option_value` (`option_value_row_id`,`option_value_id`,`option_id`,`language_id`,`value_name`) VALUES 
 (28,27,15,1,'Anahtarlik'),
 (27,27,15,2,'Keychain'),
 (26,25,15,1,'Çakmak'),
 (25,25,15,2,'Lighter'),
 (24,23,13,1,'Turuncu'),
 (23,23,13,2,'Orange'),
 (22,21,13,1,'Beyaz'),
 (21,21,13,2,'Wheit'),
 (18,17,13,1,'Kirmizi'),
 (17,17,13,2,'Red'),
 (19,19,13,2,'Black'),
 (20,19,13,1,'Siyah'),
 (29,29,17,2,'Large'),
 (30,29,17,1,'Büyük'),
 (31,31,17,2,'Small'),
 (32,31,17,1,'Kücük'),
 (33,33,17,2,'Middle'),
 (34,33,17,1,'Orta');
/*!40000 ALTER TABLE `option_value` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `billing_first_name` varchar(255) NOT NULL,
  `billing_email` varchar(255) NOT NULL,
  `billing_telephone` varchar(255) NOT NULL,
  `billing_address1` varchar(255) NOT NULL,
  `billing_address2` varchar(255) NOT NULL,
  `billing_city` varchar(255) NOT NULL,
  `billing_postcode` int(11) NOT NULL,
  `billing_country` varchar(255) NOT NULL,
  `billing_region` varchar(255) NOT NULL,
  `billing_company` varchar(255) NOT NULL,
  `billing_companyid` varchar(255) NOT NULL,
  `cargo_first_name` varchar(255) NOT NULL,
  `cargo_email` varchar(255) NOT NULL,
  `cargo_telephone` varchar(255) NOT NULL,
  `cargo_address1` varchar(255) NOT NULL,
  `cargo_address2` varchar(255) NOT NULL,
  `cargo_city` varchar(255) NOT NULL,
  `cargo_postcode` int(11) NOT NULL,
  `cargo_country` varchar(255) NOT NULL,
  `cargo_region` varchar(255) NOT NULL,
  `cargo_type` int(11) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `currency_symbol` varchar(255) NOT NULL,
  `currency_currency` float NOT NULL,
  `status` int(11) NOT NULL,
  `comment` text NOT NULL,
  `total` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`order`
--

/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`order_id`,`customer_id`,`billing_first_name`,`billing_email`,`billing_telephone`,`billing_address1`,`billing_address2`,`billing_city`,`billing_postcode`,`billing_country`,`billing_region`,`billing_company`,`billing_companyid`,`cargo_first_name`,`cargo_email`,`cargo_telephone`,`cargo_address1`,`cargo_address2`,`cargo_city`,`cargo_postcode`,`cargo_country`,`cargo_region`,`cargo_type`,`payment_type`,`currency_symbol`,`currency_currency`,`status`,`comment`,`total`,`ip`,`date`) VALUES 
 (33,0,'test','test@test.com','test','test','','test',0,'test','test','test','test','test','test@test.com','test','test','','test',0,'test','test',2,2,'0',0,1,'','2731','78.43.43.36','2015-03-19 23:42:37'),
 (34,0,'jf','aw@mil.co','20606500','jbhjggs','xfchgvhb','gcvbhv',123434,'ctfghv','dxcfgv','sdcfvgbhj','r56tg','jf','aw@mil.co','20606500','jbhjggs','xfchgvhb','gcvbhv',123434,'ctfghv','dxcfgv',2,2,'0',0,1,'','1321','180.242.201.185','2015-05-03 05:59:19'),
 (36,0,'Koray','korayzorluoglu1@hotmail.com','+4917684222401','Eisenbahn str. 28','','Steinen',79585,'test','Deutschland','','Herr','Koray','korayzorluoglu1@hotmail.com','+4917684222401','Eisenbahn str. 28','','Steinen',79585,'test','Deutschland',1,2,'€',0.353,1,'','1432','78.43.43.56','2015-05-12 22:24:59');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `options` varchar(255) NOT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`order_detail`
--

/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` (`oid`,`order_id`,`product_id`,`count`,`options`) VALUES 
 (25,33,4,1,'36'),
 (26,33,4,1,'39,40'),
 (27,34,4,1,''),
 (30,36,4,1,''),
 (31,36,3,1,'');
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`page`
--

/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` (`id`,`page_name`) VALUES 
 (1,'Deneme');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`page_description`
--

DROP TABLE IF EXISTS `page_description`;
CREATE TABLE `page_description` (
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `meta_tags` text NOT NULL,
  `meta_keys` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`page_description`
--

/*!40000 ALTER TABLE `page_description` DISABLE KEYS */;
INSERT INTO `page_description` (`page_id`,`language_id`,`name`,`details`,`meta_tags`,`meta_keys`) VALUES 
 (1,1,'Deneme Sayfa','Deneme sayfa icerik alani...','Deneme sayfa icerik alani...','Deneme sayfa icerik alani...'),
 (1,2,'Test Page','Test Page detail is here..','Test Page detail is here..','Test Page detail is here..');
/*!40000 ALTER TABLE `page_description` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`,`category_id`,`price`,`stock`,`image`,`url`,`rank`) VALUES 
 (1,'15',1500,15,'upload/files/images/b.jpg','product/1/test_slider_product_1.html',0),
 (2,'2',1300,55,'upload/files/images/a.jpg','product/2/slider-urun2.html',2),
 (3,'3',111,1,'upload/files/images/e.jpg','product/3/most-sell-product.html',0),
 (4,'2',1321,22,'upload/files/images/f.jpg','product/4/most-sell-product2.html',0),
 (5,'3',123,2,'upload/files/images/c.jpg','product/5/most-popular-product1.html',0),
 (6,'3',532,123,'upload/files/images/g.jpg','product/6/most-popular-product2.html',0),
 (7,'3',22,1,'upload/files/images/h.jpg','product/7/test.html',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`product_description`
--

DROP TABLE IF EXISTS `product_description`;
CREATE TABLE `product_description` (
  `description_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `meta_tags` text NOT NULL,
  `meta_keys` text NOT NULL,
  PRIMARY KEY (`description_id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`product_description`
--

/*!40000 ALTER TABLE `product_description` DISABLE KEYS */;
INSERT INTO `product_description` (`description_id`,`product_id`,`language_id`,`name`,`details`,`meta_tags`,`meta_keys`) VALUES 
 (45,2,1,'Deneme Slayt Urunu2','Türkçe Lorem Ipsum, tasarım yaparken \"burada metin olacak\" şeklinde yinelemeler yerine Türkçe\'ye benzer şekilde anlamsız yazılar, lorem ipsum dolar sit amet, lorem ipsut text üretir. Böylece dikkatler tasarım üzerinde yoğunlaşmış olur, tasarım doğal görünür. ','urun, 2,','urun, 2,'),
 (46,2,2,'Test Slider Product 2','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','product, 2,','product, 2'),
 (81,3,2,'Test Most Sell Product 1','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','product, 3,','product, 3');
INSERT INTO `product_description` (`description_id`,`product_id`,`language_id`,`name`,`details`,`meta_tags`,`meta_keys`) VALUES 
 (82,3,1,'Cok Satilan Urun 1','<p>T&uuml;rk&ccedil;e Lorem Ipsum, tasarım yaparken \"burada metin olacak\" şeklinde yinelemeler yerine T&uuml;rk&ccedil;e\'ye benzer şekilde anlamsız yazılar, lorem ipsum dolar sit amet, lorem ipsut text &uuml;retir. B&ouml;ylece dikkatler tasarım &uuml;zerinde yoğunlaşmış olur, tasarım doğal g&ouml;r&uuml;n&uuml;r.</p>','urun, 3,','urun, 3,'),
 (83,4,2,'Test Most Sell Product 2','<p>Love Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','product, 4','product, 4'),
 (84,4,1,'Cok Satan Urun 2','<p>T&uuml;rk&ccedil;e Lorem Ipsum, tasarım yaparken \"burada metin olacak\" şeklinde yinelemeler yerine T&uuml;rk&ccedil;e\'ye benzer şekilde anlamsız yazılar, lorem ipsum dolar sit amet, lorem ipsut text &uuml;retir. B&ouml;ylece dikkatler tasarım &uuml;zerinde yoğunlaşmış olur, tasarım doğal g&ouml;r&uuml;n&uuml;r.</p>','urun, 4,','urun, 4,');
INSERT INTO `product_description` (`description_id`,`product_id`,`language_id`,`name`,`details`,`meta_tags`,`meta_keys`) VALUES 
 (85,5,2,'Popular Product 1','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','',''),
 (86,5,1,'Populer Ürün 1','<p>T&uuml;rk&ccedil;e Lorem Ipsum, tasarım yaparken \"burada metin olacak\" şeklinde yinelemeler yerine T&uuml;rk&ccedil;e\'ye benzer şekilde anlamsız yazılar, lorem ipsum dolar sit amet, lorem ipsut text &uuml;retir. B&ouml;ylece dikkatler tasarım &uuml;zerinde yoğunlaşmış olur, tasarım doğal g&ouml;r&uuml;n&uuml;r.</p>','',''),
 (87,6,2,'Popular Product 2','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','','');
INSERT INTO `product_description` (`description_id`,`product_id`,`language_id`,`name`,`details`,`meta_tags`,`meta_keys`) VALUES 
 (88,6,1,'Populer Ürün 2','<p>T&uuml;rk&ccedil;e Lorem Ipsum, tasarım yaparken \"burada metin olacak\" şeklinde yinelemeler yerine T&uuml;rk&ccedil;e\'ye benzer şekilde anlamsız yazılar, lorem ipsum dolar sit amet, lorem ipsut text &uuml;retir. B&ouml;ylece dikkatler tasarım &uuml;zerinde yoğunlaşmış olur, tasarım doğal g&ouml;r&uuml;n&uuml;r.</p>','deneme',''),
 (113,7,2,'TEST','<p><em>&nbsp;test description ist here,&nbsp;test description ist here,&nbsp;test description ist here,&nbsp;test description ist here,</em></p>\n','TEST','TEST'),
 (114,7,1,'TEST','<div>\n<h4><em>&nbsp;test description ist here,&nbsp;test description ist here,&nbsp;test description ist here,&nbsp;test description ist here,</em></h4>\n</div>\n','test','TEST'),
 (115,1,2,'Test Slider Product 1','<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n','product, 1,','product, 1'),
 (116,1,1,'Deneme Slayt Urunu 1','<p>T&uuml;rk&ccedil;e Lorem Ipsum, tasarım yaparken</p>\n','urun, 1,','urun, 1,');
/*!40000 ALTER TABLE `product_description` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`product_option`
--

DROP TABLE IF EXISTS `product_option`;
CREATE TABLE `product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`product_option`
--

/*!40000 ALTER TABLE `product_option` DISABLE KEYS */;
INSERT INTO `product_option` (`id`,`product_id`,`option_id`) VALUES 
 (19,2,3),
 (18,4,2),
 (17,1,2);
/*!40000 ALTER TABLE `product_option` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`product_option_value`
--

DROP TABLE IF EXISTS `product_option_value`;
CREATE TABLE `product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `operation` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`product_option_value`
--

/*!40000 ALTER TABLE `product_option_value` DISABLE KEYS */;
INSERT INTO `product_option_value` (`id`,`product_id`,`value_id`,`operation`,`price`) VALUES 
 (36,4,29,'+','66'),
 (35,1,25,'+','22'),
 (33,4,23,'+','11'),
 (34,1,27,'+','11'),
 (32,4,19,'+','55'),
 (31,4,17,'+','44'),
 (30,4,21,'+','33'),
 (41,1,29,'+','22'),
 (40,4,25,'+','1'),
 (39,4,27,'+','22'),
 (38,4,31,'+','11'),
 (37,4,33,'+','22'),
 (42,1,31,'+','11'),
 (43,1,33,'+','16');
/*!40000 ALTER TABLE `product_option_value` ENABLE KEYS */;


--
-- Table structure for table `babyemesh`.`settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_tags` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `babyemesh`.`settings`
--

/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`,`title`,`description`,`meta_tags`,`name`,`owner`,`address`,`email`,`telefon`,`logo`,`language`,`currency`) VALUES 
 (1,'Baby Emesh','koCART Open Source PHP MVC E-Commerce System','koCART, Open Source, PHP E-Commerce, MVC E-Commerce System','Baby Emesh','dena','Cikutra','info@babyemesh.com','+022 123456789','http://www.jolyjokerz.com/upload/files/images/logo.png','2','1');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
