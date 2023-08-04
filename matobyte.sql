-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 06:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matobyte`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `quantity` int(5) NOT NULL,
  `product_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_details` longtext NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `stoke` int(11) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_details`, `product_image`, `product_price`, `stoke`, `sell_price`, `create_time`) VALUES
(3, 'Rama Jordan', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a715b01bbb93.69282232.jpg', 683, 831, 175, '2023-07-06 19:27:44'),
(4, 'Tucker Cooke', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a715d246e1d0.75352459.jpg', 581, 789, 914, '2023-07-06 19:28:18'),
(5, 'Cynthia Fox', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a715e17f1085.94762290.jpg', 330, 352, 602, '2023-07-06 19:28:33'),
(6, 'Germaine Rivera', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a715efb0f875.91347773.jpg', 327, 870, 445, '2023-07-06 19:28:47'),
(7, 'Drake Parrish', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a71601d59975.55670809.jpg', 550, 272, 545, '2023-07-06 19:29:05'),
(8, 'Elvis Solis', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a716118d0fc0.31050481.jpg', 799, 690, 42, '2023-07-06 19:29:21'),
(9, 'Macon Pittman', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a7161ecca8e5.95439300.jpg', 830, 424, 614, '2023-07-06 19:29:34'),
(10, 'Kasper Prince', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a71633827084.39723402.jpg', 468, 673, 136, '2023-07-06 19:29:55'),
(11, 'Nissim Brooks', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a7165a63e811.37129874.jpg', 130, 528, 956, '2023-07-06 19:30:34'),
(12, 'Alden Dunlap', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a71667366005.33314664.jpg', 771, 666, 464, '2023-07-06 19:30:47'),
(13, 'Thane Britt', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a7167ca59925.11658422.jpg', 279, 911, 357, '2023-07-06 19:31:08'),
(14, 'Abra Robbins', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a7168aca7cf4.80153274.jpg', 889, 344, 419, '2023-07-06 19:31:22'),
(15, 'Laith Bauer', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a7169614ef68.84434591.jpg', 27, 318, 43, '2023-07-06 19:31:34'),
(16, 'Sheila Huber', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a716a3d10ec2.73451516.jpg', 386, 412, 951, '2023-07-06 19:31:47'),
(17, 'Lucian Meadows', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a716b1f0d851.37603500.jpg', 29, 481, 980, '2023-07-06 19:32:01'),
(18, 'Slade Woodward', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', '64a716bf5f3b83.67287743.jpg', 629, 537, 902, '2023-07-06 19:32:15'),
(19, 'Madaline George', 'hello, world!', '64a72048c3e884.32548923.jpg', 551, 53, 436, '2023-07-06 20:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(20) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `profile_pic`, `role`, `password`, `create_date`) VALUES
(3, 'Md Moshiur Rahman', 'moshiur.cmt.niet@gmail.com', NULL, '', '', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2023-07-06 15:17:43'),
(4, 'Abdul Hai AJ', '98haiabdul@gmail.com', NULL, '', '', 'customer', '25d55ad283aa400af464c76d713c07ad', '2023-06-02 04:01:26'),
(5, 'Brianna Koch', 'gulyv@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:15'),
(6, 'Bevis Melendez', 'qalixul@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:20'),
(7, 'Palmer Richardson', 'dite@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:23'),
(8, 'Ciaran Dunn', 'joqypehoju@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:25'),
(9, 'Thor Mullen', 'boxice@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:28'),
(10, 'Kelly Fry', 'mupu@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:30'),
(11, 'Ali Osborn', 'xydarygyke@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:33'),
(12, 'Darius Butler', 'wuvabyn@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:36'),
(13, 'Irma Herrera', 'zodowerucy@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:38'),
(14, 'Hilda Mayo', 'vehadu@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:40'),
(15, 'Jason Trevino', 'zalo@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:43'),
(16, 'Melissa Hansen', 'favuge@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:46'),
(17, 'Alexandra Barker', 'nisateju@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:48'),
(18, 'Zachery Gilmore', 'loci@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:40:50'),
(19, 'Otto Gibbs', 'rydebikud@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:06'),
(20, 'Karleigh Bell', 'fedysyto@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:08'),
(21, 'Ella Moody', 'saponi@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:11'),
(22, 'Patrick Short', 'gine@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:13'),
(23, 'Brittany Gomez', 'fatido@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:15'),
(24, 'Ori Riddle', 'kopifafyke@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:17'),
(25, 'Ariana Hutchinson', 'lewyvuzama@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:20'),
(26, 'Lewis Wong', 'guciku@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:23'),
(27, 'Hanae Whitfield', 'zabuvi@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:25'),
(28, 'Kyra Mendez', 'qubecixoku@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:27'),
(29, 'Macon Blanchard', 'zecuzuj@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:30'),
(30, 'Melodie Blackburn', 'lowewecex@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:32'),
(31, 'Nerea Winters', 'zelurycuc@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:34'),
(32, 'Adena Goodwin', 'kuhygutixo@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:37'),
(33, 'Ruby Maldonado', 'qivobiqe@mailinator.com', NULL, '', '', 'customer', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-07-06 15:41:40'),
(34, 'Madison Brooks', 'customerid@gmail.com', NULL, '', '', 'customer', 'e10adc3949ba59abbe56e057f20f883e', '2023-07-06 20:04:53'),
(35, 'New Test user', 'test@gmail.com', NULL, '', '', '', 'e10adc3949ba59abbe56e057f20f883e', '2023-08-03 19:23:30'),
(36, 'Graham King', 'qavevy@mailinator.com', NULL, '', '', '', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-08-03 19:30:51'),
(37, 'Kermit Davis', 'nogikitox@mailinator.com', NULL, '', '', '', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-08-03 19:32:48'),
(38, 'Maxine Winters', 'kibaqe@mailinator.com', NULL, '', '', '', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2023-08-03 19:33:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
