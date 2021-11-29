-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2021 at 12:47 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ashgym`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `fname` char(50) NOT NULL,
  `lname` char(50) NOT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `tel_number` varchar(20) DEFAULT NULL,
  `password` varchar(24) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `fname`, `lname`, `gender`, `tel_number`, `password`, `email`, `startDate`, `endDate`) VALUES
(1, 'Nazik', 'Heymann', 'Female', '+233544920383', 'goinside101', 'nazik.heymann@ashesi.edu.gh', '2021-03-05', '2021-10-05'),
(2, 'Rita', 'Segbaya', 'Female', '+233548735241', 'Riri234', 'rita.segbaya@ashesi.edu.gh', '2021-03-05', '2021-09-09'),
(3, 'Rhodalyn', 'Nettey', 'Female', '+233504564321', 'RoRo01', 'rhodalyn.nettey@ashesi.edu.gh', '2021-04-07', '2021-11-02'),
(4, 'Naa', 'Dove', 'Female', '+233578990976', 'Na34', 'naa.dove@ashesi.edu.gh', '2021-02-02', '2021-10-05'),
(17, 'Tracy', 'Ameyibor', NULL, NULL, '', 'tracy.ameyibor@ashesi.edu.gh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `equip_id` int(11) NOT NULL,
  `equip_name` varchar(60) DEFAULT NULL,
  `availability` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equip_id`, `equip_name`, `availability`) VALUES
(1, 'Dumb bells', 10),
(2, 'Threadmill', 2),
(3, 'Barbells', 22),
(4, 'Skipping Rope', 5);

-- --------------------------------------------------------

--
-- Table structure for table `equipment_manager`
--

CREATE TABLE `equipment_manager` (
  `equipmanager_id` int(11) NOT NULL,
  `allowance` decimal(5,2) DEFAULT 500.00,
  `lostEquipment_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipment_manager`
--

INSERT INTO `equipment_manager` (`equipmanager_id`, `allowance`, `lostEquipment_num`) VALUES
(3, '400.00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `equipment_usage`
--

CREATE TABLE `equipment_usage` (
  `equip_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `availablity` int(3) DEFAULT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prod_id`, `prod_name`, `availablity`, `price`) VALUES
(1, 'Protein_powder', 50, '50.00'),
(2, 'Food_supplements', 60, '100.00'),
(3, 'Sanitizers', 100, '15.00'),
(4, 'Fitness_Belt', 40, '200.00'),
(5, 'Fitness_gloves', 70, '80.00');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `client_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `client_id` int(11) NOT NULL,
  `subscription` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `registrar`
--

CREATE TABLE `registrar` (
  `registrar_id` int(11) NOT NULL,
  `stationery_allowance` decimal(5,2) DEFAULT 500.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registrar`
--

INSERT INTO `registrar` (`registrar_id`, `stationery_allowance`) VALUES
(1, '648.50');

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `salesperson_id` int(11) NOT NULL,
  `bonus` decimal(5,2) DEFAULT 0.00,
  `allowance` decimal(5,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`salesperson_id`, `bonus`, `allowance`) VALUES
(4, '200.50', '410.00');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `finame` char(50) NOT NULL,
  `laname` char(50) NOT NULL,
  `gender` enum('M','F','Other') DEFAULT NULL,
  `tel_number` varchar(20) NOT NULL,
  `role` enum('Manager','Salesperson','Trainer','Equipment Manager','Registrar') NOT NULL,
  `salary` decimal(6,2) NOT NULL DEFAULT 500.00,
  `startDate` date NOT NULL,
  `endDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `finame`, `laname`, `gender`, `tel_number`, `role`, `salary`, `startDate`, `endDate`) VALUES
(1, 'John', 'Sharshembaev', 'M', '+233704287503', 'Registrar', '950.00', '2020-01-10', NULL),
(2, 'Aidai', 'Akhmadova', 'F', '+233545656503', 'Trainer', '630.00', '2020-02-10', NULL),
(3, 'Maroof', 'Rakhmanov', 'M', '+233795492398', 'Equipment Manager', '560.00', '2020-01-14', NULL),
(4, 'Nuzup', 'Shadiev', 'M', '+233777656523', 'Salesperson', '700.00', '2020-01-12', NULL),
(5, 'Hasina', 'Saeed', 'F', '+233555656986', 'Trainer', '650.00', '2020-02-06', NULL),
(6, 'Alinster', 'Ghaznawi', 'M', '+233555432764', 'Manager', '950.00', '2019-11-10', NULL),
(7, 'Mursal', 'Janati', 'F', '+233777987689', 'Trainer', '615.00', '2020-02-15', NULL),
(8, 'Farangis', 'Muradi', 'F', '+2337342389674', 'Trainer', '620.00', '2020-03-01', NULL),
(9, 'Aziz', 'Bakhtar', 'M', '+233704356789', 'Trainer', '610.00', '2020-04-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `name` varchar(10) NOT NULL,
  `price` float(5,2) DEFAULT NULL CHECK (`price` in (100.00,150.00,500.00)),
  `signup_fee` float(5,2) DEFAULT 100.00,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `trainer_id` int(11) NOT NULL,
  `specialty` enum('Back and Shoulders','Biceps and Triceps','Torso and legs','Weight gain and weight loss') NOT NULL,
  `rating` decimal(3,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`trainer_id`, `specialty`, `rating`) VALUES
(2, 'Torso and legs', '5.30'),
(5, 'Biceps and Triceps', '7.00'),
(7, 'Weight gain and weight loss', '9.50'),
(8, 'Back and Shoulders', '9.00'),
(9, 'Weight gain and weight loss', '9.50');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `trainer_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `stardDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fname` (`fname`),
  ADD KEY `testname` (`fname`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equip_id`);

--
-- Indexes for table `equipment_manager`
--
ALTER TABLE `equipment_manager`
  ADD KEY `equipmanager_id` (`equipmanager_id`);

--
-- Indexes for table `equipment_usage`
--
ALTER TABLE `equipment_usage`
  ADD KEY `client_id` (`client_id`),
  ADD KEY `equip_id` (`equip_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD KEY `client_id` (`client_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD KEY `client_id` (`client_id`),
  ADD KEY `subscription` (`subscription`);

--
-- Indexes for table `registrar`
--
ALTER TABLE `registrar`
  ADD KEY `registrar_id` (`registrar_id`);

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD KEY `salesperson_id` (`salesperson_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD KEY `trainer_id` (`trainer_id`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD KEY `trainer_id` (`trainer_id`),
  ADD KEY `client_id` (`client_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `equipment_manager`
--
ALTER TABLE `equipment_manager`
  ADD CONSTRAINT `equipment_manager_ibfk_1` FOREIGN KEY (`equipmanager_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `equipment_usage`
--
ALTER TABLE `equipment_usage`
  ADD CONSTRAINT `equipment_usage_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `equipment_usage_ibfk_2` FOREIGN KEY (`equip_id`) REFERENCES `equipment` (`equip_id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`),
  ADD CONSTRAINT `purchases_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `products` (`prod_id`);

--
-- Constraints for table `registers`
--
ALTER TABLE `registers`
  ADD CONSTRAINT `registers_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `registers_ibfk_2` FOREIGN KEY (`subscription`) REFERENCES `subscription` (`name`);

--
-- Constraints for table `registrar`
--
ALTER TABLE `registrar`
  ADD CONSTRAINT `registrar_ibfk_1` FOREIGN KEY (`registrar_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD CONSTRAINT `salesperson_ibfk_1` FOREIGN KEY (`salesperson_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `trainer`
--
ALTER TABLE `trainer`
  ADD CONSTRAINT `trainer_ibfk_1` FOREIGN KEY (`trainer_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `trains`
--
ALTER TABLE `trains`
  ADD CONSTRAINT `trains_ibfk_1` FOREIGN KEY (`trainer_id`) REFERENCES `staff` (`staff_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `trains_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
