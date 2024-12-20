-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 07:08 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT 'Tên danh mục'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop'),
(3, 'Âm thanh'),
(4, 'Đồng hồ'),
(5, 'Phụ kiện'),
(6, 'Tivi'),
(7, 'Gia dụng');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `product_id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 3, 'Rất đẹp', '2024-12-07 20:21:11', '2024-12-07 20:21:11'),
(2, 1, 1, 3, 'Sản phẩm đẹp', '2024-12-07 13:24:43', '2024-12-07 13:24:43'),
(3, NULL, 1, 3, 'Em đẹp lắm', '2024-12-07 14:44:10', '2024-12-07 14:44:10'),
(4, 3, 1, 30, 'Xịn', '2024-12-08 06:12:25', '2024-12-08 06:12:25'),
(5, 4, 1, 30, 'Xịn', '2024-12-08 12:47:51', '2024-12-08 12:47:51'),
(6, 5, 1, 30, 'Điện thoại', '2024-12-08 17:35:33', '2024-12-08 17:35:33'),
(7, 1, 1, 30, 'Điện thoại xịn', '2024-12-08 17:53:01', '2024-12-08 17:53:01'),
(8, NULL, 13, 30, 'Điện thoại', '2024-12-08 17:56:27', '2024-12-08 17:56:27'),
(9, 8, 13, 30, 'Điện thoại xịn', '2024-12-08 17:56:55', '2024-12-08 17:56:55'),
(10, NULL, 13, 30, 'Cái điện thoại', '2024-12-08 18:32:56', '2024-12-08 18:32:56'),
(11, NULL, 13, 3, 'hihi', '2024-12-08 19:10:26', '2024-12-08 19:10:26'),
(12, NULL, 13, 3, 'test', '2024-12-08 19:31:30', '2024-12-08 19:31:30'),
(13, 8, 13, 3, 'a', '2024-12-08 20:14:42', '2024-12-08 20:14:42'),
(14, 10, 13, 3, 'a', '2024-12-08 20:23:45', '2024-12-08 20:23:45'),
(15, 12, 13, 3, 'a', '2024-12-08 20:28:31', '2024-12-08 20:28:31'),
(16, 11, 13, 3, 'a', '2024-12-08 20:28:57', '2024-12-08 20:28:57'),
(17, 8, 1, 30, 'Điện thoại xịn1', '2024-12-08 20:30:10', '2024-12-08 20:30:10'),
(18, NULL, 13, 3, 'vinh', '2024-12-10 13:53:51', '2024-12-10 13:53:51'),
(19, NULL, 13, 3, 'an vinh', '2024-12-11 04:54:54', '2024-12-11 04:54:54'),
(20, NULL, 1, 3, 'hihi', '2024-12-11 05:13:15', '2024-12-11 05:13:15'),
(21, NULL, 14, 3, 'xin chào', '2024-12-11 09:30:54', '2024-12-11 09:30:54'),
(22, NULL, 13, 30, 'Cái điện thoại', '2024-12-11 09:33:52', '2024-12-11 09:33:52'),
(23, NULL, 14, 3, 'hihi', '2024-12-11 09:41:31', '2024-12-11 09:41:31'),
(24, NULL, 15, 3, 'xin chào', '2024-12-11 09:45:56', '2024-12-11 09:45:56'),
(25, NULL, 15, 3, 'xinj', '2024-12-11 09:47:20', '2024-12-11 09:47:20'),
(26, 24, 15, 3, 'hihi', '2024-12-11 09:48:32', '2024-12-11 09:48:32'),
(27, 24, 15, 3, 'hi', '2024-12-11 09:48:56', '2024-12-11 09:48:56'),
(28, NULL, 1, 3, 'an đăng vinh', '2024-12-11 13:26:46', '2024-12-11 13:26:46'),
(29, 28, 1, 3, 'câm', '2024-12-11 13:26:53', '2024-12-11 13:26:53'),
(30, NULL, 1, 3, 'Hoàng anh', '2024-12-12 19:52:24', '2024-12-12 19:52:24'),
(31, 30, 1, 3, 'chưa sửa', '2024-12-12 19:52:34', '2024-12-12 19:52:34'),
(32, NULL, 2, 3, 'câm', '2024-12-13 05:40:28', '2024-12-13 05:40:28'),
(33, 1, 1, 3, 'bách bội', '2024-12-14 14:16:40', '2024-12-14 14:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT '',
  `email` varchar(100) DEFAULT '',
  `phone_number` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(100) DEFAULT '',
  `order_date` datetime DEFAULT current_timestamp(),
  `status` enum('pending','processing','shipped','delivered','cancelled') DEFAULT NULL COMMENT 'Trạng thái đơn hàng',
  `total_money` float DEFAULT NULL CHECK (`total_money` >= 0),
  `shipping_method` varchar(100) DEFAULT NULL,
  `shipping_address` varchar(200) DEFAULT NULL,
  `shipping_date` date DEFAULT NULL,
  `tracking_number` varchar(100) DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `order_date`, `status`, `total_money`, `shipping_method`, `shipping_address`, `shipping_date`, `tracking_number`, `payment_method`, `active`) VALUES
(5, 3, 'Quân Phạm', 'hoangAnh234@gmail.com', '11445547', 'Hà Nội', 'Hàng dễ vỡ', '2024-11-25 00:00:00', 'pending', 307000000, 'express', NULL, '2024-11-25', NULL, 'cod', 1),
(6, 4, 'Quân Phạm', 'hoang234@gmail.com', '11445547', 'Hà Nội', 'dễ vữ', '2024-11-25 00:00:00', 'pending', 280000000, 'express', NULL, '2024-11-25', NULL, 'cod', 1),
(7, 3, 'An Đăng Vinh', 'Vinh123@gmail.com', '012345678', 'Hà Nội', 'Hàng dễ vỡ', '2024-11-30 00:00:00', 'pending', 71000000, 'express', NULL, '2024-11-30', NULL, 'cod', 1),
(8, 6, 'Thành Trung', 'esercitohaki2003@gmail.com', '0943621658', 'Hà Nội', 'Giao nhanh cho taoooo', '2024-12-08 00:00:00', 'pending', 0, 'normal', NULL, '2024-12-08', NULL, 'cod', 1),
(9, 4, 'Thành Trung', 'esercitohaki2003@gmail.com', '0943621658', 'Hà Nội', 'Vinh', '2024-12-11 00:00:00', 'pending', 20000000, 'express', NULL, '2024-12-11', NULL, 'cod', 1),
(10, 4, 'Long', 'esercitohaki2003@gmail.com', '0943621658', 'Hà Nội', 'Vinh', '2024-12-15 00:00:00', 'pending', 20000000, 'express', NULL, '2024-12-15', NULL, 'cod', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL CHECK (`price` >= 0),
  `number_of_products` int(11) DEFAULT NULL CHECK (`number_of_products` > 0),
  `total_money` float DEFAULT NULL CHECK (`total_money` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `number_of_products`, `total_money`) VALUES
(3, 5, 9, 21000000, 1, NULL),
(4, 5, 13, 11000000, 22, NULL),
(5, 5, 1, 20000000, 1, NULL),
(6, 5, 14, 24000000, 1, NULL),
(7, 6, 13, 11000000, 5, NULL),
(8, 6, 23, 45000000, 5, NULL),
(9, 7, 13, 11000000, 5, NULL),
(10, 7, 15, 16000000, 1, NULL),
(11, 9, 1, 20000000, 1, NULL),
(12, 10, 1, 20000000, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(350) DEFAULT NULL COMMENT 'Tên sản phẩm',
  `price` float NOT NULL CHECK (`price` >= 0),
  `thumbnail` varchar(300) DEFAULT '',
  `description` longtext DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `thumbnail`, `description`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Iphone 16', 20000000, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png', 'Iphone 16 siêu xịn', '2024-06-25 09:34:39', '2024-10-24 19:20:23', 1),
(2, 'Samsung Galaxy S23', 18000000, '2fcd1763-e43a-498f-b8a6-ed0893fb92ec_2ba9ca68f312b6aea8200768edd39829.jpg', 'Samsung Galaxy S23 phiên bản mới nhất của điện thoại samsung', '2024-06-26 09:34:39', '2024-12-15 10:32:27', 1),
(3, 'Google Pixel 8', 15000000, '2e500526-0697-4f63-a936-894300171e78_81Mya-dPIOL.jpg', NULL, '2024-06-27 09:34:39', '2024-10-26 12:50:33', 1),
(4, 'Xiaomi Mi 13', 12000000, '55b53b6c-989f-473e-9d22-2e3e94f37813_7f4f41bc638a950ed00ce107cdff5df1.jpg', NULL, '2024-06-28 09:34:39', '2024-10-26 12:53:44', 1),
(5, 'OnePlus 11', 17000000, 'cca8d9b8-e75b-4cfe-8eff-7a59a7f3bba7_OnePlus-11-5g.png', NULL, '2024-06-29 09:34:39', '2024-11-22 05:40:07', 1),
(6, 'Sony Xperia 1 V', 22000000, 'fd3fc067-c79a-47dd-abe6-2eba28d9b871_sony-xperia-1-v-at-t-compatible-v0-j7ihokbkf1bb1.jpg', NULL, '2024-06-30 09:34:39', '2024-06-30 09:34:39', 1),
(7, 'Oppo Find X5', 19000000, '7bd240f7-a498-49b3-a8ea-33f1aa95db4b_baize____product_images___back___black_23_rgb_20220106_adbae65f166f4193bce25c19f6c36942.jpg', NULL, '2024-07-01 09:34:39', '2024-07-01 09:34:39', 1),
(8, 'Nokia G400', 9000000, '3b601841-bfec-4ffd-8f04-2d50bf840076_images (1).jpg', NULL, '2024-07-02 09:34:39', '2024-07-02 09:34:39', 1),
(9, 'Huawei P50', 21000000, '34b9cf3c-af00-4f83-b36d-64abf8072a6c_huawei-p50-pocket-2-600x600.jpg', NULL, '2024-07-03 09:34:39', '2024-07-03 09:34:39', 1),
(10, 'Motorola Edge 40', 16000000, '698e3f67-f734-475f-907f-c8b8c430d69e_motorola-edge-40-family-shelf-viva-magenta-5g7mov9k.png', NULL, '2024-07-04 09:34:39', '2024-07-04 09:34:39', 1),
(11, 'Realme GT 3', 13000000, '56677644-05cb-440f-8538-92882f9dee44_Realme-GT-3-anh-minh-hoa.jpeg', NULL, '2024-07-05 09:34:39', '2024-07-05 09:34:39', 1),
(12, 'Vivo X80', 14000000, 'c06f3dae-f059-4933-bb7b-b44e6e46e5a0_vivo-x80-pro-tgdd-1-2-3thucte_1280x1707-800-resize.png', NULL, '2024-07-06 09:34:39', '2024-07-06 09:34:39', 1),
(13, 'ZTE Axon 20', 11000000, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png', NULL, '2024-07-07 09:34:39', '2024-07-07 09:34:39', 1),
(14, 'Asus ROG Phone 6', 24000000, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png', NULL, '2024-07-08 09:34:39', '2024-07-08 09:34:39', 1),
(15, 'HTC U20', 16000000, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png', NULL, '2024-07-09 09:34:39', '2024-07-09 09:34:39', 1),
(16, 'Google Pixel 7a', 14000000, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png', NULL, '2024-07-10 09:34:39', '2024-07-10 09:34:39', 1),
(17, 'Samsung A54', 13000000, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png', NULL, '2024-07-11 09:34:39', '2024-07-11 09:34:39', 1),
(18, 'Infinix Zero Ultra', 10000000, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png', NULL, '2024-07-12 09:34:39', '2024-07-12 09:34:39', 1),
(19, 'Poco X5 Pro', 9000000, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png', NULL, '2024-07-13 09:34:39', '2024-07-13 09:34:39', 1),
(20, 'TCL 30 XE', 8000000, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png', NULL, '2024-07-14 09:34:39', '2024-07-14 09:34:39', 1),
(21, 'MacBook Air M2', 35000000, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png', NULL, '2024-07-15 10:15:22', '2024-07-15 10:15:22', 2),
(22, 'Dell XPS 13', 40000000, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png', NULL, '2024-07-16 10:15:22', '2024-07-16 10:15:22', 2),
(23, 'Lenovo ThinkPad X1 Carbon', 45000000, '2fcd1763-e43a-498f-b8a6-ed0893fb92ec_2ba9ca68f312b6aea8200768edd39829.jpg', NULL, '2024-07-17 10:15:22', '2024-07-17 10:15:22', 2),
(24, 'HP Spectre x360', 42000000, NULL, NULL, '2024-07-18 10:15:22', '2024-07-18 10:15:22', 2),
(25, 'Asus ZenBook 14', 38000000, NULL, NULL, '2024-07-19 10:15:22', '2024-07-19 10:15:22', 2),
(26, 'Acer Swift 5', 30000000, NULL, NULL, '2024-07-20 10:15:22', '2024-07-20 10:15:22', 2),
(27, 'Razer Blade 15', 60000000, NULL, NULL, '2024-07-21 10:15:22', '2024-07-21 10:15:22', 2),
(28, 'Microsoft Surface Laptop 5', 45000000, NULL, NULL, '2024-07-22 10:15:22', '2024-07-22 10:15:22', 2),
(29, 'HP Envy 15', 40000000, NULL, NULL, '2024-07-23 10:15:22', '2024-07-23 10:15:22', 2),
(30, 'Dell G15 Gaming', 35000000, NULL, NULL, '2024-07-24 10:15:22', '2024-07-24 10:15:22', 2),
(31, 'Lenovo Legion 5', 42000000, NULL, NULL, '2024-07-25 10:15:22', '2024-07-25 10:15:22', 2),
(32, 'MSI GS66 Stealth', 55000000, NULL, NULL, '2024-07-26 10:15:22', '2024-07-26 10:15:22', 2),
(33, 'Apple MacBook Pro 14', 48000000, NULL, NULL, '2024-07-27 10:15:22', '2024-07-27 10:15:22', 2),
(34, 'Huawei MateBook 14', 36000000, NULL, NULL, '2024-07-28 10:15:22', '2024-07-28 10:15:22', 2),
(35, 'Asus VivoBook 15', 28000000, NULL, NULL, '2024-07-29 10:15:22', '2024-07-29 10:15:22', 2),
(36, 'Lenovo IdeaPad 3', 25000000, NULL, NULL, '2024-07-30 10:15:22', '2024-07-30 10:15:22', 2),
(37, 'Toshiba Dynabook', 22000000, NULL, NULL, '2024-07-31 10:15:22', '2024-07-31 10:15:22', 2),
(38, 'Acer Aspire 5', 23000000, NULL, NULL, '2024-08-01 10:15:22', '2024-08-01 10:15:22', 2),
(39, 'Fujitsu Lifebook', 27000000, NULL, NULL, '2024-08-02 10:15:22', '2024-08-02 10:15:22', 2),
(40, 'Sony WH-1000XM5', 8000000, NULL, NULL, '2024-08-03 12:45:33', '2024-08-03 12:45:33', 3),
(41, 'Bose QuietComfort 45', 9000000, NULL, NULL, '2024-08-04 12:45:33', '2024-08-04 12:45:33', 3),
(42, 'JBL Charge 5', 3000000, NULL, NULL, '2024-08-05 12:45:33', '2024-08-05 12:45:33', 3),
(43, 'Apple AirPods Pro', 6000000, NULL, NULL, '2024-08-06 12:45:33', '2024-08-06 12:45:33', 3),
(44, 'Sennheiser HD 450BT', 7000000, NULL, NULL, '2024-08-07 12:45:33', '2024-08-07 12:45:33', 3),
(45, 'Beats Studio3', 6500000, NULL, NULL, '2024-08-08 12:45:33', '2024-08-08 12:45:33', 3),
(46, 'Anker Soundcore Life Q30', 4000000, NULL, NULL, '2024-08-09 12:45:33', '2024-08-09 12:45:33', 3),
(47, 'Marshall Major IV', 5000000, NULL, NULL, '2024-08-10 12:45:33', '2024-08-10 12:45:33', 3),
(48, 'Bowers & Wilkins PX7', 12000000, NULL, NULL, '2024-08-11 12:45:33', '2024-08-11 12:45:33', 3),
(49, 'Plantronics BackBeat Go 810', 3500000, NULL, NULL, '2024-08-12 12:45:33', '2024-08-12 12:45:33', 3),
(50, 'Bang & Olufsen Beoplay H4', 15000000, NULL, NULL, '2024-08-13 12:45:33', '2024-08-13 12:45:33', 3),
(51, 'Audio-Technica ATH-M50x', 7500000, NULL, NULL, '2024-08-14 12:45:33', '2024-08-14 12:45:33', 3),
(52, 'Focal Listen Wireless', 9000000, NULL, NULL, '2024-08-15 12:45:33', '2024-08-15 12:45:33', 3),
(53, 'Sony SRS-XB23', 3000000, NULL, NULL, '2024-08-16 12:45:33', '2024-08-16 12:45:33', 3),
(54, 'Ultimate Ears Wonderboom 2', 2000000, NULL, NULL, '2024-08-17 12:45:33', '2024-08-17 12:45:33', 3),
(55, 'Logitech Z313 Speaker System', 2500000, NULL, NULL, '2024-08-18 12:45:33', '2024-08-18 12:45:33', 3),
(56, 'Edifier R980T', 3000000, NULL, NULL, '2024-08-19 12:45:33', '2024-08-19 12:45:33', 3),
(57, 'Klipsch R-15PM', 8000000, NULL, NULL, '2024-08-20 12:45:33', '2024-08-20 12:45:33', 3),
(58, 'Razer Nommo Chroma', 6000000, NULL, NULL, '2024-08-21 12:45:33', '2024-08-21 12:45:33', 3),
(59, 'Apple Watch Series 9', 12000000, NULL, NULL, '2024-08-22 14:18:50', '2024-08-22 14:18:50', 4),
(60, 'Samsung Galaxy Watch 6', 10000000, NULL, NULL, '2024-08-23 14:18:50', '2024-08-23 14:18:50', 4),
(61, 'Garmin Forerunner 255', 9000000, NULL, NULL, '2024-08-24 14:18:50', '2024-08-24 14:18:50', 4),
(62, 'Fossil Gen 6', 7000000, NULL, NULL, '2024-08-25 14:18:50', '2024-08-25 14:18:50', 4),
(63, 'Fitbit Versa 4', 6000000, NULL, NULL, '2024-08-26 14:18:50', '2024-08-26 14:18:50', 4),
(64, 'TicWatch Pro 5', 8000000, NULL, NULL, '2024-08-27 14:18:50', '2024-08-27 14:18:50', 4),
(65, 'Amazfit GTR 4', 5000000, NULL, NULL, '2024-08-28 14:18:50', '2024-08-28 14:18:50', 4),
(66, 'Suunto 9 Peak', 11000000, NULL, NULL, '2024-08-29 14:18:50', '2024-08-29 14:18:50', 4),
(67, 'Withings Steel HR', 7000000, NULL, NULL, '2024-08-30 14:18:50', '2024-08-30 14:18:50', 4),
(68, 'Huawei Watch GT 3', 8000000, NULL, NULL, '2024-08-31 14:18:50', '2024-08-31 14:18:50', 4),
(69, 'Citizen Eco-Drive', 6000000, NULL, NULL, '2024-09-01 14:18:50', '2024-09-01 14:18:50', 4),
(70, 'Seiko 5 Automatic', 5000000, NULL, NULL, '2024-09-02 14:18:50', '2024-09-02 14:18:50', 4),
(71, 'Casio G-Shock', 3000000, NULL, NULL, '2024-09-03 14:18:50', '2024-09-03 14:18:50', 4),
(72, 'Fossil Hybrid HR', 4000000, NULL, NULL, '2024-09-04 14:18:50', '2024-09-04 14:18:50', 4),
(73, 'Michael Kors Access', 5000000, NULL, NULL, '2024-09-05 14:18:50', '2024-09-05 14:18:50', 4),
(74, 'TAG Heuer Carrera', 15000000, NULL, NULL, '2024-09-06 14:18:50', '2024-09-06 14:18:50', 4),
(75, 'Rolex Submariner', 20000000, NULL, NULL, '2024-09-07 14:18:50', '2024-09-07 14:18:50', 4),
(76, 'Apple AirPods 2', 4000000, NULL, NULL, '2024-09-08 16:25:40', '2024-09-08 16:25:40', 5),
(77, 'Samsung Galaxy Buds2', 3500000, NULL, NULL, '2024-09-09 16:25:40', '2024-09-09 16:25:40', 5),
(78, 'Anker Wireless Charger', 2000000, NULL, NULL, '2024-09-10 16:25:40', '2024-09-10 16:25:40', 5),
(79, 'Xiaomi Mi Band 6', 1000000, NULL, NULL, '2024-09-11 16:25:40', '2024-09-11 16:25:40', 5),
(80, 'Logitech M720 Triathlon', 800000, NULL, NULL, '2024-09-12 16:25:40', '2024-09-12 16:25:40', 5),
(81, 'Razer DeathAdder V2', 1200000, NULL, NULL, '2024-09-13 16:25:40', '2024-09-13 16:25:40', 5),
(82, 'Corsair K70 RGB', 2500000, NULL, NULL, '2024-09-14 16:25:40', '2024-09-14 16:25:40', 5),
(83, 'TP-Link Deco X20', 5000000, NULL, NULL, '2024-09-15 16:25:40', '2024-09-15 16:25:40', 5),
(84, 'Logitech Brio Webcam', 3500000, NULL, NULL, '2024-09-16 16:25:40', '2024-09-16 16:25:40', 5),
(85, 'Samsung T7 Portable SSD', 2500000, NULL, NULL, '2024-09-17 16:25:40', '2024-09-17 16:25:40', 5),
(86, 'Bose SoundLink Micro', 3000000, NULL, NULL, '2024-09-18 16:25:40', '2024-09-18 16:25:40', 5),
(87, 'Apple Watch Band Sport', 700000, NULL, NULL, '2024-09-19 16:25:40', '2024-09-19 16:25:40', 5),
(88, 'Anker PowerCore 20100', 900000, NULL, NULL, '2024-09-20 16:25:40', '2024-09-20 16:25:40', 5),
(89, 'DJI Mavic Mini 2 Fly More Combo', 15000000, NULL, NULL, '2024-09-21 16:25:40', '2024-09-21 16:25:40', 5),
(90, 'GoPro HERO10 Black', 12000000, NULL, NULL, '2024-09-22 16:25:40', '2024-09-22 16:25:40', 5),
(91, 'Fitbit Charge 5', 5000000, NULL, NULL, '2024-09-23 16:25:40', '2024-09-23 16:25:40', 5),
(92, 'Xiaomi Smart Band 7', 800000, NULL, NULL, '2024-09-24 16:25:40', '2024-09-24 16:25:40', 5),
(93, 'Philips Hue White and Color Ambiance', 3500000, NULL, NULL, '2024-09-25 16:25:40', '2024-09-25 16:25:40', 5),
(94, 'Anker 511 Charger', 600000, NULL, NULL, '2024-09-26 16:25:40', '2024-09-26 16:25:40', 5),
(95, 'Apple Pencil (2nd Generation)', 3000000, NULL, NULL, '2024-09-27 16:25:40', '2024-09-27 16:25:40', 5),
(96, 'Sony PlayStation DualSense Controller', 2000000, NULL, NULL, '2024-09-28 16:25:40', '2024-09-28 16:25:40', 5),
(97, 'Amazon Echo Dot (4th Gen)', 1200000, NULL, NULL, '2024-09-29 16:25:40', '2024-09-29 16:25:40', 5),
(98, 'Samsung QLED 4K', 25000000, NULL, NULL, '2024-09-30 12:00:00', '2024-09-30 12:00:00', 6),
(99, 'LG OLED C1', 30000000, NULL, NULL, '2024-09-30 12:01:00', '2024-09-30 12:01:00', 6),
(100, 'Sony Bravia X90J', 20000000, NULL, NULL, '2024-09-30 12:02:00', '2024-09-30 12:02:00', 6),
(101, 'TCL 6-Series', 15000000, NULL, NULL, '2024-09-30 12:03:00', '2024-09-30 12:03:00', 6),
(102, 'Hisense U8G', 14000000, NULL, NULL, '2024-09-30 12:04:00', '2024-09-30 12:04:00', 6),
(103, 'Vizio P-Series Quantum', 18000000, NULL, NULL, '2024-09-30 12:05:00', '2024-09-30 12:05:00', 6),
(104, 'Philips Ambilight', 22000000, NULL, NULL, '2024-09-30 12:06:00', '2024-09-30 12:06:00', 6),
(105, 'Panasonic OLED', 27000000, NULL, NULL, '2024-09-30 12:07:00', '2024-09-30 12:07:00', 6),
(106, 'Samsung Frame TV', 23000000, NULL, NULL, '2024-09-30 12:08:00', '2024-09-30 12:08:00', 6),
(107, 'LG NanoCell', 16000000, NULL, NULL, '2024-09-30 12:09:00', '2024-09-30 12:09:00', 6),
(108, 'Sony A8H OLED', 28000000, NULL, NULL, '2024-09-30 12:10:00', '2024-09-30 12:10:00', 6),
(109, 'TCL 5-Series', 11000000, NULL, NULL, '2024-09-30 12:11:00', '2024-09-30 12:11:00', 6),
(110, 'Sharp Aquos', 12000000, NULL, NULL, '2024-09-30 12:12:00', '2024-09-30 12:12:00', 6),
(111, 'Sceptre 4K UHD', 6000000, NULL, NULL, '2024-09-30 12:13:00', '2024-09-30 12:13:00', 6),
(112, 'Insignia Fire TV Edition', 9000000, NULL, NULL, '2024-09-30 12:14:00', '2024-09-30 12:14:00', 6),
(113, 'RCA 4K UHD', 5000000, NULL, NULL, '2024-09-30 12:15:00', '2024-09-30 12:15:00', 6),
(114, 'Westinghouse 4K UHD', 7000000, NULL, NULL, '2024-09-30 12:16:00', '2024-09-30 12:16:00', 6),
(115, 'Philips 4K UHD', 8000000, NULL, NULL, '2024-09-30 12:17:00', '2024-09-30 12:17:00', 6),
(116, 'Vizio D-Series', 4000000, NULL, NULL, '2024-09-30 12:18:00', '2024-09-30 12:18:00', 6),
(117, 'Nồi cơm điện Panasonic', 1500000, NULL, NULL, '2024-09-30 14:00:00', '2024-09-30 14:00:00', 7),
(118, 'Máy xay sinh tố Philips', 1000000, NULL, NULL, '2024-09-30 14:01:00', '2024-09-30 14:01:00', 7),
(119, 'Máy lọc không khí Xiaomi', 3000000, NULL, NULL, '2024-09-30 14:02:00', '2024-09-30 14:02:00', 7),
(120, 'Nồi chiên không dầu Philips', 2500000, NULL, NULL, '2024-09-30 14:03:00', '2024-09-30 14:03:00', 7),
(121, 'Máy pha cà phê DeLonghi', 4000000, NULL, NULL, '2024-09-30 14:04:00', '2024-09-30 14:04:00', 7),
(122, 'Tủ lạnh Samsung', 18000000, NULL, NULL, '2024-09-30 14:05:00', '2024-09-30 14:05:00', 7),
(123, 'Máy giặt LG', 12000000, NULL, NULL, '2024-09-30 14:06:00', '2024-09-30 14:06:00', 7),
(124, 'Bếp từ Xiaomi', 3000000, NULL, NULL, '2024-09-30 14:07:00', '2024-09-30 14:07:00', 7),
(125, 'Lò vi sóng Electrolux', 2000000, NULL, NULL, '2024-09-30 14:08:00', '2024-09-30 14:08:00', 7),
(126, 'Nồi áp suất Philips', 2500000, NULL, NULL, '2024-09-30 14:09:00', '2024-09-30 14:09:00', 7),
(127, 'Máy hút bụi Dyson', 7000000, NULL, NULL, '2024-09-30 14:10:00', '2024-09-30 14:10:00', 7),
(128, 'Quạt điều hòa Sunhouse', 4000000, NULL, NULL, '2024-09-30 14:11:00', '2024-09-30 14:11:00', 7),
(129, 'Tivi thông minh LG', 17000000, NULL, NULL, '2024-09-30 14:12:00', '2024-09-30 14:12:00', 7),
(130, 'Máy xay thịt Panasonic', 1200000, NULL, NULL, '2024-09-30 14:13:00', '2024-09-30 14:13:00', 7),
(131, 'Bình thủy điện Sharp', 2500000, NULL, NULL, '2024-09-30 14:14:00', '2024-09-30 14:14:00', 7),
(132, 'Máy nước nóng trực tiếp Panasonic', 3000000, NULL, NULL, '2024-09-30 14:15:00', '2024-09-30 14:15:00', 7),
(133, 'Máy làm sữa đậu nành Unold', 2000000, NULL, NULL, '2024-09-30 14:16:00', '2024-09-30 14:16:00', 7),
(134, 'Bếp điện từ Sanaky', 6000000, NULL, NULL, '2024-09-30 14:17:00', '2024-09-30 14:17:00', 7),
(135, 'Máy làm bánh mì Panasonic', 3000000, NULL, NULL, '2024-09-30 14:18:00', '2024-09-30 14:18:00', 7),
(136, 'Iphone 16 Plus', 22000000, NULL, NULL, '2024-06-25 09:34:39', '2024-06-25 09:34:39', 1),
(137, 'Iphone 15', 15000000, NULL, NULL, '2024-06-25 09:34:39', '2024-06-25 09:34:39', 1),
(138, 'Iphone 16 Pro Max', 35000000, NULL, NULL, '2024-06-25 09:34:39', '2024-06-25 09:34:39', 1),
(139, 'Iphone 15 Pro Max', 18000000, NULL, NULL, '2024-06-25 09:34:39', '2024-06-25 09:34:39', 1),
(140, 'Iphone 15 Plus', 17000000, NULL, NULL, '2024-06-25 09:34:39', '2024-06-25 09:34:39', 1),
(141, 'Iphone 14', 10000000, NULL, NULL, '2024-06-25 09:34:39', '2024-06-25 09:34:39', 1),
(142, 'Iphone 14 Plus', 11000000, NULL, NULL, '2024-06-25 09:34:39', '2024-06-25 09:34:39', 1),
(143, 'Iphone 14 Pro Max', 12000000, NULL, NULL, '2024-06-25 09:34:39', '2024-06-25 09:34:39', 1),
(144, 'Iphone 13', 80000000, NULL, NULL, '2024-06-25 09:34:39', '2024-06-25 09:34:39', 1),
(2608, 'Trăm năm cô đơn', 212, NULL, 'Test thử post product', '2024-12-13 05:56:31', '2024-12-13 05:56:31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_url` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image_url`) VALUES
(2, 1, '5670770f-a81b-4177-bdf8-c11068dd5810_71a65b4dfbea18eb48744bd08f05ef5b.png'),
(3, 1, 'e78354f9-f71c-4bb7-a55d-34f96a579b6f_3ff42e51d5b758bf45e3d1f1bd86970e.jpg'),
(4, 1, '3c4feb62-7ddd-47d2-9ce2-3b0e980a6eed_4da04c02fb17f8f34814b2535cf11cb0.jpg'),
(5, 1, '42a03153-4af4-48df-91d3-07f95c373a81_28e2c391c26d375bf16e617fdfa4a413.jpg'),
(6, 1, '12c49fae-357b-4c01-a8e4-c0882d5c7cb5_254b91b136dc980d44bcde8ee551d72d.jpg'),
(7, 2, '2fcd1763-e43a-498f-b8a6-ed0893fb92ec_2ba9ca68f312b6aea8200768edd39829.jpg'),
(8, 2, 'be5e6bd5-8986-42c2-8f62-c741e2f0767a_3b09eff86b46ebe655031da7a57b9a7f.jpg'),
(9, 2, '4c5b1336-1da0-4e35-846e-42811878d99b_5c9c9f13998f5d75c2256d367fb458cb.jpg'),
(10, 2, 'ef33ae05-d106-4c28-a2d5-6bf99d0d9916_9f234c63844060c649381932ef52272b.jpg'),
(11, 2, 'c6ca416b-cec5-4d64-8e98-3939b528867f_576e8672eba2985142f59f78c499d3c5.jpg'),
(12, 3, '2e500526-0697-4f63-a936-894300171e78_81Mya-dPIOL.jpg'),
(13, 3, '0fcebe8b-fbba-4625-91b9-268def38e29d_375_375.jpeg'),
(14, 3, '07a173a1-bfaa-4235-857c-440af03bb95d_Dien-thoai-Google-Pixel-8-Pro-5G-2023.jpg'),
(15, 3, '38bab407-1359-4a1c-8127-0ca7403f6bd4_dien-thoai-pĩell8.jpg'),
(16, 3, '0cd7846a-afdb-4439-b5fc-faabce35c94e_img-m-river-contents-01-logo.jpg'),
(18, 4, '55b53b6c-989f-473e-9d22-2e3e94f37813_7f4f41bc638a950ed00ce107cdff5df1.jpg'),
(19, 4, 'b4aae1f3-996d-40f5-ae07-c4f18c6b069e_783fec5ccad47732b9eaf84621be564e.jpg'),
(20, 4, '2a6d9e86-59ad-4607-ab4c-e521332e6322_986b8ad1c0cb4d4a4b13b0b4c0ea6558.jpg'),
(21, 4, 'a209ea3a-9ce3-4d26-b3f7-87f3bd789284_c9bc259d09481c89da188ce57f83e75a.jpg'),
(22, 4, 'ceb2d904-c085-4d7c-a34e-0df2558ba665_e421e17e3f5fb518bcd8610e398e9457.jpg'),
(23, 5, 'cca8d9b8-e75b-4cfe-8eff-7a59a7f3bba7_OnePlus-11-5g.png'),
(24, 5, 'e200ba9f-51df-4fde-8fe8-4a820fbd37b9_oneplus-11-jupiter.png'),
(25, 5, '86efbfcd-ddaa-4422-b638-2d337bbfb375_oneplus-11-marble-odyssey.png'),
(26, 5, 'dad04a05-c8e2-4765-be43-8b744df043e3_OnePlus-11-16256GB-Fullbox-den.png'),
(27, 5, '3bbd45d4-4479-4572-8f37-54c95e573a91_OnePlus-11-16256GB-Fullbox-xanh-1.png'),
(29, 6, 'fd3fc067-c79a-47dd-abe6-2eba28d9b871_sony-xperia-1-v-at-t-compatible-v0-j7ihokbkf1bb1.jpg'),
(30, 6, 'eae94f74-34de-4177-aa3e-05aa74950d0c_op-lung-dien-thoai-sony-xperia-1-v-1_1688120873.png'),
(31, 6, 'c4e10016-eaba-489d-a594-76bfa237229d_sony-xperia-1-iv-black-ntsotre-com-vn.jpg'),
(32, 6, 'bf2627ab-82ed-4b23-b0d4-038198cfe63b_EISAAwards_Khaki_grande.jpg'),
(33, 6, '08344485-f588-4402-a87e-bdddefbdafa2_747_ProductPrimary_image.jpg'),
(34, 7, '7bd240f7-a498-49b3-a8ea-33f1aa95db4b_baize____product_images___back___black_23_rgb_20220106_adbae65f166f4193bce25c19f6c36942.jpg'),
(35, 7, 'd775b6e4-9a3d-4001-976c-2f7668369fa2_images.jpg'),
(36, 7, '05e824ad-b2b0-47d9-a7f2-294a6bd63fb4_tren-tay-oppo-find-x5-pro-03.jpg'),
(37, 7, 'bd23856d-48c8-4f37-9423-2e50d5a99599_oppo-find-x5-1-600x600.jpg'),
(38, 7, '3da9f4f6-9186-4671-9cd3-bdb57c6d7a21_findx5-pro.jpg'),
(39, 8, '3b601841-bfec-4ffd-8f04-2d50bf840076_images (1).jpg'),
(40, 8, 'caf052b1-5376-4021-abbd-af5a1769e0b7_images.jpg'),
(41, 8, '9e7c279d-ec92-44f2-a2a5-c231bfb0c926_s-l400.jpg'),
(42, 8, 'f09c6b21-1c85-48ed-9f65-4956e69a0fb6_g400220230627121945.jpg'),
(43, 8, '84d77216-8491-4d72-abd9-8a9e64aff7f1_t_i_xu_ng_12__1_1.png'),
(44, 9, '34b9cf3c-af00-4f83-b36d-64abf8072a6c_huawei-p50-pocket-2-600x600.jpg'),
(45, 9, 'd91320d7-7906-46f4-a60e-f4e9acad7ce9_huawei_p50_series_teaser_press_image.jpg'),
(46, 9, '06f5db54-7005-4b03-9b06-1bed144f6f24_kyn1669774140.jpg'),
(47, 9, '4965f6a9-d6ff-434a-b916-ad1f39b2a383_huawei-p50-pro-600x600.jpg'),
(48, 9, '1ad86a8f-1189-4be6-92be-722a269d1fdd_huawei-p50-600x600.jpg'),
(49, 10, '5917f4ba-ab89-4a67-a007-ec6383cebaeb_images.jpg'),
(50, 10, '9c6c8fe7-8070-4d76-bc70-ae80ad13e7dd_motorola-edge-40-neo-xanh-duong.jpg.jpg'),
(51, 10, '698e3f67-f734-475f-907f-c8b8c430d69e_motorola-edge-40-family-shelf-viva-magenta-5g7mov9k.png'),
(52, 10, '38d18738-eefa-4eac-824e-78c9fd723ba5_edge-40-den_1683708198.jpg.jpg'),
(53, 10, 'b3440caf-3d5b-4df4-8ea1-f88d3b643dc5_71-cbflbufl._ac_uf894,1000_ql80_-7020.jpg'),
(54, 11, '22e4ef01-865a-4676-b63b-a9c6c778520d_2023_2_20_638125011017154648_realme-gt-3-snapdragon-8-gen-3-cover.jpeg'),
(55, 11, '56677644-05cb-440f-8538-92882f9dee44_Realme-GT-3-anh-minh-hoa.jpeg'),
(56, 11, 'f2da64d5-f6ac-4d6d-a57f-078cde608b75_realme-gt-neo-3-hai-phong-2_dc3dc2919d1042989f1b99aa10410a85_1024x1024.jpg'),
(57, 11, '1a8836b2-2484-47dd-b1c6-848bef9947fd_sr66_4_.jpg'),
(58, 11, '26b246c2-b1ce-4db4-a487-2bd9ec3c502b_gt-neo-5_1675953786.jpg'),
(59, 11, '7bee2980-5c45-4756-9d91-425401946399_vivo-x80-pro-tgdd-1-2-3thucte_1280x1707-800-resize.png'),
(60, 12, 'c06f3dae-f059-4933-bb7b-b44e6e46e5a0_vivo-x80-pro-tgdd-1-2-3thucte_1280x1707-800-resize.png'),
(61, 12, 'c697f53f-676c-4d81-a064-eaa1d5ae3ca6_11.jpg'),
(62, 12, 'c6620faf-6292-4ec9-9397-4ce3147c1c8c_images.jpg'),
(63, 12, '6a1cf080-cac5-4429-8234-bb72726ec18d_vivo-x80-xanh-thumb-600x600.jpg'),
(64, 12, 'b9cd3496-0d85-47f7-b8da-030158c716fe_52f20cbbe55ba22163280896f170d876.png');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(11) NOT NULL,
  `provider` varchar(20) NOT NULL COMMENT 'Tên nhà social network',
  `provider_id` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL COMMENT 'Email tài khoản',
  `name` varchar(100) NOT NULL COMMENT 'Tên người dùng',
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `token_type` varchar(50) NOT NULL,
  `expiration_date` datetime DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT '',
  `phone_number` varchar(10) NOT NULL,
  `address` varchar(200) DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `date_of_birth` date DEFAULT NULL,
  `facebook_account_id` int(11) DEFAULT 0,
  `google_account_id` int(11) DEFAULT 0,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `phone_number`, `address`, `password`, `created_at`, `updated_at`, `is_active`, `date_of_birth`, `facebook_account_id`, `google_account_id`, `role_id`) VALUES
(3, 'Quân Phạm', '012345678', 'Hồ Chí Minh', '$2a$10$0nkFT8nGql1SduuBxnkPcOHQk.lPmi5oWfDp3qb/vVqyYb4TofezC', '2024-09-28 16:54:03', '2024-12-02 18:12:39', 1, '2002-10-23', 0, 0, 1),
(4, 'Tài khoản admin 1', '0122334455', 'Tài khoản admin', '$2a$10$R2kR.6LeKo8.R/T9uo46reGIBBrYowOqeusJ5OX8qvOUnf.FUOJym', '2024-09-30 16:24:55', '2024-09-30 16:24:55', 1, '2003-10-25', 0, 0, 2),
(5, 'Tài khoản admin 3', '012233441', 'Tài khoản admin', '$2a$10$K/F5kO1WYt96d.zfyPTv1eulqjKt7rvrQJPvOBzmxy7pYQst6WdQ2', '2024-10-05 13:40:50', '2024-12-19 12:36:36', 0, '2003-10-22', 0, 0, 1),
(6, 'Lê Thị Thanh', '0911223344', 'Tài khoản admin', '$2a$10$P5YBdcDMCwVMlKTIAnhIZO.IpqkLO6Aw809eob0BqreZk32q2Pnaa', '2024-10-05 13:40:59', '2024-12-18 14:44:33', 1, '2001-07-18', 0, 0, 1),
(7, 'Ngô Quang Huy', '0933445566', 'Tài khoản admin', '$2a$10$uwuwyX880ozWkFyAf7rNzuLVGsAtcIezHiPNXTpa43CK7Av1z5ATK', '2024-10-05 13:41:06', '2024-10-05 13:41:06', 1, '1997-03-15', 0, 0, 1),
(8, 'Đinh Thị Mai', '0944556677', 'Tài khoản admin', '$2a$10$OUVxJF863Dm28JViQhK0cexUTj9eweggSWFHRJpuCCqR5B0ZoverW', '2024-10-05 13:41:10', '2024-10-05 13:41:10', 1, '2000-11-30', 0, 0, 1),
(9, 'Hoàng Minh Khôi', '0922334455', 'Tài khoản admin', '$2a$10$lxf0ExqGH08e/gKnl0qYIeDrr2p9ZaDsgsNdZ3vSQZkYS0JdBHamm', '2024-10-05 13:41:14', '2024-10-05 13:41:14', 1, '1995-02-18', 0, 0, 1),
(10, 'Phạm Hồng Sơn', '0901122334', 'Tài khoản admin khu vực miền Bắc', '$2a$10$C0/11qqqCHNhlHOkD3BIb.QL8MocYKNWttDxN/.o9BtSdpy0vJNza', '2024-10-05 13:41:36', '2024-10-05 13:41:36', 1, '1994-09-09', 0, 0, 1),
(11, 'Nguyễn Phương Linh', '0933445567', 'Tài khoản admin khu vực miền Trung', '$2a$10$1guYIp8qYFMVS6/INVSORe.omhkgEV3/8/RKC3GgAQ4dPXDBUjYGm', '2024-10-05 13:41:41', '2024-10-05 13:41:41', 1, '2002-04-12', 0, 0, 1),
(12, 'Lê Anh Dũng', '0911556677', 'Tài khoản admin khu vực miền Nam', '$2a$10$T5sgtHf6mOUiN/iiBdjyEuOdyH4xMVNlI4GID092u/hlELgXxxPRW', '2024-10-05 13:41:45', '2024-10-05 13:41:45', 1, '1998-01-22', 0, 0, 1),
(13, 'Võ Thị Thu Hà', '0955778899', 'Tài khoản admin thành phố Hà Nội', '$2a$10$Y5QIthfFVqwv01CwCMGUQuy97Vu8qGYM.hTYoJlwiAU/K1YSZMWSu', '2024-10-05 13:41:49', '2024-10-05 13:41:49', 1, '1996-10-05', 0, 0, 1),
(14, 'Trần Văn Hùng', '0988997766', 'Tài khoản admin thành phố Hồ Chí Minh', '$2a$10$z4SCXuGHrLABHZdckiGtuuqVtYCz1Bq/wCQHu6GhI4865qT7fMgmm', '2024-10-05 13:41:54', '2024-10-05 13:41:54', 0, '2000-08-08', 0, 0, 1),
(15, 'Nguyễn Đức Long', '0977334455', 'Tài khoản admin tỉnh Bình Dương', '$2a$10$Q.1fY2z7ornAdNAr9n3egObuwJzm411NGvqBHumxRg/gKJyVLb.Im', '2024-10-05 13:42:29', '2024-10-05 13:42:29', 1, '1995-11-11', 0, 0, 1),
(16, 'Đặng Thị Hồng', '0944332211', 'Tài khoản admin tỉnh Đà Nẵng', '$2a$10$EhVb120CNFpkWQeKgLfOOuBH9HJumN8GilA5KBBP2DDXw0TiiDTtK', '2024-10-05 13:42:34', '2024-10-05 13:42:34', 1, '2001-06-06', 0, 0, 1),
(17, 'Hoàng Văn Quý', '0922112233', 'Tài khoản admin tỉnh Cần Thơ', '$2a$10$3WbVMRdSa2tHi9njWBKjiegs4aSTKAk77rBmkgvf6GVdgjt.Y7Ykq', '2024-10-05 13:42:39', '2024-10-05 13:42:39', 1, '1999-12-21', 0, 0, 1),
(18, 'Trần Minh Tuấn', '0933556677', 'Tài khoản admin tỉnh Khánh Hòa', '$2a$10$iS1OJGcSqzB04M3GJH8KFeNMApddi9OEH1R6gjuMCCEJeiwxS.faK', '2024-10-05 13:42:43', '2024-10-05 13:42:43', 0, '1993-03-03', 0, 0, 1),
(19, 'Lê Thị Phương Anh', '0988332211', 'Tài khoản admin tỉnh Quảng Ninh', '$2a$10$5uD.Jou2afUwLcv53GUlsunY9qFhfkngbatDkvWLeV6QesZQ8Lwde', '2024-10-05 13:42:47', '2024-10-05 13:42:47', 0, '1998-04-04', 0, 0, 1),
(20, 'Nguyễn Văn Tâm', '0909988776', 'Tài khoản admin huyện Hải Dương', '$2a$10$sNCCdtN7xLuVRK4d//cic.mrQp9RDaJZSOh3gjwl.xuU.gwaRLJsu', '2024-10-05 13:43:07', '2024-10-05 13:43:07', 0, '1994-02-20', 0, 0, 1),
(21, 'Trần Thanh Bình', '0933223344', 'Tài khoản admin tỉnh Lạng Sơn', '$2a$10$nTea22bLhGyfcvBf/wgA5uNhhoRLwCSL8uV3Suu2CdGX8aXJB.Pha', '2024-10-05 13:43:11', '2024-10-05 13:43:11', 0, '1995-07-19', 0, 0, 1),
(22, 'Lê Văn Khải', '0911445566', 'Tài khoản admin thành phố Nha Trang', '$2a$10$1/ntEenjTfcrh.WijuY8pOPSY7meZWkD4WW/N3Ug.3SA3/l7XG6VW', '2024-10-05 13:43:17', '2024-10-05 13:43:17', 0, '1992-10-30', 0, 0, 1),
(23, 'Vũ Thị Minh', '0977665544', 'Tài khoản admin tỉnh Bắc Ninh', '$2a$10$kLn5a.WoVaIMZfXwPdGVF.agboD1IxjRd9aRfL/X38kOu45qek/Bi', '2024-10-05 13:43:24', '2024-10-05 13:43:24', 0, '1996-09-09', 0, 0, 1),
(24, 'Ngô Quốc Đạt', '0944556678', 'Tài khoản admin tỉnh Hưng Yên', '$2a$10$BpwX96bKWfJgp8X2/zbQYOvSIkSV41O/vlTHBz6u938TMd5XSFUfa', '2024-10-05 13:43:30', '2024-10-05 13:43:30', 0, '1991-11-12', 0, 0, 1),
(25, 'nguyen van test', '11223344', 'dc 123', '$2a$10$CtCrknk5s6DkTb9io3Woi.PjuTZeNsfJi6qDbaebqC.3L5GIjmyIi', '2024-10-10 20:37:53', '2024-10-10 20:37:53', 0, '2006-10-10', 0, 0, 1),
(26, 'Quân Phạm', '0943621658', 'Hà Nội', '$2a$10$VrI22mK5kOeVHKeR9hNtZen/oR.7K.IcYF9vk3Gx6DXEdvGUOTm/W', '2024-11-24 09:09:54', '2024-11-24 09:09:54', 1, '2003-09-10', 0, 0, 2),
(27, 'Phạm Công Quân', '0123456799', 'Hà Nội', '$2a$10$tN0Hs9R0i1oBfFuTu2alZurEToi7A7eWSm5ixTz9PcuRuEelxIabm', '2024-11-30 06:56:17', '2024-11-30 06:56:17', 1, '2003-10-09', 0, 0, 1),
(28, 'Quân', '0987654322', 'Thanh Hoá', '$2a$10$sKIhjgZJr.jxrgVwc4yuveKF9/4ZUUJKnyq8iDoUPlu8EogGVgURq', '2024-11-30 07:05:05', '2024-11-30 07:05:05', 1, '2003-10-09', 0, 0, 1),
(29, 'Quân', '0987654311', 'Thanh Hoá', '$2a$10$AidvVlR9HVqUpaCaPQ5ZkeKagg12OzCaRd7RoH6UhdkvdvhS4prti', '2024-11-30 07:08:18', '2024-11-30 07:08:18', 1, '2003-10-09', 0, 0, 1),
(30, 'Quân Phạm', '0112233445', 'Thiệu Tiến', '$2a$10$9OQZS5jaZ/YxSkU36RRfS.pSc1Yt0S9Irt06Lcz2EIDxpy1djq6ta', '2024-12-08 06:11:07', '2024-12-08 06:11:07', 1, '2002-06-13', 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `comments_ibfk_3` (`parent_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2609;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
