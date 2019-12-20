-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 20, 2019 at 03:34 AM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `sweet_corner`
--
CREATE DATABASE IF NOT EXISTS `sweet_corner` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sweet_corner`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `statusId` int(10) UNSIGNED NOT NULL,
  `userId` int(10) UNSIGNED DEFAULT NULL,
  `lastInteraction` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pid`, `statusId`, `userId`, `lastInteraction`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'b909fdd3-17e5-11ea-8574-0242ac120002', 2, NULL, '2019-12-06 05:03:20', '2019-12-06 05:03:20', '2019-12-06 05:03:20', NULL),
(2, '77584d9b-1bc6-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-11 03:29:40', '2019-12-11 03:29:40', '2019-12-11 03:29:40', NULL),
(3, '0df14b50-1bc8-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-11 03:41:02', '2019-12-11 03:41:02', '2019-12-11 03:41:02', NULL),
(4, '0c599a72-1bc9-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-11 03:48:09', '2019-12-11 03:48:09', '2019-12-11 03:48:09', NULL),
(5, '0d6a11df-1bc9-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-11 03:48:11', '2019-12-11 03:48:11', '2019-12-11 03:48:11', NULL),
(6, '11be1157-1bc9-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-11 03:48:18', '2019-12-11 03:48:18', '2019-12-11 03:48:18', NULL),
(7, '0fb30a1f-1bca-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-11 03:55:24', '2019-12-11 03:55:24', '2019-12-11 03:55:24', NULL),
(8, '15c957eb-1bca-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-11 03:55:35', '2019-12-11 03:55:35', '2019-12-11 03:55:35', NULL),
(9, 'b72daf99-1bcc-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-11 04:14:24', '2019-12-11 04:14:24', '2019-12-11 04:14:24', NULL),
(10, 'c7be6ba4-1bcc-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-11 04:14:52', '2019-12-11 04:14:52', '2019-12-11 04:14:52', NULL),
(11, '6a648f98-1d50-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-13 02:29:40', '2019-12-13 02:29:40', '2019-12-13 02:29:40', NULL),
(12, 'cd9fbd73-1d50-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-13 02:32:27', '2019-12-13 02:32:27', '2019-12-13 02:32:27', NULL),
(13, '3dde4cce-1d56-11ea-a9f5-0242ac120002', 2, NULL, '2019-12-13 03:11:23', '2019-12-13 03:11:23', '2019-12-13 03:11:23', NULL),
(14, '0a01c7d1-22d9-11ea-b500-0242ac120002', 2, NULL, '2019-12-20 03:30:15', '2019-12-20 03:30:15', '2019-12-20 03:30:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartItems`
--

CREATE TABLE `cartItems` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `cartId` int(10) UNSIGNED NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartItems`
--

INSERT INTO `cartItems` (`id`, `pid`, `cartId`, `productId`, `quantity`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'b72eb43a-1bcc-11ea-a9f5-0242ac120002', 9, 1, 1, '2019-12-11 04:14:24', '2019-12-11 04:14:24', NULL),
(2, 'c7bf1b77-1bcc-11ea-a9f5-0242ac120002', 10, 1, 1, '2019-12-11 04:14:52', '2019-12-11 04:14:52', NULL),
(3, '6a65d4f0-1d50-11ea-a9f5-0242ac120002', 11, 1, 1, '2019-12-13 02:29:40', '2019-12-13 02:29:40', NULL),
(4, 'cda087e5-1d50-11ea-a9f5-0242ac120002', 12, 1, 1, '2019-12-13 02:32:27', '2019-12-13 02:32:27', NULL),
(5, '3ddf5ca1-1d56-11ea-a9f5-0242ac120002', 13, 1, 1, '2019-12-13 03:11:23', '2019-12-13 03:11:23', NULL),
(6, '95b6aab5-1d5b-11ea-a9f5-0242ac120002', 13, 4, 8, '2019-12-13 03:49:37', '2019-12-13 04:44:49', NULL),
(7, '795eee03-1d63-11ea-a9f5-0242ac120002', 13, 5, 144, '2019-12-13 04:46:06', '2019-12-19 06:18:05', NULL),
(8, '0a032ce6-22d9-11ea-b500-0242ac120002', 14, 1, 2, '2019-12-20 03:30:15', '2019-12-20 03:30:15', NULL),
(9, '1b4c0cfb-22d9-11ea-b500-0242ac120002', 14, 4, 2, '2019-12-20 03:30:44', '2019-12-20 03:30:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cartStatuses`
--

CREATE TABLE `cartStatuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `mid` varchar(39) NOT NULL,
  `name` varchar(63) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cartStatuses`
--

INSERT INTO `cartStatuses` (`id`, `mid`, `name`, `description`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'new', 'New', 'Cart is new and empty', '2019-12-06 04:40:04', '2019-12-06 04:40:04', NULL),
(2, 'active', 'Active', 'Cart has items but the order has not been completed', '2019-12-06 04:40:04', '2019-12-06 04:40:04', NULL),
(3, 'closed', 'Closed', 'The order has been completed and the cart is closed', '2019-12-06 04:40:04', '2019-12-06 04:40:04', NULL),
(4, 'canceled', 'Canceled', 'The order has been canceled and the cart is closed', '2019-12-06 04:40:04', '2019-12-06 04:40:04', NULL),
(5, 'inactive', 'Inactive', 'Cart is no longer the currently active cart, but can be reactivated', '2019-12-06 04:40:04', '2019-12-06 04:40:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `productId` int(10) UNSIGNED NOT NULL,
  `createdById` int(10) UNSIGNED NOT NULL,
  `altText` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `type` enum('full_image','thumbnail') NOT NULL DEFAULT 'full_image',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `pid`, `productId`, `createdById`, `altText`, `name`, `file`, `type`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '440b9a3f-13cc-11ea-8574-0242ac120002', 1, 1, 'Strawberry cupcake', 'Strawberry Delight', 'cupcake_sq_1.jpg', 'full_image', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(2, '440b9c85-13cc-11ea-8574-0242ac120002', 1, 1, 'Strawberry cupcake', 'Strawberry Delight', 'cupcake_sq_1.jpg', 'thumbnail', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(3, '440ba7af-13cc-11ea-8574-0242ac120002', 2, 1, 'Berry cupcake', 'Purple Dream', 'cupcake_sq_2.jpg', 'full_image', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(4, '440bab35-13cc-11ea-8574-0242ac120002', 2, 1, 'Berry cupcake', 'Purple Dream', 'cupcake_sq_2.jpg', 'thumbnail', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(5, '440bb14e-13cc-11ea-8574-0242ac120002', 3, 1, 'Mini strawberry cupcake', 'Mini Berry', 'cupcake_sq_3.jpg', 'full_image', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(6, '440bb207-13cc-11ea-8574-0242ac120002', 3, 1, 'Mini strawberry cupcake', 'Mini Berry', 'cupcake_sq_3.jpg', 'thumbnail', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(7, '440bb2e1-13cc-11ea-8574-0242ac120002', 4, 1, 'Unicorn tear sparkling cupcake', 'Unicorn Tear', 'cupcake_sq_4.jpg', 'full_image', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(8, '440bb3c0-13cc-11ea-8574-0242ac120002', 4, 1, 'Unicorn tear sparkling cupcake', 'Unicorn Tear', 'cupcake_sq_4.jpg', 'thumbnail', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(9, '440bb4a1-13cc-11ea-8574-0242ac120002', 5, 1, 'Red and yellow vanilla cupcake', 'Pearl Rose', 'cupcake_sq_5.jpg', 'full_image', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(10, '440bb579-13cc-11ea-8574-0242ac120002', 5, 1, 'Red and yellow vanilla cupcake', 'Pearl Rose', 'cupcake_sq_5.jpg', 'thumbnail', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(11, '440bb652-13cc-11ea-8574-0242ac120002', 6, 1, 'Silky red cupcake loaded with frosting', 'Red Silk', 'cupcake_sq_6.jpg', 'full_image', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(12, '440bb77a-13cc-11ea-8574-0242ac120002', 6, 1, 'Silky red cupcake loaded with frosting', 'Red Silk', 'cupcake_sq_6.jpg', 'thumbnail', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(13, '440bb8c2-13cc-11ea-8574-0242ac120002', 7, 1, 'Vanilla cupcake with vanilla frosting', 'Vanilla Stack Cake', 'cupcake_sq_7.jpg', 'full_image', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(14, '440bb993-13cc-11ea-8574-0242ac120002', 7, 1, 'Vanilla cupcake with vanilla frosting', 'Vanilla Stack Cake', 'cupcake_sq_7.jpg', 'thumbnail', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(15, '440bbad7-13cc-11ea-8574-0242ac120002', 8, 1, 'Blueberry cupcake piled high with toppings', 'Blueberry Malt Cake', 'cupcake_sq_8.jpg', 'full_image', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(16, '440bbbb2-13cc-11ea-8574-0242ac120002', 8, 1, 'Blueberry cupcake piled high with toppings', 'Blueberry Malt Cake', 'cupcake_sq_8.jpg', 'thumbnail', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(17, '440bbc61-13cc-11ea-8574-0242ac120002', 9, 1, 'Lemon cupcake with piled high lemon frosting', 'Double Lemon', 'cupcake_sq_9.jpg', 'full_image', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL),
(18, '440bbcfd-13cc-11ea-8574-0242ac120002', 9, 1, 'Lemon cupcake with piled high lemon frosting', 'Double Lemon', 'cupcake_sq_9.jpg', 'thumbnail', '2019-11-30 23:51:02', '2019-11-30 23:51:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` char(36) NOT NULL,
  `createdById` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `cost` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pid`, `createdById`, `caption`, `cost`, `description`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, '6145a47a-13cb-11ea-8574-0242ac120002', 1, 'Delicious Strawberry Cupcake', 350, 'These strawberry delights will satisfy both your sweet tooth and those strawberry cravings.', 'Strawberry Delight', '2019-11-30 23:44:41', '2019-11-30 23:44:41', NULL),
(2, '6145a6b8-13cb-11ea-8574-0242ac120002', 1, 'Sweet Berry Cupcake', 200, 'This is the berry cupcake of your dreams, they may be small but pack huge flavor.', 'Purple Dream', '2019-11-30 23:44:41', '2019-11-30 23:44:41', NULL),
(3, '6145b49f-13cb-11ea-8574-0242ac120002', 1, 'Mini Strawberry Cupcake', 225, 'These are a miniature version of our famous Strawberry Delight cupcakes, all the flavor, half the guilt.', 'Mini Berry', '2019-11-30 23:44:41', '2019-11-30 23:44:41', NULL),
(4, '6145b746-13cb-11ea-8574-0242ac120002', 1, 'Unicorn Tear Sparkling Cupcake', 650, 'What do unicorn tears taste like? We don\'t know, but we do know these cupcakes taste better!', 'Unicorn Tear', '2019-11-30 23:44:41', '2019-11-30 23:44:41', NULL),
(5, '6145b828-13cb-11ea-8574-0242ac120002', 1, 'Red and Yellow Rose Vanilla Cupcake', 575, 'Delightful vanilla cupcakes with rose frosting piled high on top.', 'Pearl Rose', '2019-11-30 23:44:41', '2019-11-30 23:44:41', NULL),
(6, '6145b99b-13cb-11ea-8574-0242ac120002', 1, 'Silky Red Cupcake Loaded with Frosting', 350, 'A vanilla cupcake with strawberry silk frosting eloquently piled high with a peach topping.', 'Red Silk', '2019-11-30 23:44:41', '2019-11-30 23:44:41', NULL),
(7, '6145bead-13cb-11ea-8574-0242ac120002', 1, 'Vanilla Cupcake Piled with Vanilla Frosting', 600, 'Not just another vanilla cupcake. Our Vanilla Stack Cake cupcake is stacked with three scoops of vanilla frosting and topped with drizzled vanilla and a delicious cherry.', 'Vanilla Stack Cake', '2019-11-30 23:44:41', '2019-11-30 23:44:41', NULL),
(8, '6145bf4a-13cb-11ea-8574-0242ac120002', 1, 'Blueberry Cupcake Piled High with Toppings', 775, 'A large blueberry cupcake topped with blueberry frosting, chocolate syrup, whip cream, and a sweet cherry. Looks and taste like your favorite blueberry malt.', 'Blueberry Malt Cake', '2019-11-30 23:44:41', '2019-11-30 23:44:41', NULL),
(9, '6145c02e-13cb-11ea-8574-0242ac120002', 1, 'Lemon Cupcake with Piled High Lemon Frosting', 450, 'Lemon, lemon, and more lemon! Love lemon? So do we and our Double Lemon cupcake proves it!', 'Double Lemon', '2019-11-30 23:44:41', '2019-11-30 23:44:41', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartItems`
--
ALTER TABLE `cartItems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartStatuses`
--
ALTER TABLE `cartStatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cartItems`
--
ALTER TABLE `cartItems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cartStatuses`
--
ALTER TABLE `cartStatuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;