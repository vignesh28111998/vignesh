-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 02:34 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartcars`
--

-- --------------------------------------------------------

--
-- Table structure for table `caraccessories`
--

CREATE TABLE `caraccessories` (
  `ID` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Image` varchar(20) NOT NULL,
  `Rate` varchar(20) NOT NULL,
  `Colour` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `caraccessories`
--

INSERT INTO `caraccessories` (`ID`, `Name`, `Image`, `Rate`, `Colour`) VALUES
('001', 'Car Freshener', 'carairfresh.webp', '$15', 'Green'),
('002', 'Seat', 'carseat.jpeg', '$10000', 'Red'),
('003', 'Alloy Wheels', 'alloy.jpg', '$2000', 'Sliver'),
('004', 'Portronics 3 Amp Tur', 'caraudio.jpg', '$20', 'Black'),
('005', ' Smikers Car Cover', 'carcover.jpg', '$50', 'Blue'),
('006', ' 10\" INCH Sony Dispa', 'sonydisplay.jpg', '$300', 'Black'),
('007', 'Air Pump 150 Psi ', 'airpump.jpg', '$250', 'Black'),
('008', ' Texum TX-50 High Pr', 'carwasher.jpg', '$40', 'Black'),
('009', 'Ultra Portable Car V', 'vacuumcleaner.jpg', '$35', 'Black'),
('010', 'Qiwa Mini Small Size', 'cargprs.webp', '$12', 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `familycars`
--

CREATE TABLE `familycars` (
  `Car_ID` varchar(20) NOT NULL,
  `Car_Name` varchar(20) NOT NULL,
  `Car_Image` varchar(20) NOT NULL,
  `Car_Details` varchar(20) NOT NULL,
  `car_color` varchar(20) NOT NULL,
  `Fule_Type` varchar(20) NOT NULL,
  `Car_Rate` varchar(20) NOT NULL,
  `Speed` varchar(20) NOT NULL,
  `Mileage` varchar(20) NOT NULL,
  `Engine-Type` varchar(20) NOT NULL,
  `Sale_Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `familycars`
--

INSERT INTO `familycars` (`Car_ID`, `Car_Name`, `Car_Image`, `Car_Details`, `car_color`, `Fule_Type`, `Car_Rate`, `Speed`, `Mileage`, `Engine-Type`, `Sale_Type`) VALUES
('001', 'Toyota Innova Hycros', 'toyotainnova.webp', 'Details', 'Grey', 'Diesel', '$20,000', '(300 Km/h)', '15 KMPL', '2.0 L 4-cylinder', 'familycars'),
('002', 'Hyundi i20 SPY', 'hyundicar.jpg', 'Details', 'Blue', 'Diesel', '$20,000', '(300 Km/h)', '25 KMPL', '1.0 l 3-cylinder', 'familycars'),
('003', 'Maruti Suzuki Swift', 'swfit.jfif', 'Details', 'Red', 'Diesel', '$12,000', '(200 Km/h)', '30 KMPL', ' 1 CNG', 'familycars'),
('004', 'Honda City', 'honda.jpg', 'Details', 'Grey', 'Diesel', '$25,000', '(300 Km/h)', '20 KMPL', '1.5 L 4-cylinder', 'familycars'),
('005', 'Nissan', 'nissancar.jpg', 'Details', 'Red', 'Diesel', '$20,000', '(200 Km/h)', '22 KMPL', ' 2.0/2.5 L', 'familycars'),
('006', 'Renault Duster', 'dustrecar.jpg', 'Details', 'Browen', 'Diesel', '$30,000', '(300 Km/h)', '15 KMPL', ' 1461 cc', 'familycars'),
('007', 'Fortuner BS6', 'fortunercar.jpg', 'Details', 'White', 'Diesel', '$40,000', '(300 Km/h)', '10 KMPL', '2755 cc ', 'familycars'),
('008', 'Skoda Kushaq', 'skodacar.webp', 'Details', 'Orange', 'Diesel', '$20,000', '(200 Km/h)', '15 KMPL', '999 cc', 'familycars'),
('009', 'KIA', 'kiacar.webp', 'Details', 'Red', 'Diesel', '$30,000', '(350 Km/h)', '15 KMPL', '2.2 L 4-cylinder', 'familycars'),
('010', 'Tata', 'tata.jpeg', 'Details', 'Blue', 'Diesel', '$25,000', '(200 Km/h)', '15 KMPL', '2.0 L$ Cylinder', 'familycars');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Customer_ID` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone_Number` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Gmail_ID` varchar(50) NOT NULL,
  `Car_Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order2`
--

CREATE TABLE `order2` (
  `Customer_ID` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Phone_Number` varchar(20) NOT NULL,
  `Gmail_ID` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Car_Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order2`
--

INSERT INTO `order2` (`Customer_ID`, `Name`, `Phone_Number`, `Gmail_ID`, `Address`, `Car_Name`) VALUES
('001', 'vicky', '9854899999', 'ksw bhjvbwivbuw;', 'nlvnowe', 'jevbweouv'),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('001', 'vicky', '9854899999', 'ksw bhjvbwivbuw;', 'nlvnowe', 'jevbweouv'),
('003', 'vicky', '9854899999', 'ksw bhjvbwivbuw;', 'nlvnowe', 'jevbweouv'),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', ''),
('', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `rentcar`
--

CREATE TABLE `rentcar` (
  `Car_ID` varchar(20) NOT NULL,
  `Car_Name` varchar(20) NOT NULL,
  `Car_Image` varchar(20) NOT NULL,
  `Car_Details` varchar(20) NOT NULL,
  `Car_Colour` varchar(20) NOT NULL,
  `Fule_Type` varchar(20) NOT NULL,
  `Carrent_per/day` varchar(20) NOT NULL,
  `Speed` varchar(20) NOT NULL,
  `Mileage` varchar(20) NOT NULL,
  `Engine_Type` varchar(20) NOT NULL,
  `rentcar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rentcar`
--

INSERT INTO `rentcar` (`Car_ID`, `Car_Name`, `Car_Image`, `Car_Details`, `Car_Colour`, `Fule_Type`, `Carrent_per/day`, `Speed`, `Mileage`, `Engine_Type`, `rentcar`) VALUES
('001', 'Mahindra', 'mahindra.jfif', 'Details', 'Silver', 'Diesel', '$50', '(200 Km/h)', '15 KMPL', ' 1493 cc', 'rentcar'),
('002', 'Nissan', 'nissanrent.webp', 'Details', 'Red', 'Diesel', '$60', '(200 Km/h)', '20 KMPL', '2.0/2.5 L', 'rentcar'),
('003', 'KIA', 'kiacar.webp', 'Details', 'Red', 'Diesel', '$60', '(350 Km/h)', '15 KMPL', '2.2 L 4-cylinder', 'rentcar'),
('004', 'Swfite', 'swfit.jfif', 'Details', 'Red', 'Diesel', '$20', '(200 Km/h)', '25 KMPL', '1197 cc', 'rentcar'),
('005', 'Nissan', 'nissancar.jpg', 'Details', 'Red', 'Diesel', '$15', '(200 Km/h)', '15 KMPL', '2.0/2.5 L', 'rentcar'),
('006', ' Roll Royce Ghost', 'rollroyce.jpg', 'Details', 'Gold/White', 'Petrol', '$500', '(500 Km/h)', ' 6.8 kmpl', '6.7 L V12', 'rentcar'),
('007', 'Innova', 'innovarent.jpg', 'Details', 'Silver', 'Diesel', '$45', '(300 Km/h)', '15 KMPL', '2.0 L 4-cylinder', 'rentcar'),
('008', 'Audi R8 ', 'audi.jfif', 'Details', 'Blue', 'Petrol', '$300', '(400 Km/h)', '9.8 kmpl', '4.0 L V8', 'rentcar'),
('009', 'Tata', 'tata.jpeg', 'Details', 'Blue', 'Diesel', '$30', '(200 Km/h)', '15 KMPL', ' 2.0 l 4-cylinder ', 'rentcar'),
('010', 'Fortuner BS6', 'fortunercar.jpg', 'Details', 'White', 'Diesel', '$45', '(350 Km/h)', '15 KMPL', 'bs6 engine', 'rentcar');

-- --------------------------------------------------------

--
-- Table structure for table `supercars`
--

CREATE TABLE `supercars` (
  `Car_ID` varchar(20) NOT NULL,
  `Car_Name` varchar(20) NOT NULL,
  `Car_Image` varchar(20) NOT NULL,
  `Car_Details` varchar(20) NOT NULL,
  `Car_Colour` varchar(20) NOT NULL,
  `Fuel_Type` varchar(20) NOT NULL,
  `Car_Rate` varchar(20) NOT NULL,
  `speed` varchar(20) NOT NULL,
  `Mileage` varchar(20) NOT NULL,
  `Engine_Type` varchar(20) NOT NULL,
  `salestype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supercars`
--

INSERT INTO `supercars` (`Car_ID`, `Car_Name`, `Car_Image`, `Car_Details`, `Car_Colour`, `Fuel_Type`, `Car_Rate`, `speed`, `Mileage`, `Engine_Type`, `salestype`) VALUES
('001', 'Lamborghini Aventado', 'LamBocar.jpg', 'New Modle', 'Yellow', 'Petrol', '$500,000', '(350 Km/h)', '7.69 Kmpml', 'Lamborghini V12', 'supercars'),
('002', 'Bugatti Veyron', 'bugatticar.webp', 'New Modle', 'Blue', 'Petrol', '$450,000', '6000rpm', ' 6.8 kmpl', '8.0-liter W16', 'supercars'),
('003', 'Ferraris Laferrari ', 'ferraricar.jpg', 'New Modle', 'Yellow', 'Petrol', '$300,000', '340 Kmph', '6-8 km/l ', 'V12', 'supercars'),
('004', 'Roll Royce Ghost', 'rollroyce.jpg', 'New Modle', 'Gold/White', 'Petrol', '$600,000', '155 MPH', '9.8 kmpl', '6.7  L V2', 'supercars'),
('005', 'BMW i8', 'bmwcar.webp', 'New Modle', 'Silver', 'Petrol', '$250,000', '(350 Km/h)', '9.8 kmpl', 'P 48 Turob', 'supercars'),
('006', 'Mustang ', 'mustangcar.jpg', 'Details', 'Red', 'Petrol', '$500,000', '4951cc', '13 KMPL', '5.0L Ti-VCT V8', 'supercars'),
('007', 'Audi-A8', 'audi.jfif', 'Details', 'Grey', 'Petrol', '$450,000', '6000rpm', '9.8 kmpl', 'ERY', 'supercars'),
('008', 'Ford', 'fordcar.webp', 'Details', 'Black', 'Petrol', '$500,000', '(350 Km/h)', ' 6.8 kmpl', 'P 48 Turob', 'supercars'),
('009', 'Benz', 'benz.jpg', 'Details', 'Green', 'Petrol', '$385,000', '155 MPH', '9.8 kmpl', '6.7  L V2', 'supercars'),
('010', 'Tesla', 'teslacar.jpg', 'Details', 'Red', 'Battery', '$500,000', '6000rpm', '15 KMPL', 'Moter', 'supercars');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `caraccessories`
--
ALTER TABLE `caraccessories`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `familycars`
--
ALTER TABLE `familycars`
  ADD PRIMARY KEY (`Car_ID`,`Car_Name`,`Car_Image`,`Car_Details`);

--
-- Indexes for table `rentcar`
--
ALTER TABLE `rentcar`
  ADD PRIMARY KEY (`Car_ID`,`Car_Name`,`Car_Image`,`Car_Details`,`Car_Colour`);

--
-- Indexes for table `supercars`
--
ALTER TABLE `supercars`
  ADD PRIMARY KEY (`Car_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
