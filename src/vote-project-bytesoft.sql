-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2022 at 11:08 AM
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
-- Database: `vote-project-bytesoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `avatar` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `name`, `email`, `password`, `role`, `avatar`, `phone`, `money`, `createdAt`, `updateAt`, `deleteAt`) VALUES
(1, 'hoang', 'hoang@gmail.com', '$2b$08$ebVUQYD/WUvYWvk7ez9RwOrKZI056cEgk3w7aILALKErUAr3hG4r.', 'admin', 'person_1.jpg', '$2b$08$0.lGXLpYxrJMMKMtF1X2MuXZwQEgG8NsR6vy/sI0vLBDW16ljAYZu', 0, '2022-12-07 14:33:33', NULL, NULL),
(2, 'hung', 'hung@gmail.com', '$2b$08$jcqRCwmaGp7zifk1M9b84efBkRgiO.zozrDTdal4UQYkHkcA7t4yu', 'user', 'person_2.jpg', '$2b$08$wArnYvbTX1ERev837pmJgOy.snDd/glIiO1qx6FXjIXX0UQFORSVq', 0, '2022-12-12 15:07:34', NULL, NULL),
(3, 'hang', 'hang@gmail.com', '$2b$08$jcqRCwmaGp7zifk1M9b84efBkRgiO.zozrDTdal4UQYkHkcA7t4yu', 'user', 'img2.png', '$2b$08$TAVlR3f3vf.dvPagvBBrJehsIbUuiWyRWP2./Od8PFt7TvpgxKPEC', 10000, '2022-12-13 23:56:40', NULL, NULL),
(4, 'hoa', 'hoa@gmail.com', '$2b$08$jcqRCwmaGp7zifk1M9b84efBkRgiO.zozrDTdal4UQYkHkcA7t4yu', 'user', 'img2.png', '$2b$08$JHcUEz3pagrFM11ueVc35uVQocVJAkq6ycZYV9FQelAHMAaUTKP8K', 130000, '2022-12-13 23:58:40', NULL, NULL),
(5, 'quynh', 'quynh@gmail.com', '$2b$08$p0pxyBrwRWmm7AsBhbo7kuO5lMnBVzjnYngU3UCT2ISLLoZkjAhXy', 'user', 'team-3.jpg', '$2b$08$ywxxgWUvGCOpAZluxKXrbuMEnzZaQmlp50Nrjp8dk6prEwda4nv8a', 30000, '2022-12-13 23:59:30', NULL, NULL),
(6, 'tien', 'tien@gmail.com', '$2b$08$kn.YthB9RGkWi0HKV9U17OdmgC9bn.qKRrxCarJtSqjYmckijnbQa', 'user', 'team-3.jpg', '$2b$08$d19OWZ2ezIsMY5IN2nca6Ob6gGhjfe3mzR56Y7jww/AUeUSPxH3LS', 1000, '2022-12-14 00:00:25', NULL, NULL),
(7, 'thui', 'thui@gmail.com', '$2b$08$CBdSLiBCrphaOXb1B.phkOMvyMizTeilvV71Ae8e31THsSv.KiExm', 'user', 'team-3.jpg', '$2b$08$.074q4xB3wAd85RNaFN7rufZaqDQu5geKk3m0QGH2vPxuwEVjfObe', 0, '2022-12-22 10:57:16', NULL, NULL),
(8, 'thuy', 'thuy01@gmail.com', '$2b$08$WmekoBZoIjAQ.0xyaMX6fOj2D6H1HI9uChY2jDG3G7bEiBa.lMDEG', 'user', 'team-3.jpg', '$2b$08$RCcLpRJG8AqoX8MTnoKHw.BoegrrJV4lZ1bn07ljWW8gB26tQhbLG', 0, '2022-12-22 15:07:52', NULL, NULL),
(9, 'thuy02', 'thuynguyenminh0303@gmail.com', '$2b$08$A5JHkftoH6AihbR8FV4g3.cUjecv.8SRl5SmZAwiCdXgZxV2fEhBy', 'user', 'team-3.jpg', '$2b$08$95Uy988YTp/z2OBOI0.fS.9ElYSzXXERy2BE9msK7pQXZWRUdau4S', 0, '2022-12-22 23:14:35', NULL, NULL),
(10, 'Văn Lộc', 'locit2003@gmail.com', '$2b$08$uIMxoXSvVKhL7gW8a0I0pefekz1aBFn9aWKZ0jhkJ27Ul3AIx1dju', 'user', 'person_4.jpg', '$2b$08$zkZf/4G3sU6jYX0lRnYCjuBSkj9g1D1yrYDa3CJa40HgDu028D/6q', 400000, '2022-12-23 16:01:11', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `content` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `other` text DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `quantityVote` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL,
  `contestId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `name`, `avatar`, `age`, `content`, `address`, `other`, `phone`, `status`, `quantityVote`, `createdAt`, `updateAt`, `deleteAt`, `contestId`) VALUES
(37, 'Tran Tuyet Nhu', '1671733779347-303854611.jpg', 22, 'Lorem ipsum dolor ', 'Ha Noi', '', '0399999999', 1, 10, '2022-12-14 00:05:26', NULL, NULL, 1),
(38, 'Bui Thi Linh Chi', '1671733799863-427609303.jpg', 23, 'dasdsad', 'Hai Phong', 'SADFGDFSDFSD', '0393939999', 0, 12, '2022-12-14 00:09:26', NULL, NULL, 1),
(39, 'Huynh Pham Thuy Tien', '1671733448470-239326863.jpg', 24, 'ádfghdsfad', 'Bac Ninh', 'SADFGDFSDFSD', '0388888888', 1, 4, '2022-12-14 00:18:17', NULL, NULL, 1),
(40, 'Le Hoang Phuong', '1671733473653-635771834.jpg', 25, 'fsđsfgdhgf', 'Bac Giang', 'SADFGDFSDFSD', '0377777777', 1, 0, '2022-12-14 00:19:10', NULL, NULL, 1),
(41, 'Le Phan Hanh Nguyen', '1671733520562-87965075.jpg', 26, 'dasdsad', 'Lang Son', 'SADFGDFSDFSD', '0366666666', 0, 0, '2022-12-14 00:20:19', NULL, NULL, 6),
(42, 'Le Thao Nhi', '1671733570501-393695332.jpg', 27, 'ádfghdsfad', 'Hai Duong', 'SADFGDFSDFSD', '0355555555', 1, 0, '2022-12-14 00:21:17', NULL, NULL, 6),
(43, 'Le Thi Kieu Nhung', '1671733651662-368496796.jpg', 27, 'ádfghdsfad', 'TP HCM', 'adfrstggfg', '0344444444', 1, 0, '2022-12-14 00:22:15', NULL, NULL, 12),
(44, 'Ly Tu Chi', '1671733687851-530619233.jpg', 22, 'dasdsad', 'Da Nang', 'SADFGDFSDFSD', '0333333333', 1, 0, '2022-12-14 00:23:18', NULL, NULL, 13),
(45, 'Nguyen Thi Phuong Thao', '1671733714772-947395464.jpg', 24, 'ádfghdsfad', 'Quang Ninh', 'adfrstggfg', '0322222222', 0, 0, '2022-12-14 00:24:16', NULL, NULL, 12),
(46, 'Bui Quynh Hoa', '1671732066190-443742053.jpg', 20, 'hoang hon', 'Ha Noi', 'adfrstggfg', '0311111111', 0, 0, '2022-12-14 00:25:35', NULL, NULL, 13),
(47, 'Le Nhu Hoa', '1671733855061-896986696.jpg', 22, 'ádfghdsfad', 'Ha Noi', 'adfrstggfg', '0388889999', 1, 0, '2022-12-14 00:26:52', NULL, NULL, 13),
(48, 'Dang Hoang Nhu Tam', '1671733371331-507317420.jpg', 26, 'ádfghdsfad', 'Bac Ninh', 'adfrstggfg', '0377776666', 1, 1, '2022-12-14 00:27:49', NULL, NULL, 12);

-- --------------------------------------------------------

--
-- Table structure for table `contest`
--

CREATE TABLE `contest` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `last_date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updateAt` datetime DEFAULT NULL,
  `deleteAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contest`
--

INSERT INTO `contest` (`id`, `name`, `start_date`, `last_date`, `status`, `createdAt`, `updateAt`, `deleteAt`) VALUES
(1, 'SPORTWEAR', '2022-12-15 08:37:00', '2022-12-15 08:37:00', 1, '2022-12-08 10:37:39', NULL, NULL),
(6, 'SWIMSUIT', '2022-12-15 17:16:11', '2022-12-15 17:16:11', 1, '2022-12-12 14:16:34', NULL, NULL),
(12, 'NATIONAL COSTUME', '2022-12-28 17:15:00', '2022-12-28 17:15:00', 1, '2022-12-14 00:15:55', NULL, NULL),
(13, 'EVENING GOWN', '2022-12-28 00:17:00', '2022-12-30 00:17:00', 1, '2022-12-14 00:17:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recharge_history`
--

CREATE TABLE `recharge_history` (
  `id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `wait_money` bigint(20) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `accountId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recharge_history`
--

INSERT INTO `recharge_history` (`id`, `status`, `wait_money`, `created_date`, `accountId`) VALUES
(1, 1, 50000, '2022-12-18 20:04:16', 2),
(2, 1, 30000, '2022-12-21 13:36:06', 4),
(3, 1, 30000, '2022-12-21 13:36:13', 4),
(7, 1, 20000, '2022-12-23 02:12:08', 9),
(13, 1, 500000, '2022-12-23 16:02:05', 10);

-- --------------------------------------------------------

--
-- Table structure for table `vote`
--

CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp(),
  `quantityVoted` int(11) NOT NULL,
  `candidateId` int(11) DEFAULT NULL,
  `accId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vote`
--

INSERT INTO `vote` (`id`, `created_time`, `quantityVoted`, `candidateId`, `accId`) VALUES
(3, '2022-12-14 08:58:27', 5, 37, 2),
(4, '2022-12-14 09:00:56', 1, 38, 3),
(5, '2022-12-14 09:01:26', 4, 39, 3),
(6, '2022-12-18 20:04:44', 4, 37, 2),
(7, '2022-12-18 20:05:34', 1, 37, 2),
(8, '2022-12-23 02:12:31', 1, 38, 9),
(9, '2022-12-23 15:55:23', 1, 48, 9),
(10, '2022-12-23 16:08:46', 10, 38, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_4c8f96ccf523e9a3faefd5bdd4` (`email`),
  ADD UNIQUE KEY `IDX_a13e2234cf22b150ea2e72fba6` (`phone`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_759c126824735c83959b8f6ba9` (`phone`),
  ADD KEY `FK_59c404c6cd7b593ba8e7e7ea495` (`contestId`);

--
-- Indexes for table `contest`
--
ALTER TABLE `contest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recharge_history`
--
ALTER TABLE `recharge_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_eacd5330c2881476013c46b3eb6` (`accountId`);

--
-- Indexes for table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_2d7b9fc93f085b1373f3fed397f` (`candidateId`),
  ADD KEY `FK_18c3454b0ed5c8c9eead077c120` (`accId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `contest`
--
ALTER TABLE `contest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `recharge_history`
--
ALTER TABLE `recharge_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidate`
--
ALTER TABLE `candidate`
  ADD CONSTRAINT `FK_59c404c6cd7b593ba8e7e7ea495` FOREIGN KEY (`contestId`) REFERENCES `contest` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `recharge_history`
--
ALTER TABLE `recharge_history`
  ADD CONSTRAINT `FK_eacd5330c2881476013c46b3eb6` FOREIGN KEY (`accountId`) REFERENCES `account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `FK_18c3454b0ed5c8c9eead077c120` FOREIGN KEY (`accId`) REFERENCES `account` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_2d7b9fc93f085b1373f3fed397f` FOREIGN KEY (`candidateId`) REFERENCES `candidate` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
