-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 02, 2024 at 06:40 AM
-- Server version: 10.6.18-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `axoncbfs_whatsmatic`
--

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `phone_no` varchar(250) NOT NULL,
  `msg` text NOT NULL,
  `status` varchar(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `phone_no`, `msg`, `status`, `created_at`, `updated_at`, `type`, `data`) VALUES
(43, '+923127988285', 'Hello Attia,\r\nGreat news! Your pre-order 8995 for delicious mangoes is Received.\r\n\r\nMultani Chaunsa *x 1* = 2400 Rs\n\nTotal: *2400* Rs\r\n\nPlease deposit the amount of Rs. 500 (500 per box) to the following account and share the screenshot here to confi', 'sent', '2024-06-29 19:03:35', '2024-06-29 19:03:54', '', ''),
(44, '+923127988285', 'Hello your order is cancelled.', 'sent', '2024-06-29 19:06:39', '2024-06-29 19:07:24', '', ''),
(45, '+923122320048', 'Hello Muhammad Farooq,\r\nGreat news! Your pre-order 8996 for delicious mangoes is Received.\r\n\r\nWhite Chaunsa *x 1* = 2350 Rs\n\nTotal: *2350* Rs\r\n\nPlease deposit the amount of Rs. 500 (500 per box) to the following account and share the screenshot here ', 'sent', '2024-06-29 20:09:59', '2024-06-29 20:10:27', '', ''),
(46, '923127502571', 'Hello Abdul,\r\nGreat news! Your pre-order 8997 for delicious mangoes is Received.\r\n\r\nMultani Sindhri *x 4* = 8400 Rs\nBlack Chaunsa *x 1* = *Free Gift*\n\nTotal: *8400* Rs\r\n\nPlease deposit the amount of Rs. 2000 (500 per box) to the following account and', 'sent', '2024-06-29 20:11:43', '2024-06-29 20:12:27', '', ''),
(47, '+923328490179', 'Hello Muhammad Jiad Ali Cheema,\nGreat news! Your pre-order 8998 for delicious mangoes is Received.\n\nMultani Chaunsa *x 2* = 4800 Rs\n\nTotal: *4800* Rs\n\nPlease deposit the amount of Rs. 1000 (500 per box) to the following account and share the screenshot to confirm your order.\n\nPlease save our contact number so that we can keep you updated regarding your order.\n\nIf you have any questions, please ask.\nThank you for choosing us.\n\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-29 22:21:27', '2024-06-30 04:32:55', '', ''),
(48, '+923145600000', 'Hello Faisal Kamran,\r\nGreat news! Your pre-order 8999 for delicious mangoes is Received.\r\n\r\nMultani Chaunsa *x 1* = 2400 Rs\nBlack Chaunsa *x 1* = 1800 Rs\nWhite Chaunsa *x 1* = 2350 Rs\n\nTotal: *6550* Rs\r\n\nPlease deposit the amount of Rs. 1500 (500 per', 'sent', '2024-06-29 22:28:43', '2024-06-29 22:29:27', '', ''),
(49, '+923245724775', 'Hello Muhammad,\r\nGreat news! Your order #9009 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 1* = 2400 Rs\n\nTotal: *2400* Rs\r\n\nPlease deposit the amount of Rs. 500 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 07:41:35', '2024-06-30 07:45:26', '', ''),
(50, '+923225590142', 'Hello Asfar,\r\nGreat news! Your order #9010 for delicious mangoes is received.\r\n\r\nAnwar Ratol *x 2*\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 09:27:33', '2024-06-30 09:28:25', '', ''),
(51, '+923225590142', 'Hello Asfar,\r\nGreat news! Your order #9011 for delicious mangoes is received.\r\n\r\nAnwar Ratol *x 2*\nBlack Chaunsa *x 1*\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 09:40:32', '2024-06-30 09:40:56', '', ''),
(52, '+923020417935', 'Hello Bilal,\r\nGreat news! Your order #9012 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 1* = 1900 Rs\n\nTotal: *1900* Rs\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 09:44:06', '2024-06-30 09:44:24', '', ''),
(53, '+92336083089', 'Please provide correct phone number to contact you, the number that is provided is incorrect! 0336083089', 'invalid', '2024-06-30 09:55:49', '2024-06-30 09:56:29', '', ''),
(54, '+92336083089', 'Please contact us on whatsapp for faster and clear communication!', 'invalid', '2024-06-30 09:56:31', '2024-06-30 09:57:05', '', ''),
(55, '+923337839357', 'Hello Rashid,\r\nGreat news! Your order #8971 for delicious mangoes is received.\r\n\r\nMultani Sindhri *x 1* = 1600 Rs\n\nTotal: *1600* Rs\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 10:06:09', '2024-06-30 10:06:57', '', ''),
(56, '+923346636720', 'Hello Ghulam Murtaza,\r\n\r\nYour order #8967 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 10:22:31', '2024-06-30 10:22:56', '', ''),
(57, '+923336974676', 'Hello m Ashraf,\r\n\r\nYour order #8964 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 11:54:41', '2024-06-30 13:10:39', '', ''),
(58, '+923009114781', 'Please send the advance deposit of 500rs/box so that we can confirm your order. \n\nAlso provide us the correct number as well. The number that you have provided on the order is incorrect. \n\nFor any questions please contact us on WhatsApp: +923176712465', 'sent', '2024-06-30 12:20:22', '2024-06-30 13:11:26', '', ''),
(59, '+923217613481', 'Hello Yousaf,\r\n\r\nYour order #8761 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 12:22:56', '2024-06-30 13:12:15', '', ''),
(60, '+923345219565', 'Hello Malik saad,\r\n\r\nYour order #8652 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 13:11:14', '2024-06-30 13:12:38', '', ''),
(61, '+923402002353', 'Hello Imran,\r\n\r\nYour order #8480 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 13:43:34', '2024-06-30 13:44:02', '', ''),
(62, '+923349393027', 'Hello Irshad,\r\n\r\nYour order #9013 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 13:43:37', '2024-06-30 13:44:30', '', ''),
(63, '+923206929097', 'Hello Junaid Ul Hassan,\r\n\r\nYour order #8477 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 14:02:15', '2024-06-30 14:02:41', '', ''),
(64, '+923315215350', 'Hello Sadaf,\r\n\r\nYour order #8476 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 14:04:28', '2024-06-30 14:05:10', '', ''),
(65, '+923339439168', 'Hello Muhammad shaban,\r\n\r\nYour order #9014 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 17:55:47', '2024-06-30 17:56:40', '', ''),
(66, '+923457887990', 'Payment transaction failed. Your order was not successfull..<br />PayFast Transaction ID: b6e43480-e8fc-cba5-5dc1-2044055c9670', 'sent', '2024-06-30 17:58:14', '2024-06-30 17:59:01', '', ''),
(67, '+923457887990', 'Payment transaction failed. Your order was not successfull..<br />PayFast Transaction ID: b6e43480-e8fc-cba5-5dc1-2044055c9670', 'sent', '2024-06-30 17:58:17', '2024-06-30 17:59:29', '', ''),
(68, '+923457887990', 'Payment transaction failed. Your order was not successfull..<br />PayFast Transaction ID: b6e43480-e8fc-cba5-5dc1-2044055c9670', 'sent', '2024-06-30 17:58:22', '2024-06-30 18:00:01', '', ''),
(69, '+923457887990', 'Payment transaction failed. Your order was not successfull..<br />PayFast Transaction ID: b6e43480-e8fc-cba5-5dc1-2044055c9670', 'sent', '2024-06-30 17:58:37', '2024-06-30 18:00:29', '', ''),
(70, '+923457887990', 'Hello Shuja ghafoor,\r\nGreat news! Your order #9016 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 4*\nBlack Chaunsa *x 1*\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 18:01:19', '2024-06-30 18:02:01', '', ''),
(71, '+923457887990', 'Payment Received.<br />Your order is currently being processed.<br />PayFast Transaction ID: 0a826376-d641-7164-5abb-27de83a3e295', 'sent', '2024-06-30 18:01:20', '2024-06-30 18:02:30', '', ''),
(72, '+923457887990', 'Hello Shuja ghafoor,\r\n\r\nYour order #9015 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 18:45:54', '2024-07-01 03:07:53', '', ''),
(73, '+923224697987', 'Hello Mohammad,\r\nGreat news! Your order #9017 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 4* = 9600 Rs\r\nBlack Chaunsa *x 1* = *Free Gift*\r\n\r\nTotal: *9600* Rs\r\n\r\nPlease deposit the amount of Rs. 2000 (500 per box) to the following account and share the screenshot here to confirm your order.\r\n\r\nBank Alfalah\r\nAccount Number: 55135001785229\r\nAccount Title: Umair Hussain\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'invalid', '2024-06-30 19:06:07', '2024-07-01 13:45:52', '', ''),
(74, '+923365522002', 'Hello Syed Ahmed,\r\nGreat news! Your order #9018 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 2* = 4800 Rs\n\nTotal: *4800* Rs\r\n\nPlease deposit the amount of Rs. 1000 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 20:13:08', '2024-07-01 03:08:51', '', ''),
(75, '+923215007435', 'Hello usman butt,\r\nGreat news! Your order #9019 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 10* = 24000 Rs\nBlack Chaunsa *x 2* = *Free Gift*\n\nTotal: *24000* Rs\r\n\nPlease deposit the amount of Rs. 5000 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-06-30 21:54:13', '2024-07-01 03:09:26', '', ''),
(76, '+923127988285', 'Hello Umair Hussain,\r\nGreat news! Your order #9021 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 1* = 2400 Rs\n\nTotal: *2400* Rs\r\n\nPlease deposit the amount of Rs. 500 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 05:40:52', '2024-07-01 05:41:20', '', ''),
(77, '+927252800241', 'Hello josha,\r\n\r\nYour order #9020 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'invalid', '2024-07-01 05:43:50', '2024-07-01 05:44:22', '', ''),
(78, '+923212316789', 'Hello Mr.,\r\nGreat news! Your order #9022 for delicious mangoes is received.\r\n\r\nAnwar Ratol *x 3* = 5700 Rs\n\nTotal: *5700* Rs\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 10:04:20', '2024-07-01 10:04:51', '', ''),
(79, '+923223411396', 'Hello Rahim Sayani,\r\nGreat news! Your order #9025 for delicious mangoes is received.\r\n\r\nAnwar Ratol *x 1* = 1900 Rs\nMultani Chaunsa *x 1* = 1900 Rs\n\nTotal: *3800* Rs\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 10:19:04', '2024-07-01 10:19:50', '', ''),
(80, '+923061850536', 'Hello Sehrish,\r\nGreat news! Your order #9026 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 2*\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 10:22:31', '2024-07-01 10:22:52', '', ''),
(81, '+923100662419', 'Hello Test Order,\r\nGreat news! Your order #9028 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 1* = 2400 Rs\n\nTotal: *2400* Rs\r\n\nPlease deposit the amount of Rs. 500 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 10:26:42', '2024-07-01 10:27:20', '', ''),
(82, '+923219394659', 'Hello Rao,\r\nGreat news! Your order #9027 for delicious mangoes is received.\r\n\r\nAnwar Ratol *x 4*\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 10:27:19', '2024-07-01 10:27:53', '', ''),
(83, '+923002025122', 'Hello M Shahid Khan,\r\nGreat news! Your order #9029 for delicious mangoes is received.\r\n\r\nAnwar Ratol *x 1* = 1900 Rs\n\nTotal: *1900* Rs\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 10:32:54', '2024-07-01 10:33:20', '', ''),
(84, '+923009114781', 'Hello muhammad ashfaq,\r\n\r\nYour order #8820 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 11:01:10', '2024-07-01 11:01:51', '', ''),
(85, '+923009600772', 'Hello Malik Asad Awan,\r\nGreat news! Your order #9030 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 1* = 2400 Rs\n\nTotal: *2400* Rs\r\n\nPlease deposit the amount of Rs. 500 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 11:08:50', '2024-07-01 11:09:27', '', ''),
(86, '+923214113997', 'Hello Shahzad,\r\n\r\nYour order #8656 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 11:14:56', '2024-07-01 11:15:20', '', ''),
(87, '+923127988285', 'Hello Umair,\r\nGreat news! Your order #9031 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 1* = 2400 Rs\n\nTotal: *2400* Rs\r\n\nPlease deposit the amount of Rs. 500 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 11:22:39', '2024-07-01 11:23:20', '', ''),
(88, '+923345005912', 'Hello Anis,\r\n\r\nYour order #8621 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 11:24:01', '2024-07-01 11:24:20', '', ''),
(89, '+923315467760', 'Hello Sabahat,\r\n\r\nYour order #8427 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'invalid', '2024-07-01 11:53:03', '2024-07-01 11:53:50', '', ''),
(90, '+923217121770', 'Hello Usman,\r\n\r\nYour order #8949 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 12:02:37', '2024-07-01 12:03:20', '', ''),
(91, '+923344206078', 'Hello Muhammad,\r\nGreat news! Your order #8806 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 2* = 3200 Rs\n\nDiscounts: *-600* Rs\nTotal: *3200* Rs\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 12:11:15', '2024-07-01 12:11:50', '', ''),
(92, '+923475606966', 'Hello Syed Akmal Abbas,\r\nGreat news! Your order #8423 for delicious mangoes is received.\r\n\r\nSindhri *x 1* = 1600 Rs\nAnwar Ratol *x 1* = 1600 Rs\n\nDiscounts: *-300* Rs\nTotal: *3200* Rs\r\n\r\n\r\nPlease save our contact number so that we can keep you updated regarding your order.\r\n\r\nIf you have any questions, please ask.\r\nThank you for choosing us.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 12:14:33', '2024-07-01 12:15:20', '', ''),
(93, '+92336083089', 'Hello Syed ishtiaq Ali,\r\n\r\nYour order #8702 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'invalid', '2024-07-01 13:12:58', '2024-07-01 13:13:22', '', ''),
(94, '+923320777213', 'Hello Mirza Umar,\r\n\r\nYour order #8287 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 14:06:37', '2024-07-01 14:07:20', '', ''),
(95, '+923336182666', 'Hello Pirzada,\r\nGreat news! Your order #9032 for delicious mangoes is received.\r\n\r\nMultani Sindhri *x 1* = 2100 Rs\n\nTotal: *2100* Rs\r\n\nPlease deposit the amount of Rs. 500 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number (03176712465) so that we can keep you updated regarding your order.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 15:08:44', '2024-07-01 15:10:29', '', ''),
(96, '+923355021111', 'Hello Tahira Talat,\r\nGreat news! Your order #9033 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 1* = 2400 Rs\n\nTotal: *2400* Rs\r\n\nPlease deposit the amount of Rs. 500 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number (03176712465) so that we can keep you updated regarding your order.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 19:31:46', '2024-07-01 19:32:32', '', ''),
(97, '+923008508076', 'Hello Hammad,\r\nGreat news! Your order #9034 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 1* = 2400 Rs\n\nTotal: *2400* Rs\r\n\nPlease deposit the amount of Rs. 500 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number (03176712465) so that we can keep you updated regarding your order.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-01 19:39:57', '2024-07-01 19:40:20', '', ''),
(98, '923325442192', 'Hello Mishaal Safeer,\r\nGreat news! Your order #9035 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 1*\r\n\n*Gift Message:* Missing you, my love.\n\r\n\r\nPlease save our contact number (03176712465) so that we can keep you updated regarding your order.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 02:07:28', '2024-07-02 02:07:51', '', ''),
(99, '923325442192', 'Payment Received.<br />Your order is currently being processed.<br />PayFast Transaction ID: 59784cae-4d18-b7f9-5a6a-01fcbfa37c03', 'sent', '2024-07-02 02:07:28', '2024-07-02 02:08:21', '', ''),
(100, '+923155456962', 'Hello Qazi,\r\n\r\nYour order #7952 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 05:36:36', '2024-07-02 05:37:22', '', ''),
(101, '+923223777773', 'Hello Sajid Iqbal,\r\n\r\nYour order #7935 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 05:36:38', '2024-07-02 05:37:56', '', ''),
(102, '+923455575540', 'Hello Hassan Akhtar,\r\nGreat news! Your order #9036 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 5* = 12000 Rs\nBlack Chaunsa *x 1* = *Free Gift*\n\nTotal: *12000* Rs\r\n\nPlease deposit the amount of Rs. 2500 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number (03176712465) so that we can keep you updated regarding your order.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 05:41:55', '2024-07-02 05:42:25', '', ''),
(103, '923332265993', 'Hello Mustufa,\r\n\r\nYour order #7964 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 05:53:31', '2024-07-02 05:53:51', '', ''),
(104, '923332265993', 'Hello Mustufa,\r\n\r\nYour order #7965 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 05:57:42', '2024-07-02 05:58:21', '', ''),
(105, '443343858889', 'Hello Gulnaz,\r\n\r\nYour order #7975 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'invalid', '2024-07-02 06:10:26', '2024-07-02 06:10:52', '', ''),
(106, '+923228069743', 'Hello Muhammad Waqi,\r\n\r\nYour order #7985 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 06:16:27', '2024-07-02 06:16:51', '', ''),
(107, '+923340093415', 'Hello Anwer Aftab,\r\n\r\nYour order #7990 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 06:30:50', '2024-07-02 06:31:22', '', ''),
(108, '+923332193509', 'Hello Asif,\r\n\r\nYour order #8025 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 06:32:18', '2024-07-02 06:32:59', '', ''),
(109, '+923006172103', 'Hello Zeeshan qasir,\r\n\r\nYour order #8026 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 06:37:26', '2024-07-02 06:37:51', '', ''),
(110, '+923326042036', 'Hello Nadeem,\r\n\r\nYour order #8029 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 06:40:44', '2024-07-02 06:41:21', '', ''),
(111, '+923367772400', 'Hello Mehwish Mughal,\r\n\r\nYour order #8032 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 06:49:37', '2024-07-02 06:50:22', '', ''),
(112, '+923214590700', 'Hello Uzair,\r\nGreat news! Your order #9037 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 1* = 2400 Rs\nBlack Chaunsa *x 1* = 1800 Rs\nWhite Chaunsa *x 1* = 2350 Rs\n\nTotal: *6550* Rs\r\n\nPlease deposit the amount of Rs. 1500 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number (03176712465) so that we can keep you updated regarding your order.\r\n\r\nFrom: *OnlineMangoes.PK*', 'invalid', '2024-07-02 06:51:17', '2024-07-02 06:51:50', '', ''),
(113, '+923012109669', 'Hello Sabah,\r\n\r\nYour order #8038 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 07:07:45', '2024-07-02 07:08:22', '', ''),
(114, '923333027684', 'Hello Syed,\r\n\r\nYour order #8048 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 07:45:01', '2024-07-02 07:45:22', '', ''),
(115, '923465853550', 'Hello Asad,\r\n\r\nYour order #8066 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'invalid', '2024-07-02 07:47:40', '2024-07-02 07:48:23', '', ''),
(116, '+923234337889', 'Hello Dilawer Ali,\r\n\r\nYour order #8173 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 08:01:50', '2024-07-02 08:02:21', '', ''),
(117, '+923408906545', 'Hello Sajid mehmood,\r\n\r\nYour order #8185 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 08:05:58', '2024-07-02 08:06:22', '', ''),
(118, '+923334314932', 'Hello ARSHAD SUBHANI,\r\n\r\nYour order #8280 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 08:46:04', '2024-07-02 08:46:51', '', ''),
(119, '+923345411101', 'Hello Adnan Nomani,\r\n\r\nYour order #8283 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 08:48:42', '2024-07-02 08:49:21', '', ''),
(120, '+923135666026', 'Hello Kiran,\r\n\r\nYour order #8335 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 08:58:38', '2024-07-02 08:59:21', '', ''),
(121, '+923313592228', 'Hello farah siddiqi,\r\n\r\nYour order #8386 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 09:05:41', '2024-07-02 09:06:21', '', ''),
(122, '+923218405337', 'Hello Muhammad Tariq,\r\n\r\nYour order #8258 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 09:09:31', '2024-07-02 09:09:51', '', ''),
(123, '+923009415620', 'Hello Ashar Khan,\r\n\r\nYour order #8710 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 09:19:42', '2024-07-02 09:20:21', '', ''),
(124, '+923220233007', 'Hello Noor,\r\n\r\nYour order #8932 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 09:22:36', '2024-07-02 09:23:21', '', ''),
(125, '+923364220776', 'Hello Zafar Abbas,\r\nGreat news! Your order #9038 for delicious mangoes is received.\r\n\r\nMultani Chaunsa *x 1* = 2400 Rs\n\nTotal: *2400* Rs\r\n\nPlease deposit the amount of Rs. 500 (500 per box) to the following account and share the screenshot here to confirm your order.\n\nBank Alfalah\nAccount Number: 55135001785229\nAccount Title: Umair Hussain\n\r\n\r\nPlease save our contact number (03176712465) so that we can keep you updated regarding your order.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 09:24:33', '2024-07-02 09:24:55', '', ''),
(126, '+923340358989', 'Hello Muhammad Adil,\r\n\r\nYour order #8943 was cancelled.\r\n\r\nIf you have any queries, please ask.\r\n\r\nFrom: *OnlineMangoes.PK*', 'sent', '2024-07-02 09:24:43', '2024-07-02 09:25:22', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
