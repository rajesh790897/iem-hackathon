-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2025 at 07:05 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2025-05-26 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 443108139, 'amikt12@gmail.com', 2, '2024-06-08', '2024-06-10', 'I want booking', 1, '2024-06-05 05:32:39', '2024-06-05 05:34:08'),
(2, 692105690, 'ankit@gmail.com', 9, '2025-06-27', '2025-06-30', 'i want to book this phone.', 1, '2025-06-26 11:39:12', '2025-06-26 11:39:34'),
(3, 691142402, 'ankit@gmail.com', 10, '2025-06-27', '2025-06-28', 'I want to book this car for my family trip in kolkata.', 1, '2025-06-26 11:48:56', '2025-06-26 11:49:10'),
(5, 972224664, 'rajesh@hyprdevs.com', 10, '2025-07-01', '2025-07-03', 'i want to book.', 1, '2025-06-26 11:53:50', '2025-06-26 12:41:35'),
(6, 775243062, 'amit@gmail.com', 10, '2025-07-07', '2025-07-11', 'i want to book this car.', 1, '2025-06-26 20:41:07', '2025-06-26 20:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(9, 'BMW', '2025-06-26 11:40:44', NULL),
(10, 'Audi', '2025-06-26 12:01:32', NULL),
(11, 'Honda', '2025-06-26 14:43:56', NULL),
(13, 'Royal Enfield', '2025-06-26 18:45:32', NULL),
(14, 'lamborghini', '2025-06-26 19:08:08', NULL),
(15, 'Hyundai', '2025-06-26 19:22:08', NULL),
(16, 'Toyota ', '2025-06-26 19:49:41', NULL),
(17, 'Tata ', '2025-06-26 20:01:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Mankundu, Chandannagarm West Bengal - 712139', 'contact@hyprdevs.com', '9474527596');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'Suparno Chakraborty', 'suparno@hyprdevs.com', '9593753671', 'Just a testing query.', '2025-06-26 20:22:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) ACCEPTANCE OF TERMS</FONT><BR><BR></STRONG>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <A href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</A>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>\r\n<P align=justify><FONT size=2>Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </FONT><A href=\"http://in.docs.yahoo.com/info/terms/\"><FONT size=2>http://in.docs.yahoo.com/info/terms/</FONT></A><FONT size=2>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </FONT></P>'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '										<div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Welcome to <span style=\"font-weight: bold;\">HyprThings </span>– Rent Smarter, Live Lighter!</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">At <span style=\"font-weight: bold;\">HyprThings</span>, we make everyday items easily accessible through renting—saving you money, space, and time. Whether you need a drill for a day, a camera for your trip, or a bike for the weekend, we help you find it nearby, fast.</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">We believe in a future where owning less doesn\'t mean having less. Our goal is to create a smarter way to access things—without the hassle of buying or storing them.</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">What <span style=\"font-weight: bold;\">We Offer,</span></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Travel &amp; Transport Gear</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Just search, rent, use, and return—simple as that.</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><span style=\"font-weight: bold;\">Why Choose HyprThings?</span></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">&nbsp;Easy-to-use platform</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">&nbsp;Verified users and secure payments</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">&nbsp;Affordable rental prices</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">&nbsp;Environment-friendly choice</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Contact Us</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Have a question or need help?</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><img data-emoji=\"????\" class=\"an1\" alt=\"????\" aria-label=\"????\" draggable=\"false\" src=\"https://fonts.gstatic.com/s/e/notoemoji/16.0/1f4e7/72.png\" loading=\"lazy\" style=\"height: 1.2em; width: 1.2em;\">&nbsp;Email us:&nbsp;<a href=\"mailto:contact@hyprdevs.com\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">contact@hyprdevs.com</a></div>\r\n										'),
(11, 'FAQs', 'faqs', '<div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">1. How do I rent an item on HyprThings?</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Just search for the item you need, choose a listing near you, book it, and pick it up or get it delivered.</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">2. Is it safe to rent from others?</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Yes! All users and listings are verified. We also offer secure payment and a review system for added trust.</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">3. Can I list my own items for rent?</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Absolutely! Sign up, upload photos and details of your item, and start earning.</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">4. What happens if an item gets damaged?</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">We recommend handling all items responsibly. In case of damage, both parties can report the issue and we’ll help resolve it fairly.</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">5. Where is HyprThings available?</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">We’re expanding fast! Currently, we’re available in major cities, and more locations are being added soon.</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\"><br></div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">6. How do I contact support?</div><div dir=\"auto\" style=\"color: rgb(34, 34, 34); font-family: Arial, Helvetica, sans-serif; font-size: small;\">Just drop us an email at&nbsp;<a href=\"mailto:contact@hyprdevs.com\" target=\"_blank\" style=\"color: rgb(17, 85, 204);\">contact@hyprdevs.com</a>&nbsp;– we’re always here to help!</div>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(3, 'Ankit Pal', 'ankit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '7908971322', NULL, NULL, NULL, NULL, '2025-06-26 10:47:27', NULL),
(5, 'Rajesh Mondal', 'rajesh@hyprdevs.com', 'e10adc3949ba59abbe56e057f20f883e', '7908971324', NULL, NULL, NULL, NULL, '2025-06-26 11:50:57', NULL),
(6, 'Amit Das', 'amit@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '7788778877', NULL, NULL, NULL, NULL, '2025-06-26 20:39:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(10, 'BMW SUV', 9, 'The BMW SUV lineup offers a range of models designed to cater to different needs, from compact and sporty to large and luxurious. Here is an overview of the key BMW SUV models:\r\n\r\nBMW X1: A compact SUV that offers a carefully-crafted design, superior performance, and exceptional safety features. It is ideal for those looking for a stylish and practical vehicle.\r\nBMW X2: A coupe-inspired SUV that offers high-performance capability along with plenty of interior space. It features a creative automotive design and eye-catching exterior.\r\nBMW X3: An ideal SUV for adventure-seekers, offering a rugged yet luxurious presence and spacious interior and storage options. It is suitable for both highway travel and off-road adventures.\r\nBMW X4: A model that combines the dramatic profile of a Sports Activity Coupe® with performance capabilities. It offers a muscular and sleek exterior design.', 5990, 'Diesel', 2024, 7, '1.webp', '2.webp', '3.webp', '4.webp', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-06-26 11:44:03', '2025-06-26 11:48:04'),
(11, 'Audi', 10, 'Audi AG is a German automotive manufacturer of luxury vehicles headquartered in Ingolstadt, Bavaria, Germany. A subsidiary of the Volkswagen Group, Audi produces vehicles in nine production facilities.', 4990, 'Petrol', 2024, 5, 'audi1.jpg', 'audi2.webp', 'adui3.webp', 'adui4.webp', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, '2025-06-26 12:03:37', NULL),
(12, 'Honda CB Unicorn', 11, 'The Honda CB Unicorn 160 is a premium commuter motorcycle that has been on sale in the Indian market since its launch in 2014.\r\n It features a sleek and sporty design with a muscular fuel tank, aerodynamic fairing, and attractive graphics. The bike is powered by a 162.7cc single-cylinder engine that delivers a smooth and refined performance.\r\n The engine is mated to a 5-speed gearbox, providing seamless gear shifts and efficient power delivery. The CB Unicorn 160 offers a comfortable riding experience with its upright seating position, well-padded seat, and telescopic front suspension. It also comes equipped with features like disc brakes, tubeless tires, and a digital-analog instrument cluster.', 570, 'Petrol', 2023, 2, 'honda 1.avif', 'honda 2.avif', 'honda 3.avif', 'honda 4.avif', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-26 18:43:56', NULL),
(13, 'Royal Enfield Classic 350', 13, 'The Royal Enfield Classic 350 is a retro cruiser motorcycle produced by Royal Enfield, first introduced in 2009. The Classic 350 has a 349cc BS6 Phase 2 engine that produces 20.2 bhp and 27 Nm of torque.\r\n It has a fuel tank capacity of 13 liters and a user-reported mileage of 34 kmpl.\r\n The bike is available in seven variants and 11 colors, with prices ranging from ?1,95,300 to ?2,32,645 (ex-showroom) in India.\r\n The Classic 350 has received updates in the form of new colors and features, including LED headlight and position lights, adjustable brake and clutch levers, and a gear position indicator.', 799, 'Petrol', 2024, 1, 'clasic 350.webp', 'clasic 2.webp', 'clasic 3.webp', 'clasic 4.webp', 'clasic 5.webp', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2025-06-26 18:56:25', NULL),
(14, 'Lamborghini Urus', 14, 'Lamborghini Urus is the first Super Sport Utility Vehicle in the world, merging the soul of a super sports car with the practical functionality of an SUV. Powered by Lamborghini’s 4.0-liter twin turbo V8 engine and, in the case of Urus SE, a powerful electric motor, the Urus embodies a performance mindset that combines Fun-to-Drive with astounding vehicle capabilities. The design, performance, driving dynamics, and unbridled emotion flow effortlessly into this visionary realization of authentic Lamborghini DNA, revolutionizing an entire segment.', 7999, 'Petrol', 2022, 5, 'uris 1.webp', 'uris 2.webp', 'uris 3.webp', 'uris 4.webp', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, 1, '2025-06-26 19:19:37', NULL),
(15, 'Hyundai Creta', 15, 'The Hyundai Creta is a subcompact crossover SUV that has been updated thoroughly for 2025, featuring a powerful turbocharged gasoline engine, sporty looks, and a decked-out interior.\r\n It is available in an N-Line variant, which includes a 1.5-liter four-cylinder gasoline engine with power outputs of 113 horsepower and 144 newton-meters torque, or 158 horsepower and 253 newton-meters torque for the N Line variant.\r\n The Creta comes with an Intelligent Variable Transmission 7-Speed DCT (N-Line).', 850, 'Diesel', 2023, 5, 'creata 1.webp', 'creata 2.webp', 'creata 3.webp', 'creata 4.webp', '', 1, 1, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, '2025-06-26 19:31:00', NULL),
(16, 'Toyota Yaris', 16, 'The Toyota Yaris is a compact car that has been in production since January 1999 and is known for its efficiency, reliability, and practicality. It is available in various body styles, including 3/5-door hatchback, 4-door sedan, and 2-door coupe.\r\n The Yaris has undergone several updates over the years, with the 2020 model featuring a new design and improved technology.\r\n\r\nIn terms of performance, the 2020 Toyota Yaris offers keen handling and superb gas mileage, making it an attractive option for those looking for a fuel-efficient vehicle.\r\n However, it is noted that the Yaris lacks some key driver-assistance features that are available in rival models.\r\n The Yaris also comes with a hybrid variant, which is praised for its efficient hybrid engine but is criticized for being cramped in the back and having a less special interior.', 750, 'Petrol', 2022, 4, 'tayota 1.webp', 'tayota 2.webp', 'tayota 3.webp', 'tayota 4.webp', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, 1, '2025-06-26 19:58:20', NULL),
(17, 'Tata Harrier', 17, 'The Tata Harrier is a five-seater, diesel-engined compact crossover SUV produced by Tata Motors. It was launched in the Indian market on 23 January 2019 and is positioned between the subcompact Tata Nexon and the mid-size Tata Safari.\r\n The Harrier is a C-segment SUV based on the OmegaArc platform, which is an essentially re-engineered version of the Jaguar Land Rover D8 platform adopted by models such as Range Rover Evoque, Discovery Sport, and Jaguar E-Pace.\r\n The car is built on a Land Rover platform, making it a sturdy and imposing SUV with a five-star safety rating.\r\n\r\nThe Tata Harrier is available in various variants, starting from the base model \"Smart\" to the top model \"Fearless Plus Stealth AT\". The price of the Harrier starts at Rs. 15.00 Lakh for the base variant and goes up to Rs. 26.50 Lakh for the top variant.\r\n The Harrier is offered with a single 170 PS 2-litre diesel engine, which can be had either with a 6-speed manual or a 6-speed torque converter automatic transmission.', 1399, 'Diesel', 2023, 7, 'tata 1.webp', 'tata 2.webp', 'tata 3.webp', 'tata 4.webp', '', 1, 1, 1, 1, 1, 1, 1, 1, NULL, 1, NULL, 1, '2025-06-26 20:05:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
