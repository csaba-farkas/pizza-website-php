-- phpMyAdmin SQL Dump
-- version 4.0.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2016 at 04:04 PM
-- Server version: 5.5.47
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cl60-pizzadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` varchar(20) NOT NULL,
  `student` char(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` varchar(20) NOT NULL,
  `anchovies` char(1) NOT NULL,
  `pineapple` char(1) NOT NULL,
  `pepperoni` char(1) NOT NULL,
  `peppers` char(1) NOT NULL,
  `olives` char(1) NOT NULL,
  `onion` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `student`, `firstname`, `lastname`, `email`, `address`, `phone`, `price`, `size`, `anchovies`, `pineapple`, `pepperoni`, `peppers`, `olives`, `onion`) VALUES
('572903c5cde1d', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('5729f7ce93abd', 'Y', 'csaba', 'farkas', 'csaba@csaba.com', 'address', '0872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('5729f81cdaf51', 'Y', 'john', 'smith', 'john@smith.com', 'smithy''s address', '08612345678', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('5729f8c0a6450', 'Y', 'csaba', 'farkas', 'csaba@csaba.com', 'address', '08612345678', '17.00', 'large', 'Y', 'Y', 'N', 'Y', 'Y', 'Y'),
('5729f8e1ef73a', 'Y', 'csaba', 'farkas', 'csaba@csaba.com', 'address', '08612345678', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('5729fa4f92e63', 'N', 'csaba', 'farkas', 'csaba@csaba.com', 'address', '08612345678', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('5729fad84e24a', 'Y', 'csaba', 'farkas', 'csaba@csaba.com', 'address', '08612345678', '16.00', 'large', 'Y', 'N', 'Y', 'Y', 'N', 'Y'),
('572c7b7f4772f', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c827e99142', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c82a1a81df', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c82cac5c4a', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c832372f19', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c836724f26', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c83c16fe4b', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c842d085f7', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c8461885c3', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c84b267783', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c8538a2dbc', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c8682b79a1', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '17.00', 'large', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c86bb74f22', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '12.00', 'large', 'N', 'N', 'N', 'N', 'N', 'N'),
('572c86f1a0462', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '12.00', 'large', 'N', 'N', 'N', 'N', 'N', 'N'),
('572c877feed6f', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '16.00', 'large', 'Y', 'N', 'N', 'Y', 'Y', 'Y'),
('572c87d0ded14', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c8846bb939', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c88536303f', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '16.00', 'medium', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c8937966f1', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c894812475', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '7.50', 'small', 'N', 'Y', 'N', 'N', 'Y', 'Y'),
('572c897757077', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '8.00', 'small', 'N', 'Y', 'Y', 'Y', 'N', 'Y'),
('572c8a53ee8fd', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '8.00', 'small', 'Y', 'N', 'Y', 'N', 'Y', 'Y'),
('572c8a778ef04', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '14.00', 'medium', 'N', 'Y', 'N', 'Y', 'Y', 'Y'),
('572c8a961b703', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c8b4cab02a', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c8bf43eef7', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '8.00', 'small', 'Y', 'N', 'Y', 'N', 'Y', 'Y'),
('572c8c6190f2e', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent', '872539389', '7.00', 'small', 'N', 'N', 'N', 'Y', 'N', 'Y'),
('572c8d2a79c24', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c8d3f64e7b', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The crescent', '872539389', '8.00', 'small', 'Y', 'N', 'N', 'Y', 'Y', 'Y'),
('572c8da924be2', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 the crescent', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c8dbebd33c', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The crescent', '872539389', '6.00', 'small', 'N', 'N', 'N', 'N', 'N', 'N'),
('572c8dce7ee78', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdf', '872539389', '7.00', 'small', 'N', 'Y', 'Y', 'N', 'N', 'N'),
('572c8e5531e29', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36', '872539389', '9.00', 'small', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c91b3b3eac', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '3dsag', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c91b76c559', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '3dsag', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c92420ef77', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '3dsag', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c92c495164', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'adsf', '872539389', '14.00', 'medium', 'Y', 'N', 'Y', 'N', 'Y', 'Y'),
('572c93522e37c', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'adf', '872539389', '8.00', 'small', 'Y', 'N', 'N', 'Y', 'Y', 'Y'),
('572c9368387ec', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'adf', '872539389', '8.00', 'small', 'Y', 'N', 'N', 'Y', 'Y', 'Y'),
('572c947c6bec3', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdf', '872539389', '9.00', 'small', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c94ab6d7d0', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdf', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c94b158407', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdf', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c953097f40', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdf', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c96642efb3', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'adsf', '872539389', '8.50', 'small', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c96b5a02b6', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sadfasdg', '872539389', '8.00', 'small', 'N', 'Y', 'Y', 'Y', 'N', 'Y'),
('572c971537318', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdgdhrety', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c97825e136', 'Y', 'sdf', 'sdf', 'sadff@asdf.ki', 'sadf', 'asdf', '16.00', 'large', 'N', 'Y', 'Y', 'Y', 'N', 'Y'),
('572c97df4c9da', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sadf', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c98faac835', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sadfsadf', '872539389', '8.50', 'small', 'Y', 'Y', 'N', 'Y', 'Y', 'Y'),
('572c9922b26a5', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdfasdg', '872539389', '9.00', 'small', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572c9a52a9b74', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sadfas', '872539389', '15.00', 'medium', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c9a7a510df', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdf', '872539389', '8.00', 'small', 'N', 'Y', 'Y', 'Y', 'Y', 'N'),
('572c9aeb74d6a', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdfwe', '872539389', '8.00', 'small', 'N', 'Y', 'N', 'Y', 'Y', 'Y'),
('572c9b42a8ee3', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdfasddf', '872539389', '14.00', 'medium', 'Y', 'N', 'N', 'Y', 'Y', 'Y'),
('572c9bfe8432a', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdge', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c9ccca0a0d', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sadf', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c9d1b96e8b', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdfsadf', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572c9fe400090', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sdf', '872539389', '8.00', 'small', 'Y', 'N', 'Y', 'Y', 'N', 'Y'),
('572ca01c4a43b', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sdf', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572ca04c493ff', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sadfas', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572ca07bcd159', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sdf', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572ca14c74642', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sadfsad', '872539389', '9.00', 'small', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572ca19938c2f', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdfdsa', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572ca35727ff7', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdf', '872539389', '18.00', 'large', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572ca375f0215', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'asdf', '872539389', '9.00', 'small', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572ca3f0cdbb0', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sadfsaf', '872539389', '8.50', 'small', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572ca4b3d28d5', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sadfasd', '872539389', '8.50', 'small', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572ca511d7599', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sdfsadf', '872539389', '8.00', 'small', 'N', 'N', 'Y', 'Y', 'Y', 'Y'),
('572ca56034052', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', 'sadfsa', '872539389', '15.00', 'medium', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572ca60c19a0d', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '17.00', 'large', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572ca60c19a0d', 'Y', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '18.00', 'large', 'N', 'Y', 'Y', 'Y', 'Y', 'Y'),
('572ca851f3e13', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '8.00', 'small', 'Y', 'N', 'N', 'Y', 'Y', 'Y'),
('572ca9036863e', 'N', 'Csabika', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '8.50', 'small', 'Y', 'N', 'Y', 'Y', 'Y', 'Y'),
('572ca9ecc48b9', 'N', 'Gabor', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '8.50', 'small', 'Y', 'N', 'N', 'N', 'Y', 'Y'),
('572caaa90d106', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '16.00', 'large', 'Y', 'N', 'N', 'Y', 'Y', 'Y'),
('572cabfc6e903', 'N', 'Csaba', 'Farkas', 'csabafarkas17@gmail.com', '36 The Crescent\r\nBroadale, Douglas', '872539389', '8.50', 'small', 'N', 'Y', 'Y', 'Y', 'Y', 'Y');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
