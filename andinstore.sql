CREATE DATABASE `andinstore`;
--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `code`, `image`, `price`) VALUES
(1, 'Leather Jacket', 'jacket', 'jacketLeather', 'images/img-pro-01.jpg', 7.79),
(2, 'Flower Dress', 'dress', 'dressPatternFlower', 'images/img-pro-02.jpg', 9.79),
(3, 'Channel Bag', 'bag', 'bagChannel', 'images/img-pro-03.jpg', 10.79),
(4, 'Plain T-Shirt', 'shirt', 'shirtPlain', 'images/instagram-img-01.jpg', 15.79),
(5, 'Slim Black Skirt', 'skirt', 'skirtSlimBlack', 'images/big-img-03.jpg', 60.00),
(6, 'Sweater & Cardigan', 'sweater', 'sweaterCardigan', 'images/instagram-img-09.jpg', 9.79),
(7, 'Denim Jeans', 'jeans', 'jeansDenim', 'images/jeans-01.jpg', 5.79),
(8, 'Stylish Totebag', 'bag', 'bagToteStyle', 'images/instagram-img-04.jpg', 6.79),
(9, 'Winter Jacket', 'jacket', 'jacketWinter', 'images/instagram-img-06.jpg', 80.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;
