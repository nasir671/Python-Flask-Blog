-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2022 at 02:06 AM
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
-- Database: `Thecyberhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` int(11) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'First', 'first@gmail.com', 123456789, 'hello', '2022-11-04 08:29:19'),
(2, 'Test', 'test@gmail.com', 887766553, 'hrllo', NULL),
(3, 'Test', 'test@gmail.com', 887766553, 'hrllo', NULL),
(4, 'Nikhil', 'nikhil@gmail.com', 775566443, 'Hello I am Nikhil ', NULL),
(5, 'Fahad', 'fahad@gmail.com', 734253445, 'Hello i am Fahad Khan', NULL),
(11, 'zdgn', 'bdgm@jfgn', 56356356, 'fmzf shtsd', NULL),
(12, 'sabiha khan', 'hagyhjnuh@gmail.com', 556595652, 'rftftyggt7yuhu', NULL),
(13, 'sabiha khan', 'hagyhjnuh@gmail.com', 556595652, 'rftftyggt7yuhu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`) VALUES
(1, 'The Ultimate Vulnerability Guide', 'What is OWASP Top 10?', 'first.post', 'OWASP Top 10 is a publicly shared standard awareness document for developers of the ten most critical web application security vulnerabilities, according to the Foundation. OWASP understands that a security vulnerability is any weakness that enables a malevolent actor to cause harm and losses to an application’s stakeholders (owners, users, etc.).   The OWASP Top 10 list is developed by web application security experts worldwide and is updated every couple of years. It aims to educate companies and developers on minimizing application security risks. ', '2022-12-14 06:48:12'),
(2, 'The OWASP Top 10 2021 Web App Security Risks', 'Broken Access Control A01:2021', 'SECOND_POST', 'Access control refers to enforcing restrictions on authenticated users to perform actions outside their permission level. Broken access control occurs when such restrictions are not correctly enforced. This can lead to unauthorized access to sensitive information, as well as its modification or destruction.', '2022-12-14 02:42:09'),
(3, 'Cryptographic Failures A02:2021', 'Cryptographic :', 'third_post', 'Cryptographic failures refer to problems with cryptography or the absence of cryptography altogether. Previously this item was known as Sensitive Data Exposure, but this name was not entirely accurate as it described a symptom and effect rather than a cause. Cryptographic failure may and often does lead to exposure of data.  This type of failure applies to the protection and secrecy of data in transit and at rest. Such data typically include authentication details, such as usernames and passwords, but also personally identifiable information (PII) such as personal and financial information, health records, business secrets, and more. ', '2022-12-14 02:43:21'),
(4, 'Injection A03:2021', ' Injection attack ', 'fourth_post', 'An injection attack refers to untrusted data by an application that forces it to execute commands. Such data or malicious code is inserted by an attacker and can compromise data or the whole application. The most common injection attacks are SQL injections, cross-site scripting (XSS), code injections, command injections, CCS injections, and others.', '2022-12-14 02:44:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
