-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2018 at 07:51 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organicfarmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `addnews`
--

CREATE TABLE `addnews` (
  `id` int(11) NOT NULL,
  `randomid` varchar(1000) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `author` varchar(100) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addnews`
--

INSERT INTO `addnews` (`id`, `randomid`, `title`, `author`, `content`, `date`) VALUES
(27, '8397', 'How Trump is licensing animal cruelty at organic farms: ', 'Azim', 'Under current organic food rules, egg farmers can cut off the beaks of hens and cram tens of thousands of birds into a single barn, with almost no access to the outdoors. Organic milk can come from cows who have their tails chopped. The testicles of pigs raised for organic bacon can be ripped out without any painkillers. The list of unconscionable (but customary) horrors goes on.\r\n\r\nIn 2016, the Obama administration sought to end this cruelty and deception with a proposed rule that set minimum animal welfare standards for organic farms.', '2018-01-05 00:00:00'),
(28, '1356', 'Climate change: Soil animals cannot explain self-reinforcing effect', 'Azim', 'When the soil warms up, it releases more carbon dioxide (CO2) -- an effect that further fuels climate change. Until now, it had been assumed that the reason for this was mainly due to the presence of small soil animals and microorganisms that would eat and breathe more in warmer temperatures. However, a new study has shown that this is not the case. Quite the contrary: If warmth is accompanied by drought, the soil animals eat even less.', '2018-01-05 00:00:00'),
(35, '9937', 'BREAKING: \"Vegan Protein To Beat Organic In 2018\" Says Global Meat News', 'Azim', 'Media outlet Global Meat News has responded to a joint report by Bite UK and Eurostar Commodities with an article titled 2018 food trends: vegan protein to beat organic.\r\n\r\nThe food trend report said vegan protein will likely out perform organic meat this year.\r\n\r\nIt said: \"We predict that vegan protein will continue to feature strongly and will perform at a higher level than organic during 2018.\"\r\n\r\nVeggie Pret\r\nThe report highlighted the progress coffee chain Pret A Manger made after it recently launched Veggie Pret, which sells only vegetarian and vegan food.\r\n\r\nAccording to data from the chain, sales in its flagship Veggie Pret soared by 70 per cent when the outlet ditched meat.', '2018-01-05 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contactinfo`
--

CREATE TABLE `contactinfo` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `expertin` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phonenumber` varchar(1000) NOT NULL,
  `email` text NOT NULL,
  `fblink` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactinfo`
--

INSERT INTO `contactinfo` (`id`, `fullname`, `expertin`, `address`, `phonenumber`, `email`, `fblink`) VALUES
(1, 'Azimjon Khamdamov', 'Organic Food', 'DPP TM 7E 408', '60175306672', 'azim270893@gmail.com', 'https://www.facebook.com/azimjon.khamdamov'),
(2, 'Muzaffar Ollamov', 'Organic Food', 'DPP TM 7E 408', '601113581011', 'muza@yahoo.com', 'https://www.facebook.com/za.far.96558'),
(3, 'Umidjon Umurkulov', 'Expert in Greenhouses', 'UUM Changloon', '01112581011', 'umid27@yahoo.com', 'https://www.facebook.com/umidjon.umurkulov');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pnumber` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `fullname`, `email`, `pnumber`, `message`) VALUES
(4, 'Umidjon Umurkulov', 'umid27@yahoo.com', '01112581011', 'Hello. I  am going to build greenhouse in my yard. I want to grow some organic foods. Please. I need some advises regarding to this. Thank you. ');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `images` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image11`
--

CREATE TABLE `image11` (
  `id` int(11) NOT NULL,
  `firstname` varchar(55) NOT NULL,
  `lastname` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registerexpert`
--

CREATE TABLE `registerexpert` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(10) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `regdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registerexpert`
--

INSERT INTO `registerexpert` (`id`, `fullname`, `email`, `age`, `organization`, `username`, `password`, `regdate`) VALUES
(1, 'Azimjon Kha', 'azim27@mail.ru', 23, '', 'Azim', '1234', '2017-12-08'),
(2, 'Muza', 'muza@mal.ru', 12, '', 'Muza', '1234', '2017-12-08'),
(3, 'Umidjon', 'umid@gmail.com', 23, '', 'Umid', '1234', '2017-12-11'),
(4, 'Sarvinoz', 'sara@gmail.com', 23, '', 'sarah', '1234', '2017-12-11'),
(5, 'Sulton', 'sulton@mail.ru', 25, '2', 'sulton', '1234', '2018-01-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addnews`
--
ALTER TABLE `addnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactinfo`
--
ALTER TABLE `contactinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image11`
--
ALTER TABLE `image11`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registerexpert`
--
ALTER TABLE `registerexpert`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addnews`
--
ALTER TABLE `addnews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `contactinfo`
--
ALTER TABLE `contactinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image11`
--
ALTER TABLE `image11`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registerexpert`
--
ALTER TABLE `registerexpert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
