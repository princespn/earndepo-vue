-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 28, 2022 at 05:29 PM
-- Server version: 5.7.38-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xento_corp`
--

-- --------------------------------------------------------

--
-- Table structure for table `airports`
--

CREATE TABLE `airports` (
  `id` int(11) NOT NULL,
  `code` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cityCode` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `cityName` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `countryName` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `countryCode` varchar(200) COLLATE utf8_turkish_ci DEFAULT NULL,
  `timezone` varchar(8) COLLATE utf8_turkish_ci DEFAULT NULL,
  `lat` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  `lon` varchar(32) COLLATE utf8_turkish_ci DEFAULT NULL,
  `numAirports` int(11) DEFAULT NULL,
  `city` enum('true','false') COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_wize_currency`
--

CREATE TABLE `country_wize_currency` (
  `ID` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `dial_code` int(11) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `usd_to_other_curr` decimal(10,2) NOT NULL DEFAULT '73.63',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country_wize_currency`
--

INSERT INTO `country_wize_currency` (`ID`, `code`, `name`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`, `usd_to_other_curr`, `status`) VALUES
(1, 'AF', 'Afghanistan', 93, 'Afghan afghani', '؋', 'AFN', '73.63', 0),
(2, 'AL', 'Albania', 355, 'Albanian lek', 'L', 'ALL', '73.63', 0),
(3, 'DZ', 'Algeria', 213, 'Algerian dinar', 'د.ج', 'DZD', '73.63', 0),
(4, 'AS', 'American Samoa', 1684, '', '', '', '73.63', 0),
(5, 'AD', 'Andorra', 376, 'Euro', '€', 'EUR', '73.63', 0),
(6, 'AO', 'Angola', 244, 'Angolan kwanza', 'Kz', 'AOA', '73.63', 0),
(7, 'AI', 'Anguilla', 1264, 'East Caribbean dolla', '$', 'XCD', '73.63', 0),
(8, 'AQ', 'Antarctica', 0, '', '', '', '73.63', 0),
(9, 'AG', 'Antigua And Barbuda', 1268, 'East Caribbean dolla', '$', 'XCD', '73.63', 0),
(10, 'AR', 'Argentina', 54, 'Argentine peso', '$', 'ARS', '73.63', 0),
(11, 'AM', 'Armenia', 374, 'Armenian dram', '', 'AMD', '73.63', 0),
(12, 'AW', 'Aruba', 297, 'Aruban florin', 'ƒ', 'AWG', '73.63', 0),
(13, 'AU', 'Australia', 61, 'Australian dollar', '$', 'AUD', '73.63', 0),
(14, 'AT', 'Austria', 43, 'Euro', '€', 'EUR', '73.63', 0),
(15, 'AZ', 'Azerbaijan', 994, 'Azerbaijani manat', '', 'AZN', '73.63', 0),
(16, 'BS', 'Bahamas The', 1242, '', '', '', '73.63', 0),
(17, 'BH', 'Bahrain', 973, 'Bahraini dinar', '.د.ب', 'BHD', '73.63', 0),
(18, 'BD', 'Bangladesh', 880, 'Bangladeshi taka', '৳', 'BDT', '73.63', 0),
(19, 'BB', 'Barbados', 1246, 'Barbadian dollar', '$', 'BBD', '73.63', 0),
(20, 'BY', 'Belarus', 375, 'Belarusian ruble', 'Br', 'BYR', '73.63', 0),
(21, 'BE', 'Belgium', 32, 'Euro', '€', 'EUR', '73.63', 0),
(22, 'BZ', 'Belize', 501, 'Belize dollar', '$', 'BZD', '73.63', 0),
(23, 'BJ', 'Benin', 229, 'West African CFA fra', 'Fr', 'XOF', '73.63', 0),
(24, 'BM', 'Bermuda', 1441, 'Bermudian dollar', '$', 'BMD', '73.63', 0),
(25, 'BT', 'Bhutan', 975, 'Bhutanese ngultrum', 'Nu.', 'BTN', '73.63', 0),
(26, 'BO', 'Bolivia', 591, 'Bolivian boliviano', 'Bs.', 'BOB', '73.63', 0),
(27, 'BA', 'Bosnia and Herzegovina', 387, 'Bosnia and Herzegovi', 'KM or КМ', 'BAM', '73.63', 0),
(28, 'BW', 'Botswana', 267, 'Botswana pula', 'P', 'BWP', '73.63', 0),
(29, 'BV', 'Bouvet Island', 0, '', '', '', '73.63', 0),
(30, 'BR', 'Brazil', 55, 'Brazilian real', 'R$', 'BRL', '73.63', 0),
(31, 'IO', 'British Indian Ocean Territory', 246, 'United States dollar', '$', 'USD', '73.63', 0),
(32, 'BN', 'Brunei', 673, 'Brunei dollar', '$', 'BND', '73.63', 0),
(33, 'BG', 'Bulgaria', 359, 'Bulgarian lev', 'лв', 'BGN', '73.63', 0),
(34, 'BF', 'Burkina Faso', 226, 'West African CFA fra', 'Fr', 'XOF', '600.00', 1),
(35, 'BI', 'Burundi', 257, 'Burundian franc', 'Fr', 'BIF', '73.63', 0),
(36, 'KH', 'Cambodia', 855, 'Cambodian riel', '៛', 'KHR', '73.63', 0),
(37, 'CM', 'Cameroon', 237, 'Central African CFA ', 'Fr', 'XAF', '600.00', 1),
(38, 'CA', 'Canada', 1, 'Canadian dollar', '$', 'CAD', '1.40', 1),
(39, 'CV', 'Cape Verde', 238, 'Cape Verdean escudo', 'Esc or $', 'CVE', '73.63', 0),
(40, 'KY', 'Cayman Islands', 1345, 'Cayman Islands dolla', '$', 'KYD', '73.63', 0),
(41, 'CF', 'Central African Republic', 236, 'Central African CFA ', 'Fr', 'XAF', '73.63', 0),
(42, 'TD', 'Chad', 235, 'Central African CFA ', 'Fr', 'XAF', '73.63', 0),
(43, 'CL', 'Chile', 56, 'Chilean peso', '$', 'CLP', '73.63', 0),
(44, 'CN', 'China', 86, 'Chinese yuan', '¥ or 元', 'CNY', '73.63', 0),
(45, 'CX', 'Christmas Island', 61, '', '', '', '73.63', 0),
(46, 'CC', 'Cocos (Keeling) Islands', 672, 'Australian dollar', '$', 'AUD', '73.63', 0),
(47, 'CO', 'Colombia', 57, 'Colombian peso', '$', 'COP', '73.63', 0),
(48, 'KM', 'Comoros', 269, 'Comorian franc', 'Fr', 'KMF', '73.63', 0),
(49, 'CG', 'Congo', 242, '', '', '', '73.63', 0),
(50, 'CD', 'Congo The Democratic Republic Of The', 242, '', '', '', '73.63', 0),
(51, 'CK', 'Cook Islands', 682, 'New Zealand dollar', '$', 'NZD', '73.63', 0),
(52, 'CR', 'Costa Rica', 506, 'Costa Rican colón', '₡', 'CRC', '73.63', 0),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, '', '', '', '73.63', 0),
(54, 'HR', 'Croatia (Hrvatska)', 385, '', '', '', '73.63', 0),
(55, 'CU', 'Cuba', 53, 'Cuban convertible pe', '$', 'CUC', '73.63', 0),
(56, 'CY', 'Cyprus', 357, 'Euro', '€', 'EUR', '73.63', 0),
(57, 'CZ', 'Czech Republic', 420, 'Czech koruna', 'Kč', 'CZK', '24.00', 1),
(58, 'DK', 'Denmark', 45, 'Danish krone', 'kr', 'DKK', '73.63', 0),
(59, 'DJ', 'Djibouti', 253, 'Djiboutian franc', 'Fr', 'DJF', '73.63', 0),
(60, 'DM', 'Dominica', 1767, 'East Caribbean dolla', '$', 'XCD', '73.63', 0),
(61, 'DO', 'Dominican Republic', 1809, 'Dominican peso', '$', 'DOP', '73.63', 0),
(62, 'TP', 'East Timor', 670, 'United States dollar', '$', 'USD', '73.63', 0),
(63, 'EC', 'Ecuador', 593, 'United States dollar', '$', 'USD', '73.63', 0),
(64, 'EG', 'Egypt', 20, 'Egyptian pound', '£ or ج.م', 'EGP', '73.63', 0),
(65, 'SV', 'El Salvador', 503, 'United States dollar', '$', 'USD', '73.63', 0),
(66, 'GQ', 'Equatorial Guinea', 240, 'Central African CFA ', 'Fr', 'XAF', '73.63', 0),
(67, 'ER', 'Eritrea', 291, 'Eritrean nakfa', 'Nfk', 'ERN', '73.63', 0),
(68, 'EE', 'Estonia', 372, 'Euro', '€', 'EUR', '73.63', 0),
(69, 'ET', 'Ethiopia', 251, 'Ethiopian birr', 'Br', 'ETB', '73.63', 0),
(70, 'XA', 'External Territories of Australia', 61, '', '', '', '73.63', 0),
(71, 'FK', 'Falkland Islands', 500, 'Falkland Islands pou', '£', 'FKP', '73.63', 0),
(72, 'FO', 'Faroe Islands', 298, 'Danish krone', 'kr', 'DKK', '73.63', 0),
(73, 'FJ', 'Fiji Islands', 679, '', '', '', '73.63', 0),
(74, 'FI', 'Finland', 358, 'Euro', '€', 'EUR', '73.63', 0),
(75, 'FR', 'France', 33, 'Euro', '€', 'EUR', '73.63', 0),
(76, 'GF', 'French Guiana', 594, '', '', '', '73.63', 0),
(77, 'PF', 'French Polynesia', 689, 'CFP franc', 'Fr', 'XPF', '73.63', 0),
(78, 'TF', 'French Southern Territories', 0, '', '', '', '73.63', 0),
(79, 'GA', 'Gabon', 241, 'Central African CFA ', 'Fr', 'XAF', '73.63', 0),
(80, 'GM', 'Gambia The', 220, '', '', '', '73.63', 0),
(81, 'GE', 'Georgia', 995, 'Georgian lari', 'ლ', 'GEL', '73.63', 0),
(82, 'DE', 'Germany', 49, 'Euro', '€', 'EUR', '73.63', 0),
(83, 'GH', 'Ghana', 233, 'Ghana cedi', '₵', 'GHS', '73.63', 0),
(84, 'GI', 'Gibraltar', 350, 'Gibraltar pound', '£', 'GIP', '73.63', 0),
(85, 'GR', 'Greece', 30, 'Euro', '€', 'EUR', '73.63', 0),
(86, 'GL', 'Greenland', 299, '', '', '', '73.63', 0),
(87, 'GD', 'Grenada', 1473, 'East Caribbean dolla', '$', 'XCD', '73.63', 0),
(88, 'GP', 'Guadeloupe', 590, '', '', '', '73.63', 0),
(89, 'GU', 'Guam', 1671, '', '', '', '73.63', 0),
(90, 'GT', 'Guatemala', 502, 'Guatemalan quetzal', 'Q', 'GTQ', '73.63', 0),
(91, 'XU', 'Guernsey and Alderney', 44, '', '', '', '73.63', 0),
(92, 'GN', 'Guinea', 224, 'Guinean franc', 'Fr', 'GNF', '73.63', 0),
(93, 'GW', 'Guinea-Bissau', 245, 'West African CFA fra', 'Fr', 'XOF', '73.63', 0),
(94, 'GY', 'Guyana', 592, 'Guyanese dollar', '$', 'GYD', '73.63', 0),
(95, 'HT', 'Haiti', 509, 'Haitian gourde', 'G', 'HTG', '73.63', 0),
(96, 'HM', 'Heard and McDonald Islands', 0, '', '', '', '73.63', 0),
(97, 'HN', 'Honduras', 504, 'Honduran lempira', 'L', 'HNL', '73.63', 0),
(98, 'HK', 'Hong Kong S.A.R.', 852, '', '', '', '73.63', 0),
(99, 'HU', 'Hungary', 36, 'Hungarian forint', 'Ft', 'HUF', '73.63', 0),
(100, 'IS', 'Iceland', 354, 'Icelandic króna', 'kr', 'ISK', '73.63', 0),
(101, 'IN', 'India', 91, 'Indian rupee', '₹', 'INR', '80.00', 1),
(102, 'ID', 'Indonesia', 62, 'Indonesian rupiah', 'Rp', 'IDR', '73.63', 0),
(103, 'IR', 'Iran', 98, 'Iranian rial', '﷼', 'IRR', '46000.00', 0),
(104, 'IQ', 'Iraq', 964, 'Iraqi dinar', 'ع.د', 'IQD', '73.63', 0),
(105, 'IE', 'Ireland', 353, 'Euro', '€', 'EUR', '73.63', 0),
(106, 'IL', 'Israel', 972, 'Israeli new shekel', '₪', 'ILS', '73.63', 0),
(107, 'IT', 'Italy', 39, 'Euro', '€', 'EUR', '73.63', 0),
(108, 'JM', 'Jamaica', 1876, 'Jamaican dollar', '$', 'JMD', '73.63', 0),
(109, 'JP', 'Japan', 81, 'Japanese yen', '¥', 'JPY', '120.00', 1),
(110, 'XJ', 'Jersey', 44, 'British pound', '£', 'GBP', '73.63', 0),
(111, 'JO', 'Jordan', 962, 'Jordanian dinar', 'د.ا', 'JOD', '73.63', 0),
(112, 'KZ', 'Kazakhstan', 7, 'Kazakhstani tenge', '', 'KZT', '73.63', 0),
(113, 'KE', 'Kenya', 254, 'Kenyan shilling', 'Sh', 'KES', '73.63', 0),
(114, 'KI', 'Kiribati', 686, 'Australian dollar', '$', 'AUD', '73.63', 0),
(115, 'KP', 'Korea North', 850, '', '', '', '73.63', 0),
(116, 'KR', 'Korea South', 82, '', '', '', '73.63', 0),
(117, 'KW', 'Kuwait', 965, 'Kuwaiti dinar', 'د.ك', 'KWD', '73.63', 0),
(118, 'KG', 'Kyrgyzstan', 996, 'Kyrgyzstani som', 'лв', 'KGS', '73.63', 0),
(119, 'LA', 'Laos', 856, 'Lao kip', '₭', 'LAK', '73.63', 0),
(120, 'LV', 'Latvia', 371, 'Euro', '€', 'EUR', '73.63', 0),
(121, 'LB', 'Lebanon', 961, 'Lebanese pound', 'ل.ل', 'LBP', '73.63', 0),
(122, 'LS', 'Lesotho', 266, 'Lesotho loti', 'L', 'LSL', '73.63', 0),
(123, 'LR', 'Liberia', 231, 'Liberian dollar', '$', 'LRD', '73.63', 0),
(124, 'LY', 'Libya', 218, 'Libyan dinar', 'ل.د', 'LYD', '73.63', 0),
(125, 'LI', 'Liechtenstein', 423, 'Swiss franc', 'Fr', 'CHF', '73.63', 0),
(126, 'LT', 'Lithuania', 370, 'Euro', '€', 'EUR', '73.63', 0),
(127, 'LU', 'Luxembourg', 352, 'Euro', '€', 'EUR', '73.63', 0),
(128, 'MO', 'Macau S.A.R.', 853, '', '', '', '73.63', 0),
(129, 'MK', 'Macedonia', 389, '', '', '', '73.63', 0),
(130, 'MG', 'Madagascar', 261, 'Malagasy ariary', 'Ar', 'MGA', '73.63', 0),
(131, 'MW', 'Malawi', 265, 'Malawian kwacha', 'MK', 'MWK', '73.63', 0),
(132, 'MY', 'Malaysia', 60, 'Malaysian ringgit', 'RM', 'MYR', '73.63', 0),
(133, 'MV', 'Maldives', 960, 'Maldivian rufiyaa', '.ރ', 'MVR', '73.63', 0),
(134, 'ML', 'Mali', 223, 'West African CFA fra', 'Fr', 'XOF', '73.63', 0),
(135, 'MT', 'Malta', 356, 'Euro', '€', 'EUR', '73.63', 0),
(136, 'XM', 'Man (Isle of)', 44, '', '', '', '73.63', 0),
(137, 'MH', 'Marshall Islands', 692, 'United States dollar', '$', 'USD', '73.63', 0),
(138, 'MQ', 'Martinique', 596, '', '', '', '73.63', 0),
(139, 'MR', 'Mauritania', 222, 'Mauritanian ouguiya', 'UM', 'MRO', '73.63', 0),
(140, 'MU', 'Mauritius', 230, 'Mauritian rupee', '₨', 'MUR', '73.63', 0),
(141, 'YT', 'Mayotte', 269, '', '', '', '73.63', 0),
(142, 'MX', 'Mexico', 52, 'Mexican peso', '$', 'MXN', '73.63', 0),
(143, 'FM', 'Micronesia', 691, 'Micronesian dollar', '$', '', '73.63', 0),
(144, 'MD', 'Moldova', 373, 'Moldovan leu', 'L', 'MDL', '73.63', 0),
(145, 'MC', 'Monaco', 377, 'Euro', '€', 'EUR', '73.63', 0),
(146, 'MN', 'Mongolia', 976, 'Mongolian tögrög', '₮', 'MNT', '73.63', 0),
(147, 'MS', 'Montserrat', 1664, 'East Caribbean dolla', '$', 'XCD', '73.63', 0),
(148, 'MA', 'Morocco', 212, 'Moroccan dirham', 'د.م.', 'MAD', '73.63', 0),
(149, 'MZ', 'Mozambique', 258, 'Mozambican metical', 'MT', 'MZN', '73.63', 0),
(150, 'MM', 'Myanmar', 95, 'Burmese kyat', 'Ks', 'MMK', '73.63', 0),
(151, 'NA', 'Namibia', 264, 'Namibian dollar', '$', 'NAD', '73.63', 0),
(152, 'NR', 'Nauru', 674, 'Australian dollar', '$', 'AUD', '73.63', 0),
(153, 'NP', 'Nepal', 977, 'Nepalese rupee', '₨', 'NPR', '73.63', 0),
(154, 'AN', 'Netherlands Antilles', 599, '', '', '', '73.63', 0),
(155, 'NL', 'Netherlands The', 31, '', '', '', '73.63', 0),
(156, 'NC', 'New Caledonia', 687, 'CFP franc', 'Fr', 'XPF', '73.63', 0),
(157, 'NZ', 'New Zealand', 64, 'New Zealand dollar', '$', 'NZD', '73.63', 0),
(158, 'NI', 'Nicaragua', 505, 'Nicaraguan córdoba', 'C$', 'NIO', '73.63', 0),
(159, 'NE', 'Niger', 227, 'West African CFA fra', 'Fr', 'XOF', '73.63', 0),
(160, 'NG', 'Nigeria', 234, 'Nigerian naira', '₦', 'NGN', '420.00', 1),
(161, 'NU', 'Niue', 683, 'New Zealand dollar', '$', 'NZD', '73.63', 0),
(162, 'NF', 'Norfolk Island', 672, '', '', '', '73.63', 0),
(163, 'MP', 'Northern Mariana Islands', 1670, '', '', '', '73.63', 0),
(164, 'NO', 'Norway', 47, 'Norwegian krone', 'kr', 'NOK', '73.63', 0),
(165, 'OM', 'Oman', 968, 'Omani rial', 'ر.ع.', 'OMR', '73.63', 0),
(166, 'PK', 'Pakistan', 92, 'Pakistani rupee', '₨', 'PKR', '170.00', 1),
(167, 'PW', 'Palau', 680, 'Palauan dollar', '$', '', '73.63', 0),
(168, 'PS', 'Palestinian Territory Occupied', 970, '', '', '', '73.63', 0),
(169, 'PA', 'Panama', 507, 'Panamanian balboa', 'B/.', 'PAB', '73.63', 0),
(170, 'PG', 'Papua new Guinea', 675, 'Papua New Guinean ki', 'K', 'PGK', '73.63', 0),
(171, 'PY', 'Paraguay', 595, 'Paraguayan guaraní', '₲', 'PYG', '73.63', 0),
(172, 'PE', 'Peru', 51, 'Peruvian nuevo sol', 'S/.', 'PEN', '73.63', 0),
(173, 'PH', 'Philippines', 63, 'Philippine peso', '₱', 'PHP', '73.63', 0),
(174, 'PN', 'Pitcairn Island', 0, '', '', '', '73.63', 0),
(175, 'PL', 'Poland', 48, 'Polish złoty', 'zł', 'PLN', '73.63', 0),
(176, 'PT', 'Portugal', 351, 'Euro', '€', 'EUR', '73.63', 0),
(177, 'PR', 'Puerto Rico', 1787, '', '', '', '73.63', 0),
(178, 'QA', 'Qatar', 974, 'Qatari riyal', 'ر.ق', 'QAR', '73.63', 0),
(179, 'RE', 'Reunion', 262, '', '', '', '73.63', 0),
(180, 'RO', 'Romania', 40, 'Romanian leu', 'lei', 'RON', '73.63', 0),
(181, 'RU', 'Russia', 70, 'Russian ruble', '', 'RUB', '73.63', 0),
(182, 'RW', 'Rwanda', 250, 'Rwandan franc', 'Fr', 'RWF', '73.63', 0),
(183, 'SH', 'Saint Helena', 290, 'Saint Helena pound', '£', 'SHP', '73.63', 0),
(184, 'KN', 'Saint Kitts And Nevis', 1869, 'East Caribbean dolla', '$', 'XCD', '73.63', 0),
(185, 'LC', 'Saint Lucia', 1758, 'East Caribbean dolla', '$', 'XCD', '73.63', 0),
(186, 'PM', 'Saint Pierre and Miquelon', 508, '', '', '', '73.63', 0),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, 'East Caribbean dolla', '$', 'XCD', '73.63', 0),
(188, 'WS', 'Samoa', 684, 'Samoan tālā', 'T', 'WST', '73.63', 0),
(189, 'SM', 'San Marino', 378, 'Euro', '€', 'EUR', '73.63', 0),
(190, 'ST', 'Sao Tome and Principe', 239, 'São Tomé and Príncip', 'Db', 'STD', '73.63', 0),
(191, 'SA', 'Saudi Arabia', 966, 'Saudi riyal', 'ر.س', 'SAR', '73.63', 0),
(192, 'SN', 'Senegal', 221, 'West African CFA fra', 'Fr', 'XOF', '600.00', 1),
(193, 'RS', 'Serbia', 381, 'Serbian dinar', 'дин. or din.', 'RSD', '73.63', 0),
(194, 'SC', 'Seychelles', 248, 'Seychellois rupee', '₨', 'SCR', '73.63', 0),
(195, 'SL', 'Sierra Leone', 232, 'Sierra Leonean leone', 'Le', 'SLL', '73.63', 0),
(196, 'SG', 'Singapore', 65, 'Brunei dollar', '$', 'BND', '73.63', 0),
(197, 'SK', 'Slovakia', 421, 'Euro', '€', 'EUR', '73.63', 0),
(198, 'SI', 'Slovenia', 386, 'Euro', '€', 'EUR', '73.63', 0),
(199, 'XG', 'Smaller Territories of the UK', 44, '', '', '', '73.63', 0),
(200, 'SB', 'Solomon Islands', 677, 'Solomon Islands doll', '$', 'SBD', '73.63', 0),
(201, 'SO', 'Somalia', 252, 'Somali shilling', 'Sh', 'SOS', '73.63', 0),
(202, 'ZA', 'South Africa', 27, 'South African rand', 'R', 'ZAR', '16.00', 1),
(203, 'GS', 'South Georgia', 0, '', '', '', '73.63', 0),
(204, 'SS', 'South Sudan', 211, 'South Sudanese pound', '£', 'SSP', '73.63', 0),
(205, 'ES', 'Spain', 34, 'Euro', '€', 'EUR', '73.63', 0),
(206, 'LK', 'Sri Lanka', 94, 'Sri Lankan rupee', 'Rs or රු', 'LKR', '73.63', 0),
(207, 'SD', 'Sudan', 249, 'Sudanese pound', 'ج.س.', 'SDG', '73.63', 0),
(208, 'SR', 'Suriname', 597, 'Surinamese dollar', '$', 'SRD', '73.63', 0),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, '', '', '', '73.63', 0),
(210, 'SZ', 'Swaziland', 268, 'Swazi lilangeni', 'L', 'SZL', '73.63', 0),
(211, 'SE', 'Sweden', 46, 'Swedish krona', 'kr', 'SEK', '73.63', 0),
(212, 'CH', 'Switzerland', 41, 'Swiss franc', 'Fr', 'CHF', '73.63', 0),
(213, 'SY', 'Syria', 963, 'Syrian pound', '£ or ل.س', 'SYP', '73.63', 0),
(214, 'TW', 'Taiwan', 886, 'New Taiwan dollar', '$', 'TWD', '73.63', 0),
(215, 'TJ', 'Tajikistan', 992, 'Tajikistani somoni', 'ЅМ', 'TJS', '73.63', 0),
(216, 'TZ', 'Tanzania', 255, 'Tanzanian shilling', 'Sh', 'TZS', '2550.00', 0),
(217, 'TH', 'Thailand', 66, 'Thai baht', '฿', 'THB', '73.63', 0),
(218, 'TG', 'Togo', 228, 'West African CFA fra', 'Fr', 'XOF', '600.00', 1),
(219, 'TK', 'Tokelau', 690, '', '', '', '73.63', 0),
(220, 'TO', 'Tonga', 676, 'Tongan paʻanga', 'T$', 'TOP', '73.63', 0),
(221, 'TT', 'Trinidad And Tobago', 1868, 'Trinidad and Tobago ', '$', 'TTD', '73.63', 0),
(222, 'TN', 'Tunisia', 216, 'Tunisian dinar', 'د.ت', 'TND', '73.63', 0),
(223, 'TR', 'Turkey', 90, 'Turkish lira', '', 'TRY', '73.63', 0),
(224, 'TM', 'Turkmenistan', 7370, 'Turkmenistan manat', 'm', 'TMT', '73.63', 0),
(225, 'TC', 'Turks And Caicos Islands', 1649, 'United States dollar', '$', 'USD', '73.63', 0),
(226, 'TV', 'Tuvalu', 688, 'Australian dollar', '$', 'AUD', '73.63', 0),
(227, 'UG', 'Uganda', 256, 'Ugandan shilling', 'Sh', 'UGX', '73.63', 0),
(228, 'UA', 'Ukraine', 380, 'Ukrainian hryvnia', '₴', 'UAH', '73.63', 0),
(229, 'AE', 'United Arab Emirates', 971, 'United Arab Emirates', 'د.إ', 'AED', '3.70', 1),
(230, 'GB', 'United Kingdom', 44, 'British pound', '£', 'GBP', '73.63', 0),
(231, 'US', 'United States', 1, 'United States dollar', '$', 'USD', '73.63', 0),
(232, 'UM', 'United States Minor Outlying Islands', 1, '', '', '', '73.63', 0),
(233, 'UY', 'Uruguay', 598, 'Uruguayan peso', '$', 'UYU', '73.63', 0),
(234, 'UZ', 'Uzbekistan', 998, 'Uzbekistani som', '', 'UZS', '73.63', 0),
(235, 'VU', 'Vanuatu', 678, 'Vanuatu vatu', 'Vt', 'VUV', '73.63', 0),
(236, 'VA', 'Vatican City State (Holy See)', 39, '', '', '', '73.63', 0),
(237, 'VE', 'Venezuela', 58, 'Venezuelan bolívar', 'Bs F', 'VEF', '73.63', 0),
(238, 'VN', 'Vietnam', 84, 'Vietnamese đồng', '₫', 'VND', '73.63', 0),
(239, 'VG', 'Virgin Islands (British)', 1284, '', '', '', '73.63', 0),
(240, 'VI', 'Virgin Islands (US)', 1340, '', '', '', '73.63', 0),
(241, 'WF', 'Wallis And Futuna Islands', 681, '', '', '', '73.63', 0),
(242, 'EH', 'Western Sahara', 212, '', '', '', '73.63', 0),
(243, 'YE', 'Yemen', 967, 'Yemeni rial', '﷼', 'YER', '73.63', 0),
(244, 'YU', 'Yugoslavia', 38, '', '', '', '73.63', 0),
(245, 'ZM', 'Zambia', 260, 'Zambian kwacha', 'ZK', 'ZMW', '73.63', 0),
(246, 'ZW', 'Zimbabwe', 263, 'Botswana pula', 'P', 'BWP', '73.63', 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('004ddf6ac775805eb12d9121f1712ca05f36c6112a70c7942dfcf9c637c9d34223ff60093e3b0ed1', 8, 6, NULL, '[\"*\"]', 0, '2021-11-17 00:36:06', '2021-11-17 00:36:06', '2022-11-17 00:36:06'),
('00aa0ec3586da3d47bb29ce91646773408220c097fbf940f8d321ce2faf6fb53fad29f8eb3565bff', 8, 6, NULL, '[\"*\"]', 0, '2021-12-03 12:06:12', '2021-12-03 12:06:12', '2022-12-03 21:06:12'),
('018efd47a637e700f87e1927606eb997f77e90e1d8c3b4d90f2805e1d2afa0aff81c514290846d13', 42, 6, NULL, '[\"*\"]', 0, '2021-11-15 21:24:51', '2021-11-15 21:24:51', '2022-11-15 21:24:51'),
('01da08f1bda2d6f6a619c4079420a9d1718608f3c6e29acf746eb23d910b893312b7b802d7e45f9a', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 19:45:12', '2021-10-06 19:45:12', '2022-10-06 19:45:12'),
('021e8cdc3c60edc742fea8c1e31922a1104836656a2df3cd3d8dbfce16ffb374280bfdcc57b63a2c', 25, 6, NULL, '[\"*\"]', 0, '2021-11-01 18:45:48', '2021-11-01 18:45:48', '2022-11-01 18:45:48'),
('0238416832e2b26cdaa3dc4981af01e03fe8d6d57acc0feb53b04b365a301b5b74dbeacf1ec4a795', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:57', '2021-11-02 00:39:57', '2022-11-02 00:39:57'),
('024336883ea2e7d23cd379a52ea78f91de0e2624cadc3b08d834c3183e96da151b461a16a53e35ad', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:32', '2021-11-02 00:38:32', '2022-11-02 00:38:32'),
('033956ebaa94bb66a65a3bca9c5b267e2102dace3e3b0b81eac8341acb2508850ede15d41d9bb442', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 14:52:54', '2021-10-29 14:52:54', '2022-10-29 14:52:54'),
('038d5afc8e2b69c703db9e787d674669163e17ab2f56c09675ec679e79e96c3a3f3d7589ab79baff', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 18:48:21', '2021-10-11 18:48:21', '2022-10-11 18:48:21'),
('03bf4279e82f2a8c676f5956854081ea589ca68cd592d2f7637c32f1976e2deaf5f320ab0781b427', 2, 6, NULL, '[\"*\"]', 0, '2022-04-01 08:17:30', '2022-04-01 08:17:30', '2023-04-01 13:47:30'),
('03c7eff6fa5d6bd5ead9c899b0751bd861def3ed8cf9df5057024fe82f9d3a02fd216832ed0ad339', 1, 6, NULL, '[\"*\"]', 1, '2022-03-25 16:19:22', '2022-03-25 16:19:22', '2023-03-25 16:19:22'),
('04137e17787dd3f607ddf3c3df2903f237fa831ae5bf68c0f942698e9c38bc8e4dbdc4d715d68804', 2, 6, NULL, '[\"*\"]', 0, '2021-12-03 11:38:43', '2021-12-03 11:38:43', '2022-12-03 20:38:43'),
('05126ff2c047cbdc5b31d506c03c4b2a3b8654e55ee5918580713fd8e50672198e536a58fee40abc', 2, 6, NULL, '[\"*\"]', 0, '2021-10-05 17:16:12', '2021-10-05 17:16:12', '2022-10-05 17:16:12'),
('0611439dd0357794040e9ab04cd696f50d962924d4e75e6f0c6eccbd1176f50c9a331d6c0d686a2b', 1, 6, NULL, '[\"*\"]', 0, '2022-03-14 19:08:18', '2022-03-14 19:08:18', '2023-03-14 19:08:18'),
('067fb5c7ad2869a3c4329feb6ddbd831cb543d9ab5ee0dfc9654242f0235bb3d92d7745e3b91683c', 1, 6, NULL, '[\"*\"]', 1, '2021-10-05 23:59:04', '2021-10-05 23:59:04', '2022-10-05 23:59:04'),
('0685998b7fa866440e9b8b85097abc14e43611480f9de65f83c5bb307c88d496ada2bf7c1b6d2280', 8, 6, NULL, '[\"*\"]', 0, '2022-02-08 19:31:31', '2022-02-08 19:31:31', '2023-02-08 19:31:31'),
('0741948bbcf8ef2e5b806cfd2f6dc3c2be665f83f70f514777e500a7e0fb919e8f650f66eb791790', 2, 6, NULL, '[\"*\"]', 0, '2022-02-21 19:39:09', '2022-02-21 19:39:09', '2023-02-21 19:39:09'),
('0789f19a673c61919de3355fe95687bef63f7a70e69cb49e88b6cf04c2c09bb9a54d811e7d93f805', 2, 6, NULL, '[\"*\"]', 0, '2021-10-07 16:50:03', '2021-10-07 16:50:03', '2022-10-07 16:50:03'),
('078b1c880ca0ab1f313d3eb72577626fd16429c431079b06b59d5abb77738a9552b1306e0a229349', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 13:28:41', '2021-10-11 13:28:41', '2022-10-11 13:28:41'),
('07a95364d95eae4f3f2daa6873b2cfaf8faf7de3a457916ab9e4b07b129d00172069813a0d56e610', 4, 6, NULL, '[\"*\"]', 0, '2022-02-22 20:50:55', '2022-02-22 20:50:55', '2023-02-22 20:50:55'),
('07c8e12f46e1522917310b488a0cde8d2554b504786d24c12af2f8955dc68920b1393a273be4cb39', 2, 6, NULL, '[\"*\"]', 0, '2021-10-11 23:06:48', '2021-10-11 23:06:48', '2022-10-11 23:06:48'),
('07cf4c8c8445e554b5ed771441af93620da5e1200c4e0fd4b0544f4c105bd4469531cb75d18d58ad', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:35', '2021-11-02 00:40:35', '2022-11-02 00:40:35'),
('089ddc783a1a6a923f01181c11f832e9b05638805e410cc15067f1b891fb22c1ff1e1111f854ff9e', 8, 6, NULL, '[\"*\"]', 0, '2022-02-25 15:26:48', '2022-02-25 15:26:48', '2023-02-25 15:26:48'),
('08ef5d37b230a34972ad906fcd6e4e2ef2fc48f7a5781602cdc580706fad58deee594462fa572561', 1, 6, NULL, '[\"*\"]', 1, '2022-03-22 22:43:55', '2022-03-22 22:43:55', '2023-03-22 22:43:55'),
('092f033742c3bbf46d281c4ee085c58cebe91c9a76466a80a2634f4b4764da988c2d4000d68ea23e', 14, 6, NULL, '[\"*\"]', 0, '2022-04-01 07:14:55', '2022-04-01 07:14:55', '2023-04-01 12:44:55'),
('09538860bee0c03e5335dfffa3013379287cb8428374957b9a26de7ea3d1e60f52da7f7e1cc2da6d', 1, 6, NULL, '[\"*\"]', 1, '2022-03-04 14:00:04', '2022-03-04 14:00:04', '2023-03-04 14:00:04'),
('097b9fcff85dd0e03e88a8bbf1c130e943b11ee3a1a79818ea777333d6eff365068d34913c932e6b', 2, 6, NULL, '[\"*\"]', 0, '2022-01-27 10:41:55', '2022-01-27 10:41:55', '2023-01-27 19:41:55'),
('0a654ac1adfff603a83fc8326945b914a6c4a296d3e12e6688e4b56dcf475332c5cb465231e8817e', 2, 6, NULL, '[\"*\"]', 0, '2022-02-03 14:35:33', '2022-02-03 14:35:33', '2023-02-03 20:05:33'),
('0b3616c8ecc261f7a189482619026017b1a31c4e0556a1adbcc00355f93b1687b178dbea7e7b9da9', 4, 6, NULL, '[\"*\"]', 0, '2022-02-18 15:20:17', '2022-02-18 15:20:17', '2023-02-18 15:20:17'),
('0bb5b2ec2323a9f30724d323878ad096df78ae7994ab1bbdd5009c9268806f53997f5943e220310f', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:35', '2021-11-02 00:38:35', '2022-11-02 00:38:35'),
('0c49a9cc24bb6ce0a3be3b28a831d58a3f522737ba56b70c67374c3443fa67bb372a0dd58d78ee13', 2, 6, NULL, '[\"*\"]', 0, '2022-01-28 03:23:26', '2022-01-28 03:23:26', '2023-01-28 12:23:26'),
('0c4bd94c9771400db076084d58f6c93e4d3b13ecfadd4fd186db2afd5cebd88b30bd09bfeb4c8f7d', 2, 6, NULL, '[\"*\"]', 0, '2022-02-03 17:58:23', '2022-02-03 17:58:23', '2023-02-03 23:28:23'),
('0c6485f3d13ee99e8aaef60883356a12517231925dfbb26a031280f2e004f43cff649ecb33d8ed90', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 13:04:46', '2021-10-29 13:04:46', '2022-10-29 13:04:46'),
('0cddf06f65aaff32dc888b41e96d4905a72bb071af9078d3d13bff31ec0855cfdee251154fb2b7c9', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:29', '2021-11-02 00:40:29', '2022-11-02 00:40:29'),
('0d52c47ca7ac14882092c7315d531a5a95605b39fbb563a17003131c4712c44bb49f3861ed11321d', 8, 6, NULL, '[\"*\"]', 0, '2021-10-18 17:37:32', '2021-10-18 17:37:32', '2022-10-18 17:37:32'),
('0dd9541edf258fb6915ccc60f933409fc1f8537e694de6b73c22b02d9e164f612a77cbd7b57a7338', 2, 6, NULL, '[\"*\"]', 0, '2022-03-31 05:51:12', '2022-03-31 05:51:12', '2023-03-31 14:51:12'),
('0df12bc9632f395053d31c99f89503787f1fe1266f3fcf84fdd43177cb85cdc1a5181c81b9801e95', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:27', '2021-11-02 00:38:27', '2022-11-02 00:38:27'),
('0e00eaa5380030f60b2c9e1fd54bb182e939e58df7e1725e5abd7b8858ea5d86e42594fe27cfa167', 1, 6, NULL, '[\"*\"]', 1, '2022-06-20 08:40:31', '2022-06-20 08:40:31', '2023-06-20 14:10:31'),
('0e10ad5652cbfff2ac80069f812fd7c41f185926650db8df9e80a1b78e126b7ae67b865cd5b9a128', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:35', '2021-11-02 00:39:35', '2022-11-02 00:39:35'),
('0e921d754e53f628f1da44ad4684168010bba95fc795a3ea92f8abc48ea94c01b95b07beb79301ea', 2, 6, NULL, '[\"*\"]', 0, '2022-02-26 16:40:39', '2022-02-26 16:40:39', '2023-02-26 16:40:39'),
('0ea72bc4a2d933f085d8b107a154bfca933901d2b6868f6fe741705b40331fa9ac530d2be41f9218', 12, 6, NULL, '[\"*\"]', 0, '2021-10-11 12:58:25', '2021-10-11 12:58:25', '2022-10-11 12:58:25'),
('0f33bb6eca2de016f7a7e956311cf60e3baaf903bc6fbb53af39dbef42a01bd863e91a89a298c5ac', 2, 6, NULL, '[\"*\"]', 0, '2022-02-23 17:47:25', '2022-02-23 17:47:25', '2023-02-23 17:47:25'),
('0f989c022e0ae35e37f0be22d2429890a883d0e53e25fd8904dd2f7c9ff08f0fdb5cd0f594b120eb', 38, 6, NULL, '[\"*\"]', 0, '2021-11-17 18:05:16', '2021-11-17 18:05:16', '2022-11-17 18:05:16'),
('0fc042bf0a32afab07cf738d83c51ede9cdc8a4513b8321fd5a0ff09a565066ebb875980d577e237', 2, 6, NULL, '[\"*\"]', 0, '2022-02-22 20:23:50', '2022-02-22 20:23:50', '2023-02-22 20:23:50'),
('1000254637fa7ecd3fb8dabc3f23f699a837f1d0c5aafb409aab1a2354b5179cc2aa8db7ae0c7321', 2, 6, NULL, '[\"*\"]', 0, '2022-03-08 18:32:33', '2022-03-08 18:32:33', '2023-03-08 18:32:33'),
('102ce777631a1901ca3b63a39657fbc0bd812e62690d09b7e7d2b6c40af153293e0bcfa1cb3aabee', 9, 6, NULL, '[\"*\"]', 0, '2022-03-30 08:25:27', '2022-03-30 08:25:27', '2023-03-30 17:25:27'),
('107782af2397b5c3b92b88e1b8b7613eb904182f0a8b0c7426a9a02a1254cc7c76b8ec5cd528ec80', 25, 6, NULL, '[\"*\"]', 0, '2021-11-24 13:56:37', '2021-11-24 13:56:37', '2022-11-24 22:56:37'),
('1082536f1cb5b7647c121e8c3a9fd029004e59550a13e4858f82739b6782615b1bf32bb82d078809', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 16:09:15', '2022-03-04 16:09:15', '2023-03-04 16:09:15'),
('10a0d350561a72ce6d53aa8f237608ab17fa87a4578aea98ca7a3c63808801403430ade378887584', 2, 6, NULL, '[\"*\"]', 0, '2022-02-02 18:10:16', '2022-02-02 18:10:16', '2023-02-02 23:40:16'),
('115cd0166907f6039972084a912b57a4c06b52c91b91cb77e0d65c3fadac010a64ff4d12bc7182f7', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:39', '2021-11-02 00:40:39', '2022-11-02 00:40:39'),
('126d658c6ededf7f9d3a53ea9b74310103d7b32e8f4f74b649e6e6926ed46e3f8b90dd9643126b28', 1, 6, NULL, '[\"*\"]', 1, '2021-11-25 06:06:45', '2021-11-25 06:06:45', '2022-11-25 15:06:45'),
('1272760e5ad56979e941087fa20c61beff804e4969daf9d5ec045d10458a359e4a687778bd3f184b', 1, 6, NULL, '[\"*\"]', 1, '2021-11-29 05:24:55', '2021-11-29 05:24:55', '2022-11-29 14:24:55'),
('136146889e2551ee106a86aa9491fc43bce5139b33561cd49e33209b494d03f80e9e486853b1d086', 11, 6, NULL, '[\"*\"]', 0, '2022-02-23 14:35:16', '2022-02-23 14:35:16', '2023-02-23 14:35:16'),
('13c85f4603d5a66e1f410a065f6f977777f591e9849a0fda4920000478f38b5df0ef398519993d17', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 15:48:45', '2021-10-06 15:48:45', '2022-10-06 15:48:45'),
('13f19efba01a237fba57237c70bf814f306ab029eea711084265449eb21462c83eb6fece88fbd5d8', 19, 6, NULL, '[\"*\"]', 0, '2022-02-28 15:45:59', '2022-02-28 15:45:59', '2023-02-28 15:45:59'),
('13fbc6d362dea4dd3950437481f80a98e52fdb6b4871e9c3ee5e56246533757575794fceeaea6725', 8, 6, NULL, '[\"*\"]', 0, '2022-03-30 13:14:03', '2022-03-30 13:14:03', '2023-03-30 22:14:03'),
('14121c46b56cc88e188060d41153aa14df4ecefa48cd39e04a373d293fb7a28032c761ef270da536', 3, 6, NULL, '[\"*\"]', 0, '2022-03-25 09:19:15', '2022-03-25 09:19:15', '2023-03-25 18:19:15'),
('146c90cf800928a6b10b18184ec17b9a95c2d6afcb4334e9695ee1276868ccf06a536f60df54dc0a', 3, 6, NULL, '[\"*\"]', 0, '2022-07-28 13:20:57', '2022-07-28 13:20:57', '2023-07-28 18:50:57'),
('1497848700a0c436e084a3457f0fcc6e4f725066c96ccf5145415625e8ba988564cb09a422ea6b27', 19, 6, NULL, '[\"*\"]', 0, '2022-02-25 20:06:04', '2022-02-25 20:06:04', '2023-02-25 20:06:04'),
('150b010760d2286c87625a2f8cd02e29a4a2a8721e220391811d461331cba0e1a1fd187482169b70', 2, 6, NULL, '[\"*\"]', 0, '2022-07-26 16:13:37', '2022-07-26 16:13:37', '2023-07-26 21:43:37'),
('157e18dbf1d404ea1ffb9957f30508385b2a78dcabc3c4f1f0be592914acc58ee924f549250d11c0', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 13:52:38', '2021-10-29 13:52:38', '2022-10-29 13:52:38'),
('1592b4ebd4b0f93c76cd588b1f6b54645f6506344d266e9ecd4a4d37252576270d931d7265ce02d8', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 10:22:03', '2022-03-30 10:22:03', '2023-03-30 19:22:03'),
('15bd47e35362182d852c02902284e9062dcc73e8010b1d3f52d8dab8ff84ffd61c94cd5401604e34', 3, 6, NULL, '[\"*\"]', 0, '2022-02-01 18:42:01', '2022-02-01 18:42:01', '2023-02-02 00:12:01'),
('1618c159cc5d9e1071992145efca6588c81ec3644d07b122ed1197f7d7d174ce89400e0265992dd9', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 19:59:01', '2021-10-29 19:59:01', '2022-10-29 19:59:01'),
('1629440f4afafd837f03f1ce360642d14ae2fd4a6a1a647dfb97bbfac6f2b713d49419200406b52f', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:39', '2021-11-02 00:39:39', '2022-11-02 00:39:39'),
('1768ba60d7ae88544b23594d9599c67017ac6382bbab29f959792bddde12a1be8bfa1a53ec0b981b', 4, 6, NULL, '[\"*\"]', 0, '2022-02-18 16:32:58', '2022-02-18 16:32:58', '2023-02-18 16:32:58'),
('1775492127049ba9337eefc830caff2df969fa99943e1f36d22f830323f1fd6cde12d33b0bd98b7a', 8, 6, NULL, '[\"*\"]', 0, '2021-12-08 11:30:53', '2021-12-08 11:30:53', '2022-12-08 20:30:53'),
('17e5e232fb24896fd55e66607318751267752c9e2be3b40c302d21ee9f5080e17b1f60b52dd558e1', 1, 6, NULL, '[\"*\"]', 1, '2021-11-17 14:01:59', '2021-11-17 14:01:59', '2022-11-17 14:01:59'),
('17f23287af236f1c9184c96c7c0e0db357ccd2680eff7f0596d9a0008ba3c2d0935c2c3b74037778', 3, 6, NULL, '[\"*\"]', 0, '2022-02-07 18:30:15', '2022-02-07 18:30:15', '2023-02-07 18:30:15'),
('18065ac6f1084d4677dfe04a21b838a2d3d7c474cc772ad34580af67ca3e7bb2f3cb994b83466a57', 5, 6, NULL, '[\"*\"]', 0, '2022-02-17 18:43:19', '2022-02-17 18:43:19', '2023-02-17 18:43:19'),
('1819767e464094d78527cafa32eda3667443a762dc09cadc1c6063fdf6d10c651628815f66a740fb', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:10', '2021-11-02 00:41:10', '2022-11-02 00:41:10'),
('18214c3b7ff009ce3e18d8faaf505583884be0d216efe8a98e3501e1a313488203ab25397ac2215b', 2, 6, NULL, '[\"*\"]', 0, '2022-03-01 20:03:12', '2022-03-01 20:03:12', '2023-03-01 20:03:12'),
('186657a1dbe9846d77c88bbe9db8b7acba3dda55dcf369e21b543616f3ae1b1536ffa1494d9bd859', 4, 6, NULL, '[\"*\"]', 0, '2022-03-22 21:38:45', '2022-03-22 21:38:45', '2023-03-22 21:38:45'),
('18a5e8650bd1cbe63317484287772e1d4d223a032f70e801b273aeba5187b05c5baf0138863ad244', 38, 6, NULL, '[\"*\"]', 0, '2021-11-15 21:07:08', '2021-11-15 21:07:08', '2022-11-15 21:07:08'),
('18e34151e26a6abf978292a3c0318d38688136538901a9ac03e9426c7a3f6c00a941c127e70e493b', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 17:23:45', '2022-03-04 17:23:45', '2023-03-04 17:23:45'),
('196611405091745f926e050bf2ec00db72fa6a9f6975900eac63f443bda25e1633afe33f504168de', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:25', '2021-11-02 00:41:25', '2022-11-02 00:41:25'),
('198db78733c5f3c7676d9e7ddc6727c4063aeb92a5c676357247cd8eaf6418ce74ee86822ea804cb', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 15:50:36', '2022-03-04 15:50:36', '2023-03-04 15:50:36'),
('1a7b90cc487e244d7aba233c52f651760a77384c7527ea55bfe8cae76fdf4ac000be62ae3f00a11c', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:36:54', '2021-11-02 00:36:54', '2022-11-02 00:36:54'),
('1ad0dc56681d79a17f24e475079885f15bc296867805338a93a83d250f1dfd2a689475ec378710b1', 2, 6, NULL, '[\"*\"]', 0, '2022-02-21 12:04:45', '2022-02-21 12:04:45', '2023-02-21 12:04:45'),
('1b3317536655fd3b4a7853079d3bb303c79fcfcc0115d2cffa601f68da0ad2c639cfd1175fcfbc84', 10, 6, NULL, '[\"*\"]', 0, '2022-03-30 08:12:51', '2022-03-30 08:12:51', '2023-03-30 17:12:51'),
('1b6c0e9e82a9097fad3b264e50c6d47a8adc2a547902be322c9a8db8833d19645c9849a01c87000b', 2, 6, NULL, '[\"*\"]', 0, '2021-10-07 16:49:54', '2021-10-07 16:49:54', '2022-10-07 16:49:54'),
('1bba76f5e70f3bbed2be8ac52d5dbf7fbbb3f4c851186e175fb639cd0fd6642d6ae34fffd9e68831', 38, 6, NULL, '[\"*\"]', 0, '2021-11-15 21:46:11', '2021-11-15 21:46:11', '2022-11-15 21:46:11'),
('1cabd7b0d82f2a293e138eb4f839403080753398d4150bbc0d114f4473ac83ccb92184a797499ad0', 3, 6, NULL, '[\"*\"]', 0, '2022-02-01 18:50:52', '2022-02-01 18:50:52', '2023-02-02 00:20:52'),
('1d1cd84cd3bafc183092975fcc209dbd929d7dd5c8d38d69b98750dcdeb4bb58d728f23eeecd0102', 4, 6, NULL, '[\"*\"]', 0, '2022-02-21 14:57:50', '2022-02-21 14:57:50', '2023-02-21 14:57:50'),
('1d697084cbe7c02d66c40949a4220388ef4333e8d909e197181ce0bac0e4ffa3acd4a85339069da4', 10, 6, NULL, '[\"*\"]', 0, '2022-02-23 14:56:48', '2022-02-23 14:56:48', '2023-02-23 14:56:48'),
('1d702b080c8d07a6da5f98278d982818e1446067f641b2d09f56fe1e2b45a19d59a79e8499826eb4', 1, 6, NULL, '[\"*\"]', 0, '2022-03-02 15:19:36', '2022-03-02 15:19:36', '2023-03-02 15:19:36'),
('1d73f656bdb4110cce8b5bd47480d96d59df1c13978d3e86b69826421849cfe30b4cb9a0fdd7205f', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:11', '2021-11-02 00:41:11', '2022-11-02 00:41:11'),
('1df49949baf4c8ca392ed6e2d2cb50d96140469b93cc1bffbb5bb57c7bdffa030263b0cabd400fa3', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:30', '2021-11-02 00:38:30', '2022-11-02 00:38:30'),
('1e4a39dda126af52d29aa779f6c3e828dd673a8495ca233594bb2292fa9855657ca83bd478f419ed', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 18:40:17', '2021-10-06 18:40:17', '2022-10-06 18:40:17'),
('1e657c79c887f0b3234ce94d73740a4f0bafdf6b9b43e731ee8bf76e46774a9909708e513c0247e9', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 19:28:19', '2021-10-29 19:28:19', '2022-10-29 19:28:19'),
('1e7079e99d0307c039abedcf69dabf26e5115f2988893fca0f0a0ee06aefb63365310866eb81b3ef', 2, 6, NULL, '[\"*\"]', 0, '2022-03-31 06:00:06', '2022-03-31 06:00:06', '2023-03-31 15:00:06'),
('1ea349eea1384cf5e1246c09e7ed4dee00c67c6149ca7689f457327b9a18ca1dd97747261f6b663a', 2, 6, NULL, '[\"*\"]', 0, '2022-02-15 21:09:59', '2022-02-15 21:09:59', '2023-02-15 21:09:59'),
('1ed2f2038ecc761f9b8e9513dd78d087b4123be5ec4a8549c3e34adcedcb732d1ef5e71736613e36', 8, 6, NULL, '[\"*\"]', 0, '2021-10-20 20:57:16', '2021-10-20 20:57:16', '2022-10-20 20:57:16'),
('1efc13aef27bf7bf79d41f5f868f339410a33fa3fc542d4f295219c2f6bcd062a91c3dc917bce79f', 1, 6, NULL, '[\"*\"]', 1, '2022-03-08 22:16:45', '2022-03-08 22:16:45', '2023-03-08 22:16:45'),
('1f13425136b1141dda6c4eac37d0353f13b270c701e7a65a714ade19f721dca3b2b464d96101fc07', 1, 6, NULL, '[\"*\"]', 1, '2022-01-28 10:49:52', '2022-01-28 10:49:52', '2023-01-28 16:19:52'),
('1f4102ad6129d612feedffbc58f2b3687fdc91a63d4dc435520259b129d46d155673edbd0f297b5e', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 18:01:20', '2021-10-06 18:01:20', '2022-10-06 18:01:20'),
('1f725eb7a8ba7c04efc1e80a1d966b1888dcefaa7aa61fb3f5efec2eaabbbdf289c3ef935c2c644d', 1, 6, NULL, '[\"*\"]', 1, '2022-03-04 13:00:08', '2022-03-04 13:00:08', '2023-03-04 13:00:08'),
('1f72c0d911405a14892157cca9abb6874cbc6570a97e9af453e06bdf309a68767e8c1b83091e5093', 4, 6, NULL, '[\"*\"]', 0, '2022-02-02 07:53:29', '2022-02-02 07:53:29', '2023-02-02 13:23:29'),
('2048ea66fb4cb06645f9e079e01aef588bf8b507326efca7a98320b85a93e56ddc4411d626d16508', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 18:38:45', '2021-10-29 18:38:45', '2022-10-29 18:38:45'),
('2055e41275259ce77f13bf9277436266a58bd9f2eface56ae98b5fad4a9afae421c2d7236956df66', 2, 6, NULL, '[\"*\"]', 0, '2022-02-03 14:41:31', '2022-02-03 14:41:31', '2023-02-03 20:11:31'),
('206c508fdc8d13036e1d7199069a37b8cceec51ecc50eeb40d27875e947e50928475fae92b3ddcba', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 13:14:05', '2021-10-29 13:14:05', '2022-10-29 13:14:05'),
('209b0a4f6d1714b3e9241229e9c385f31f895c7c4b98d045062df8b33abba8b8575ef17966e304b2', 19, 6, NULL, '[\"*\"]', 0, '2022-02-25 19:54:53', '2022-02-25 19:54:53', '2023-02-25 19:54:53'),
('210119b9238d50c966510ca8c0eade255ec5ecb4b710c333672b26b0e804ad543c21027e5c77bc5f', 1, 6, NULL, '[\"*\"]', 1, '2022-03-04 13:25:43', '2022-03-04 13:25:43', '2023-03-04 13:25:43'),
('211a2d1c2e37e9e0bd10161b7d3a0eecafab5fee2a03bf8d3e721ca0fa5fbfb178eb95394898f48d', 10, 6, NULL, '[\"*\"]', 0, '2022-02-24 14:32:08', '2022-02-24 14:32:08', '2023-02-24 14:32:08'),
('212889d8305c6f16c6c15a96ecc4e7fc7ca82b7c847bf1a8ed0c7c299603fc22860774d1abc460db', 2, 6, NULL, '[\"*\"]', 0, '2022-02-21 16:48:03', '2022-02-21 16:48:03', '2023-02-21 16:48:03'),
('2172c231b2c58a9e1f99932b3b1a392553fd199c145b738854b13f69ee981a52cc14ca42ee850e28', 9, 6, NULL, '[\"*\"]', 0, '2022-02-08 15:35:56', '2022-02-08 15:35:56', '2023-02-08 15:35:56'),
('21759455d534e1cfdb7244914e219eb829fc6f0e1979f3cdea8db60d64a743a5a025a41dc8b91367', 1, 6, NULL, '[\"*\"]', 1, '2022-02-02 20:57:10', '2022-02-02 20:57:10', '2023-02-03 02:27:10'),
('2200f7e3675d3f9c6832769e366d32d82827f72a02c7584cb06ca503abf04d7b00b84e74f780bbb3', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 14:50:38', '2021-10-29 14:50:38', '2022-10-29 14:50:38'),
('22585a0aa313eeeb6b620876692d1665bd4257c374f2770178d97833a1e113802e654f280960802d', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:31', '2021-11-02 00:38:31', '2022-11-02 00:38:31'),
('22cf18ad467a27a8c9dd449a890f6cd2cf48625ef2851e5c74210aa46f7614153807153bb8861980', 25, 6, NULL, '[\"*\"]', 0, '2021-12-03 13:54:42', '2021-12-03 13:54:42', '2022-12-03 22:54:42'),
('22e87f2324220a6942929b7fc55b4104de478a88544933a78cf13b0a55b941f9d3a15b463096b4f9', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:22', '2021-11-02 00:41:22', '2022-11-02 00:41:22'),
('231330e12308ebaa448dd815742ded182b106eb3ac535ebbcac65723eefec5919bba346fa28079c1', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:00', '2021-11-02 00:40:00', '2022-11-02 00:40:00'),
('23a9b58cf97a09f45a24cf5ed991e8734b5f65ed4f6cdd43cb07e04137775aee4c84d282cb00fbc9', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:51', '2021-11-02 00:39:51', '2022-11-02 00:39:51'),
('243195e056b7909adde1b5970ca526520cc6453d3bc99fd513c38c8112de3836148fd62b41c5c951', 1, 6, NULL, '[\"*\"]', 0, '2022-03-26 06:34:32', '2022-03-26 06:34:32', '2023-03-26 15:34:32'),
('25298ed7426d0e388116e63c0f062f91251ce7198bb0537f32acd7950f8b51b5e3137d00d232d589', 4, 6, NULL, '[\"*\"]', 0, '2022-03-12 18:54:35', '2022-03-12 18:54:35', '2023-03-12 18:54:35'),
('255295c72567fe205ee2f6696a6aa3e60cc8f58866a94c581b4f60f2e581700e9b7f6430cd04251d', 2, 6, NULL, '[\"*\"]', 0, '2022-03-10 22:20:42', '2022-03-10 22:20:42', '2023-03-10 22:20:42'),
('258e0454b405a6c1b6ce171510bf99ba623b45297485833a97d1aa6cfa422a3c0fef2de4a8d061d9', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 19:38:01', '2021-10-29 19:38:01', '2022-10-29 19:38:01'),
('25dc2f5df3ee0047c7c48c4ea74d9a724bc38831d26629e327fab3c5449605cc5a18c172a7378750', 1, 6, NULL, '[\"*\"]', 0, '2021-10-13 13:16:58', '2021-10-13 13:16:58', '2022-10-13 13:16:58'),
('267e4dd8aca800c775d2ebf2362658c58ece9d1267f277b5fec1187f16da4a4e9a4bb97c48c56f4f', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:44', '2021-11-02 00:38:44', '2022-11-02 00:38:44'),
('26fc75d4906ea419800bfffdb6ad0d914a8e5f4f0a81eaf66e6beaef1565755c7537ccdf9a44fda9', 8, 6, NULL, '[\"*\"]', 0, '2021-10-21 18:44:57', '2021-10-21 18:44:57', '2022-10-21 18:44:57'),
('27640fbcaeadf9c15fb9ce5cc3643f57634d66e79dab69f690d0b783de68106335d3f1a80047edfa', 1, 6, NULL, '[\"*\"]', 0, '2021-10-11 18:37:24', '2021-10-11 18:37:24', '2022-10-11 18:37:24'),
('287174ce7e531f2aef6bda901c41893b46f57d065f20f8f8ad8e4d28e68bb4037e8931266e14a341', 8, 6, NULL, '[\"*\"]', 0, '2021-10-27 18:35:08', '2021-10-27 18:35:08', '2022-10-27 18:35:08'),
('2898e7173093695fcede7ad9ac5d0c06e3a9ad8072dff8b95a482bccce800f4f9ed9521367995c41', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 22:31:42', '2022-03-04 22:31:42', '2023-03-04 22:31:42'),
('28f9c8c8b1752e4e1e34866872078c57c6995b56792ce816eb0e501370d00cabea774f8b4e5061c2', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 14:52:39', '2021-10-29 14:52:39', '2022-10-29 14:52:39'),
('2935e8b79d40b6679571b942e285dccb21bd379ee26cf5b1e6c516f00ba11692fe1a9537ca00ff4e', 2, 6, NULL, '[\"*\"]', 0, '2022-05-06 07:24:35', '2022-05-06 07:24:35', '2023-05-06 12:54:35'),
('294d60ab8a32b811343ee7e5898c7886eb976b9c0fdbacda9b9d2ac80ba540c031f12f0b0e31960c', 2, 6, NULL, '[\"*\"]', 0, '2022-01-27 10:58:02', '2022-01-27 10:58:02', '2023-01-27 19:58:02'),
('297e2b7895ecf88dea70763ac16c3d5c820d1b8595ffaaf5fc6f2b8ccfb2de7abeb856b564f976e2', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:58', '2021-11-02 00:39:58', '2022-11-02 00:39:58'),
('29d324c28a0a99daf103f95f217d816f1c3befea68eef678375ad9c61f5886974a4551939d000013', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 15:36:18', '2022-03-04 15:36:18', '2023-03-04 15:36:18'),
('2a67518c724641a1d2d9091f485d8036054934f72a698ae42c1b90bf8410953b34553fe4fff07dab', 8, 6, NULL, '[\"*\"]', 0, '2022-02-09 20:58:50', '2022-02-09 20:58:50', '2023-02-09 20:58:50'),
('2ab0283c50c3f59852499e3155babf4433a5ec7dc702506ad21fa632d96aa61f978799f8f42b438e', 2, 6, NULL, '[\"*\"]', 0, '2022-07-21 11:50:16', '2022-07-21 11:50:16', '2023-07-21 17:20:16'),
('2abfd7e3122b438b5c6e334e87492809d892f29973944cb5156d4ff8ad3bdcd69cc236c556fdfce4', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:11', '2021-11-02 00:41:11', '2022-11-02 00:41:11'),
('2ac9464deafe564e2ddb16a5ac279d6230fa09d3f2eed917e56b84c540803bf90e396f1e7332943e', 10, 6, NULL, '[\"*\"]', 0, '2022-02-23 15:03:01', '2022-02-23 15:03:01', '2023-02-23 15:03:01'),
('2afb708e5919ccfd20647afadfecd89171190baaa2aa05c44947f873558598dc6e37a29e4c4f9121', 3, 6, NULL, '[\"*\"]', 0, '2022-03-08 22:18:01', '2022-03-08 22:18:01', '2023-03-08 22:18:01'),
('2afbf9454fe99d604be1fecaa5a42a2cd693ff410ccb61676bfe74e6b5dff565b59ce756c921ee47', 5, 6, NULL, '[\"*\"]', 0, '2022-02-17 19:09:48', '2022-02-17 19:09:48', '2023-02-17 19:09:48'),
('2b4c47840a303814e7abfccbb6f5bb7dcb24d4a12d140f8681c62fb15244f89e7f5ada4b32fdf8a6', 28, 6, NULL, '[\"*\"]', 0, '2022-01-28 16:12:12', '2022-01-28 16:12:12', '2023-01-28 21:42:12'),
('2b721c205027fc1b24f220a3e3953a986230b3eed7f40aadfc3cbc4024bc188378d0f930e392ce04', 8, 6, NULL, '[\"*\"]', 0, '2021-10-07 14:04:40', '2021-10-07 14:04:40', '2022-10-07 14:04:40'),
('2bb3dc54b8d13ab14e919f9a048ccc5f994ea97f30847f35c9db314fc5b0d0da03ada160a5f65afb', 8, 6, NULL, '[\"*\"]', 0, '2022-02-02 18:15:21', '2022-02-02 18:15:21', '2023-02-02 23:45:21'),
('2bb82e917dbc7fd2b0db154e977d7c446aeb12714a25476da42dbe27a2d62593934d877a1e0da27f', 1, 6, NULL, '[\"*\"]', 0, '2021-11-23 06:07:53', '2021-11-23 06:07:53', '2022-11-23 15:07:53'),
('2bcde48a3e82cc05cfcf80ce6c6844758e386f823b6391ff4bbc75b2f29908dca0115d6a6ca31461', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:11', '2021-11-02 00:41:11', '2022-11-02 00:41:11'),
('2be90b690bc6a45ac0c6ba222bf9e33989c3ec1cc2a8dd9414b0c34ab1d696655c323c45a5d39216', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 18:30:56', '2021-10-11 18:30:56', '2022-10-11 18:30:56'),
('2c1d2bad7946988a5a170e4bd221985e9ea0c06baa8d8c6bcc674caa19186fd1cc59405b93a6dfd6', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:25', '2021-11-02 00:41:25', '2022-11-02 00:41:25'),
('2c5322ef04c9862b729622adf66b725ce60985418f3bfead1752b61632b97dfc9f0583331e8ba04c', 2, 6, NULL, '[\"*\"]', 0, '2021-10-02 01:18:57', '2021-10-02 01:18:57', '2022-10-02 01:18:57'),
('2ca6d4a91e5da629d6f5eb1205d03aaa4dfc8337f4c48598b29dfa82b5b1c8acb57c59b8dcbda5d2', 3, 6, NULL, '[\"*\"]', 0, '2022-01-31 19:39:07', '2022-01-31 19:39:07', '2023-02-01 01:09:07'),
('2cb8eb92b8d0eb9460770f7ce1150c73d95988a4c623aca98200215634656e833330fffe9eb100b0', 1, 6, NULL, '[\"*\"]', 0, '2021-10-06 15:49:34', '2021-10-06 15:49:34', '2022-10-06 15:49:34'),
('2ce57843dd8f1eb915c33968f82206f7fcef6d1abeb43a25a3fed374c78e2b47b8cbeea63cdfc838', 1, 6, NULL, '[\"*\"]', 1, '2022-03-11 19:14:50', '2022-03-11 19:14:50', '2023-03-11 19:14:50'),
('2d04dc7fcf458d572567fc9946ecb36e7c2f4d46e277715540e1daf8ec6a31d3858953322b42f81b', 2, 6, NULL, '[\"*\"]', 0, '2021-10-05 22:53:21', '2021-10-05 22:53:21', '2022-10-05 22:53:21'),
('2d492b46ba42c23951ca9b96a7d4d10ec7e9cabaa41c25e659909d5b60c78f4c30701ddaf1b97c22', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:23', '2021-11-02 00:41:23', '2022-11-02 00:41:23'),
('2dacd88c4a86338a7a9b015a2bc49db84098fc9f77f3b66e62c4e9d11601b93a54e059cbbb42237f', 13, 6, NULL, '[\"*\"]', 0, '2021-10-12 21:48:19', '2021-10-12 21:48:19', '2022-10-12 21:48:19'),
('2dbc31cb2db45804a17877ba3f62001759e373313234f19f184e3b4582c338f2de17f311a56e56fa', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:51', '2021-11-02 00:40:51', '2022-11-02 00:40:51'),
('2ea9aae81c1da9b34b68518574b0c3c2e073156bfca0e8c3dc4b2c31c8931d60402096f7eabac480', 1, 6, NULL, '[\"*\"]', 0, '2021-11-18 06:34:23', '2021-11-18 06:34:23', '2022-11-18 06:34:23'),
('2ef1510f7f036cbf17d61084564bf17c1dd743be1e972d146484f2534573842421a274f532290460', 2, 6, NULL, '[\"*\"]', 0, '2022-03-22 17:56:29', '2022-03-22 17:56:29', '2023-03-22 17:56:29'),
('2ef8efe778b5b84ed2123fd3af7b8efa852b36eb29e97946bd41d34b6aaadfe62e43552296e1bdea', 8, 6, NULL, '[\"*\"]', 0, '2021-10-07 14:45:15', '2021-10-07 14:45:15', '2022-10-07 14:45:15'),
('2f31398c521c1e6c77a05b47aa153b941a4649c243201c196f4afa99b23cc3dd633de27d7c6275cd', 19, 6, NULL, '[\"*\"]', 0, '2022-03-02 15:44:14', '2022-03-02 15:44:14', '2023-03-02 15:44:14'),
('2f9d51b2aa5f15f3d0652dbae66f804778db4cdc87d7bdef50eda5383616176b4c88fc3afa4581ab', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 21:54:50', '2022-03-04 21:54:50', '2023-03-04 21:54:50'),
('2fae0463450aa1fd2c75088e88c047bbc87e0537bc6119cccce6b470584540a05fb11f31440dab4a', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 13:04:34', '2021-10-29 13:04:34', '2022-10-29 13:04:34'),
('2fbd70b89cb5f7322714da94710afc0f5c0298df60dd1a5653fe1de3ef3059d3452870669fc5bf1e', 19, 6, NULL, '[\"*\"]', 0, '2022-03-03 16:16:15', '2022-03-03 16:16:15', '2023-03-03 16:16:15'),
('2ff18e7c0ec23f5779f160d9a110438bf6ec7dc77eb21605b8f9197e44d3ceb64566c2398fd8ee51', 2, 6, NULL, '[\"*\"]', 0, '2021-10-05 15:43:57', '2021-10-05 15:43:57', '2022-10-05 15:43:57'),
('310271db165507a29c478753a3bfc803bc10b7837abb652db0425930e9b452c78c78bbb9b755168f', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:42', '2021-11-02 00:39:42', '2022-11-02 00:39:42'),
('3136a86adf3f0e5f5186b54c6136f69a6e03345dc6da7a15b69576666d0c5f093a911bb1787602d6', 2, 6, NULL, '[\"*\"]', 0, '2021-10-05 15:12:47', '2021-10-05 15:12:47', '2022-10-05 15:12:47'),
('31e4a849f400d880c0d941db018677fd180433eea316e021a2fc6ffcd4b66a2f9180c432ed4a377c', 8, 6, NULL, '[\"*\"]', 0, '2021-12-07 13:36:13', '2021-12-07 13:36:13', '2022-12-07 22:36:13'),
('32bbe02564d89e1184df6476b8eafeda8904058ab8aa119cc27ad61f5daffab2d7b66e00ac7a0082', 2, 6, NULL, '[\"*\"]', 0, '2022-02-10 21:50:37', '2022-02-10 21:50:37', '2023-02-10 21:50:37'),
('32d6cffef2a9faf650ed1e3346d5f9c6cf2dc9aeebd263f3e0ad36b3b11b5ba35dc5cbac378f9ef4', 2, 6, NULL, '[\"*\"]', 0, '2022-02-18 20:23:20', '2022-02-18 20:23:20', '2023-02-18 20:23:20'),
('32f3320a37404863d8a5c811dcd440007601225744165a4df3ad4591883f57794163dee68fed0459', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:24', '2021-11-02 00:41:24', '2022-11-02 00:41:24'),
('3378fbb3c34e1b6fccc22f51c8dd83487a3a173a698a939c42f1ca35dac3dd51a615b79c5902a136', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 13:52:07', '2021-10-29 13:52:07', '2022-10-29 13:52:07'),
('337f6b535bed9670ce83e54ebf5c6fd35e51e35a78564be183c9422c23e87a21640cb2206111b053', 12, 6, NULL, '[\"*\"]', 0, '2022-02-25 21:21:00', '2022-02-25 21:21:00', '2023-02-25 21:21:00'),
('337fa4598e4de35e5bdc0396b85811445616eff474f3224dd6f9cd3abdf765eb83f6b821eb66a2eb', 8, 6, NULL, '[\"*\"]', 0, '2021-12-02 08:04:59', '2021-12-02 08:04:59', '2022-12-02 17:04:59'),
('33ce8fcc447272ca0949e055415764c0eeb27f5390bd57c70427d9c81af37414606eef64b47f0b96', 8, 6, NULL, '[\"*\"]', 0, '2021-10-13 21:32:38', '2021-10-13 21:32:38', '2022-10-13 21:32:38'),
('33f7451526e37cbbd4ef3113486d90981c807a0a1903076fa29c708f01abbc2f1d1603065b7480ee', 25, 6, NULL, '[\"*\"]', 0, '2021-11-02 23:33:26', '2021-11-02 23:33:26', '2022-11-02 23:33:26'),
('3408a13f0d98467cca1cd3231ebff9424cba550f8c9941a6bfce88f2839161b2a749355b5944a71b', 2, 6, NULL, '[\"*\"]', 0, '2022-03-10 21:53:04', '2022-03-10 21:53:04', '2023-03-10 21:53:04'),
('34a798c2ccc69cd73818d09a9c228acd1142ee3d65b3f459cbfb848eb16e17346d5013a0903f18c6', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:38', '2021-11-02 00:38:38', '2022-11-02 00:38:38'),
('34edc3bf329b53fd79f999fbf1b855faf170d505e832302ef58bb40598f5c4d1d6ffce8b037bda84', 8, 6, NULL, '[\"*\"]', 0, '2021-10-08 15:22:05', '2021-10-08 15:22:05', '2022-10-08 15:22:05'),
('35554e1a08277553a6a1b34cc2499d6cef48b583c905b2fad49c7bb33d647f264fdfd1c8487b91b2', 1, 6, NULL, '[\"*\"]', 1, '2021-11-10 17:43:20', '2021-11-10 17:43:20', '2022-11-10 17:43:20'),
('355dd8ceb7f47a27c8d4d10b99f12cbea2265f2dba51a8577c0962dc3ead8ad9345c3763ee04fcb6', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:12', '2021-11-02 00:41:12', '2022-11-02 00:41:12'),
('357688505b89fecb800e17f0fea95f9bc8c3fd922d1313a3eac027ba186a5c63e83d9a200d84bbbb', 2, 6, NULL, '[\"*\"]', 0, '2022-02-10 23:16:09', '2022-02-10 23:16:09', '2023-02-10 23:16:09'),
('35838b9b49f14b9b4575ebcc891927e78367d16f2aba652fc0df879d05a7ae18accfc3d0e7a3ad43', 1, 6, NULL, '[\"*\"]', 0, '2021-11-05 12:04:16', '2021-11-05 12:04:16', '2022-11-05 12:04:16'),
('359630d38202933db0892c813a61482c4d2ec38fc8ad52937f17056ce1c9bbf1b2f5e6516ea75399', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 14:52:54', '2021-10-29 14:52:54', '2022-10-29 14:52:54'),
('371ba8420e4299d6e8a09d869da1a820322ec7c2272da202f302afbb5d097db139990b5fa1a665ed', 2, 6, NULL, '[\"*\"]', 0, '2021-12-15 12:22:56', '2021-12-15 12:22:56', '2022-12-15 21:22:56'),
('37237e9fdfd97bf705b6154d3a6cecacecdb2584c5ce9e5e7f7c016d162e6eee6b07c621a373f04c', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:35', '2021-11-02 00:38:35', '2022-11-02 00:38:35'),
('373d65dabc78b5d9ec24a54de6232ca109731cd6497d4e6dba62a8b6954b9e49734a3b79dd95a451', 11, 6, NULL, '[\"*\"]', 0, '2022-02-18 13:50:40', '2022-02-18 13:50:40', '2023-02-18 13:50:40'),
('377a2f948bf29831bf2a47647786478d1223766e895d103ef88ad1e4a8cbd487051d5752e6e04779', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:42', '2021-11-02 00:38:42', '2022-11-02 00:38:42'),
('384434c60680bf5917d952852ad44459329c7576a784861a00e63a140488b8ea61c9e069ac345f6b', 38, 6, NULL, '[\"*\"]', 0, '2021-11-15 21:29:52', '2021-11-15 21:29:52', '2022-11-15 21:29:52'),
('384e5449d68da59a172e447235efc13318d3c7e866e295ae8359c335df6bb5688162b01901121cc2', 3, 6, NULL, '[\"*\"]', 0, '2022-03-30 08:29:39', '2022-03-30 08:29:39', '2023-03-30 17:29:39'),
('386dd8e0c7af8c7d358ba1d1bd19056b496d76828ff9e7c90d1ccc794e5cdb66e688009447fce779', 1, 6, NULL, '[\"*\"]', 0, '2021-10-29 12:43:17', '2021-10-29 12:43:17', '2022-10-29 12:43:17'),
('38876aab78790860ebb0dce1cbbfaaace6237f71f831626684c7fd8217a9bc4843dea45f01582b2b', 2, 6, NULL, '[\"*\"]', 0, '2022-03-24 23:05:18', '2022-03-24 23:05:18', '2023-03-24 23:05:18'),
('38eac683d632fc6090b0a681f63004f493c4517abd701e1883a349dbadb5b30d6617778e9bae8679', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:29', '2021-11-02 00:39:29', '2022-11-02 00:39:29'),
('39be068d8800517ea5f3fcdb2eaf51f619900f5f7477d247c53c6d4b420c90fb7091bb871984047c', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:29', '2021-11-02 00:39:29', '2022-11-02 00:39:29'),
('39c685693dc50a2fdcb9c7648699d6146cf8ae6bc1ebe03a3f2a3dadb03603b5cc8aa38edd800e95', 11, 6, NULL, '[\"*\"]', 0, '2022-02-22 21:25:17', '2022-02-22 21:25:17', '2023-02-22 21:25:17'),
('3a1cf63a30eaa4e26fde355809775b2a1bbcbb0a1b59a2db4ed7c3bf7baa93def07dcb573432c815', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 15:11:35', '2021-10-11 15:11:35', '2022-10-11 15:11:35'),
('3abe36c0e091a7013157a1a0d9210a6bd192f67e4a8435ad25902343ba7b7302c897f4f69ddc7ca0', 2, 6, NULL, '[\"*\"]', 0, '2022-03-31 06:07:30', '2022-03-31 06:07:30', '2023-03-31 15:07:30'),
('3aeee10fbad42361d92c80f403851bfade0f37f5b891ae7f0df58706d101399e7b5e2b276c7b5041', 5, 6, NULL, '[\"*\"]', 0, '2022-02-17 18:14:54', '2022-02-17 18:14:54', '2023-02-17 18:14:54'),
('3af772245deeb2d01354ba36986720fc8143360d28aae1d7d140904e34d103659b20ebc88a79dacf', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 06:59:43', '2022-03-30 06:59:43', '2023-03-30 15:59:43'),
('3bcd1b96aa8cf44bcf237674bf806adda20620ae11cee0833e296d4f823fa6c9075992ca396354a7', 1, 6, NULL, '[\"*\"]', 0, '2021-10-18 12:29:37', '2021-10-18 12:29:37', '2022-10-18 12:29:37'),
('3bdc86a90fff4744f11ad16330a283d9048a1f1d395bfa3fa69a65d7736bdd0b48a44c32bae34e8d', 2, 6, NULL, '[\"*\"]', 0, '2021-10-05 18:26:18', '2021-10-05 18:26:18', '2022-10-05 18:26:18'),
('3bfce2b2d57e2df012ed5986221eb7cd96d8e938a43de230559a863a4becebf874b916461af7e4cd', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:12', '2021-11-02 00:41:12', '2022-11-02 00:41:12'),
('3c8cbff3cf8c0a9fb3fd39e6be1fb73cbc9a4e22a94081a460b840806e027cc15b0de518dfd87236', 10, 6, NULL, '[\"*\"]', 0, '2022-03-28 13:20:03', '2022-03-28 13:20:03', '2023-03-28 22:20:03'),
('3c8d7258d2f34ae8228845d60f3a2ac684ac690c43eac1d29deb1f359c752750301a302755ef7809', 13, 6, NULL, '[\"*\"]', 0, '2022-02-22 21:47:04', '2022-02-22 21:47:04', '2023-02-22 21:47:04'),
('3cc086db593e0893a9e0770f2354b6dfdd4fa7947cf2688f82884abd05e8f479d38743e6042bcd6a', 1, 6, NULL, '[\"*\"]', 1, '2022-02-08 15:06:10', '2022-02-08 15:06:10', '2023-02-08 15:06:10'),
('3ce4af8643ef47c75c1d4834a865560ad0dfe83f3b61406c1932cdc64dc9e275a518ae72fe7be582', 4, 6, NULL, '[\"*\"]', 0, '2021-12-03 11:33:40', '2021-12-03 11:33:40', '2022-12-03 20:33:40'),
('3d447018a83d0a57cc90dff6a19f5dfbdc90179594844fdd00c94d87a925fb4c020a3653b41f92b8', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 14:52:38', '2021-10-29 14:52:38', '2022-10-29 14:52:38'),
('3e97cb1d4d40c1309849a4e5ca1026c8417440df7d2539542810605ce5d937ea05ced9f41e587a0e', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 19:20:16', '2021-10-29 19:20:16', '2022-10-29 19:20:16'),
('3e9c85098a89ac09c6ef5a545d3939d9693783cd75ffc6c58367d5d3d23ffede5194dc48698793a2', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 13:55:08', '2021-10-29 13:55:08', '2022-10-29 13:55:08'),
('3fbb8dbff2b28a5118c607a7e4deac87b98103cbbb6a20b6e9eb698b022f83f9f44ba9cbac2ffa57', 4, 6, NULL, '[\"*\"]', 0, '2021-10-05 16:04:19', '2021-10-05 16:04:19', '2022-10-05 16:04:19'),
('3fdaffb7644217b1b4422328569c03991bc795135eebc55db1957682bbcb5d258c188d83e7d4f1c6', 37, 6, NULL, '[\"*\"]', 0, '2021-11-11 18:53:53', '2021-11-11 18:53:53', '2022-11-11 18:53:53'),
('4012ae96147aca4db639f604c1a5a0edbba1bab1a0ac170f8aee1c30c3382bfd9d78d2b5de59b04d', 2, 6, NULL, '[\"*\"]', 0, '2022-02-23 17:53:27', '2022-02-23 17:53:27', '2023-02-23 17:53:27'),
('403e5185b21a7bb066e82160435026b94c5ca963b15d1d1913864592c4568c4d6b383fdff5070dc5', 12, 6, NULL, '[\"*\"]', 0, '2022-02-25 20:17:58', '2022-02-25 20:17:58', '2023-02-25 20:17:58'),
('405c1e7f8ebd0edeeccd6019d752d6e41612b9aaf471738764478727c503667e977855e9177fc9ab', 2, 6, NULL, '[\"*\"]', 0, '2022-01-27 08:50:26', '2022-01-27 08:50:26', '2023-01-27 17:50:26'),
('4129950dcf6a9e0739b03a7fd466a7926958e29effc85cb243a70f4aa512e1d8eb874eaf05281a17', 38, 6, NULL, '[\"*\"]', 0, '2021-11-16 13:36:24', '2021-11-16 13:36:24', '2022-11-16 13:36:24'),
('416ac468714b57ab00a23767eac910edd1e5790ed4392443c6011d5eba11bae831f6ab85ccf03025', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:41', '2021-11-02 00:39:41', '2022-11-02 00:39:41'),
('418b1227acc9af26d998d46f2df7a933659e38fa2d8a432ac9c67a3a8d7536ff6d6d166056c7e451', 2, 6, NULL, '[\"*\"]', 0, '2022-02-18 14:06:16', '2022-02-18 14:06:16', '2023-02-18 14:06:16'),
('4197f05fa10d10b91453c7dc6d1ea65c160f561b667a77fc14855cbb399ed270704f82097ca1a063', 1, 6, NULL, '[\"*\"]', 1, '2021-10-12 01:38:05', '2021-10-12 01:38:05', '2022-10-12 01:38:05'),
('41a3257cc6874fb0c323f489ff9cc2fcf652c52e434a8b500ff33531ea900568f013e872a28d255b', 8, 6, NULL, '[\"*\"]', 0, '2022-02-09 20:47:19', '2022-02-09 20:47:19', '2023-02-09 20:47:19'),
('4233bcab3edec2c522e0140add5acd9d3ef2a219cb5eee51474fd0ca13ec1a8cdf51e16f3797d447', 2, 6, NULL, '[\"*\"]', 0, '2022-03-01 19:58:48', '2022-03-01 19:58:48', '2023-03-01 19:58:48'),
('4284e83e6795cbbd9dbf8deb6a1f72a37d1b2972b51b0f43d9a5b0a2963d503c7d1de3873b31bbc7', 25, 6, NULL, '[\"*\"]', 0, '2021-12-24 07:28:05', '2021-12-24 07:28:05', '2022-12-24 16:28:05'),
('4286831dfcd79904cd4e37582680c7b49bd7ceb0b3e05d49b0105098efedd681c639ecc267a36f02', 2, 6, NULL, '[\"*\"]', 0, '2022-03-30 12:48:53', '2022-03-30 12:48:53', '2023-03-30 21:48:53'),
('433f6c6e16dd28b693a560a64cd74b229d417063954430128d54be385fe6179cc6da45c1597a7709', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 01:15:19', '2021-11-02 01:15:19', '2022-11-02 01:15:19'),
('4396bfc98b2fe752b20f73e5a4538a58c6038bbbd354b22952a1b67b500d8f80212fde744b0cf2ef', 10, 6, NULL, '[\"*\"]', 0, '2022-02-22 21:43:01', '2022-02-22 21:43:01', '2023-02-22 21:43:01'),
('445af44df7fc92a871baa664e990600a91da5c0e7777084ad5652b113a10f28c93ec331e6238a4f0', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:30', '2021-11-02 00:40:30', '2022-11-02 00:40:30'),
('446b0e187042c451c5a4bafa060d77e6b8856be306265ef0f4d21fe54d50c72f2fbae1328cfeb725', 3, 6, NULL, '[\"*\"]', 0, '2022-02-17 12:47:35', '2022-02-17 12:47:35', '2023-02-17 12:47:35'),
('44be0e830e87421232cfa5d3a6716e9f7d7a4131db3b63bcc3150ed70dc0765ab665475031a3c1e1', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:55', '2021-11-02 00:39:55', '2022-11-02 00:39:55'),
('45133b6f6df9abfeb3ec570112b1b6a950bbfaaa1b2328b79b7b4cb42a047be8e91deedc09d4a5b2', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:31', '2021-11-02 00:39:31', '2022-11-02 00:39:31'),
('45372ca2c39dfaf297a9a0444f73a46e691fd2d28407c70a7f33f8a91be3e96e901cb1f0dfe18142', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:40', '2021-11-02 00:39:40', '2022-11-02 00:39:40'),
('458257cbb86d4cba0cfedea21b5a73cc2d127c9033eb40dfedf9daca12cb04ded4ace3f8c5b470c4', 2, 6, NULL, '[\"*\"]', 0, '2021-12-03 11:38:43', '2021-12-03 11:38:43', '2022-12-03 20:38:43'),
('45d04e6db963f7fbc7b82162849b2bf90076bce6aa2afa6ab3bcd94e7edcb4a12920269b6649e9ff', 38, 6, NULL, '[\"*\"]', 0, '2021-11-17 14:18:32', '2021-11-17 14:18:32', '2022-11-17 14:18:32'),
('4632308f932c2929abe1d2e4b7bc80632aae8b0dd6b94a42273dfea910b38a9c0076c993dba6a5ed', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 12:54:15', '2022-03-30 12:54:15', '2023-03-30 21:54:15'),
('46c6e02894313d3697c9d95f039882a0897c8a7fd1667104e0dbaff6e176c80ab57a1504479591ca', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:59', '2021-11-02 00:39:59', '2022-11-02 00:39:59'),
('46d2a0bff50169fc047e2ed94ea2e5ed11525ad7c2c53d9f2259f2e6183e470c70ded0e0c2f8bfc4', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:31', '2021-11-02 00:40:31', '2022-11-02 00:40:31'),
('46ecf98d4cb42c2e8d6e16c5445e921bcefd86752a357e178f60256148d167258929eb12b286f824', 7, 6, NULL, '[\"*\"]', 0, '2022-02-18 13:40:15', '2022-02-18 13:40:15', '2023-02-18 13:40:15'),
('483ad352623d0cd1d0811047c19b9ba123e3027652337652fa6a37f5412a31bc127f567d2100893e', 1, 6, NULL, '[\"*\"]', 1, '2021-11-24 07:46:43', '2021-11-24 07:46:43', '2022-11-24 16:46:43'),
('49545297ef7c63b61f8c618762d0904272e6c5c63216046dc853825ab979e1d237c5d534025eca07', 2, 6, NULL, '[\"*\"]', 0, '2022-02-26 04:22:31', '2022-02-26 04:22:31', '2023-02-26 04:22:31'),
('4a4c1a384cbe96020b25e7451c416a1ce4d195c6f66f9825ea9dd02777777a3a29cf5b64b8bbce57', 25, 6, NULL, '[\"*\"]', 0, '2021-11-09 20:28:10', '2021-11-09 20:28:10', '2022-11-09 20:28:10'),
('4a7e8edfa616cb094000ce95268b51555f2ccf032d991a424a0754cb704fa72934e270e29de57288', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:40', '2021-11-02 00:38:40', '2022-11-02 00:38:40'),
('4bbbc8a5f1587bdab3abe3384e6535bb460ada7b7ab0fad50644e24e80e43d2af4f94c02943c714f', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:42', '2021-11-02 00:38:42', '2022-11-02 00:38:42'),
('4bdcc24a3e0db339a902ad58136eaebd01007808f816a181bdb88799146c0b5766f665a051ddfb87', 2, 6, NULL, '[\"*\"]', 0, '2021-10-27 18:59:42', '2021-10-27 18:59:42', '2022-10-27 18:59:42'),
('4c386acdf576774a4c3fd8619c38f7c1e78a5edefcd70d3abd5b34b334ea0159a38680ec5e54ca5d', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:30', '2021-11-02 00:39:30', '2022-11-02 00:39:30'),
('4c4727213dad157d1305a9aa3b2861655e252aa05ef3b5993cec2b106a7752c92b2f1d87f0e88979', 2, 6, NULL, '[\"*\"]', 0, '2022-02-01 10:46:52', '2022-02-01 10:46:52', '2023-02-01 16:16:52'),
('4c60d1cc8ee1c9944ec81408e242ec0c2cb4719630e1345ca39c69162438a05e842aaef43fe54fba', 36, 6, NULL, '[\"*\"]', 0, '2021-11-11 18:07:46', '2021-11-11 18:07:46', '2022-11-11 18:07:46'),
('4d3d82a18427794783924cb849bd644a75b30a37a07a4624177b4f7d52e2608eaf50481a8a243ae9', 12, 6, NULL, '[\"*\"]', 0, '2022-02-25 20:08:07', '2022-02-25 20:08:07', '2023-02-25 20:08:07'),
('4d6901f242a94a12a221a67de8f25f3a95eb21f16d2a097003a9be8a1f3358ef34b9d9c7a7c265a3', 1, 6, NULL, '[\"*\"]', 1, '2022-04-28 14:54:27', '2022-04-28 14:54:27', '2023-04-28 20:24:27'),
('4d77e65a88cf7825e875dcbf49585373309b928f1666db439b0cf07e0009a9837a3762185cb830e3', 8, 6, NULL, '[\"*\"]', 0, '2022-02-21 21:39:06', '2022-02-21 21:39:06', '2023-02-21 21:39:06'),
('4d80a15e519d9afa13b9b59fca379858222a7f5dc76fa77b2adeecf8d84e842942ce94c29e2011f2', 8, 6, NULL, '[\"*\"]', 0, '2022-02-09 20:43:12', '2022-02-09 20:43:12', '2023-02-09 20:43:12'),
('4e5a0d7182fbf22e56a5010404dedb9f5f18553cb30808dc10294d0cf0ba891c86ac007d0a2976f0', 1, 6, NULL, '[\"*\"]', 0, '2021-10-25 15:46:57', '2021-10-25 15:46:57', '2022-10-25 15:46:57'),
('4e956996cd794fe880c081cbda8fc3473ca4b2be6b9c82688948195472aac1530196cb37f5d9a382', 10, 6, NULL, '[\"*\"]', 0, '2022-02-08 18:10:55', '2022-02-08 18:10:55', '2023-02-08 18:10:55'),
('4f0398f9fd7131b02e709e3d2e306b83a5ce86401b0b4e4d9e879c2d785a53feb02545d0e9b2f95c', 5, 6, NULL, '[\"*\"]', 0, '2022-02-17 18:44:32', '2022-02-17 18:44:32', '2023-02-17 18:44:32'),
('4faa00750382d5269cc55b9376a5873c9a64d0f19960acd823f6b26a8a75f293c8e442373441d4ef', 8, 6, NULL, '[\"*\"]', 0, '2021-11-16 15:05:19', '2021-11-16 15:05:19', '2022-11-16 15:05:19'),
('50046779c7a61ff2a7ba6ef3e5496247eae3c67ac47696dcf1920c7d9a8103fbeaa3e5aaa5368bc2', 2, 6, NULL, '[\"*\"]', 0, '2021-10-07 14:57:37', '2021-10-07 14:57:37', '2022-10-07 14:57:37'),
('503bf1a1646e44a1c453b4391a3eb62f15d9273ff36318ffd019a050c7742924de223ca308948825', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 13:23:18', '2022-03-30 13:23:18', '2023-03-30 22:23:18'),
('509bd6bea0480c0e5663796bcc0e239f14d2feca455016e82d7c1f12dc71f6b2d3292e41ad4336f6', 3, 6, NULL, '[\"*\"]', 0, '2021-10-05 15:44:53', '2021-10-05 15:44:53', '2022-10-05 15:44:53'),
('50d298748ad3488adf9930227d1a9d68c7285fd04c9c3d4804d20cb1d4fd26c95b418f67a3c32ebf', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 18:47:16', '2021-10-06 18:47:16', '2022-10-06 18:47:16'),
('5176bd5f44fbbf90b55a52b59b46c357a9ff41b0338f8271db8844011add4b4898c3b1df44c1b229', 2, 6, NULL, '[\"*\"]', 0, '2022-02-07 18:26:45', '2022-02-07 18:26:45', '2023-02-07 18:26:45'),
('51b735594c3e61c69571fd8b790db9d78b5771dc9ca6bb9e18594a5f9dcb5254d5919534018b09ef', 1, 6, NULL, '[\"*\"]', 0, '2021-10-14 12:51:33', '2021-10-14 12:51:33', '2022-10-14 12:51:33'),
('522bcb3d3bfe731ff056a83ec6c5758bc77106b8067a1669823370187219e47ae6bbe59c3d35a636', 13, 6, NULL, '[\"*\"]', 0, '2022-03-31 04:42:48', '2022-03-31 04:42:48', '2023-03-31 13:42:48'),
('5231d63e1fd596196fd572059b810734fa05f3301ed7dbbe7d2c2275f6e03a138dec1532420629d4', 25, 6, NULL, '[\"*\"]', 0, '2021-11-16 20:00:59', '2021-11-16 20:00:59', '2022-11-16 20:00:59'),
('526f346882173670cb15523b904992553897aa23c64d901b6f6b081ff6e74f65008568c4542d521f', 9, 6, NULL, '[\"*\"]', 0, '2022-03-25 11:42:46', '2022-03-25 11:42:46', '2023-03-25 20:42:46'),
('52c4ba421402d91d713e7457e01b8981722ac0b9db6f756447c3ac9d9ceadb3e916e9584961a3ecb', 1, 6, NULL, '[\"*\"]', 0, '2021-10-05 22:32:28', '2021-10-05 22:32:28', '2022-10-05 22:32:28'),
('5372808b5331de1e718df43a5943f116e51dfe4330203ffa8b31f484742b6af8b56b81ff05aa363d', 1, 6, NULL, '[\"*\"]', 1, '2022-02-26 16:13:35', '2022-02-26 16:13:35', '2023-02-26 16:13:35'),
('53bc3e087262ea3e2972173980eb68b2717fcfc39e9d4fd726850ec7040b49b24f074f649969d1a2', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:14', '2021-11-02 00:41:14', '2022-11-02 00:41:14'),
('53faca44e565f167d64ea20c110f3b52adfebee78f2674862b24be571ba9ff1af2f52129eab53bf4', 38, 6, NULL, '[\"*\"]', 0, '2021-11-15 21:24:47', '2021-11-15 21:24:47', '2022-11-15 21:24:47'),
('541604afca747bac2800d8036c40fd0e9f3972e4886e89a66fee2207bbd0a4c46b019b3a44a41fdd', 3, 6, NULL, '[\"*\"]', 0, '2022-03-28 13:05:31', '2022-03-28 13:05:31', '2023-03-28 22:05:31'),
('54980634db8b23b1e7cebd52dcf0f45c2b88166a3a13784ff68a48551a514c90f92348de2c2019f6', 3, 6, NULL, '[\"*\"]', 0, '2022-07-23 10:20:11', '2022-07-23 10:20:11', '2023-07-23 15:50:11'),
('54b2c1ff9acf9ed2084f321d60c6d51ef25a146c871c7b80d60c19254131cdd035f630b479e4ac79', 1, 6, NULL, '[\"*\"]', 1, '2022-07-06 15:18:00', '2022-07-06 15:18:00', '2023-07-06 20:48:00'),
('55a493e4a9acc76c6a05429ae76690bc3a7708dac91670b13705600d28c897f931a32764a1242def', 8, 6, NULL, '[\"*\"]', 0, '2021-10-12 21:53:30', '2021-10-12 21:53:30', '2022-10-12 21:53:30'),
('56264135933f84b6610feddbfe6a0302d5798b77ee4c2a214e06a6e8e84ef0799f47bce5a05bc7ed', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:10', '2021-11-02 00:41:10', '2022-11-02 00:41:10'),
('564ef370dcaf7a17065f40d49ab66fb6d6f8f03893f34be288f4e05b41ad01c44d22f8e31c338fed', 2, 6, NULL, '[\"*\"]', 0, '2022-03-30 12:50:18', '2022-03-30 12:50:18', '2023-03-30 21:50:18'),
('57b75c3413eb78d646648166918cc6b19d5b8bfbb7687ac0e10d09fb149787ed1f1722d2ac723d5c', 19, 6, NULL, '[\"*\"]', 0, '2022-03-02 18:11:57', '2022-03-02 18:11:57', '2023-03-02 18:11:57'),
('580ac28ab970c5f8414f6a9fd79100b09cc2ab9ebd10caa7e25cac84186e048a74cc034fd0a96df5', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 07:05:09', '2022-03-30 07:05:09', '2023-03-30 16:05:09'),
('586edf7a4fc3ad8dc412af1d5f1287037b1de24f39526c36cc8ddaba553e0220209e31db20bcbdff', 19, 6, NULL, '[\"*\"]', 0, '2022-02-28 13:51:34', '2022-02-28 13:51:34', '2023-02-28 13:51:34'),
('59424dfc0f6e8c9471304258fdb722fcdfa545866579322c0761ce33bdc8482ddc8453747ea25eb5', 1, 6, NULL, '[\"*\"]', 0, '2022-02-18 14:44:28', '2022-02-18 14:44:28', '2023-02-18 14:44:28'),
('5979c9da95ac5f6bca503012e2e9d34d00125377375ed416885744fffc7ca4c975d2d2e7ed06e52b', 38, 6, NULL, '[\"*\"]', 0, '2021-11-24 05:30:32', '2021-11-24 05:30:32', '2022-11-24 14:30:32'),
('5a113f0ff079e6730e799fbe212722aa88f53eb83b73f669588a0cdfa01ea325dd46a4058c37472e', 2, 6, NULL, '[\"*\"]', 0, '2022-03-23 14:17:30', '2022-03-23 14:17:30', '2023-03-23 14:17:30'),
('5acff4b7f7743910b9c128297b01de46a1a03972e76832ff018c1857edd4ec0d551269caa86964d8', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:43', '2021-11-02 00:38:43', '2022-11-02 00:38:43'),
('5b599d9c5620be99dbe43892d26fcf88736d7ac6e40e35aaeed07e0b84126eab3a77195e6c270c1b', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:21', '2021-11-02 00:41:21', '2022-11-02 00:41:21'),
('5bfeef26ba7e7a68eb48b5dcacf6986aac9e749a3e661801b9c048fbe777d372d4e82a9ff24eca50', 36, 6, NULL, '[\"*\"]', 0, '2021-11-11 17:01:53', '2021-11-11 17:01:53', '2022-11-11 17:01:53'),
('5c32433ef20c63ad07e418ad6b728db6c70321a17e8fda1a7ed14a92ee043cbf05c4680bb0e9826e', 25, 6, NULL, '[\"*\"]', 0, '2021-11-04 03:14:19', '2021-11-04 03:14:19', '2022-11-04 03:14:19'),
('5c8458e380ea469c5d4bc9c5dc452c98f849037ba6c12a51ffe408f843f5d0661f0434745a943348', 8, 6, NULL, '[\"*\"]', 0, '2022-02-09 18:29:28', '2022-02-09 18:29:28', '2023-02-09 18:29:28'),
('5d0ba186fd337ca9cad5029e427b7e8ab2670b69518e8a30a01249d9c61cd07d84b00a3b772560bf', 1, 6, NULL, '[\"*\"]', 0, '2022-03-14 19:08:17', '2022-03-14 19:08:17', '2023-03-14 19:08:17'),
('5d53dc6fade30bd8c530f0c6b781ef6763abc4749d8130e82b770b270641cd394b868a689e1cc49a', 1, 6, NULL, '[\"*\"]', 0, '2022-02-02 20:57:11', '2022-02-02 20:57:11', '2023-02-03 02:27:11'),
('5d7f633ac86eb58399cf60b5b1373e40d83a25286fbbe8f710d446d675a1fe5015e378cdfc6489a4', 5, 6, NULL, '[\"*\"]', 0, '2021-10-05 19:13:39', '2021-10-05 19:13:39', '2022-10-05 19:13:39'),
('5d8a69c1473eddc79aad65f004c854a11528d62ba5ab4f27dd39f4065f049310b5a06060ae81b736', 2, 6, NULL, '[\"*\"]', 0, '2022-02-18 14:41:43', '2022-02-18 14:41:43', '2023-02-18 14:41:43');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('5e0344a28732cc14d6ca371b93ba3eb7dc83bfece8e1c67bf1f8e2decd88b0a051c7622d9473bb17', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:10', '2021-11-02 00:41:10', '2022-11-02 00:41:10'),
('5e16dee4a4f3d1ef2657af5c841a7f540c3350577b3ce77f3214d4cb283f524111b7ca40e5a0fa08', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 15:22:37', '2021-10-29 15:22:37', '2022-10-29 15:22:37'),
('5e3fb431bb135f416dd55a19dab3448da84bdb8f37c7feebeecd552eb5216b6b1daeb0c416f4b7e9', 8, 6, NULL, '[\"*\"]', 0, '2022-02-15 15:46:00', '2022-02-15 15:46:00', '2023-02-15 15:46:00'),
('5ef81789e701a72ae6f12694add8fe5819725f7be1c2bb3bbb595b6034af8c51f6e1bce2457c939f', 4, 6, NULL, '[\"*\"]', 0, '2022-02-21 15:02:46', '2022-02-21 15:02:46', '2023-02-21 15:02:46'),
('5f1e040f296f70a9e3b22878b7d25527939f625ad5420d0084ec22bc5ec61f67b9690cf2d234a8bf', 2, 6, NULL, '[\"*\"]', 0, '2022-02-28 15:44:11', '2022-02-28 15:44:11', '2023-02-28 15:44:11'),
('5f87613fb02ea73d58999d6d0f73e93a1da1a5719d89741680171acbe0d994001b3db132c178f691', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 14:52:38', '2021-10-29 14:52:38', '2022-10-29 14:52:38'),
('5fa8be372bece20f6531ee288382c6b608b622e42fd1148bc8ab7b465969fe485a12211715b4873b', 8, 6, NULL, '[\"*\"]', 0, '2022-02-08 14:57:00', '2022-02-08 14:57:00', '2023-02-08 14:57:00'),
('5fb527fc67aae0af7926d245be4c0b40fcfe1de53c0f1918d73c55d54db25bb7eb5169ff587de2c9', 2, 6, NULL, '[\"*\"]', 0, '2022-02-01 11:35:39', '2022-02-01 11:35:39', '2023-02-01 17:05:39'),
('5fbc96fbc418823b9c6fcf36251fe639fd2ea19b750b4566a6ac689669dd06ed42eb15a5280499bd', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:40', '2021-11-02 00:38:40', '2022-11-02 00:38:40'),
('60d3da26c64183e080a138ab3eb23cd4904611bb0f8a7e34c83540ca49f0f015733cf7deadbde3c2', 2, 6, NULL, '[\"*\"]', 0, '2022-02-18 16:24:48', '2022-02-18 16:24:48', '2023-02-18 16:24:48'),
('6173e8fad18ea86fb42fc6a55df083965349165667241caa6792d3f45e5a670eb2e3fef51e41d615', 25, 6, NULL, '[\"*\"]', 0, '2021-11-01 13:48:12', '2021-11-01 13:48:12', '2022-11-01 13:48:12'),
('629aecde67cbbe4bf04dada4ee687e1afe4649ea6383f2d08331332159de71b1f989d0b7dc216386', 2, 6, NULL, '[\"*\"]', 0, '2022-03-17 20:40:00', '2022-03-17 20:40:00', '2023-03-17 20:40:00'),
('629dd03825ec3cf42cf4409e5661e64741d864c3b657995d1b534482c535e8ee64a965ab26afad55', 20, 6, NULL, '[\"*\"]', 0, '2021-10-11 18:45:08', '2021-10-11 18:45:08', '2022-10-11 18:45:08'),
('62a4159934940c6f9a1973335ec9c54d79ccd9705e0406fbdda9bbf59babfb0b49d42cc8f99dac14', 2, 6, NULL, '[\"*\"]', 0, '2022-03-31 14:39:25', '2022-03-31 14:39:25', '2023-03-31 20:09:25'),
('62c0fa8ad4112729f12944ee360e1bb33c24eb3ce766a4bbe0e7bb1a163a712dfb0de0cf67ae2b23', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:50', '2021-11-02 00:39:50', '2022-11-02 00:39:50'),
('62ebe70a867013d0e1075a58804e0d336e97637cec116c761877f4f50677cb1f6cf86efda59131de', 2, 6, NULL, '[\"*\"]', 0, '2022-01-31 11:10:37', '2022-01-31 11:10:37', '2023-01-31 16:40:37'),
('633990a0bb4914e10d0406493efae3ff264545de66bfc4789723cbc1d80da61d2dc3ac6ff67676cf', 1, 6, NULL, '[\"*\"]', 1, '2022-07-25 15:17:16', '2022-07-25 15:17:16', '2023-07-25 20:47:16'),
('63d6abbaa78027405ce2a9dc7976b40207d865a56484cdf1e3f0f17257fd7277b2f3513f2efa3477', 2, 6, NULL, '[\"*\"]', 0, '2022-03-01 15:08:16', '2022-03-01 15:08:16', '2023-03-01 15:08:16'),
('64769209aafd4a7c684a82adfc54e6d1878d74d9d2e7608785186b65f8c645dca954771f1da18607', 2, 6, NULL, '[\"*\"]', 0, '2022-03-08 22:27:45', '2022-03-08 22:27:45', '2023-03-08 22:27:45'),
('647cbd6584ccaf2950cd829b06b84c1673dfdfb60f9ce14edd6cef1bd936f5d02934d4605ceab860', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:51', '2021-11-02 00:39:51', '2022-11-02 00:39:51'),
('64d6d82eef34b4fcd375d0ec197d03d0c519ebfe1bd9c456ac6c508ec5a1489f3cc47732ca949109', 1, 6, NULL, '[\"*\"]', 1, '2021-11-01 18:51:23', '2021-11-01 18:51:23', '2022-11-01 18:51:23'),
('65325e1b711a3e9ce997427d0c448bde2a1f14cd4e0d87d53889eaaf16da20a4922fca1ddfebbd4d', 1, 6, NULL, '[\"*\"]', 0, '2021-11-11 18:11:17', '2021-11-11 18:11:17', '2022-11-11 18:11:17'),
('65498574c7b3c987346321f9e219624c4bf6cae365dd7de10768f74ffa0921d82284978730bd6fee', 2, 6, NULL, '[\"*\"]', 0, '2022-03-10 22:24:09', '2022-03-10 22:24:09', '2023-03-10 22:24:09'),
('6578c28b4e750bf572ccd52392f4a7a4ce1acb23f3fa1c80dba71592df7e1c84dc7c0308d63b1fdd', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:34', '2021-11-02 00:38:34', '2022-11-02 00:38:34'),
('6581b7fdee5e49bd6c1a76470dd61dccc903e33246953f3ad5dde827399ef18aa8b153ed075e9caf', 5, 6, NULL, '[\"*\"]', 0, '2022-03-28 13:19:04', '2022-03-28 13:19:04', '2023-03-28 22:19:04'),
('659289535051d771cecfc88ba0fa7007fd801bb9e31b2bd68912a8a8f752ada5f4b1197a34c4f5c6', 1, 6, NULL, '[\"*\"]', 1, '2022-02-26 03:46:39', '2022-02-26 03:46:39', '2023-02-26 03:46:39'),
('65e89fefa1d528f66cf6966e86cf1cb353ef4ebb0449559240c01ef92e04869aa99723fac85a6703', 2, 6, NULL, '[\"*\"]', 0, '2022-02-11 15:07:23', '2022-02-11 15:07:23', '2023-02-11 15:07:23'),
('66761cd0530706754742db0450c1786bc27055b115db72001d6dcde3306b3cd41439802d892e213c', 7, 6, NULL, '[\"*\"]', 0, '2022-03-31 10:22:02', '2022-03-31 10:22:02', '2023-03-31 19:22:02'),
('6678d9603f069ce97173744af825ae88af44daecf4d8de18133d5b8e768d165cccd1209f91a1e774', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:33', '2021-11-02 00:38:33', '2022-11-02 00:38:33'),
('667be5ece4954bcf20260fd2aa094a995e38300f2bf86dd4fbc18488b38e37663026e575f522f4c4', 2, 6, NULL, '[\"*\"]', 0, '2022-02-07 18:25:36', '2022-02-07 18:25:36', '2023-02-07 18:25:36'),
('66fe56d6f211d52bc4de2969bb4a79613b04f1a3878870f792c77f32c417ade674cbc8cf751bb893', 1, 6, NULL, '[\"*\"]', 0, '2021-10-05 15:45:18', '2021-10-05 15:45:18', '2022-10-05 15:45:18'),
('67363c3d93969445c94f5907d1a61bb0ce8b289a90750929fdcd7699db7b5f3037973731fab2553a', 25, 6, NULL, '[\"*\"]', 0, '2021-11-11 17:57:56', '2021-11-11 17:57:56', '2022-11-11 17:57:56'),
('67852e68bfee7078bd06dd7b106e17b7cd80da4e48c10de02392219ab33d29aecc0bdf5b73c0ce59', 1, 6, NULL, '[\"*\"]', 0, '2021-11-09 16:57:19', '2021-11-09 16:57:19', '2022-11-09 16:57:19'),
('67b810f42b8e6feb28e4f1177fcd92afd9742c79b2042a82adabaaf5c167d42bd1292657c93cdeb9', 14, 6, NULL, '[\"*\"]', 0, '2022-03-31 09:14:44', '2022-03-31 09:14:44', '2023-03-31 18:14:44'),
('6833a69f293b1cb86ce967b57bdfe3074e0d60a651daaadd4b78d1cc87c6f65d575c142be0e50d21', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 17:47:04', '2021-10-11 17:47:04', '2022-10-11 17:47:04'),
('6872bc2c0c489ff916c34d4b55287a51bdd0aeffe4255f2f4484d07465fd5cbb8246e2d45f1e1892', 10, 6, NULL, '[\"*\"]', 0, '2022-03-30 06:57:06', '2022-03-30 06:57:06', '2023-03-30 15:57:06'),
('68f8032fba8acf001018714d58a0bc4d42d8e4929afe601ea8a0d170edc1da061768119d63974512', 1, 6, NULL, '[\"*\"]', 1, '2022-03-31 05:52:38', '2022-03-31 05:52:38', '2023-03-31 14:52:38'),
('69474c3f244ecd603d23f3a5877f2c8240862987d7fdf6a76a5c6ed579354f2370e961d244759a62', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:56', '2021-11-02 00:39:56', '2022-11-02 00:39:56'),
('698840af02c057d5e10df052dcdaa2460d9d9f153bf31602c12a857a9a7d34b968ed4f6b78e92dfc', 2, 6, NULL, '[\"*\"]', 0, '2021-10-05 18:43:55', '2021-10-05 18:43:55', '2022-10-05 18:43:55'),
('6989f2fb215b187a9faead65844afde4883d6055f8c4cf290fd12ea3f62889b3e85e01cd5f9b70e6', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 12:43:18', '2021-10-11 12:43:18', '2022-10-11 12:43:18'),
('6990091061aa96e014953a8d207a9dcf68f46c8dc885e64b09b15961339cb9695bc1be0e0925231d', 1, 6, NULL, '[\"*\"]', 0, '2021-11-05 12:57:43', '2021-11-05 12:57:43', '2022-11-05 12:57:43'),
('69b020effdd56e34250bbb3fd78a70838fb94a8e3a49820cacdb7bb84b08c08d64e5d0418655d1bf', 3, 6, NULL, '[\"*\"]', 0, '2021-10-05 15:37:16', '2021-10-05 15:37:16', '2022-10-05 15:37:16'),
('69b8e0238d0f24f35b8d60fedbe7e0f63d8a2e92efd26a15fc0f365174986adc9d3183821420eb8f', 1, 6, NULL, '[\"*\"]', 1, '2022-05-10 09:36:26', '2022-05-10 09:36:26', '2023-05-10 15:06:26'),
('69ed16f324d2360eff6a5d3ffc034820478c81ce8efaa7c25533e452a321af6331e2d16e1d45caff', 12, 6, NULL, '[\"*\"]', 0, '2022-03-31 06:27:15', '2022-03-31 06:27:15', '2023-03-31 15:27:15'),
('6a4b6d913017e809d6cb1dacb8015220d3be1ae2c9696f5c2a8da9f892760befd06027c9756238db', 3, 6, NULL, '[\"*\"]', 0, '2022-02-17 13:49:22', '2022-02-17 13:49:22', '2023-02-17 13:49:22'),
('6ab4491a5cd65ff69c4f08f2c2fb0531a95b738856765ad4b26c0440f666ffbc7cc0c58475490b50', 2, 6, NULL, '[\"*\"]', 0, '2022-01-28 09:18:03', '2022-01-28 09:18:03', '2023-01-28 14:48:03'),
('6b7de19246d12b560dbc7dc16bff85a70ea004bbe315dff01c6b0774a604e720700a76f2c9f752e3', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 13:05:25', '2021-10-11 13:05:25', '2022-10-11 13:05:25'),
('6b9e8baee2b71dce5f362a5e8ab48c5a250d0faf569cbd28f814da0d6018e03d3ec6e75a97bb0ed6', 9, 6, NULL, '[\"*\"]', 0, '2022-03-30 11:53:00', '2022-03-30 11:53:00', '2023-03-30 20:53:00'),
('6bed31119c71285d89dbfcce202ae081fc234ca6fecae9340de18a76343f030745fc056973d92ed2', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:47', '2021-11-02 00:39:47', '2022-11-02 00:39:47'),
('6bf9835b72c9212271577f24ef5c1c7b94a52686e37767182ed5829f7a525a4cfeec15f0d95277b1', 21, 6, NULL, '[\"*\"]', 0, '2022-03-01 20:01:51', '2022-03-01 20:01:51', '2023-03-01 20:01:51'),
('6c03b1934402f46e990bb54e1fab578c9f9126e6e11aa7facdc637bfc08390cd2b24c080771d4f6e', 4, 6, NULL, '[\"*\"]', 0, '2022-03-12 17:56:03', '2022-03-12 17:56:03', '2023-03-12 17:56:03'),
('6c1c3dee602cec9eba096fcd54f11d9729a927b7d968cb8c23d5a6ffb620b9e91f73671e9a16f240', 1, 6, NULL, '[\"*\"]', 1, '2022-03-25 11:23:12', '2022-03-25 11:23:12', '2023-03-25 20:23:12'),
('6c514b2fe830bed1a1bfe15f29eb83ce526fa85d2f69ea312a5058612dc7ca59276493463cd8377f', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:34', '2021-11-02 00:40:34', '2022-11-02 00:40:34'),
('6cd35f34bf423486b61379406f5294cb6f10b1e2bc6971e404d252700775041b4f8f20b9ec71168e', 1, 6, NULL, '[\"*\"]', 0, '2021-12-24 07:36:24', '2021-12-24 07:36:24', '2022-12-24 16:36:24'),
('6d6388520595835ca4f58decb65a42f54b29a1ab2d6ccfee0a7c12eaa37a525501e0237737aa790a', 8, 6, NULL, '[\"*\"]', 0, '2021-10-05 19:52:26', '2021-10-05 19:52:26', '2022-10-05 19:52:26'),
('6e2c1529d4e6c64473c52d46608c66419a76aaaffddc62cea9a1400d1e89596c07c8ccf0bbf3fc94', 4, 6, NULL, '[\"*\"]', 0, '2022-02-21 16:29:41', '2022-02-21 16:29:41', '2023-02-21 16:29:41'),
('6e2fdf812174a163faa65d8b1f5bc2b8221af27bfc486e2c7614375e97160f232ad99602474c0dcd', 1, 6, NULL, '[\"*\"]', 1, '2022-07-18 12:31:11', '2022-07-18 12:31:11', '2023-07-18 18:01:11'),
('6eb345f029b7427c94cd173871c60250c35bf63ff6a05abfbf0acd3feaf789ac51eb030b7d3dc23e', 1, 6, NULL, '[\"*\"]', 0, '2022-03-30 09:55:33', '2022-03-30 09:55:33', '2023-03-30 18:55:33'),
('6fb9f55a2a5143d286e75e057d04df2c8e0b95a25ff83dded8604a355595eee34bdf8bf680869391', 2, 6, NULL, '[\"*\"]', 0, '2022-02-17 18:08:33', '2022-02-17 18:08:33', '2023-02-17 18:08:33'),
('6feafb3d0b5b3afec856a05069dafee9e38d8d3517b29abcf1db3f92a26734ef366c8c585cc1c6af', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:37', '2021-11-02 00:38:37', '2022-11-02 00:38:37'),
('710cf75838163934c6437e0674bb5aeb2e809ec8211dd473a545dcbde6a167ca8bedfc421a27aaf7', 1, 6, NULL, '[\"*\"]', 0, '2022-02-09 20:51:24', '2022-02-09 20:51:24', '2023-02-09 20:51:24'),
('71924ca497a01e1293b6fee5fbb51569a1a63dc32ad3dd496c4fdc6559337ce33bfa1db7c97ca054', 9, 6, NULL, '[\"*\"]', 0, '2022-03-31 05:51:46', '2022-03-31 05:51:46', '2023-03-31 14:51:46'),
('71e88c6c7abcd511b5ff00deb50bc9377ccf5cc7b48567154178b1ec2e95f5e168a8285da18baf5c', 8, 6, NULL, '[\"*\"]', 0, '2021-10-07 15:51:07', '2021-10-07 15:51:07', '2022-10-07 15:51:07'),
('71f384cba99d3e3f2bf83d18c3cf5e6b5776290266d6c40301ecd8c2d81324775cb7c3c5c603a7de', 1, 6, NULL, '[\"*\"]', 1, '2022-02-07 18:27:50', '2022-02-07 18:27:50', '2023-02-07 18:27:50'),
('71f947aae6b3b3861f694cf7529104d23435ea9ccc8797cbaca1a67ec828e2a43d7dc747689cb448', 1, 6, NULL, '[\"*\"]', 1, '2022-03-06 19:23:22', '2022-03-06 19:23:22', '2023-03-06 19:23:22'),
('72433224677740ac7c1b4605221fb4fd39ef5da65943cd4b4cc315aeeb4f7dc81a6df57f17a7d5fc', 2, 6, NULL, '[\"*\"]', 0, '2022-03-31 05:39:32', '2022-03-31 05:39:32', '2023-03-31 14:39:32'),
('726a153718050497314a6bd3cb6a9b747b975267664a1bfd85112259faab2d73c961b034f0fd2548', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:25', '2021-11-02 00:39:25', '2022-11-02 00:39:25'),
('72c8a30837b366463d512b4446c2f4d4212b5578d1831fe18c730561e39fafce9aa37ff15140d27c', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:40', '2021-11-02 00:40:40', '2022-11-02 00:40:40'),
('733bb95891374249c730094d9207d75b844a9eb2870a3999a3b426ff441b541fd4098e77d4a49633', 1, 6, NULL, '[\"*\"]', 0, '2022-02-21 20:23:00', '2022-02-21 20:23:00', '2023-02-21 20:23:00'),
('73722ed25caa01431e55d8fb299d6e2f54e8ca85496c2db7126be4c2435217c46c30a20abcc3e1e4', 2, 6, NULL, '[\"*\"]', 0, '2022-02-07 21:28:30', '2022-02-07 21:28:30', '2023-02-07 21:28:30'),
('7386c624f0e6c3957db9bb4942832d6d1a9a1dc92ed029ccd3d147bc0a6c032832240044feb38b9d', 2, 6, NULL, '[\"*\"]', 0, '2022-02-12 17:42:38', '2022-02-12 17:42:38', '2023-02-12 17:42:38'),
('73913d6d617d0ef24fa6a2fe91170f5ae3d988269f6239483f550b626e15b8503ed2ffcd1ff9c891', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:28', '2021-11-02 00:40:28', '2022-11-02 00:40:28'),
('74052de653b46f787151851f80ed9a857f16de3a374589ab6ca61da437eab63698722b2cf36735df', 1, 6, NULL, '[\"*\"]', 1, '2021-11-01 12:53:49', '2021-11-01 12:53:49', '2022-11-01 12:53:49'),
('75d89258b65cc1b84ef0c00d595b57701b303c251c341bd224568cfce2d71cde84f8fbb05c485f00', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:27', '2021-11-02 00:41:27', '2022-11-02 00:41:27'),
('7638a80844a6f0ac0341646e29efc1741ed16fd9143782e858fc7ab1947827df4731e04fd4b2f0a5', 9, 6, NULL, '[\"*\"]', 0, '2022-03-25 11:02:11', '2022-03-25 11:02:11', '2023-03-25 20:02:11'),
('7651a813e60afa916e60236eee1573edb20cb7710baa45b2738a04c7831d988129742c493285bb91', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 14:50:39', '2021-10-29 14:50:39', '2022-10-29 14:50:39'),
('76da5fac45ca00dc06b34903e214ab71d25b4cfb1e363683b491d0bb3cf4741f352eb47744b2c129', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 23:39:32', '2021-10-06 23:39:32', '2022-10-06 23:39:32'),
('76ef19ea0fd57a75423354c3862f3923bd28f9a9e895383feaa41bde064b751b80868f76b539dfc6', 25, 6, NULL, '[\"*\"]', 0, '2021-12-06 11:53:33', '2021-12-06 11:53:33', '2022-12-06 20:53:33'),
('7702c12f25f78edeaacd469bce858534dda110e1cb6759fc1b06a10b9aea2c85ad75d51210630555', 2, 6, NULL, '[\"*\"]', 0, '2021-12-06 06:41:47', '2021-12-06 06:41:47', '2022-12-06 15:41:47'),
('777cfdfb5958903f287ffb047f0ef342660718da000f22bee7327289a7ea2106b27914ff3aca7cf5', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 15:19:03', '2021-10-11 15:19:03', '2022-10-11 15:19:03'),
('7813dab17cdd52254f9e520f399ca65f615e2331d78d9e3589ad9fd48ee0548e6e65b5ed3f4963b0', 1, 6, NULL, '[\"*\"]', 0, '2021-11-01 15:28:58', '2021-11-01 15:28:58', '2022-11-01 15:28:58'),
('78255d6189a90436da2592918ecf728c2cabfae47202ec5842f985e8c20a305181c240ab01658de7', 1, 6, NULL, '[\"*\"]', 0, '2022-03-22 18:06:55', '2022-03-22 18:06:55', '2023-03-22 18:06:55'),
('7844ad61f6e3a0d648c289cfcabbd755ab8ff8c444bdb76a969c982a926a31bccc4d1f3f11931374', 3, 6, NULL, '[\"*\"]', 0, '2022-07-23 19:06:48', '2022-07-23 19:06:48', '2023-07-24 00:36:48'),
('78863ddd7bb207d2d8ef7fe9b0c1a2ec1fcae249e17c139da676e5dc8377f3372e4a34cc6b01038c', 2, 6, NULL, '[\"*\"]', 0, '2022-02-15 21:06:34', '2022-02-15 21:06:34', '2023-02-15 21:06:34'),
('78c3c48335d01aecae92e5171d0d608a75e3399e56cc672d6d8c32bacace8f787476404a953e92b0', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:29', '2021-11-02 00:38:29', '2022-11-02 00:38:29'),
('78c94a998b89c58c95a51c69f96096b34592c28051a9e4567a76fa36a65c26f06f58937eeab48553', 1, 6, NULL, '[\"*\"]', 0, '2021-12-15 11:16:25', '2021-12-15 11:16:25', '2022-12-15 20:16:25'),
('78cc017fa9c1f0b6ceb5759842c9ca40bcf24cc9e8110a8b8bfb84eee6cf2aa20d0c8ebd7ef31536', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:36', '2021-11-02 00:39:36', '2022-11-02 00:39:36'),
('79a72ebf04e3f027da3a40de0d52dcf6f8b885b08ebd9e0d585bdf927f418e1cec7aef71a2ef8132', 8, 6, NULL, '[\"*\"]', 0, '2021-10-07 22:23:35', '2021-10-07 22:23:35', '2022-10-07 22:23:35'),
('79c0d40875e18869f50d132d162e6f4d3f857360ed7721c1e5c5155dc841c45edf7400044af068a7', 48, 6, NULL, '[\"*\"]', 0, '2021-11-29 09:14:42', '2021-11-29 09:14:42', '2022-11-29 18:14:42'),
('79def594cfd99eaf9a258e9c8a6afa425d8eec87ac5d197f981b87df8625b74220b1bbf9b735ba7a', 14, 6, NULL, '[\"*\"]', 0, '2022-03-31 09:35:25', '2022-03-31 09:35:25', '2023-03-31 18:35:25'),
('7a2dcf1132ad10a5d350d4b694f1711f8871b73a03ca0448a3194128d34a4a4998da8fbcdd193373', 17, 6, NULL, '[\"*\"]', 0, '2022-02-25 19:25:53', '2022-02-25 19:25:53', '2023-02-25 19:25:53'),
('7a2f9d62710199c43481c707e5e22ce1738050ab6cdbcdf0bab46bd4bda09b063e5e0c6a3654dfe4', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:25', '2021-11-02 00:38:25', '2022-11-02 00:38:25'),
('7ad71eb522d885531f8791444a212d2a7244e6df3dc5a3bfd20b393768a405fe99d5e20d0e05636e', 8, 6, NULL, '[\"*\"]', 0, '2022-02-08 14:26:41', '2022-02-08 14:26:41', '2023-02-08 14:26:41'),
('7b3a86508c36fe16cd972e4af158eb42f1651592155e6c5587e414a35e9cdf31abcd1110b3ffe52a', 8, 6, NULL, '[\"*\"]', 0, '2021-10-07 19:05:54', '2021-10-07 19:05:54', '2022-10-07 19:05:54'),
('7b6e11af718ef9c37c3202476a01f3bcbc8946515de8b65cf362c294667245edbd8b2117927bb3bd', 8, 6, NULL, '[\"*\"]', 0, '2021-10-27 17:27:56', '2021-10-27 17:27:56', '2022-10-27 17:27:56'),
('7bda335652fba6b5f9971fce607a7c51e0009572268d07541b83a346cfa375fa86d265b9ba23caa4', 2, 6, NULL, '[\"*\"]', 0, '2022-02-21 16:48:18', '2022-02-21 16:48:18', '2023-02-21 16:48:18'),
('7bfe0d5e8223b551c0604ab252090bfac2b14a5dff2adca77a4a88b4c4e2352a9f0f6bab13d0b7a2', 1, 6, NULL, '[\"*\"]', 0, '2022-03-04 14:51:17', '2022-03-04 14:51:17', '2023-03-04 14:51:17'),
('7c5038cb17113b3a712c23a2ffcb48f7e41a03438fd277fe7e4aad04ea07fdfc9173d8100f749521', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:26', '2021-11-02 00:39:26', '2022-11-02 00:39:26'),
('7c66e7020ee9d8fd1cfbb0a0fd9d06d3ea3ba269b51894d53bcdc982ac1a1577a11f7009a64c0d07', 2, 6, NULL, '[\"*\"]', 0, '2022-02-01 10:51:10', '2022-02-01 10:51:10', '2023-02-01 16:21:10'),
('7cf24b06da87696cde0a4355e61001dfb6f816981931c5d04636c12c30c253c89682f0e397fde3c9', 2, 6, NULL, '[\"*\"]', 0, '2021-10-28 12:44:44', '2021-10-28 12:44:44', '2022-10-28 12:44:44'),
('7debf5a39bcd694603b4a3ec3936a9b0d910770cf763cd7895d6d69d311b512ae1172b5f5ab980fa', 9, 6, NULL, '[\"*\"]', 0, '2022-02-09 20:50:10', '2022-02-09 20:50:10', '2023-02-09 20:50:10'),
('7e5a25eb23003c86e60e584350b6f3ebc1fb95dcdca7e73c063ede8930595af3770b7e1cda55e18b', 2, 6, NULL, '[\"*\"]', 0, '2022-05-30 10:44:40', '2022-05-30 10:44:40', '2023-05-30 16:14:40'),
('7e98b71c49c60b557c20598247f51649c6331c9e00e88cd853dda6e7db1028df63dc1f859a6bfc6a', 40, 6, NULL, '[\"*\"]', 0, '2021-11-15 21:27:47', '2021-11-15 21:27:47', '2022-11-15 21:27:47'),
('7ed445fd1f0ab4a1711bf664590326b5fdacd38b66a8d0ed4e91a0775e26523f4b2484c6ea09f6aa', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:29', '2021-11-02 00:40:29', '2022-11-02 00:40:29'),
('7ee01eab2b28de54ed99f15feee65312cb991506016f1845ab81636d117d96edeb1d00234659d827', 2, 6, NULL, '[\"*\"]', 0, '2021-10-05 16:34:17', '2021-10-05 16:34:17', '2022-10-05 16:34:17'),
('7f57fa914300e8fa95c1e9df8f39ef9257a77288e71c9b5a5c78888ff537e5b1c328fbe98f325247', 1, 6, NULL, '[\"*\"]', 1, '2022-03-08 18:29:01', '2022-03-08 18:29:01', '2023-03-08 18:29:01'),
('7f60d191a04c753d623ce7d8ee8d853c75e051c04125624ae5d7f4e524efad18f0dcad635659e9d0', 8, 6, NULL, '[\"*\"]', 0, '2021-10-13 15:03:24', '2021-10-13 15:03:24', '2022-10-13 15:03:24'),
('7f864a85b5b364f5b3bc93672e15449726bb67dcdd5b7d43124d1e36064ff35a4f9b5a2075d8fbf2', 8, 6, NULL, '[\"*\"]', 0, '2021-10-08 12:16:40', '2021-10-08 12:16:40', '2022-10-08 12:16:40'),
('7f945d6144e384ec6f7b76729098dfb0e90598bfad6320f77dbd4ff56f0b5d68aaf7a84bddbf18fa', 1, 6, NULL, '[\"*\"]', 1, '2022-03-07 14:35:23', '2022-03-07 14:35:23', '2023-03-07 14:35:23'),
('7fd685d14343e82a61fe5cf0bef97181335791a32ec6be4f4f0e328c282defbe2fb4cbed72d46773', 1, 6, NULL, '[\"*\"]', 1, '2021-11-03 13:15:35', '2021-11-03 13:15:35', '2022-11-03 13:15:35'),
('7feb0ef015c1014493074351bfdcdb4bbe03d46f911464776286e278da4e6e0556d923e3bcc8ec49', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:54', '2021-11-02 00:39:54', '2022-11-02 00:39:54'),
('7ff23b9806364c930cde13f501650bca91c119b3e96b42915d622cc020cb1766064e4da26c0be689', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 13:32:45', '2021-10-11 13:32:45', '2022-10-11 13:32:45'),
('7ff4ab9a037aee576feee000e26bb7e3050c2d8f733efb5497f4b07d4cbb0e834ff29a34ab27b40b', 2, 6, NULL, '[\"*\"]', 0, '2022-03-25 09:30:53', '2022-03-25 09:30:53', '2023-03-25 18:30:53'),
('7ffa4b83e33057e1c5cfe3e3e7e8ae0a51f56099cfbe604c366c2d97eec36ffcd14f5eccc719cf60', 2, 6, NULL, '[\"*\"]', 0, '2022-03-31 05:05:53', '2022-03-31 05:05:53', '2023-03-31 14:05:53'),
('80057d8f5fc4cee3de40f8c8a351b53a6a160cae41db82dfbf32ae389739f61082b558721941de2b', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:39', '2021-11-02 00:38:39', '2022-11-02 00:38:39'),
('80461527d231ceeb71084778d5a0b431735cc4ff78df7428218848f58fd3ac80974404d986fc3e03', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 15:18:41', '2021-10-06 15:18:41', '2022-10-06 15:18:41'),
('8053c1f6cd9270e3fe50c8c011ac5647d79e1f2ce0a56f3850a3b4c222eae92028fb81f806e31b33', 1, 6, NULL, '[\"*\"]', 0, '2021-10-28 17:40:42', '2021-10-28 17:40:42', '2022-10-28 17:40:42'),
('80d66c79f8268aae0acd2e99546b0f981b57f7118b61c4508a9982a778578a9a5b6f8bd4d1fc4df3', 44, 6, NULL, '[\"*\"]', 0, '2021-11-18 21:24:13', '2021-11-18 21:24:13', '2022-11-18 21:24:13'),
('80ffec6ed588dfc5a04e5b6bafcf2e74b71f691a5881cad11f550648630993dbfbf97bd9794a6db5', 8, 6, NULL, '[\"*\"]', 0, '2022-02-09 20:41:33', '2022-02-09 20:41:33', '2023-02-09 20:41:33'),
('8126432deb8ed855bb08ef68acfc4e9155aaa93b639601285bdb991a1c748d142255da3f829dd7f6', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:34', '2021-11-02 00:39:34', '2022-11-02 00:39:34'),
('8140da4d6f88b748793c16f6b4931cab0ebc154211bfd84ea183984e6908d07468c243569f24fd87', 1, 6, NULL, '[\"*\"]', 0, '2022-03-14 19:08:17', '2022-03-14 19:08:17', '2023-03-14 19:08:17'),
('816b324c1de8757a48adab85fe8e1161534702dfa51ab2eca97cea5ecbd12e7ab3f636cb06b26d73', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:36', '2021-11-02 00:38:36', '2022-11-02 00:38:36'),
('81c035ec8e92c35b26e86ad6c8cf22ccf2c538d663197f0a7ffe9339b87c2af30f5c70e7e6e14947', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:54', '2021-11-02 00:39:54', '2022-11-02 00:39:54'),
('81f4e5f5f44f8d5f4c09a8cdbe4f68b3a884147b64c183a3be0d6b2f86971b77a96d624ce882fd07', 4, 6, NULL, '[\"*\"]', 0, '2021-10-05 18:05:06', '2021-10-05 18:05:06', '2022-10-05 18:05:06'),
('826f010326b23b6b6b45a6bf30f91dc35f061f392c93b84a5ed588d1854e34c8748c356d8addcadc', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:52', '2021-11-02 00:39:52', '2022-11-02 00:39:52'),
('827233dcadae1a8d48e15658ca01140a886d1598652d3dd4ce3a4d3cdb2ec036259a7aef755adf3e', 6, 6, NULL, '[\"*\"]', 0, '2021-11-23 09:11:47', '2021-11-23 09:11:47', '2022-11-23 18:11:47'),
('83089fe0c32f710b4e71d22921ad4df3ba835a144f04637bf3b1e34c87edbaae389705bbbc1ce210', 14, 6, NULL, '[\"*\"]', 0, '2022-03-31 06:15:10', '2022-03-31 06:15:10', '2023-03-31 15:15:10'),
('8312ea5d487ce6f2c4a2a06cf236002641bf7de824dded0343e2fd626376af88341ccd4017c887ed', 2, 6, NULL, '[\"*\"]', 0, '2022-03-08 22:49:12', '2022-03-08 22:49:12', '2023-03-08 22:49:12'),
('834ba69bb2365aedde14206ec5710e69340a0db7460cdda655712020f45f0d43317636520c20034c', 1, 6, NULL, '[\"*\"]', 1, '2021-10-05 15:38:58', '2021-10-05 15:38:58', '2022-10-05 15:38:58'),
('835ba46110b4af42be8ad0049bc6dfb564ac6fe0a64f94173433707c7e93b4ac8bc2931bcbb023a9', 1, 6, NULL, '[\"*\"]', 0, '2021-12-03 09:21:45', '2021-12-03 09:21:45', '2022-12-03 18:21:45'),
('83738b1c5fced0c921f3a30b59ffc255660f1d279fc421031cc20d228acfa4ef7d121d0ba090607d', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 21:55:51', '2022-03-04 21:55:51', '2023-03-04 21:55:51'),
('8381b101517f080c61270af0a8d08c1ed2c12f67d1496b6d3212857e8b780b40ba1bc2efcfd5cef9', 2, 6, NULL, '[\"*\"]', 0, '2022-02-11 16:00:51', '2022-02-11 16:00:51', '2023-02-11 16:00:51'),
('83b016f4777ce24414831a4c8ae669f1ffa129152c67d61d603378977bea9b39d7eab0205b128809', 2, 6, NULL, '[\"*\"]', 0, '2022-03-08 22:39:02', '2022-03-08 22:39:02', '2023-03-08 22:39:02'),
('83f0007b2a49d29ea62380d0e3c55c09f4a83893452df2199532e16d66892130d9adb4a49b85e9ac', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:28', '2021-11-02 00:39:28', '2022-11-02 00:39:28'),
('8523c16d8e3ef03176895418b8cb65544cf5e294ebaed81e8541b2b350f9bcebe2705e6ac90efbb0', 8, 6, NULL, '[\"*\"]', 0, '2021-12-03 10:40:27', '2021-12-03 10:40:27', '2022-12-03 19:40:27'),
('852519ec3a42d1a7ca1c537e4129e5e34b4591c0521cfc895f6643950dd8e89f351b3b9b680d5f95', 2, 6, NULL, '[\"*\"]', 0, '2022-02-25 20:38:05', '2022-02-25 20:38:05', '2023-02-25 20:38:05'),
('853774c1c5c7f38e5d4aab5e7486ff41aeb8704da29e5e1079ffa0efc973ab7b9a892f7a2077132b', 1, 6, NULL, '[\"*\"]', 0, '2022-02-17 22:31:02', '2022-02-17 22:31:02', '2023-02-17 22:31:02'),
('858e7fa249cb75a2388171622c465e031f7d509a06dda70368f1ced6270ac8d75904f1a997276be9', 1, 6, NULL, '[\"*\"]', 1, '2022-02-15 20:38:54', '2022-02-15 20:38:54', '2023-02-15 20:38:54'),
('85bd60fe248f75c1004162df4d35653a95b290369bded3dbf96eaad2e29528e89b353fc46593383c', 2, 6, NULL, '[\"*\"]', 0, '2022-03-22 14:34:39', '2022-03-22 14:34:39', '2023-03-22 14:34:39'),
('85c1d48c9c4f357e1931eeb4c92445a8066ccb32dac6b4cccd2ab6c0faa745be49a6a02aee54843a', 1, 6, NULL, '[\"*\"]', 1, '2021-10-04 14:22:21', '2021-10-04 14:22:21', '2022-10-04 14:22:21'),
('8609ad9cccf9f75c183ee16bc85104c033caced0e00d3635629a4dea6d2796dbc4d000c908a8fba1', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 13:53:08', '2021-10-29 13:53:08', '2022-10-29 13:53:08'),
('86a68a568f2021eddeb0f71991ed6073b9f0593868f26423413d1b42a65dd21abd6d14e9b20cd7ad', 2, 6, NULL, '[\"*\"]', 0, '2021-11-24 12:59:19', '2021-11-24 12:59:19', '2022-11-24 21:59:19'),
('86afe2a36308390f2062d702b5083af5ebe7124be2ed70b367db4fdeb5c3d9bf71b95a3caeb86506', 8, 6, NULL, '[\"*\"]', 0, '2021-10-18 18:57:02', '2021-10-18 18:57:02', '2022-10-18 18:57:02'),
('86bea23480819837c3d79d747afb82c2b910c238ca20a47c6c0464ff710e5f43a3596cce62c8dbeb', 1, 6, NULL, '[\"*\"]', 1, '2022-02-25 15:42:59', '2022-02-25 15:42:59', '2023-02-25 15:42:59'),
('86f43cc41047968e98ae282bba12743fa4dfff37e813af038decbd36f0649adf6af5993036029fd8', 1, 6, NULL, '[\"*\"]', 1, '2021-11-25 09:11:56', '2021-11-25 09:11:56', '2022-11-25 18:11:56'),
('872915107439bb3d0898ec3a99392f03564612b13849d237848cd1a1731bb3475228bd821f98a214', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:13', '2021-11-02 00:41:13', '2022-11-02 00:41:13'),
('872e4337af323b3d92e5bcc08f6a0fda6421fe3092706813f38ff1c55691f9910d8c743169843249', 1, 6, NULL, '[\"*\"]', 0, '2022-03-31 07:38:01', '2022-03-31 07:38:01', '2023-03-31 16:38:01'),
('873ef58882bc21d4f55ed7ccf26c2bee7f9c6b3a1fe94cfda9917b200ea05b37be745046b63f41f6', 19, 6, NULL, '[\"*\"]', 0, '2022-02-25 21:25:03', '2022-02-25 21:25:03', '2023-02-25 21:25:03'),
('873f89abcfe7ee03eb9eb302ae8ddfa658de1d797547295ce1492262cd139810fe82e8f52bde4611', 28, 6, NULL, '[\"*\"]', 0, '2022-01-28 11:55:13', '2022-01-28 11:55:13', '2023-01-28 17:25:13'),
('874a81726c082dfa871a30dcc5620fbd2a6d5f29221d6d222148d0f96bd7cecc15deac876a524b9f', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 23:27:42', '2021-10-29 23:27:42', '2022-10-29 23:27:42'),
('87641f433342bde65f8826a9b29a0857b80e0315d503c804f113a92e1209b9d71c27e50ddf8f597a', 7, 6, NULL, '[\"*\"]', 0, '2022-03-30 10:35:58', '2022-03-30 10:35:58', '2023-03-30 19:35:58'),
('8782d6eb7167cb877cc7ac87c7eab6f691ec340d1f4f9240639cf2622f3249954ca2539b1c56ae5b', 8, 6, NULL, '[\"*\"]', 0, '2021-11-25 05:11:20', '2021-11-25 05:11:20', '2022-11-25 14:11:20'),
('87ee5fd3e829cf148366bca945f45a0dd2c0dbda422144ee5fc849850c9147519f18e27d43aa5047', 10, 6, NULL, '[\"*\"]', 0, '2022-03-25 11:27:25', '2022-03-25 11:27:25', '2023-03-25 20:27:25'),
('8809a33735f12b98f8d6422daa7ff2e0c763ec51951dc6582096139835e24e3df1b175d8d929bea5', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:26', '2021-11-02 00:41:26', '2022-11-02 00:41:26'),
('885156b39a6a2273c2e435cd7b7f28df2fb92d1ddf73c8bd8bbd389177f26b699338c014c0efd4e3', 19, 6, NULL, '[\"*\"]', 0, '2022-02-25 20:02:23', '2022-02-25 20:02:23', '2023-02-25 20:02:23'),
('890da1af4d5664faa2676018254fc379c7e2269282b92ebeb8d4fde280b401a73050d4214f091d0a', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:39', '2021-11-02 00:40:39', '2022-11-02 00:40:39'),
('895b5de4322df613d32869d50a890fc56bbdd2af0599eb9f5b948a6640bdf89815aa41a80267ea46', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:36:25', '2021-11-02 00:36:25', '2022-11-02 00:36:25'),
('89825aac07a8064dc8a97e55c9e4268544d0a823e636e70d3fc9c4851bf1cf63928ebb84bba5b954', 2, 6, NULL, '[\"*\"]', 0, '2022-03-02 15:44:40', '2022-03-02 15:44:40', '2023-03-02 15:44:40'),
('89dce7c370e4a0fa4ee714b93c80a3517e82d9f7d807724bd15ac34ccd0732d1f5bd5f1a28e94fad', 2, 6, NULL, '[\"*\"]', 0, '2021-10-05 01:45:56', '2021-10-05 01:45:56', '2022-10-05 01:45:56'),
('8a200f9cd02902721146398a790d494c0e90f0b784daddea9b106b93a40c08febab7d45f3cb14ac9', 25, 6, NULL, '[\"*\"]', 0, '2021-11-03 12:47:41', '2021-11-03 12:47:41', '2022-11-03 12:47:41'),
('8b46833cba060030deb5ed7b3de6d241493f7b76a32cdb3f043e8b8ab267fc8f93339a6ded5f4060', 2, 6, NULL, '[\"*\"]', 0, '2022-03-31 16:43:31', '2022-03-31 16:43:31', '2023-03-31 22:13:31'),
('8c0320d2424cc3077bdda2abd01b076f149025b8de886f8daaa9a8110918fcf2424bd4f30e0bb0ef', 1, 6, NULL, '[\"*\"]', 0, '2022-02-07 18:59:28', '2022-02-07 18:59:28', '2023-02-07 18:59:28'),
('8c465157352be2e1337d27b8e097e380486a8fe1f15b4ff812ac490c6f4cac4bbdddc5c251e97a36', 2, 6, NULL, '[\"*\"]', 0, '2022-02-11 18:21:03', '2022-02-11 18:21:03', '2023-02-11 18:21:03'),
('8c6383358d56748ea48cc550d1e1e510fadc311ec28b712bf7def569974f7588f71cded487f2d0bb', 8, 6, NULL, '[\"*\"]', 0, '2021-10-08 13:48:07', '2021-10-08 13:48:07', '2022-10-08 13:48:07'),
('8cab119538450f833a7274be63c3eccc622b010c2b6fff311b1eb264fbef7638b649b98a38908799', 2, 6, NULL, '[\"*\"]', 0, '2021-10-27 19:09:56', '2021-10-27 19:09:56', '2022-10-27 19:09:56'),
('8d45b0c34975ef4279bc47269cbeab8ba6c0686829993a0c50128556a7bd82e37e59522d553ca171', 12, 6, NULL, '[\"*\"]', 0, '2022-02-25 14:03:03', '2022-02-25 14:03:03', '2023-02-25 14:03:03'),
('8d51acb7867860e955f52680d2cb0199d0888c845f6aa32e6343a40a6945d6466649cfac12e4b908', 1, 6, NULL, '[\"*\"]', 0, '2021-10-05 17:14:43', '2021-10-05 17:14:43', '2022-10-05 17:14:43'),
('8d74a8fcabcda53b7e33be0e9313ef4c8a1c9fb805ffb58ef8aead9b936b4a6b974bb5d80e2fc135', 4, 6, NULL, '[\"*\"]', 0, '2021-10-07 13:53:55', '2021-10-07 13:53:55', '2022-10-07 13:53:55'),
('8dbccf4d12f7e632306cb879b26de8ddde43ed58da2f267a66c76034de7e4d5f40cfb00eab98e7f1', 10, 6, NULL, '[\"*\"]', 0, '2022-02-22 21:01:38', '2022-02-22 21:01:38', '2023-02-22 21:01:38'),
('8dfe1e2028e6d79f928ea3444e912cad9dd7b8317f9bba95990380cb8023fe8ffdac2774e8291e4b', 8, 6, NULL, '[\"*\"]', 0, '2021-10-08 04:12:16', '2021-10-08 04:12:16', '2022-10-08 04:12:16'),
('8e47d2168d16af13a7cc54a3aefb4b7420f900c8c8396d8506966e4abe47b3d8bb671891dc6dcb0b', 9, 6, NULL, '[\"*\"]', 0, '2022-03-25 11:18:05', '2022-03-25 11:18:05', '2023-03-25 20:18:05'),
('8e8b022f93d9577152a289e408f77f51c4d857fb405a6f8b9ab730ba8d2557e9e77a8c0ea9c67ce8', 5, 6, NULL, '[\"*\"]', 0, '2022-02-17 18:42:48', '2022-02-17 18:42:48', '2023-02-17 18:42:48'),
('8ea2f7d922750264aae417e626cd82ad2db63eb8c7958dff521d113cf1796d353dc2e6e1fc813451', 2, 6, NULL, '[\"*\"]', 0, '2022-03-22 22:42:32', '2022-03-22 22:42:32', '2023-03-22 22:42:32'),
('8ea85169b91994611fc46fce0b5d3601a1c64a81bffa4539737dc7e731c48fec09a0cfb368767ac5', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:45', '2021-11-02 00:39:45', '2022-11-02 00:39:45'),
('8ebf1b156500efba8d173bf8210dc0a91272d76dcac6f3d83b6a2a9fee58f98ef44bd65be8f3198c', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:41', '2021-11-02 00:40:41', '2022-11-02 00:40:41'),
('8f44792cdebb339c1144e0a52be6e50f9f94196197837cd542e99c069449332ab22f7dc29c3c3d6b', 2, 6, NULL, '[\"*\"]', 0, '2021-10-04 14:23:55', '2021-10-04 14:23:55', '2022-10-04 14:23:55'),
('8f59ffc2b0acbcb206f3171147316357e45f55607130f88f09f4379af6668fbaf3ffa4d89fa89bc2', 7, 6, NULL, '[\"*\"]', 0, '2021-10-06 18:53:46', '2021-10-06 18:53:46', '2022-10-06 18:53:46'),
('8f8516dc287e8228b45bf37fe270e74ad8f1c8b058ea8eba9c3c736bdce40d634f01b0a0730eced4', 9, 6, NULL, '[\"*\"]', 0, '2022-02-18 13:48:36', '2022-02-18 13:48:36', '2023-02-18 13:48:36'),
('900cf8af6bb62a9b1bb5da498d29fd77155c85c9f45dd0f00e13aeecfdd30ad97542ec543f5f71b7', 8, 6, NULL, '[\"*\"]', 0, '2021-12-03 11:39:54', '2021-12-03 11:39:54', '2022-12-03 20:39:54'),
('9015403d3b44432a33586fbd896bfffd293bb0d94c7b4e1bc91212e7268cf91f0198a74d300b9888', 15, 6, NULL, '[\"*\"]', 0, '2022-07-06 15:18:57', '2022-07-06 15:18:57', '2023-07-06 20:48:57'),
('90491b924f9f29742908d3c8d24a7f772bfd80319ccbe95fa6bf4b826e50900be4b3ba6db4d15833', 4, 6, NULL, '[\"*\"]', 0, '2022-02-02 07:53:03', '2022-02-02 07:53:03', '2023-02-02 13:23:03'),
('9081a767e790bb8135aa2ea0c2fe28edd9dadd7289c0f0cc225083aa9183a07479f47fc6a5978e67', 1, 6, NULL, '[\"*\"]', 1, '2021-10-12 00:13:28', '2021-10-12 00:13:28', '2022-10-12 00:13:28'),
('915fe0986a26311c4d06ecebe080f7b3bafe0fd44ce4f5e8ff55f9d6c03f01a4bc8d67be95209f23', 12, 6, NULL, '[\"*\"]', 0, '2022-02-25 21:12:41', '2022-02-25 21:12:41', '2023-02-25 21:12:41'),
('91a75b950e12c5832d58a6e2e58b1a1a582bd6adb398834f0c5261ee55af87b4283244671eaece37', 2, 6, NULL, '[\"*\"]', 0, '2022-03-31 10:22:39', '2022-03-31 10:22:39', '2023-03-31 19:22:39'),
('91dbf9a73940d1d8ebb23b2fc0a64586aa6a54bc4a76fd89fc5681bea78f95df498d139de0295106', 2, 6, NULL, '[\"*\"]', 0, '2022-03-31 14:40:01', '2022-03-31 14:40:01', '2023-03-31 20:10:01'),
('92013071fb59e41d7b6fe8bb7de8be055e86258fa3f55d4c6e5b283c550d2a25212b5adf105d02e3', 5, 6, NULL, '[\"*\"]', 0, '2022-02-18 15:21:59', '2022-02-18 15:21:59', '2023-02-18 15:21:59'),
('932da5f00606898a441321a4edd05bcc0caa367e9324cf6391f27b396efa124d054732603d03fb19', 3, 6, NULL, '[\"*\"]', 0, '2022-03-15 20:53:23', '2022-03-15 20:53:23', '2023-03-15 20:53:23'),
('933afb6c33dcb36448e7b7cddb6c6f1fa6ad623890f53dbefbd39c8494ffc7e332134533bc249df8', 8, 6, NULL, '[\"*\"]', 0, '2021-10-18 13:21:48', '2021-10-18 13:21:48', '2022-10-18 13:21:48'),
('937d24b62de7ad33ecd528c6366a5f302d634c19406583f97a50654bc677198661acf3229a0f3305', 15, 6, NULL, '[\"*\"]', 0, '2022-07-06 15:17:47', '2022-07-06 15:17:47', '2023-07-06 20:47:47'),
('939eadc29c514555f0bab249b457cd48adb7d866c3b589b9095e1eaaf3fc4683489b2930e9455e00', 2, 6, NULL, '[\"*\"]', 0, '2022-03-22 22:44:20', '2022-03-22 22:44:20', '2023-03-22 22:44:20'),
('94ab2b50ae761423338817151262a0cd873809888e746a39e976fe3ded9348479295675ad5fbd056', 1, 6, NULL, '[\"*\"]', 1, '2022-07-06 15:14:30', '2022-07-06 15:14:30', '2023-07-06 20:44:30'),
('94b0153ca5082ef35633bdb0485197f66f34be673ac0e6aba32ec58a2b5701306d0b4dd348e20016', 8, 6, NULL, '[\"*\"]', 0, '2021-10-26 12:01:49', '2021-10-26 12:01:49', '2022-10-26 12:01:49'),
('94b77762bc1d4174fe7cef3b55a89410e74de583fd9123b1d8e494cf23cd67937b49b50d8d0218b7', 3, 6, NULL, '[\"*\"]', 0, '2021-10-05 17:05:15', '2021-10-05 17:05:15', '2022-10-05 17:05:15'),
('94d2ad34c6e358a2ecf1410570ee7e9449e55d1638cf285fc777df5d2687952771778445513f4046', 2, 6, NULL, '[\"*\"]', 0, '2022-03-12 16:19:31', '2022-03-12 16:19:31', '2023-03-12 16:19:31'),
('94ddee97e1d6bcb0d805851522fd17f2ff6048baea3fefa5044cca5936e92edfd43cce64f1e48d5f', 2, 6, NULL, '[\"*\"]', 0, '2022-03-25 08:51:43', '2022-03-25 08:51:43', '2023-03-25 17:51:43'),
('94e1e20cc9a050e0de940dd60d82ab26bf180ef5e168a819667f4f4353aa0a74ac4e4329956f51f1', 11, 6, NULL, '[\"*\"]', 0, '2022-02-23 15:01:52', '2022-02-23 15:01:52', '2023-02-23 15:01:52'),
('957725c3058b5ddf491f220a665ed051d18654c0a9e68a6fbc1acd2f1b927c6dc3df35d83e685680', 8, 6, NULL, '[\"*\"]', 0, '2021-10-12 21:09:51', '2021-10-12 21:09:51', '2022-10-12 21:09:51'),
('9581ab9172e23276b351093ac7e1237de57528ac92b1b34f66ba6b9eec9389b31ecbdb68588cdd62', 8, 6, NULL, '[\"*\"]', 0, '2021-12-08 05:09:22', '2021-12-08 05:09:22', '2022-12-08 14:09:22'),
('9708d68862f722a967565a93ac76f91a51be1d90607102b9358b9f8de31c2c08bc30ca64df2bfc06', 10, 6, NULL, '[\"*\"]', 0, '2022-02-22 21:58:20', '2022-02-22 21:58:20', '2023-02-22 21:58:20'),
('9719ee16b1c0f63f639b9bbf65ba936e186eeb369b54e2d9fe36c2ca7e3cd7f8985c80af19f4660f', 3, 6, NULL, '[\"*\"]', 0, '2022-03-22 21:51:21', '2022-03-22 21:51:21', '2023-03-22 21:51:21'),
('9766105921f893964a80534064bfd73e1ba1f9f873cb2711f00b1fb53baebbb2ba3f1233c9309c3b', 2, 6, NULL, '[\"*\"]', 0, '2022-01-28 03:14:48', '2022-01-28 03:14:48', '2023-01-28 12:14:48'),
('97680cac93c1096cb14237e4e567866d9082d161cce8db2cd8b000011326c12fee6757574ee04d45', 2, 6, NULL, '[\"*\"]', 0, '2022-02-27 01:49:06', '2022-02-27 01:49:06', '2023-02-27 01:49:06'),
('9800667048a1a5dbf48ed51a6339af55c90dadcdac972d39ccc9d8cf4f06d036a2ab50524c0c98ab', 2, 6, NULL, '[\"*\"]', 0, '2022-01-28 10:50:31', '2022-01-28 10:50:31', '2023-01-28 16:20:31'),
('981cc95d105d18960f9e1d9872bc428fe0b4a621b2e4070b590df0736dfadb1c42d33fd98a147a49', 2, 6, NULL, '[\"*\"]', 0, '2021-12-15 12:22:53', '2021-12-15 12:22:53', '2022-12-15 21:22:53'),
('9821442a279b6a96c2f87fc71aadfb110ec6c381aa696beed73411af76648f2a0661699d852230c1', 21, 6, NULL, '[\"*\"]', 0, '2022-02-25 21:10:43', '2022-02-25 21:10:43', '2023-02-25 21:10:43'),
('996fb5a9a03433aade5df15a21172823b038d09b6650991c89775c4e6557f7a40a943e8c568fd761', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:37', '2021-11-02 00:38:37', '2022-11-02 00:38:37'),
('9a3148ef23afe8e13792278b5fb4e481a4a2ca27ace4d531f2b893c920dca606b6ab3e917e688380', 2, 6, NULL, '[\"*\"]', 0, '2022-03-08 22:40:27', '2022-03-08 22:40:27', '2023-03-08 22:40:27'),
('9a8a25866295ad49559e74c37acc589b8c63aab046e306a3d9b0bc32d44684ad551c22a6c1c3091b', 2, 6, NULL, '[\"*\"]', 0, '2021-10-07 16:50:10', '2021-10-07 16:50:10', '2022-10-07 16:50:10'),
('9b638f1e28feb64e28d1f31a3d0c90451250238df560da397834f27623fe103243c3dbdd8ca56d4b', 8, 6, NULL, '[\"*\"]', 0, '2021-10-08 20:04:40', '2021-10-08 20:04:40', '2022-10-08 20:04:40'),
('9bf8eaf6c927c010d04e6f70daf69bdc2c3f4f3806f9881a7dcbc9de2e1b3ca6a35fcd3eb9b486d4', 25, 6, NULL, '[\"*\"]', 0, '2021-11-02 18:07:26', '2021-11-02 18:07:26', '2022-11-02 18:07:26'),
('9bff9b01cf70b09be7d853d861ffdf1ed22c9cddae61134c590e91354a34f1fb7ab57d35d0a84f09', 2, 6, NULL, '[\"*\"]', 0, '2022-03-14 20:56:09', '2022-03-14 20:56:09', '2023-03-14 20:56:09'),
('9c78d343d1cf65bca30ab8dfb300877080ad7e7293e9c0340e14edd14f690bd27c3feec986e1f01c', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 13:50:11', '2021-10-29 13:50:11', '2022-10-29 13:50:11'),
('9cbf2715538e46c2e1a2b04926375490a3faebe12085b2246d03559b47ade7f1173503bddbe50018', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:48', '2021-11-02 00:39:48', '2022-11-02 00:39:48'),
('9d740b6ad27f9f7c978ba6685734302405acc586582c092c1ac78be908f3139a1097a403ccb61e02', 13, 6, NULL, '[\"*\"]', 0, '2022-03-30 12:51:55', '2022-03-30 12:51:55', '2023-03-30 21:51:55'),
('9dcfb071a02b1d0489880d050d6c0e5c3bd17244c48f1e3dfb810f00e5550d964c263480e4512efe', 8, 6, NULL, '[\"*\"]', 0, '2021-10-09 00:28:35', '2021-10-09 00:28:35', '2022-10-09 00:28:35'),
('9dfafd283964c2fd9b41d060e2c03e85d4510b3273ad543f1f8615f8f246cceb8d77bf35f03ccf3f', 1, 6, NULL, '[\"*\"]', 1, '2021-10-11 13:05:06', '2021-10-11 13:05:06', '2022-10-11 13:05:06'),
('9e5cf5b8fa26b090f0af1fa6b54985ff9acae1a483ced99f5452cdb193600dfe7c8acd4b0913c060', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 23:04:46', '2021-10-11 23:04:46', '2022-10-11 23:04:46'),
('9e666b23b78ccbdb4d7d3086319524c149186feac5062a5c86df3fb32db73912fb27a64e39e14b8e', 1, 6, NULL, '[\"*\"]', 1, '2022-02-28 13:48:13', '2022-02-28 13:48:13', '2023-02-28 13:48:13'),
('9eceb8bb516c3aaa0b42a2dbab32dc16d5f8079365142113d2e2761a9426473efee0fcbbce0ec6c8', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 13:00:41', '2022-03-04 13:00:41', '2023-03-04 13:00:41'),
('9ee93b56edccb5d7f075eecb8ffca92e40ca683d04ab2bb0675adc34d81ba96492b1f16941728634', 10, 6, NULL, '[\"*\"]', 0, '2022-02-24 14:36:17', '2022-02-24 14:36:17', '2023-02-24 14:36:17'),
('9fce8e9df374d8783ec03ee29449e6bb9556eb152a58f2dae25d77ca1f579512fe7fc40f72d06555', 2, 6, NULL, '[\"*\"]', 0, '2022-02-16 19:01:56', '2022-02-16 19:01:56', '2023-02-16 19:01:56'),
('9ff6ab7742f5341dab614d1dff1caafd084b6ea37fd6fa971cc2cf454b4b0cecbf2916001a96a044', 1, 6, NULL, '[\"*\"]', 0, '2021-10-05 15:43:02', '2021-10-05 15:43:02', '2022-10-05 15:43:02'),
('a063481e04b38ad784fedeb95788ad9cd2cc7bee0777b08f6e8f1cceea7dcad34b6d8b86aaf2cc8a', 2, 6, NULL, '[\"*\"]', 0, '2022-02-11 14:47:07', '2022-02-11 14:47:07', '2023-02-11 14:47:07'),
('a0f9cb7b666d4ddb6ffc6a300a260d39560ee97784f0599a9900d3181aabec5559ba723f5f06c185', 1, 6, NULL, '[\"*\"]', 1, '2022-03-28 13:04:32', '2022-03-28 13:04:32', '2023-03-28 22:04:32'),
('a14db13278d52949e915df5052184e5585327242d99b70b7bc2c454d294eea8517e2e7b3926d500d', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 21:49:44', '2022-03-04 21:49:44', '2023-03-04 21:49:44'),
('a170f6efab8015dc535c95fbc05e1a89a93be05d82a4d4715d853746b6d8927d7d8841c1698d5450', 2, 6, NULL, '[\"*\"]', 0, '2022-02-16 17:53:42', '2022-02-16 17:53:42', '2023-02-16 17:53:42'),
('a176ef2e4702ff296239867877a7d0321f076b23cda2bcedf13d0ad5600c6a8685b7d890e63f1882', 38, 6, NULL, '[\"*\"]', 0, '2021-11-16 15:10:59', '2021-11-16 15:10:59', '2022-11-16 15:10:59'),
('a230a87742827263b3607ade6868376c7e4ed105d87b081d23e25388bf7563534121ec6b3c55e064', 8, 6, NULL, '[\"*\"]', 0, '2021-10-08 15:24:03', '2021-10-08 15:24:03', '2022-10-08 15:24:03'),
('a28bb927754c11b8bfac122f640a5680a0e7fdd0bf461d4ec627bf3bb9557e7fad88ae5f9789e8fe', 1, 6, NULL, '[\"*\"]', 0, '2022-03-22 14:28:18', '2022-03-22 14:28:18', '2023-03-22 14:28:18'),
('a2a57fd11246dc64bc9735aa4b127ee59375843ccad1052ed445bc21ec31a0529aacdb6745c79cb9', 23, 6, NULL, '[\"*\"]', 0, '2021-11-10 17:57:07', '2021-11-10 17:57:07', '2022-11-10 17:57:07'),
('a362588975a01cd6e317350f508eb225a41287fbec3ba8dc3a94a060f5dbb33f7125daf788743b23', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:46', '2021-11-02 00:39:46', '2022-11-02 00:39:46'),
('a43a95a2d5af897d1df66cbdd0c8f952923c5ced81712430618c0673c651ca78070dc2cd4a068156', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 13:53:08', '2021-10-29 13:53:08', '2022-10-29 13:53:08'),
('a458025f6db9b04d5e40d7269645305a93e8f911d511d054ad2131b8499e1527784282293cb627aa', 1, 6, NULL, '[\"*\"]', 0, '2021-10-13 15:10:16', '2021-10-13 15:10:16', '2022-10-13 15:10:16'),
('a517e2090b6576fe103a03f75861895d4c2b0144760fed283db9e328255445b26415307e1fabb6cc', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:44', '2021-11-02 00:39:44', '2022-11-02 00:39:44'),
('a5abbe346dccb63ac386cc5e31440c060f46fcf3004539d99ef565bf3c47d614f8bc4db9825defb1', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:34', '2021-11-02 00:39:34', '2022-11-02 00:39:34'),
('a5aed8cd0d9d518fb560b44eaac00853ac56836169cf13c050ce83785e96ba2a59e3e6ccf5adb483', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 19:15:42', '2021-10-29 19:15:42', '2022-10-29 19:15:42'),
('a5e43ecfeb41862703694bc9024633fcc7c41d95fbe71981c9144ad189792bc0a77d25d8539c92bf', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:36', '2021-11-02 00:39:36', '2022-11-02 00:39:36'),
('a5f1511b825a8797d89d49ab556d1d23f87961850b38095045a813db7310dd1b49e25c88d22a27ae', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:33', '2021-11-02 00:39:33', '2022-11-02 00:39:33'),
('a6a770248976c980f941550a7cc8e847a478d91a42740a2bd149845c616da39da9feaad279ecadf8', 19, 6, NULL, '[\"*\"]', 0, '2022-03-03 15:35:40', '2022-03-03 15:35:40', '2023-03-03 15:35:40'),
('a6e6caa397bf23f197bcdf4e1acb7dc20a295504ca62b0242cde462127b5e4bed4f6979af0fe3fcf', 1, 6, NULL, '[\"*\"]', 1, '2022-03-08 17:14:11', '2022-03-08 17:14:11', '2023-03-08 17:14:11'),
('a774863128bd683bc764b4c2652525793ab72c42b1cbdf1b668383e0383e40cd9fd1f8333ef93124', 9, 6, NULL, '[\"*\"]', 0, '2022-03-30 11:50:41', '2022-03-30 11:50:41', '2023-03-30 20:50:41'),
('a785e1df4734b1d36567347155720b724a2432f96dfab2a82bf1c9195966d28eaa0e5a7b6543f151', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:36:26', '2021-11-02 00:36:26', '2022-11-02 00:36:26'),
('a819f7a7de3983876d205e93e69c8c5b965b92ac443083c125d2fe08743e34aaa9124fc577f7a920', 1, 6, NULL, '[\"*\"]', 1, '2022-01-31 20:09:53', '2022-01-31 20:09:53', '2023-02-01 01:39:53'),
('a83841aefac9f9e09bfba8252170683abaa10cee67c07bbd6542d6a7f70f08761477dbe38a073f4f', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 23:13:28', '2022-03-04 23:13:28', '2023-03-04 23:13:28'),
('a882ac36b3c204f04617be217bc4afb6cf65cd6157d85c0667d60e24c610b15513ccba92b8e7d127', 2, 6, NULL, '[\"*\"]', 0, '2022-03-09 20:42:53', '2022-03-09 20:42:53', '2023-03-09 20:42:53'),
('a889cb4d2af805885ac0bd6b9b26531d8b45622cc0dc3c973a5242f3336660cf8de581b8f2bc7aa1', 4, 6, NULL, '[\"*\"]', 0, '2022-03-28 13:16:43', '2022-03-28 13:16:43', '2023-03-28 22:16:43'),
('a895fd9d552d1e8b66a72712aae209ee129c821d7ae1f53f71738696db1e40bb0d03adc71a0540ad', 1, 6, NULL, '[\"*\"]', 1, '2022-02-16 17:52:03', '2022-02-16 17:52:03', '2023-02-16 17:52:03'),
('a975bf7a692e66775dd4eb99aacc0472dbb4b8d271db6e219dc68d03d7407a085c589b42e233cf4f', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 14:50:39', '2021-10-29 14:50:39', '2022-10-29 14:50:39'),
('a9df1260c5fa3d8ad0f80e75cf8c227e81e24313da872bb5fb5d1768827bc8714c0933d882b4b092', 7, 6, NULL, '[\"*\"]', 0, '2022-02-17 21:39:14', '2022-02-17 21:39:14', '2023-02-17 21:39:14'),
('a9e481803e16c4fdcd4b52cb98a97f227f158cf6519980aa84738d462de62327ff4c295fae3aafa5', 9, 6, NULL, '[\"*\"]', 0, '2022-02-11 20:44:01', '2022-02-11 20:44:01', '2023-02-11 20:44:01'),
('a9e7bc56699bb20718a7f78c8339d3c1656c799f0872b54cc06953ff1c5102f46cf64c0f27e9d20a', 4, 6, NULL, '[\"*\"]', 0, '2021-10-05 18:00:04', '2021-10-05 18:00:04', '2022-10-05 18:00:04'),
('aa51e60ea6fae9614f716f42bfff0b0edfd17ba408eb8379aae3c819d41b2e87b9026d773b66b6a7', 1, 6, NULL, '[\"*\"]', 0, '2022-03-31 07:40:29', '2022-03-31 07:40:29', '2023-03-31 16:40:29'),
('aa5ca17e6f8dc09b16fd00318b0eca50e6c12ba7ac97609a5d669073efd678ed91a2bcae47df25ad', 1, 6, NULL, '[\"*\"]', 1, '2022-02-18 14:02:55', '2022-02-18 14:02:55', '2023-02-18 14:02:55'),
('abd1194a66bcbf7f5316e14df283018a65008e97a0f806d40bc31004346f90dca3c0d7a3e8bde96b', 6, 6, NULL, '[\"*\"]', 0, '2022-02-18 15:22:51', '2022-02-18 15:22:51', '2023-02-18 15:22:51'),
('ac53ecf2883dd1dbc71698e322f1e44945bf736ca9308c41e2a2c57a62f2c9f0eb00b83be408a1d7', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 15:12:47', '2022-03-04 15:12:47', '2023-03-04 15:12:47'),
('ac5f37c39d3c1a4fa2b4640127fc18bc46f547ffbfa75f6449d52366a97f07186e49a03ca9700dcf', 2, 6, NULL, '[\"*\"]', 0, '2022-02-08 14:32:36', '2022-02-08 14:32:36', '2023-02-08 14:32:36'),
('ac85de2519c7890c50f20e90c4f664323da9972d784a9f17d25e00ad3ebbc3fc968251bba997dabe', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:25', '2021-11-02 00:40:25', '2022-11-02 00:40:25'),
('aca49e0f65f028f372750252123000a651f33fc306808d1a17f6da06db8101894d21f07ac13b44ff', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:46', '2021-11-02 00:39:46', '2022-11-02 00:39:46'),
('acaec70add20490bf3adb1366a44148ac50dd20ee5f6cf637296c75495236a5cbb36bca6c43fdaac', 2, 6, NULL, '[\"*\"]', 0, '2022-02-21 22:30:31', '2022-02-21 22:30:31', '2023-02-21 22:30:31'),
('acf575ae7a9459947133d35e8ba02094ebb5e3d40e9290df3830d84591a0a709f8c52ead6f5a9162', 2, 6, NULL, '[\"*\"]', 0, '2022-03-01 19:44:18', '2022-03-01 19:44:18', '2023-03-01 19:44:18'),
('acfe51a524c2efb519ecaa04fb75b65f14fe860787453e15639da371e8e6feb63549f3435c2a3d06', 2, 6, NULL, '[\"*\"]', 0, '2022-02-15 20:52:22', '2022-02-15 20:52:22', '2023-02-15 20:52:22'),
('adb986e8857144babf03351a8a7468d4bf33ea0a676846492e8c7589b465e9d4b702b6f02f2322e7', 1, 6, NULL, '[\"*\"]', 0, '2022-03-31 07:34:14', '2022-03-31 07:34:14', '2023-03-31 16:34:14'),
('ae2bb39c074f7e2d4479b1ab3f06823e95b0a621d54ce8fcbacf09d4f6e4eccae7814082db440ca0', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:28', '2021-11-02 00:41:28', '2022-11-02 00:41:28'),
('ae4521c9f7df85709b43978a586e320a3aca0e0abc543e97eda11e4b86516a38e7aa80e423e2f810', 2, 6, NULL, '[\"*\"]', 0, '2022-03-31 05:34:21', '2022-03-31 05:34:21', '2023-03-31 14:34:21'),
('aea9ea6df928c7b34c6243a6900c2f3fea56be4769a870eefbaff015e1efefc56376b2849da9784f', 2, 6, NULL, '[\"*\"]', 0, '2021-11-24 14:03:25', '2021-11-24 14:03:25', '2022-11-24 23:03:25'),
('aeb24bd69d641206036c2da927e3980ae22e6c93f7c8225a38f6771b1b336f31eef4540a1bed13fb', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 01:15:29', '2021-11-02 01:15:29', '2022-11-02 01:15:29'),
('af5524151ba928708d74cdf9f554001dc99e0dbebcb668a8e95086317ffe618913a643f4f1512392', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 14:52:38', '2021-10-29 14:52:38', '2022-10-29 14:52:38'),
('af98e6e69750eca1af0b8d65384c88062a1555cba47af8d0220936ebe05406041665c6703e195c6f', 8, 6, NULL, '[\"*\"]', 0, '2021-10-05 19:14:45', '2021-10-05 19:14:45', '2022-10-05 19:14:45'),
('afb31c857ceb5930c8c873f45d393df52cac9a4093e21770db32df07fa8a0d1bb2b9108eb2dee977', 1, 6, NULL, '[\"*\"]', 0, '2021-10-20 20:48:39', '2021-10-20 20:48:39', '2022-10-20 20:48:39'),
('b01556fd4cbe2f61f625d8f7ef824af17a310c59f985da134cf630bd58395e0f8718d0380b6bab37', 28, 6, NULL, '[\"*\"]', 0, '2021-11-10 11:38:58', '2021-11-10 11:38:58', '2022-11-10 11:38:58'),
('b0d9dc852dfc9c4655fff6cf9d92ed029a12e5cba2c901685403e7f3480f280da6eb0528bfee4d2a', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 19:32:20', '2021-10-29 19:32:20', '2022-10-29 19:32:20'),
('b0f5bdf51be2e6066856623458894ebc31b0e833cb70d29cb826206977884e4386cae942fec59adb', 2, 6, NULL, '[\"*\"]', 0, '2022-07-18 12:31:32', '2022-07-18 12:31:32', '2023-07-18 18:01:32'),
('b152a1a7bba5b9458bd02aa2f267c29eb1fa9b85c32d46aca34b1c3643561ff7926b87cb7d99fb7b', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 18:58:30', '2021-10-06 18:58:30', '2022-10-06 18:58:30'),
('b1b97e78d22abaa74aeb1054185f4d7c5ad65754313fa3e89f3fa9c61ddd69b6075ea38a9689349b', 1, 6, NULL, '[\"*\"]', 1, '2021-11-17 18:04:55', '2021-11-17 18:04:55', '2022-11-17 18:04:55'),
('b1de13d2f0a7d7117ba1b702e707ee93e0cb107f1c77531638f09e64e60a625ee5f3f62eaa4d6c0c', 1, 6, NULL, '[\"*\"]', 0, '2022-03-31 07:43:27', '2022-03-31 07:43:27', '2023-03-31 16:43:27'),
('b1ea8a1e861d405e3edf4317da947af3c6c88369aa2f78e6b51be23a31d7d873fdd814e9f08b1347', 3, 6, NULL, '[\"*\"]', 0, '2022-03-12 16:17:55', '2022-03-12 16:17:55', '2023-03-12 16:17:55'),
('b1fb0016efa9dc43989e230489091c061a6021f83a1b2184c1f2b5ab83e881790a55cdbf2c0a471b', 8, 6, NULL, '[\"*\"]', 0, '2022-03-30 08:28:26', '2022-03-30 08:28:26', '2023-03-30 17:28:26'),
('b21dd9b5ea1504dd64117b74d4a5e15321eda3cd4dff24b1e29af0a5eee74d54c6fd1fbce0d7ea5f', 2, 6, NULL, '[\"*\"]', 0, '2021-10-05 14:45:06', '2021-10-05 14:45:06', '2022-10-05 14:45:06');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('b2e6119033e3341dc678c708b2cc389df708e4e306eaf048a4372ad123416f9db58add483187f714', 8, 6, NULL, '[\"*\"]', 0, '2022-02-22 21:40:47', '2022-02-22 21:40:47', '2023-02-22 21:40:47'),
('b34ffe16d9a7674ee7f5db8634b1903600d2b76a659ce9c75a8394ab4498859ff5194ed7f4e3d616', 2, 6, NULL, '[\"*\"]', 0, '2022-02-07 21:47:43', '2022-02-07 21:47:43', '2023-02-07 21:47:43'),
('b36f8b9672e210a9dc5bdafb8d8c9b9ed55cd10560a52eeb226bbc75c9ca0bda992d7026abfaf8e4', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:29', '2021-11-02 00:38:29', '2022-11-02 00:38:29'),
('b37719f9d2049221e41ae142c79d53dc5617119c692235633461e1febd68ba616beeb5582c46ab42', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:45', '2021-11-02 00:38:45', '2022-11-02 00:38:45'),
('b450a6b36d12735f3ba9b0fe35fa46df2ac38a8ae95db2845828b6f57c8f3873a98cebedd53a8381', 14, 6, NULL, '[\"*\"]', 0, '2022-03-31 05:37:06', '2022-03-31 05:37:06', '2023-03-31 14:37:06'),
('b466e50d61ebb882a6e08e42b203b41bdef5f21c0c0c656590b9d97bb19569e7eceaca8601c17dac', 2, 6, NULL, '[\"*\"]', 0, '2022-02-07 19:10:54', '2022-02-07 19:10:54', '2023-02-07 19:10:54'),
('b51b800ef4be3016683814ee97a141ea4505746e31d5786f0fa7cfb2fadad1d5ace5f991d2111868', 36, 6, NULL, '[\"*\"]', 0, '2021-11-24 09:30:10', '2021-11-24 09:30:10', '2022-11-24 18:30:10'),
('b521198c3bcdafca939fa579ff3e6c90e3332cc50f506bb00566ee2e1a100e27ea7e39aacaecf661', 7, 6, NULL, '[\"*\"]', 0, '2021-10-05 17:52:00', '2021-10-05 17:52:00', '2022-10-05 17:52:00'),
('b5458d46aae30a84ae474e8ffd45b7a5ab4b61fee00615f650a30a4665912063e58822e348684464', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 15:19:29', '2021-10-06 15:19:29', '2022-10-06 15:19:29'),
('b574ff585c8058e227f41b24caa6ef1c90d8c45c501a33463dad6cd0c5853c6f941c2b124238d5dd', 3, 6, NULL, '[\"*\"]', 0, '2022-02-07 18:59:09', '2022-02-07 18:59:09', '2023-02-07 18:59:09'),
('b61f9dc3e46b4a311a0fab20fb96c70848e44a7d51f57dc9042b77fc12266f6c90d38e0ec10f5530', 1, 6, NULL, '[\"*\"]', 0, '2021-11-17 00:17:05', '2021-11-17 00:17:05', '2022-11-17 00:17:05'),
('b658a02359e724c7c284a5b75ed992302340093835ebe7b62a1ba3ca390091e0beffe380ddd8f61e', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:39', '2021-11-02 00:39:39', '2022-11-02 00:39:39'),
('b6b0a5298098761e08e841568fab92d9d669abb992c80444c5981687c0088ff2fbe8116280dc1f29', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:34', '2021-11-02 00:40:34', '2022-11-02 00:40:34'),
('b6dffdb9b7c83b4c18d4a0c084774ff59c228e11ba5558d79b7bf16b47b18d408616a85cf15ebe4d', 13, 6, NULL, '[\"*\"]', 0, '2021-10-05 22:33:46', '2021-10-05 22:33:46', '2022-10-05 22:33:46'),
('b734c2a51e5221d30cc5ce943b0cb4256525c4f7670f84a819189327c570bd9eed41e38c2d7471a8', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 16:08:01', '2021-10-06 16:08:01', '2022-10-06 16:08:01'),
('b763d774a220e8b5356150e4ebcdc19eac22517b6916cdee3b5d23478c348271ef663334cf96e832', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:43', '2021-11-02 00:39:43', '2022-11-02 00:39:43'),
('b79079fc4b4cc060d53520001be21d19897a4fabacf1d06e0ba6c8f7f08fc4fb28b128797fb48561', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:26', '2021-11-02 00:40:26', '2022-11-02 00:40:26'),
('b7a04219e23fd4ba484ca91e5560a140055e5b947075f1959e3575c8471f0febb0cb8153000d26a8', 8, 6, NULL, '[\"*\"]', 0, '2021-10-08 03:02:26', '2021-10-08 03:02:26', '2022-10-08 03:02:26'),
('b7c7309a39c9d744f52f2e3c2f350f4ba2af6a2201205eb325ffbf0fd96c4202f933f280ce778bfb', 2, 6, NULL, '[\"*\"]', 0, '2022-02-03 07:55:31', '2022-02-03 07:55:31', '2023-02-03 13:25:31'),
('b819803f217cc213ba9253759e5e64782d9b6d7ff212e5e4f729cd3118b5096b119244de82567b62', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:49', '2021-11-02 00:39:49', '2022-11-02 00:39:49'),
('b91929c5047b0c18a8614644c76667296ad7e4ca067608356529592997b55b81b085fdea93800fb3', 1, 6, NULL, '[\"*\"]', 0, '2022-03-03 21:59:39', '2022-03-03 21:59:39', '2023-03-03 21:59:39'),
('b9b25fca53f882e77a69f1326478d24114c657bf2366566f513b940c2007c48d493a7c521d56472a', 1, 6, NULL, '[\"*\"]', 1, '2021-11-16 12:07:16', '2021-11-16 12:07:16', '2022-11-16 12:07:16'),
('b9fa3537c251ba03996ee60707d13b3706d26f016c7f104019b5e8fd86378f00ec20ee1c393a91a0', 2, 6, NULL, '[\"*\"]', 0, '2022-01-27 08:47:24', '2022-01-27 08:47:24', '2023-01-27 17:47:24'),
('ba1b454c75faecee5280f0372b7e6137e90c9a21ad5855b154be857c7d332b1014f6e5437f34b4bf', 3, 6, NULL, '[\"*\"]', 0, '2022-03-11 18:46:58', '2022-03-11 18:46:58', '2023-03-11 18:46:58'),
('ba6a7a992aa068a66f20e6b149c945d156fe747d2f9bff195d2dcb0d392904bd1d4eafe14b8a9411', 8, 6, NULL, '[\"*\"]', 0, '2021-10-07 16:36:40', '2021-10-07 16:36:40', '2022-10-07 16:36:40'),
('bad4b45e89b2883cad0f76f253ad94bd62f8eddd1249ceb40b50f5458f9ac00e8131ca1345624a36', 1, 6, NULL, '[\"*\"]', 0, '2022-02-23 14:56:21', '2022-02-23 14:56:21', '2023-02-23 14:56:21'),
('baeb69046202cd5033ca7853f113b0690aedf2ae2a9b310018990c8a81e0194ccd453b00c10d6cc2', 10, 6, NULL, '[\"*\"]', 0, '2022-02-08 15:36:16', '2022-02-08 15:36:16', '2023-02-08 15:36:16'),
('bbc2a8147829a0bb9750bf545473e9e5ffdfaa806dfd7fe85a58127506072120b84565cae799dbcd', 2, 6, NULL, '[\"*\"]', 0, '2022-02-10 14:14:58', '2022-02-10 14:14:58', '2023-02-10 14:14:58'),
('bc6868a1b061adf891c0a4b6a91b811a7348cc15cd179775f3bfbaa5fe04987f9797b9b2353cf3c3', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 12:58:01', '2022-03-30 12:58:01', '2023-03-30 21:58:01'),
('bc933f5f4dc74e4f7c3a0dbfe7e9c22525a8b93741d86d02c91ca927cbe4857229a712793364257a', 1, 6, NULL, '[\"*\"]', 0, '2022-03-14 19:08:18', '2022-03-14 19:08:18', '2023-03-14 19:08:18'),
('bcee79cf895bed0a3a1b185895c91fa521201f843a35db80d7cc91c48fe214a75a290a28188f2be1', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:10', '2021-11-02 00:41:10', '2022-11-02 00:41:10'),
('bd856e0a09d3274f9fb983d7c5ac7fca550a1b65a915c45bf0778b644db91a67a059f1dd23cbb448', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 07:02:01', '2022-03-30 07:02:01', '2023-03-30 16:02:01'),
('bd90380ce0ee141ac95eb8200aad3fa0b908ee078923efed1705e9f98ad1c69df82c60abc8cadf8c', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:32', '2021-11-02 00:38:32', '2022-11-02 00:38:32'),
('bdd924af76e4194ffaa88a667aea95968061fbd92846d0ba86de32248289936c49ce08aaa75d7e5a', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:36', '2021-11-02 00:40:36', '2022-11-02 00:40:36'),
('bdfd73572b0cea0e313386420739ff23f519f3589407e00ae8b83e218567be805832090a3a94d87e', 2, 6, NULL, '[\"*\"]', 0, '2022-03-31 06:16:51', '2022-03-31 06:16:51', '2023-03-31 15:16:51'),
('be19a1c43660a5ab9dfac5deb12243aa43fa351e23b558f6b91cba636dfae717e480748e78cd1f3e', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 15:27:41', '2021-10-06 15:27:41', '2022-10-06 15:27:41'),
('be78bd6f2ee45e7dcea3ca42b78f5304761c34249dcd089ed0c5b2d5d6168d9c776e9e2ff1308680', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:38', '2021-11-02 00:40:38', '2022-11-02 00:40:38'),
('be7e99a6e371f59b78d99a3e687955d22664c2f0008a2806c70f21d1a6e5e394630f9123a0c47206', 2, 6, NULL, '[\"*\"]', 0, '2022-03-08 22:37:11', '2022-03-08 22:37:11', '2023-03-08 22:37:11'),
('beb69531cd6b5905771f7eefc8d9faef38c77af8ddebd7a83cbd0ed0b063c8af1df259b00594e490', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:38', '2021-11-02 00:39:38', '2022-11-02 00:39:38'),
('bed034a2798656b8c42df3a0d475890479522a1a5011b9ca3b4c359805f89e87a4e5c860dd77b3eb', 8, 6, NULL, '[\"*\"]', 0, '2021-11-17 00:35:22', '2021-11-17 00:35:22', '2022-11-17 00:35:22'),
('bed7a3a7f40e5777f8cab0e08067db6efbe61f040aa43a5153e59966976376f01d9ed3a61654fb50', 25, 6, NULL, '[\"*\"]', 0, '2021-11-09 21:52:13', '2021-11-09 21:52:13', '2022-11-09 21:52:13'),
('bf2b8764d04718b9547469a414ed0ea21d470bbdd1baba32a7d5daccb80bf1f99e0b9ee1ae029550', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:41', '2021-11-02 00:39:41', '2022-11-02 00:39:41'),
('bf6648ae8b4cbfdd13fdbfdd85449ed1ab107213631f10b8074b1340b2651310414fcd711dfe732d', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:12', '2021-11-02 00:41:12', '2022-11-02 00:41:12'),
('bf73318d1a259b13c19b01fd394802f901dc9b7f90f552e0700b6a63cf05fa4f5e9c8d8813401399', 1, 6, NULL, '[\"*\"]', 0, '2021-10-06 15:18:14', '2021-10-06 15:18:14', '2022-10-06 15:18:14'),
('bfe6b57df621a7733b74c06a631c7ef7961af616cdbcdf71591abe2042d3587baf476151339a1aea', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 14:04:22', '2022-03-04 14:04:22', '2023-03-04 14:04:22'),
('c00dafd68008470b209b6da00e9628f496c490cef21c3207611a4ec04586c10351c2005b1654feb2', 2, 6, NULL, '[\"*\"]', 0, '2022-03-08 22:43:49', '2022-03-08 22:43:49', '2023-03-08 22:43:49'),
('c0777dfc8b2b3e5b572e0bff9a2a9bae1b4b3957efbcd86bf5a24c572e14916cc6ef1028b0e23ad6', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:42', '2021-11-02 00:40:42', '2022-11-02 00:40:42'),
('c092343883d87c4443caa7b9ff9018de8f5c61b41e82673d3866948b91e3ea367aac659dad43ccf9', 2, 6, NULL, '[\"*\"]', 0, '2022-02-18 20:36:10', '2022-02-18 20:36:10', '2023-02-18 20:36:10'),
('c099fc10e9ce5f06f72c7779c78085f637d486ac2858f5b3e656d6f27e7fbf85c8676c400cef5d15', 2, 6, NULL, '[\"*\"]', 0, '2022-03-22 21:45:48', '2022-03-22 21:45:48', '2023-03-22 21:45:48'),
('c105c91ce055e41709375d78402428dc93c3280d2aa6d90c41d5219adb8dfdc64d449012aa474369', 8, 6, NULL, '[\"*\"]', 0, '2021-11-10 16:55:08', '2021-11-10 16:55:08', '2022-11-10 16:55:08'),
('c122d560d5dfccee4c3bcd6702d39779f4ea58fea92d9bef69513796397d0272b1a0bd1b5727963c', 7, 6, NULL, '[\"*\"]', 0, '2021-10-05 17:53:52', '2021-10-05 17:53:52', '2022-10-05 17:53:52'),
('c1596782e968562c6b8e3ed8843890fa369cf97c3d14a91a1deb1e56cf239e038ec03157d717323d', 12, 6, NULL, '[\"*\"]', 0, '2022-02-25 14:27:33', '2022-02-25 14:27:33', '2023-02-25 14:27:33'),
('c16810fc2fd4225644b5577f6ab5db639ce344163b8de7b4d9ef1734c5c15fc0949c234f8fa0bfba', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:28', '2021-11-02 00:38:28', '2022-11-02 00:38:28'),
('c1c4c44e17a29e1a96d7d0bacef4601b0d51454ab24a186a0089b025378f84853888a216961699e6', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:56', '2021-11-02 00:39:56', '2022-11-02 00:39:56'),
('c211f1cb75adec5a08e2d8950f412cd2cf0e55c794812b9d6b9fe08d6380ec26af4b594b2dd957e8', 1, 6, NULL, '[\"*\"]', 1, '2022-03-23 15:00:21', '2022-03-23 15:00:21', '2023-03-23 15:00:21'),
('c2139ebe66b9c75cddffc44266680779f8b45c89bf94f345ffca736663389718b0fa8a7af8f31e66', 2, 6, NULL, '[\"*\"]', 0, '2022-03-22 23:00:30', '2022-03-22 23:00:30', '2023-03-22 23:00:30'),
('c216c21dd64eae860827e5405dd63dec6b66a03def1e4583eb0780a5f8ad1c1108523288d9dd9787', 2, 6, NULL, '[\"*\"]', 0, '2022-02-03 15:44:10', '2022-02-03 15:44:10', '2023-02-03 21:14:10'),
('c2437261da6e42a1b5254990580f89b9f5355337e4b4725c4898d19154e9cd997143f7dd54af4234', 1, 6, NULL, '[\"*\"]', 0, '2021-10-12 12:50:37', '2021-10-12 12:50:37', '2022-10-12 12:50:37'),
('c2d4395dadbfefed45f1a0d534af18c75118f8795c9600081778e39dee3a35c95bec496170569b51', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:37', '2021-11-02 00:39:37', '2022-11-02 00:39:37'),
('c2f479413a27de2901dabf87d4347a95de54d3d3a8c4560f4160dcff50ea73c0cb5974b37d8b33e8', 2, 6, NULL, '[\"*\"]', 0, '2022-02-03 14:27:19', '2022-02-03 14:27:19', '2023-02-03 19:57:19'),
('c3dfacffb215a7d8085501bb90b13031de188af190bdc1d9b86faaf3770232641d010b10a05ec409', 7, 6, NULL, '[\"*\"]', 0, '2022-03-30 10:07:10', '2022-03-30 10:07:10', '2023-03-30 19:07:10'),
('c425bd5753258becf5c2f879456214b06cdd6b165eaa8ae6dd01882b65e3140f8d8eedc65e690d35', 1, 6, NULL, '[\"*\"]', 0, '2022-03-14 19:08:16', '2022-03-14 19:08:16', '2023-03-14 19:08:16'),
('c47dc032e9e0a4f4387391351fe1c698c793d6acac18b0ac3b47d5c2663e9a1052c04ac015684ddd', 8, 6, NULL, '[\"*\"]', 0, '2021-11-05 12:31:15', '2021-11-05 12:31:15', '2022-11-05 12:31:15'),
('c4e3962a45fafd6fd66fb887870584c0b36648600197773baec9f89b24ee1a71dd9a56c1520daf7a', 19, 6, NULL, '[\"*\"]', 0, '2022-02-25 21:16:43', '2022-02-25 21:16:43', '2023-02-25 21:16:43'),
('c53e6f0fd721e453159187cac34d1183c1d559991f7cf1b47d58d90380f092dbf977116cb0c26454', 8, 6, NULL, '[\"*\"]', 0, '2021-10-13 17:29:51', '2021-10-13 17:29:51', '2022-10-13 17:29:51'),
('c5998c85c9efb97b7e98f94ab6c6919250ff606136b5ea9a459266f7be83c3c4454175878247b98b', 10, 6, NULL, '[\"*\"]', 0, '2022-02-23 17:56:40', '2022-02-23 17:56:40', '2023-02-23 17:56:40'),
('c6ce01a85f588eb77ffed530f3381b4c76dba759b9dac215709c6e607be9e8b85ba7012a2a556a3e', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 19:55:16', '2021-10-29 19:55:16', '2022-10-29 19:55:16'),
('c6e2c5adcb275a7964559daedde78b7fb78e47204474cbec44d921afee36eb45a508fb6638ba9162', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 23:03:09', '2022-03-04 23:03:09', '2023-03-04 23:03:09'),
('c716ee829eb3993e455932f94c607298288cb4f2cf69971fbae80b11707da321e0544805947bf08f', 1, 6, NULL, '[\"*\"]', 0, '2021-10-11 18:03:23', '2021-10-11 18:03:23', '2022-10-11 18:03:23'),
('c75129b4b634f18846d33dd032078bdf9743088061999c4c349d4c84cc646f4226f00bb3e683fc9e', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 13:53:08', '2021-10-29 13:53:08', '2022-10-29 13:53:08'),
('c7dadef4df5823a190f4b3b2c2c8357857de4b8dca3ee640b093cc7edc6be60e43dffec99f066c4f', 1, 6, NULL, '[\"*\"]', 1, '2022-07-25 15:13:51', '2022-07-25 15:13:51', '2023-07-25 20:43:51'),
('c81afd560b7d3fbeb112ff333d95194977580232e16df43cf321d809fc9869e19617e29d59891f9f', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 14:52:38', '2021-10-29 14:52:38', '2022-10-29 14:52:38'),
('c832371f509f590e7d2294960e93d036c3a54b73ccab366cf3fab31f2fc3b339b3bd7fcc78538ec8', 2, 6, NULL, '[\"*\"]', 0, '2022-02-18 16:03:06', '2022-02-18 16:03:06', '2023-02-18 16:03:06'),
('c884681206f240acda578004667741fc7fa5a00b6129b9e77f0900f9689a5a1a646093b15a56aa41', 4, 6, NULL, '[\"*\"]', 0, '2021-12-03 11:33:40', '2021-12-03 11:33:40', '2022-12-03 20:33:40'),
('c925effe8168610652996c520a8810a8d984408ebb8af9720716d4442396812002af70c961d97d3e', 25, 6, NULL, '[\"*\"]', 0, '2021-11-02 18:26:18', '2021-11-02 18:26:18', '2022-11-02 18:26:18'),
('c9f96414fb973cb8b65233134d025dc60844d3e28b75e2bec61227c1c6de23de507b031651ba416d', 2, 6, NULL, '[\"*\"]', 0, '2022-03-06 19:23:10', '2022-03-06 19:23:10', '2023-03-06 19:23:10'),
('caa2ae9ac99de481b88f5feddd8614de5db229519c963f7fa3565363d804b9f05c384632708ff76a', 12, 6, NULL, '[\"*\"]', 0, '2022-02-25 15:42:46', '2022-02-25 15:42:46', '2023-02-25 15:42:46'),
('cabee39ab64fe1cc1c3ae4e65f5c1b8059d20196f12b13d7cc7ff6509f474b7f471ad1ab17470e11', 8, 6, NULL, '[\"*\"]', 0, '2021-10-18 15:02:02', '2021-10-18 15:02:02', '2022-10-18 15:02:02'),
('caed075ac811a044deb2b1878a00c2abe15559b7df1860b18638e088526f6a8e923b4b9667501298', 2, 6, NULL, '[\"*\"]', 0, '2021-11-10 01:24:50', '2021-11-10 01:24:50', '2022-11-10 01:24:50'),
('caf282c36210e16b8a37436379626690fdaa090a2e1ce467540a782472bdffcd4608f60919ad5094', 8, 6, NULL, '[\"*\"]', 0, '2022-02-08 19:28:07', '2022-02-08 19:28:07', '2023-02-08 19:28:07'),
('cb23609f25976b10c6cccd4c4074e5a43fa76e171b22db93f82403fc596f7c61a836a905814522cf', 1, 6, NULL, '[\"*\"]', 1, '2021-11-23 09:23:25', '2021-11-23 09:23:25', '2022-11-23 18:23:25'),
('cbe09f1c6da7f2fd384d7d21b50b6fce8fbe0d935e343aea743c086e58fc813390c99e691b4c1c2f', 2, 6, NULL, '[\"*\"]', 0, '2022-02-07 18:26:37', '2022-02-07 18:26:37', '2023-02-07 18:26:37'),
('cc1a99a1850cffb0164b78e1bb1cee08aa9a6039fa15572b50cf6e3216f3a58dae773d003e8f1e5f', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:22', '2021-11-02 00:41:22', '2022-11-02 00:41:22'),
('ccea72e40282668b845b5489950b3950488eb35ac10d0b213dab4af6609203f40fc2c8e4b5949f57', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:26', '2021-11-02 00:38:26', '2022-11-02 00:38:26'),
('cd271a6c0c151a640a875b4c419c1ff4cc402b21d729f930dbfdcd1d751363c85215eea0b7e287b9', 8, 6, NULL, '[\"*\"]', 0, '2021-10-05 19:36:05', '2021-10-05 19:36:05', '2022-10-05 19:36:05'),
('cd345dee09180090976bc24b1fa305e8da1ea95f2b1f1cf8f3dc753a06280499c53774f132a119f4', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 13:18:55', '2022-03-30 13:18:55', '2023-03-30 22:18:55'),
('cd6bc34420a5dc78a56153d8ea55063c8ce00a8558921e120930fed427f8b74ff7b1b5ee6a90ee4f', 11, 6, NULL, '[\"*\"]', 0, '2021-10-05 19:33:56', '2021-10-05 19:33:56', '2022-10-05 19:33:56'),
('cdb00cbd62ddd637766276f6b2104b532e7a45f69e7ed9860c5682a494d0a7712f5e3640072c2068', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:59', '2021-11-02 00:39:59', '2022-11-02 00:39:59'),
('ce6720d0f8b77af733b0db16d2c3c4a7b29273b03bf49cce9c4aea04e565f9cb96bdc9aa582755fe', 25, 6, NULL, '[\"*\"]', 0, '2021-11-09 16:55:16', '2021-11-09 16:55:16', '2022-11-09 16:55:16'),
('ce994c7b26cf4c8a83bbfddebf69c21b4c9b1e5a537cf8887357fa4f63f558cf427bea0b2d3c23ff', 2, 6, NULL, '[\"*\"]', 0, '2022-02-01 13:56:06', '2022-02-01 13:56:06', '2023-02-01 19:26:06'),
('ceae3be2f65f2fbf5635468a9941a5615ee4ec3d462c895ee45fc71d89c409c71946b46c115e2ebf', 1, 6, NULL, '[\"*\"]', 0, '2021-10-26 12:33:23', '2021-10-26 12:33:23', '2022-10-26 12:33:23'),
('ceb10ac546772d0c54a89311388d4462d8dcdd4067a766c30bea3724a6c8c85d0c7e87c5b5dd9c0d', 2, 6, NULL, '[\"*\"]', 0, '2022-03-30 12:33:19', '2022-03-30 12:33:19', '2023-03-30 21:33:19'),
('cee316ec7c41e328763505e6a59a3109e249e12e27c4af47d5bb51afa56e6f81d5c3fe075592c6d0', 11, 6, NULL, '[\"*\"]', 0, '2022-02-22 22:55:07', '2022-02-22 22:55:07', '2023-02-22 22:55:07'),
('cf6432252138503776b0feff4e8ae275233efb24afd993d896f50b48a3137e37f55495bf6de8d7a6', 1, 6, NULL, '[\"*\"]', 0, '2022-02-08 14:23:10', '2022-02-08 14:23:10', '2023-02-08 14:23:10'),
('cf6cf5076ff817aea52dac0056a190815b8a89fede7becd0528b290258cf99a3c836cd15bcc78014', 2, 6, NULL, '[\"*\"]', 0, '2022-03-25 10:32:08', '2022-03-25 10:32:08', '2023-03-25 19:32:08'),
('cf8658680b668a43e92f0df1068443bc51af492c910faed1dd74ce0a072c9ecade7c36d4d515669d', 19, 6, NULL, '[\"*\"]', 0, '2022-02-25 19:42:47', '2022-02-25 19:42:47', '2023-02-25 19:42:47'),
('cfdb5f39c933d7bfa6bc7215fd4f3890cea6edb72692cab767eb5f77ed917596c0bf21a4ab5c5959', 23, 6, NULL, '[\"*\"]', 0, '2021-11-10 17:44:02', '2021-11-10 17:44:02', '2022-11-10 17:44:02'),
('cfe526e406980d37f9cb1cb166b785fb39731b85fa6a75542d6e215cff693cfdd8a1723bbccf35eb', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 14:52:53', '2021-10-29 14:52:53', '2022-10-29 14:52:53'),
('d002834926236260d69c8344fe12c9ef5f1c0c8e6a3034fa610f9fbfe11a35ad30ee7bc102eb628a', 2, 6, NULL, '[\"*\"]', 0, '2022-04-01 13:50:45', '2022-04-01 13:50:45', '2023-04-01 19:20:45'),
('d02277fe3d52700d53d6a106832a0a88ee2adfd29faa2935c41e0ac129be475d5750247f3d6b5eec', 1, 6, NULL, '[\"*\"]', 0, '2021-10-12 21:49:28', '2021-10-12 21:49:28', '2022-10-12 21:49:28'),
('d0372f43cf5e09c521b703abc770b2da045776020aeea9fdeeed42f8ecaaeab99edc81c5f5450407', 2, 6, NULL, '[\"*\"]', 0, '2022-03-14 19:08:43', '2022-03-14 19:08:43', '2023-03-14 19:08:43'),
('d0677254f971337800b7aa0f42619b7af5bb093fde8b7f4ad4d28f95984cad03496b06acedf06839', 9, 6, NULL, '[\"*\"]', 0, '2022-02-10 16:20:57', '2022-02-10 16:20:57', '2023-02-10 16:20:57'),
('d08d4f6d9ca733fbb502ebe55592a519aa3eaea51654ad7c186af42a74ad9a367528f0aec674070f', 2, 6, NULL, '[\"*\"]', 0, '2022-02-02 10:51:22', '2022-02-02 10:51:22', '2023-02-02 16:21:22'),
('d0c946d841241dab4283a190420946eeb0caa8c2d3deb86e0c6d09245398ab3d48e38e11515af905', 2, 6, NULL, '[\"*\"]', 0, '2022-02-02 21:12:59', '2022-02-02 21:12:59', '2023-02-03 02:42:59'),
('d0e1fbfb35cf9093d1e41c8614fc383584d7bbcea0f7196eb2c75d07eeb33700836d40872aec097c', 13, 6, NULL, '[\"*\"]', 0, '2022-03-30 12:11:52', '2022-03-30 12:11:52', '2023-03-30 21:11:52'),
('d189fe88a4af1db7b3b645a4d872181aacb500e84ca4ed399e01375451acfe3a59f718674a288f0c', 2, 6, NULL, '[\"*\"]', 0, '2022-02-02 20:47:28', '2022-02-02 20:47:28', '2023-02-03 02:17:28'),
('d1f7c577f958ea9fb83774a52a8ca917c365a3012e3ea94bc947e59017db3c3d321c6034983a7e4c', 1, 6, NULL, '[\"*\"]', 0, '2021-10-07 13:52:17', '2021-10-07 13:52:17', '2022-10-07 13:52:17'),
('d236a850af5dabd63e2ae942366024cb4c7ad31e66479cac408807767f3ac442dac5adb94f3f4325', 2, 6, NULL, '[\"*\"]', 0, '2022-02-03 14:25:21', '2022-02-03 14:25:21', '2023-02-03 19:55:21'),
('d342f325a002e9e9bbf286f8cfd2b2dafa46b0b6a999914a8ab96a771c7586a9fcc0a399b853a637', 9, 6, NULL, '[\"*\"]', 0, '2022-03-30 11:53:30', '2022-03-30 11:53:30', '2023-03-30 20:53:30'),
('d3562c2e01baf510be3fc30e6846b1bd35a7f432bdcf157d4c7ef9699746019683e86ec5375f430a', 25, 6, NULL, '[\"*\"]', 0, '2021-11-09 18:48:24', '2021-11-09 18:48:24', '2022-11-09 18:48:24'),
('d4ae56b992469ba5dccdb11f6f3223239ccf27869c371c25440ba84eab594dfa438eed1f4142405b', 3, 6, NULL, '[\"*\"]', 0, '2022-03-23 14:18:23', '2022-03-23 14:18:23', '2023-03-23 14:18:23'),
('d4e717a3eeae8908bb0d4c133249eab763b3b27770b7fe3e25d0265f554cd6d589fd26e658b9820b', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:20', '2021-11-02 00:41:20', '2022-11-02 00:41:20'),
('d51dcc59112703f57ffb8a35f572754904c701a6c8e9823989472b4a2bbbdb32d8c58c3ccb2bc44a', 2, 6, NULL, '[\"*\"]', 0, '2022-02-25 20:38:06', '2022-02-25 20:38:06', '2023-02-25 20:38:06'),
('d55937c1d8e07986f7f495129a99767dfe271b5561c2757a6bba3bc2d29c6153a02b0509886effad', 2, 6, NULL, '[\"*\"]', 0, '2022-07-22 09:33:08', '2022-07-22 09:33:08', '2023-07-22 15:03:08'),
('d57b99c704d58ff7418df78e9e388c6e95ab0b79f5308a1604ac68cc281a3dc978652c9801fb22fa', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 07:07:08', '2022-03-30 07:07:08', '2023-03-30 16:07:08'),
('d5ba77225b56daf3f15ca2a236e9414b333f8e2043bc985f874627c7749d161850df0a71646d233a', 3, 6, NULL, '[\"*\"]', 0, '2021-10-05 22:42:53', '2021-10-05 22:42:53', '2022-10-05 22:42:53'),
('d60fb923fe57a5eb7eac05d8c8bd9edb86469e42dfbccfbc2d5b8a50a430f9610e65a6df47a545e7', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 12:44:39', '2022-03-30 12:44:39', '2023-03-30 21:44:39'),
('d672c62d852cc0e1025ba8a74e829051c2e3dde7e16c82c6492a3d7331a298db4e012da6be97db1f', 10, 6, NULL, '[\"*\"]', 0, '2022-02-24 14:36:17', '2022-02-24 14:36:17', '2023-02-24 14:36:17'),
('d7add418216f61663002cdba1d8265e0bc8a7af3a29abb294fc526b09034a6e2cb254c46673db129', 2, 6, NULL, '[\"*\"]', 0, '2022-02-03 15:52:42', '2022-02-03 15:52:42', '2023-02-03 21:22:42'),
('d7e5b7753483e3d1c66edc39116408055f6ec2b1a089e41a1c1ac8dcd56999d8ce7a87baa38c9e13', 1, 6, NULL, '[\"*\"]', 1, '2022-03-30 13:01:49', '2022-03-30 13:01:49', '2023-03-30 22:01:49'),
('d8615ba30cbfb63a37b72c9307dcec90567a466fe1475b01ddb9e4c8e06ba9b7f1d41faf932980d3', 15, 6, NULL, '[\"*\"]', 0, '2021-10-11 12:57:32', '2021-10-11 12:57:32', '2022-10-11 12:57:32'),
('d89a74d8abb145097a73ffdf64b4c7accc35e82fd040ec99a14ca267f35c2f7674b425e32d1b2643', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:44', '2021-11-02 00:39:44', '2022-11-02 00:39:44'),
('d8bc4db28165e8960980e926b776b2d397b5376cf809ec746e14dbe58f619ef9a758ff4751f97726', 10, 6, NULL, '[\"*\"]', 0, '2022-02-23 18:36:30', '2022-02-23 18:36:30', '2023-02-23 18:36:30'),
('d91c4f9a48922162b8b2731e43af2e23b32bd932c91f8941680d94678f30fdd9622e3da1d05432dd', 14, 6, NULL, '[\"*\"]', 0, '2022-03-31 06:26:20', '2022-03-31 06:26:20', '2023-03-31 15:26:20'),
('d9beb3fe642891ff69ec973a09adde0848ea3978dd25f39f544696870b0b2eb0ef919e11ba14c916', 25, 6, NULL, '[\"*\"]', 0, '2021-11-02 18:11:25', '2021-11-02 18:11:25', '2022-11-02 18:11:25'),
('d9d7009f42f457837dcf05eef2bef51bdc60b7ccc52b6c7a8e33c77e5669990902412a60b37c3dfe', 21, 6, NULL, '[\"*\"]', 0, '2021-10-13 15:10:31', '2021-10-13 15:10:31', '2022-10-13 15:10:31'),
('da472247c143a3ddf7580d31bd06088a5df617ee0a44bdc8b78ea4ee4ff091084b0baa039c2a11d8', 2, 6, NULL, '[\"*\"]', 0, '2021-11-29 10:32:08', '2021-11-29 10:32:08', '2022-11-29 19:32:08'),
('da545981b16c4a5d49af9113841ac584d68549705c4a66d61ef69b913ad304da8874b1353b1a3573', 1, 6, NULL, '[\"*\"]', 0, '2022-03-25 08:53:37', '2022-03-25 08:53:37', '2023-03-25 17:53:37'),
('da99615ab2a35c2de35a7cbc85a22f8a9394fc719f96912c210d4764dcc751bdb820f10b26973ba2', 8, 6, NULL, '[\"*\"]', 0, '2021-10-06 15:27:20', '2021-10-06 15:27:20', '2022-10-06 15:27:20'),
('dae10649b2628502789c160059bf48c250bd4165aa17579a26396707062d61ed856a2a8f58c69e84', 8, 6, NULL, '[\"*\"]', 0, '2021-10-13 13:24:32', '2021-10-13 13:24:32', '2022-10-13 13:24:32'),
('db62d67d99ad2794edcbb62a1d6ba012c643d3821a77e61dee5292cb7fddbc648d220a33871eae1c', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:32', '2021-11-02 00:40:32', '2022-11-02 00:40:32'),
('dba94c96ba5b46c67221df7adc22c7f55b923685e80b5e1336393f1053af06f262d05085792dbf02', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:32', '2021-11-02 00:39:32', '2022-11-02 00:39:32'),
('dc176c46edaccaf8b95105d6df2b64f407cd6b404b9544ec6e11736ef4c3faf876c5d7c8e96ca889', 3, 6, NULL, '[\"*\"]', 0, '2022-02-02 07:37:20', '2022-02-02 07:37:20', '2023-02-02 13:07:20'),
('dc9a1eabbf8a80ca18b79da5580e2210bea18351752a6dc4372a749ef767b944f1a3fcf745f7c92e', 2, 6, NULL, '[\"*\"]', 0, '2022-02-26 02:04:08', '2022-02-26 02:04:08', '2023-02-26 02:04:08'),
('dcf3d856e9f18b98902f25fafbca123521d01c332f12363717217ca55867fd1d94ff58d3dd9a153c', 3, 6, NULL, '[\"*\"]', 0, '2022-02-18 15:16:31', '2022-02-18 15:16:31', '2023-02-18 15:16:31'),
('dd8cca9cc5830c4b6fca477893fe0fbd612fea6119c92c305365d1d170564e13d1d9e8d6f06a1ba5', 2, 6, NULL, '[\"*\"]', 0, '2021-10-05 18:42:15', '2021-10-05 18:42:15', '2022-10-05 18:42:15'),
('ddc8a7f5955f46d13975bca6553f982e618d4348da79716e6a8de831d19b1936ea8ac93956db6e96', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:42', '2021-11-02 00:40:42', '2022-11-02 00:40:42'),
('dde1820383180f62a87861bc3e2563224eecb653e7f23540ca85becc90b7701c2adb6c357bf83a0e', 25, 6, NULL, '[\"*\"]', 0, '2021-10-29 13:53:17', '2021-10-29 13:53:17', '2022-10-29 13:53:17'),
('ddee8cb68b5a4cba535b98882b0ee5b04dede9fff1fc292f8decb4d2949945578fc1e8a958c1248d', 1, 6, NULL, '[\"*\"]', 1, '2022-07-25 15:19:10', '2022-07-25 15:19:10', '2023-07-25 20:49:10'),
('ddfae80119582320ea83d63bf741cd60aab24b6424f6a14b155ade2b7ded652d9e4420224ca4bc6c', 1, 6, NULL, '[\"*\"]', 0, '2021-10-21 12:47:16', '2021-10-21 12:47:16', '2022-10-21 12:47:16'),
('de8f03bc5fde984614659c6804f7d57637630c4dfd46cd47c3f48ec56baea86e2da7c2610417a0f8', 2, 6, NULL, '[\"*\"]', 0, '2021-10-05 15:46:28', '2021-10-05 15:46:28', '2022-10-05 15:46:28'),
('deb9ad8bdc62e503f0cf75d610b07ef8371a5449242c919c3a41b12fb94de77b3b176e830c506f35', 1, 6, NULL, '[\"*\"]', 0, '2021-11-16 20:01:48', '2021-11-16 20:01:48', '2022-11-16 20:01:48'),
('dface0c2c118e0f7f313dad898cf83ad15cca897c75ee858a5bae8ae0386a682ab141bb902642693', 1, 6, NULL, '[\"*\"]', 0, '2021-10-05 15:43:02', '2021-10-05 15:43:02', '2022-10-05 15:43:02'),
('e066cca5d07a6d9bf7c31b41e4a74567d0d8dbb5895f67dcd2f60c99fb562c3f455fbde4e227094c', 16, 6, NULL, '[\"*\"]', 0, '2022-02-28 13:49:26', '2022-02-28 13:49:26', '2023-02-28 13:49:26'),
('e14a17d3492b480cd19068609aea8009481edaf30dd5320150552e90246c7f37a13938d164f6fe26', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:27', '2021-11-02 00:38:27', '2022-11-02 00:38:27'),
('e1f3e2d296890a26d03349f0e4453a67e3d8a19c5d055d5728031a8b0fbcf9998dd6596b4462e4f9', 1, 6, NULL, '[\"*\"]', 0, '2022-02-15 21:09:14', '2022-02-15 21:09:14', '2023-02-15 21:09:14'),
('e2007aca2b24be6cec15c6d86092c80c711f5d68747fc74561d0eeb0abd5fa46f7c7d89108d83c83', 23, 6, NULL, '[\"*\"]', 0, '2021-11-09 21:10:31', '2021-11-09 21:10:31', '2022-11-09 21:10:31'),
('e210f6c3e7959807d443202c6b6a0e43c175dcbaba129f93964e753827934f33299d75c0e6d8868a', 9, 6, NULL, '[\"*\"]', 0, '2022-02-15 20:28:48', '2022-02-15 20:28:48', '2023-02-15 20:28:48'),
('e288fd2c4063ffa9df2763e21b5bf77b5206a9bcaff66637e675648998a776b2d577a643a886a28d', 2, 6, NULL, '[\"*\"]', 0, '2022-02-07 18:25:19', '2022-02-07 18:25:19', '2023-02-07 18:25:19'),
('e2e3903425bd377cfd805b256f79b39109239937d4bad33e645fd21dbf063493306118ab7899e455', 1, 6, NULL, '[\"*\"]', 0, '2022-01-27 08:47:02', '2022-01-27 08:47:02', '2023-01-27 17:47:02'),
('e2e492188c22373fca32b031de6840da6463cdada564a2fe04d70a19d127c67969643a7a989f1de6', 8, 6, NULL, '[\"*\"]', 0, '2021-11-17 00:31:45', '2021-11-17 00:31:45', '2022-11-17 00:31:45'),
('e30aa25e4de6bb6a2a2bf4943e8353dc66f8a9d2f14d77eb4e5c89f169170f9c871ac054a0c2fd2e', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:28', '2021-11-02 00:41:28', '2022-11-02 00:41:28'),
('e3657c856a259c518d00c3a1e2522ed56351b79c500b98487fd466baac80310348814759ce01b08c', 8, 6, NULL, '[\"*\"]', 0, '2021-10-18 12:28:04', '2021-10-18 12:28:04', '2022-10-18 12:28:04'),
('e3afd63848daa1bf3992162a90f3d7e550e9ce560928ae09ac15be5fbfe6adf3feedd9b57b9f687b', 1, 6, NULL, '[\"*\"]', 0, '2021-10-06 23:02:18', '2021-10-06 23:02:18', '2022-10-06 23:02:18'),
('e3bf7b723c94c56f9913579cf3d90bdb0a07b8f219da734fa95b286ada5d0b77f0feb5298f04e3d1', 14, 6, NULL, '[\"*\"]', 0, '2022-03-31 09:25:16', '2022-03-31 09:25:16', '2023-03-31 18:25:16'),
('e3da3bc8e7ba182fdb7af559f61c412ea47ae203ba6f9d13964710e12cc35fedc913900c7f93b378', 4, 6, NULL, '[\"*\"]', 0, '2022-02-17 14:37:11', '2022-02-17 14:37:11', '2023-02-17 14:37:11'),
('e41b812d21de112c5a1947460a2048293cf7266cbdd1ec3464c28c236aa3638461a83324bc778246', 8, 6, NULL, '[\"*\"]', 0, '2021-11-29 12:03:50', '2021-11-29 12:03:50', '2022-11-29 21:03:50'),
('e4447a12be081ed180bfb85c138706ee3a283653a7f9c328185f9460133380188a422b17d2db71b0', 11, 6, NULL, '[\"*\"]', 0, '2022-02-22 21:58:02', '2022-02-22 21:58:02', '2023-02-22 21:58:02'),
('e47b9182f4fb0c4ea76e8d075485ddcb7cdc4320635d79d307857ce286a86039f18ad24355113a3a', 2, 6, NULL, '[\"*\"]', 0, '2022-02-03 10:44:04', '2022-02-03 10:44:04', '2023-02-03 16:14:04'),
('e53e8e84db72d47ff853e3cbbb47e4f50757e20c1b7b6081e274968625a9e22f539955826f73bfae', 8, 6, NULL, '[\"*\"]', 0, '2022-02-22 18:58:54', '2022-02-22 18:58:54', '2023-02-22 18:58:54'),
('e564ae4df67e03d0f6e51b44c061dc44a9f0f893db5af4f4c068ac32dc772435b7914a4ceec1501f', 15, 6, NULL, '[\"*\"]', 0, '2022-02-25 18:49:13', '2022-02-25 18:49:13', '2023-02-25 18:49:13'),
('e608c39d0e5c8c67663cb1c7d9dbafdee2aa15e4c45ed157c3a9d37b3396324601b8b6ccc01aa4c8', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:36:47', '2021-11-02 00:36:47', '2022-11-02 00:36:47'),
('e6cc3e8c6a5656d3df2f7a620ee4385a90e57f59727ae63ec12729759d937095d4ef1573e8d545ba', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:13', '2021-11-02 00:41:13', '2022-11-02 00:41:13'),
('e7120c0ac404f3e682206d78d1777cbf787bab7bc1cd6cb7a704fbd2adb1aca891b3276861a259c6', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 13:24:22', '2022-03-30 13:24:22', '2023-03-30 22:24:22'),
('e7153121ffcbf954f84c802e178c3cbe0dcb679522da016ad24f255de880ca9c1d2139acba32f583', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:27', '2021-11-02 00:39:27', '2022-11-02 00:39:27'),
('e71635832c4c11a54a41284b1bfce9248b51d7068358d6f0ec3201b7bd44ed584e289527671fafee', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:37:32', '2021-11-02 00:37:32', '2022-11-02 00:37:32'),
('e7c58ad3d248fef181c09b7820cfd14ff3fb8600f0261adfcd8725afb759c289f2e36f4825ba3c5a', 8, 6, NULL, '[\"*\"]', 0, '2021-10-23 00:55:02', '2021-10-23 00:55:02', '2022-10-23 00:55:02'),
('e9210b53aca29d7a1a5849694c005ea776c5b8f9975549fadbfca81c6756cb557d244654f033612c', 1, 6, NULL, '[\"*\"]', 1, '2021-10-05 15:08:56', '2021-10-05 15:08:56', '2022-10-05 15:08:56'),
('e924f007e8b4094abcef7b38afc572f89b7cf8ace01571fe6fea69eeb3a6a2a569de44cb8b4f9033', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:36', '2021-11-02 00:40:36', '2022-11-02 00:40:36'),
('eb5d5e4cefcff3b774476211f2d12e92bcd8d28c9f334421b68b67b0b8d432b210f6e7fef69b8fdc', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:53', '2021-11-02 00:39:53', '2022-11-02 00:39:53'),
('ebf12e5094fba52db52180e30558971a9a8033bc2e30a2c4f9a49dae4e04c2c01f5d38040abc8caf', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:41', '2021-11-02 00:38:41', '2022-11-02 00:38:41'),
('ec67dd64dbaef5163eee34cd8c7cae835f118887994c548097a970f9eaa9eec0265980dc3f54d7c7', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:13', '2021-11-02 00:41:13', '2022-11-02 00:41:13'),
('ed28b7c68a094d752d027a1e3ce2fa69bbc97eef45ab0e398eb01954dfb1ed7d2c8fdc3baaab3e63', 2, 6, NULL, '[\"*\"]', 0, '2022-03-30 10:34:02', '2022-03-30 10:34:02', '2023-03-30 19:34:02'),
('ed369c1126d45b25cd563a5358c6feef2bed898abd3ad2df677da9043c41a6f44932fbae21f9d6ca', 1, 6, NULL, '[\"*\"]', 1, '2022-02-25 14:40:35', '2022-02-25 14:40:35', '2023-02-25 14:40:35'),
('ed50d56f07772d516bd337b83b4b775921dd074dbdef6a1358ed7358070d164e005fac9b71bd61a2', 2, 6, NULL, '[\"*\"]', 0, '2022-03-01 20:12:06', '2022-03-01 20:12:06', '2023-03-01 20:12:06'),
('ed9ae7de971791afdb76074b3927a7534ecfbb666331a8703c5764e6925070a5b3fe76fc288f7922', 19, 6, NULL, '[\"*\"]', 0, '2022-03-02 15:52:19', '2022-03-02 15:52:19', '2023-03-02 15:52:19'),
('ee5d8b360edb55aa84c747863fd2e6076c50541ddf72037011a5afbfde5e661ff7883e231fb16411', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:12', '2021-11-02 00:41:12', '2022-11-02 00:41:12'),
('eea909c90e692a787c9e6583b963b184939da6d6eb16eb43110329a4b117c1d206fc07c95f0b923f', 8, 6, NULL, '[\"*\"]', 0, '2021-11-01 16:09:00', '2021-11-01 16:09:00', '2022-11-01 16:09:00'),
('eec080693d19b1621b6e2ce3427c6853c12cc7388ed076e27fd15c4b93262fe1cef8a814718fc1db', 3, 6, NULL, '[\"*\"]', 0, '2022-02-25 15:28:23', '2022-02-25 15:28:23', '2023-02-25 15:28:23'),
('efad33c25fc4de4be1088d9411d119d5c6e6ff87291048fada1f90dbdd23d7b009edc9085d1a3609', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:46', '2021-11-02 00:38:46', '2022-11-02 00:38:46'),
('efd24b887ea822026ba960f346773b1951ff589153d080307b4910581c29663837570bcf454f4fc5', 20, 6, NULL, '[\"*\"]', 0, '2022-03-01 20:02:40', '2022-03-01 20:02:40', '2023-03-01 20:02:40'),
('efe5f5c758547f7c0c47a6b02ebf4246542caec213fe4e9aa54868253c19064aea23d0f0bae1e4c2', 2, 6, NULL, '[\"*\"]', 0, '2022-02-10 20:46:48', '2022-02-10 20:46:48', '2023-02-10 20:46:48'),
('f09e9b17f432159c407be01ccbbd6d4532d825caa00d5038409a0c61557373f5b5b0537bed833107', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 18:29:51', '2021-10-11 18:29:51', '2022-10-11 18:29:51'),
('f0da29ab932652c48f07d43706e6d043b45411ae4ff27e9856006c079555423f78fe3a05d2b2f869', 47, 6, NULL, '[\"*\"]', 0, '2021-11-29 09:06:07', '2021-11-29 09:06:07', '2022-11-29 18:06:07'),
('f13baa57e10a28e6310f94ed8bb9c349793a411f0dabf6948938d0a8c940059fe1394e679b46db4b', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:27', '2021-11-02 00:40:27', '2022-11-02 00:40:27'),
('f13bef03e59ab8b2f32af4239200582825e5a410b0fca2edf3eb6fbb2a4b8a02b569a9de53632c49', 2, 6, NULL, '[\"*\"]', 0, '2022-03-15 21:01:14', '2022-03-15 21:01:14', '2023-03-15 21:01:14'),
('f182ca95c0b779519a28d1195cf1cf096bb83fb8d37841d4be8c160a54f5deea59bcad9fdbc71a10', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:36:31', '2021-11-02 00:36:31', '2022-11-02 00:36:31'),
('f1a183007926c3b7927524295b537e41fec0addde330d75ebb2232f79b2119fead9aa6b050ee2971', 8, 6, NULL, '[\"*\"]', 0, '2021-11-03 16:01:04', '2021-11-03 16:01:04', '2022-11-03 16:01:04'),
('f1e01039c3e55ee0327654deea53e6fdec1ba315238315edf236ee596cf7317922079ac0a132f06d', 28, 6, NULL, '[\"*\"]', 0, '2021-11-09 21:56:41', '2021-11-09 21:56:41', '2022-11-09 21:56:41'),
('f23acdd5ebd021e118d7b3385a7ce19fd3123a4f385fbcd245a996c00a094510fdad1fc32d894dd9', 25, 6, NULL, '[\"*\"]', 0, '2021-11-09 20:28:30', '2021-11-09 20:28:30', '2022-11-09 20:28:30'),
('f2d6fd955bff5a3064fa6f43e8693ddd21b3fe17d877523bfe0e0399b97066927220a32c566b1ab9', 2, 6, NULL, '[\"*\"]', 0, '2022-03-10 22:20:36', '2022-03-10 22:20:36', '2023-03-10 22:20:36'),
('f2e99646cca8120b0306ed3b721a92fefc52d2d138f5e6ede6134b3817a2adb036c86485790320e1', 8, 6, NULL, '[\"*\"]', 0, '2021-10-14 17:07:47', '2021-10-14 17:07:47', '2022-10-14 17:07:47'),
('f32759ebaa28a164ea7180cfe87aa975bbf2411013bf447200b76d2dfcdb2221c1db525679320608', 9, 6, NULL, '[\"*\"]', 0, '2022-03-25 09:31:54', '2022-03-25 09:31:54', '2023-03-25 18:31:54'),
('f3488108e459e9356fe1bf3973ce0e68ed48719bcd384bca26e1a92f90ea56ec2dad4ae81ad95c13', 11, 6, NULL, '[\"*\"]', 0, '2022-02-22 20:59:18', '2022-02-22 20:59:18', '2023-02-22 20:59:18'),
('f35017a2472219860da8fcca7d7d13ed0c42b1c9f97300634d1ee8154601c3c9bef75a5ac5c4e478', 2, 6, NULL, '[\"*\"]', 0, '2022-03-01 20:12:05', '2022-03-01 20:12:05', '2023-03-01 20:12:05'),
('f36baee00b1fa34d420b4f7cf493aebecb5f6cb1bd6a6d67679e814a4771073d2c9d5d4a2cd97379', 1, 6, NULL, '[\"*\"]', 1, '2022-03-01 20:01:24', '2022-03-01 20:01:24', '2023-03-01 20:01:24'),
('f3e66e5b4dd4eeb662d37fd4ef6ef3051365a0b3186c4ee423786e5bdbd87173f7c1061951d98fe9', 2, 6, NULL, '[\"*\"]', 0, '2022-02-26 16:17:52', '2022-02-26 16:17:52', '2023-02-26 16:17:52'),
('f410ca830a87caf1ccd8473ea8539a9f19c81d5ccb89b8cea2446d4f206f84fcdecb49ae14d471a1', 2, 6, NULL, '[\"*\"]', 0, '2021-10-07 16:49:56', '2021-10-07 16:49:56', '2022-10-07 16:49:56'),
('f441cf1ef2126893b00a1f29279ef233602026d21252d27a5489a27711b82554cf6500fc9cdcae64', 1, 6, NULL, '[\"*\"]', 1, '2021-11-05 14:30:31', '2021-11-05 14:30:31', '2022-11-05 14:30:31'),
('f4635e23ac070f09a23e2a31169512cbadea2d35aaec5bd1148e91083896db2544a871ce869cd550', 2, 6, NULL, '[\"*\"]', 0, '2022-03-04 23:48:43', '2022-03-04 23:48:43', '2023-03-04 23:48:43'),
('f469e7d10d67d4e62553cf67d79955f7606acdf991af657f915328275f5abbcf7157c10f3c751a72', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:32', '2021-11-02 00:39:32', '2022-11-02 00:39:32'),
('f4961c2f262ac54171a34cb8bc561c37c251a26148688f88ba93a982528fd8de6166ac964ecb37ec', 1, 6, NULL, '[\"*\"]', 1, '2022-05-06 07:25:06', '2022-05-06 07:25:06', '2023-05-06 12:55:06'),
('f4f6278090ba10aaf14a82742fdac150926f5036b1f841794048803965f025950d559b090edaecb3', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 13:49:44', '2022-03-30 13:49:44', '2023-03-30 22:49:44'),
('f5b3c9b937a40848effbe2d38859d431a66bf06ba6300adc4406af15d6da0606946c8dbe1d530f01', 46, 6, NULL, '[\"*\"]', 0, '2021-11-23 11:22:03', '2021-11-23 11:22:03', '2022-11-23 20:22:03'),
('f5c2628544f12037e38961dce708a692292009aaf6ce20866a38d2dc16a5506c74903faa0745c83f', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:39:26', '2021-11-02 00:39:26', '2022-11-02 00:39:26'),
('f63becc67e5a78e67dbcf93f8fa2c39c57ac76038498e2d58695f627d900b2bda41ce7542c5d959e', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:37', '2021-11-02 00:40:37', '2022-11-02 00:40:37'),
('f6887dc234274802189d706f3fe4ac79b2297185759552882e920667c57284e77e0262f5b81a1eec', 2, 6, NULL, '[\"*\"]', 0, '2021-11-17 11:55:36', '2021-11-17 11:55:36', '2022-11-17 11:55:36'),
('f68abc3f7b238e8191a5d8e08cc253b05140b5ecaa6a82a6b5a9f8f8b6f78c63c95bda6c14d421a2', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:38:44', '2021-11-02 00:38:44', '2022-11-02 00:38:44'),
('f6d17f18a2ae40ab59a225f0d7dc537900c26086799dcfb3bbbe0e773fb42763d9fe85710d091fac', 14, 6, NULL, '[\"*\"]', 0, '2022-03-31 07:48:45', '2022-03-31 07:48:45', '2023-03-31 16:48:45'),
('f77b5ee8fca44da1aa2a268da23bd4643f3f6ac892202f10955057b2237696f98029a4476c215e6a', 5, 6, NULL, '[\"*\"]', 0, '2022-02-07 18:49:07', '2022-02-07 18:49:07', '2023-02-07 18:49:07'),
('f7bc7009e144cceb133d386f1d68c1a66161632a2594133d25f2e050cdb34762f45191d40a0d6541', 8, 6, NULL, '[\"*\"]', 0, '2021-10-11 18:45:32', '2021-10-11 18:45:32', '2022-10-11 18:45:32'),
('f7ee769f2da0c379075e468c7091520bfbcb2683d7c806b59acfa802c2f1cbf1da3fd39e55a2a37a', 8, 6, NULL, '[\"*\"]', 0, '2021-11-29 14:01:50', '2021-11-29 14:01:50', '2022-11-29 23:01:50'),
('f83e489fe657fdde28f05573613609ca9b635a47a5f1f0ac0fec059171ffcfc0ba801c0b0580a690', 4, 6, NULL, '[\"*\"]', 0, '2022-02-02 07:50:16', '2022-02-02 07:50:16', '2023-02-02 13:20:16'),
('f859951a89af393ca64815ba5ff366b0f385c0d016d39236cbece041d2c936012fa7226cf286aec3', 1, 6, NULL, '[\"*\"]', 1, '2021-11-01 16:15:07', '2021-11-01 16:15:07', '2022-11-01 16:15:07'),
('f85ced505907e14bbd9331139468b0bafa0e4605fbcb6f3f4c6c1c8e66eaf08bbc86ff3c1d0871d3', 8, 6, NULL, '[\"*\"]', 0, '2022-03-30 11:44:58', '2022-03-30 11:44:58', '2023-03-30 20:44:58'),
('f8cfa20eea03dbf35ab527f1baefea9355fea95dd1ae52918d908c4b3b1fa7d8dc88b43a31f68456', 1, 6, NULL, '[\"*\"]', 1, '2021-11-23 09:45:08', '2021-11-23 09:45:08', '2022-11-23 18:45:08'),
('f8da4b035cae8f6dc27c42b31160d09824729f563d50f4de2e879e8b5e1484dc81515904b2b48276', 1, 6, NULL, '[\"*\"]', 1, '2022-02-02 20:56:50', '2022-02-02 20:56:50', '2023-02-03 02:26:50'),
('f90a2b99c40599de6ddc215b1f375bc5e71a5f56899684ad7a3b1dd5d6798ae7793fd76db914b989', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:41:11', '2021-11-02 00:41:11', '2022-11-02 00:41:11'),
('f92b55bbee3faa3a93e32ba83d01464094e88ef8bb82bebada04f714bc02603399c69c581a61f7e9', 1, 6, NULL, '[\"*\"]', 0, '2022-02-21 22:28:55', '2022-02-21 22:28:55', '2023-02-21 22:28:55'),
('f92b5f8f12a0a5e664d6ac1b4c3c0e0ebf3f2b6ef088874c039dcc1e45a4552394b889ac4f5abef4', 2, 6, NULL, '[\"*\"]', 0, '2021-12-06 09:16:07', '2021-12-06 09:16:07', '2022-12-06 18:16:07'),
('f9e2feb26510dbfea383cce6afe99e526ce0c725da1b5d223669c81d4028da8e432de81fb808ef7d', 8, 6, NULL, '[\"*\"]', 0, '2021-10-12 13:39:37', '2021-10-12 13:39:37', '2022-10-12 13:39:37'),
('fa1ad04801bfefafac20a4fca3ff697673b30e5b145f41db5a092f7e25cc07cc9cc479ff652a935e', 2, 6, NULL, '[\"*\"]', 0, '2022-03-02 15:34:53', '2022-03-02 15:34:53', '2023-03-02 15:34:53'),
('fa5b7933753ec72d7477cb54208abd2649c99f13735c87b8a47fd2c678cd13702a9c16d87c23eb5c', 36, 6, NULL, '[\"*\"]', 0, '2021-11-24 05:25:50', '2021-11-24 05:25:50', '2022-11-24 14:25:50'),
('fc5e3ad725d486b8ecb6177983820fafce86d8ccc3d1e51866beb9e9b114771b51d549ac686edae9', 1, 6, NULL, '[\"*\"]', 0, '2021-10-05 17:14:44', '2021-10-05 17:14:44', '2022-10-05 17:14:44'),
('fc6e977cc04eb073985d08aababc25aea05b09abe527be9f41f1eaef555bf8ade0152ab4df10bec0', 1, 6, NULL, '[\"*\"]', 0, '2022-03-30 08:11:47', '2022-03-30 08:11:47', '2023-03-30 17:11:47'),
('fc8701eadddce960cd8e6d48e254ff5e5c95c1a16fb600dbc5f2546dec96dcb56f521e121f7e81bd', 14, 6, NULL, '[\"*\"]', 0, '2022-03-31 18:54:47', '2022-03-31 18:54:47', '2023-04-01 00:24:47'),
('fcd3429f29e95ddcbe575be5129859b6f9cc7c80129ef6366e356b089a253a2babf348563d1cacb4', 1, 6, NULL, '[\"*\"]', 0, '2021-11-02 00:40:26', '2021-11-02 00:40:26', '2022-11-02 00:40:26'),
('fd0277c18283ad931ff88011115c1991ec3371a09715bc1d73b9e1e7e92547508e390400bb680cb6', 14, 6, NULL, '[\"*\"]', 0, '2022-03-30 10:58:06', '2022-03-30 10:58:06', '2023-03-30 19:58:06'),
('fdca28f92f0be9e04c47f8726ea499075182d0e8efd09450cc3c7fe2ba51a822fbe417b2b5991358', 1, 6, NULL, '[\"*\"]', 0, '2022-03-04 13:53:16', '2022-03-04 13:53:16', '2023-03-04 13:53:16'),
('fe19ea1f38876b0aa19fa94c399cf8835866efb8082f57793ef10437b7d0cce5bc05b185cd04d3bc', 37, 6, NULL, '[\"*\"]', 0, '2021-11-11 18:46:03', '2021-11-11 18:46:03', '2022-11-11 18:46:03'),
('fef7d593c425d22bebe289277eba03c601144b4b955f7069b513080486570283ca506f62fdb511a2', 8, 6, NULL, '[\"*\"]', 0, '2021-12-07 10:37:53', '2021-12-07 10:37:53', '2022-12-07 19:37:53'),
('ff036b147aeaaaced9dad41dc15d591f182142e07ea4203c6bc763351243ef7a251c986a786e8401', 1, 6, NULL, '[\"*\"]', 1, '2022-05-09 11:09:08', '2022-05-09 11:09:08', '2023-05-09 16:39:08'),
('ff7f910a7d548c5e310cae9c3261f231fac21c64c140385c4cf718cdd6b09f9e33cbc43fabb2f153', 2, 6, NULL, '[\"*\"]', 0, '2021-10-04 14:24:59', '2021-10-04 14:24:59', '2022-10-04 14:24:59'),
('ffa9529c3a702299a37d6db124f32cd806c2e202699ba7666624ebab053256adba51d6873f8e39fb', 1, 6, NULL, '[\"*\"]', 0, '2022-03-10 21:36:04', '2022-03-10 21:36:04', '2023-03-10 21:36:04'),
('ffd9ee533583bea1d5468cb13739c0067382eb363f4182b48d4e98b3d0a920829f7fbfc96a8658a7', 14, 6, NULL, '[\"*\"]', 0, '2022-03-31 05:24:26', '2022-03-31 05:24:26', '2023-03-31 14:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(6, NULL, '1', 'e4s9XtT5RlyXqNAdZYK5xgnSs6xh5NX76NviQ2TH', 'http://localhost', 0, 1, 0, '2018-10-03 06:35:34', '2018-10-03 06:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('003bbc44820e4e3f42fff4847da122e89be2e28a18d713a5e477ea7fd4205dc52ad9e49a75dac04b', '75d89258b65cc1b84ef0c00d595b57701b303c251c341bd224568cfce2d71cde84f8fbb05c485f00', 0, '2022-11-02 00:41:27'),
('009489d76bd18da7e29b3c7e6e924797a53fb83d608de53c4e5528342803ec21185ee8879f24cd03', 'b36f8b9672e210a9dc5bdafb8d8c9b9ed55cd10560a52eeb226bbc75c9ca0bda992d7026abfaf8e4', 0, '2022-11-02 00:38:29'),
('016c3457a2cb2e51676f3f11a5eafa7a78cdea8fcac244ba4d8683110dbf0ea603359add3ba0ea2f', 'a28bb927754c11b8bfac122f640a5680a0e7fdd0bf461d4ec627bf3bb9557e7fad88ae5f9789e8fe', 0, '2023-03-22 14:28:18'),
('016eb341dfe6000e2c0ee9c9ca9e989a2486bbd72350e6ef7785dfb28fef72b7ef5908ef6ace646a', '6bed31119c71285d89dbfcce202ae081fc234ca6fecae9340de18a76343f030745fc056973d92ed2', 0, '2022-11-02 00:39:47'),
('01d3df897358120650c251cf57ef59f24772685830dea1baf38c8fbb91c6c150ad95bce4ed7db8a7', 'd0c946d841241dab4283a190420946eeb0caa8c2d3deb86e0c6d09245398ab3d48e38e11515af905', 0, '2023-02-03 02:42:59'),
('01ef7b945fc84a2f1f59a4b736f3d2b1145ecd0f702bac1cd884a3468aeff636842227d78318e656', 'a83841aefac9f9e09bfba8252170683abaa10cee67c07bbd6542d6a7f70f08761477dbe38a073f4f', 0, '2023-03-04 23:13:28'),
('020071face9e95f282763650b65d9a512afbdb1141b271c5c57d4a1f357617b45d472a85896f408c', '150b010760d2286c87625a2f8cd02e29a4a2a8721e220391811d461331cba0e1a1fd187482169b70', 0, '2023-07-26 21:43:37'),
('027f4b1c93171ceafd8d75e1875778231f7ad0d089ad5c99b9474686eb8b1238cf1ca612063208ef', '7ff4ab9a037aee576feee000e26bb7e3050c2d8f733efb5497f4b07d4cbb0e834ff29a34ab27b40b', 0, '2023-03-25 18:30:53'),
('0299c534d0c10faa26eff5f99441039ab54d4b1deb440c8e11f8337cc235da0503eb044a444ec9a2', '647cbd6584ccaf2950cd829b06b84c1673dfdfb60f9ce14edd6cef1bd936f5d02934d4605ceab860', 0, '2022-11-02 00:39:51'),
('02a6623246500863317476ad200babc8633f0d2fb8858a4c0621c9f7509bfaf5771d8c8a2eacebc9', '872915107439bb3d0898ec3a99392f03564612b13849d237848cd1a1731bb3475228bd821f98a214', 0, '2022-11-02 00:41:13'),
('02bd513368b2bc9522f59c18865e3e0bd1562cfe3abb99bbb620f3323b553c438423cd220818d074', '35838b9b49f14b9b4575ebcc891927e78367d16f2aba652fc0df879d05a7ae18accfc3d0e7a3ad43', 0, '2022-11-05 12:04:16'),
('032a96dfba107f58e3adafa8cb455b84318adb24b371bd5e4a2c760846192c63e4e8e92a184bb406', 'f469e7d10d67d4e62553cf67d79955f7606acdf991af657f915328275f5abbcf7157c10f3c751a72', 0, '2022-11-02 00:39:32'),
('032e6d50d3fb6e549b5437af1633e3e847e6a6717f43e83b7251f3420de83b794f3135816a8e1207', '1272760e5ad56979e941087fa20c61beff804e4969daf9d5ec045d10458a359e4a687778bd3f184b', 0, '2022-11-29 14:24:55'),
('033447248caf5a857ec1a350ddcd5a9de8d5fea1be3212ce7ce34e496f121ac0edab65da8cd67331', '53faca44e565f167d64ea20c110f3b52adfebee78f2674862b24be571ba9ff1af2f52129eab53bf4', 0, '2022-11-15 21:24:47'),
('03a1b8712db658b5e61ca97bc8c7a62d9d749bf7c5727fae3982b4e415de33f68f8ce6b1ab068a33', 'c092343883d87c4443caa7b9ff9018de8f5c61b41e82673d3866948b91e3ea367aac659dad43ccf9', 0, '2023-02-18 20:36:10'),
('03c55fec122e47e6ba1358986d8cf3550fc3cb1dedaf84393aad74c725915e9505407ee23764dc10', '49545297ef7c63b61f8c618762d0904272e6c5c63216046dc853825ab979e1d237c5d534025eca07', 0, '2023-02-26 04:22:31'),
('044f11f56ab672cb588e9b8151c526b14612f88e5774f5ae7913067ab53e355a0dfe6d0eb468e67d', '37237e9fdfd97bf705b6154d3a6cecacecdb2584c5ce9e5e7f7c016d162e6eee6b07c621a373f04c', 0, '2022-11-02 00:38:35'),
('04c340b5fb511e78808d5fa8ba3f0702d88f3a8d40644be305c0501f0306ee26a8b38294ac76c40b', '890da1af4d5664faa2676018254fc379c7e2269282b92ebeb8d4fde280b401a73050d4214f091d0a', 0, '2022-11-02 00:40:39'),
('050a0ab5dc8b37cd89f1c0aad03022faba5b29f006e8580183f7cb3731716989832bcef8bcb5d060', 'ee5d8b360edb55aa84c747863fd2e6076c50541ddf72037011a5afbfde5e661ff7883e231fb16411', 0, '2022-11-02 00:41:12'),
('0549b429d3118d76eb83bddbbc85e2f47e5e3db5e3f52a611cb8329d7531a1a2d4d88258f2dd04a9', '852519ec3a42d1a7ca1c537e4129e5e34b4591c0521cfc895f6643950dd8e89f351b3b9b680d5f95', 0, '2023-02-25 20:38:05'),
('06a6acb59c40714a93cef2cf68b72fc28514f59b3a05353b39b452434908575854c83eefadf4a016', '5c32433ef20c63ad07e418ad6b728db6c70321a17e8fda1a7ed14a92ee043cbf05c4680bb0e9826e', 0, '2022-11-04 03:14:19'),
('06f3d05b5bf22e08b337c2203c2c083559dfb89ed6f364c39b205104ebc2bbf16d56f7c558914def', 'd1f7c577f958ea9fb83774a52a8ca917c365a3012e3ea94bc947e59017db3c3d321c6034983a7e4c', 0, '2022-10-07 13:52:17'),
('074658399199d95a5effd5dd6730b8d8b5067937b1d592ca8e84ae0d0c592574767a0f92a72181a9', '580ac28ab970c5f8414f6a9fd79100b09cc2ab9ebd10caa7e25cac84186e048a74cc034fd0a96df5', 0, '2023-03-30 16:05:09'),
('0749b2821f04a3ac9acf39306b9955c9072a28d3558040d15b5e91a3c21d193689b0828abdc8e4cc', 'cf8658680b668a43e92f0df1068443bc51af492c910faed1dd74ce0a072c9ecade7c36d4d515669d', 0, '2023-02-25 19:42:47'),
('07540f7b1a86e854119459dfeaea87270d5efa017b6aae16415adec684f23399d4354f61681e1bf9', '13f19efba01a237fba57237c70bf814f306ab029eea711084265449eb21462c83eb6fece88fbd5d8', 0, '2023-02-28 15:45:59'),
('07e64567aed31fb3081c8913282967e79b4ad18a45140fc46af1046b56035c298e0ed67b259958da', '0f989c022e0ae35e37f0be22d2429890a883d0e53e25fd8904dd2f7c9ff08f0fdb5cd0f594b120eb', 0, '2022-11-17 18:05:16'),
('08c76117f12d1937ee4b276ab0bc48fdf6b5a98b40d6d0812f3f09806385ce50251a28001410456d', '54b2c1ff9acf9ed2084f321d60c6d51ef25a146c871c7b80d60c19254131cdd035f630b479e4ac79', 0, '2023-07-06 20:48:00'),
('08d8603504676efb3e1283c88e4d6ee760dd4ed32656273a5309d16c76b56ec620eda780daef1a76', 'e14a17d3492b480cd19068609aea8009481edaf30dd5320150552e90246c7f37a13938d164f6fe26', 0, '2022-11-02 00:38:27'),
('08e2b43b2eb41f368372e310d1ce2d3455329d97c56ce20c9c7763aedce315f2eefcf660f84cdc43', '5176bd5f44fbbf90b55a52b59b46c357a9ff41b0338f8271db8844011add4b4898c3b1df44c1b229', 0, '2023-02-07 18:26:45'),
('08f749863e2c09a2c3cd363894121ef4e2a31dd7053e4d6738d9ca19a04c1fdcb6a3000ea328f85c', 'd0e1fbfb35cf9093d1e41c8614fc383584d7bbcea0f7196eb2c75d07eeb33700836d40872aec097c', 0, '2023-03-30 21:11:52'),
('0982858de1fcecd3b1507f74fedee56ad35717514119bd0467755087d6a2448a94cad38d081f0e39', '078b1c880ca0ab1f313d3eb72577626fd16429c431079b06b59d5abb77738a9552b1306e0a229349', 0, '2022-10-11 13:28:41'),
('09dd72f75a11275824a8017e919508eb18319b929c73e41f0896bb67399ab18cc0861bd45dba31f2', 'e7c58ad3d248fef181c09b7820cfd14ff3fb8600f0261adfcd8725afb759c289f2e36f4825ba3c5a', 0, '2022-10-23 00:55:02'),
('09dd991652151d0ff665e4ceb4a4836fd1a83d86175ae1149c4966f31045e9cb43bbec08a6f98ddc', '5d7f633ac86eb58399cf60b5b1373e40d83a25286fbbe8f710d446d675a1fe5015e378cdfc6489a4', 0, '2022-10-05 19:13:39'),
('09e75a8368413894b4a8d509d09a88c343f88fcbe03009d6aff45a19333da010f704fb87b090190b', 'd51dcc59112703f57ffb8a35f572754904c701a6c8e9823989472b4a2bbbdb32d8c58c3ccb2bc44a', 0, '2023-02-25 20:38:06'),
('0a8d92ea56008e6675b76d785f1d6dee8dcff77c9dd6e74a0c6e3c31b8732525b76db98715279e6a', 'd0677254f971337800b7aa0f42619b7af5bb093fde8b7f4ad4d28f95984cad03496b06acedf06839', 0, '2023-02-10 16:20:57'),
('0a9d713116eaf7626350e978cad8f22e18677d05c9b647f5780ef80b1c3a1c6648807225897e05b2', 'ddfae80119582320ea83d63bf741cd60aab24b6424f6a14b155ade2b7ded652d9e4420224ca4bc6c', 0, '2022-10-21 12:47:16'),
('0bbd069edd655e21d6111c0a7de476a7ac69f19a63f661a11e5946b73b34ae76f0b099fb76dc6946', 'e6cc3e8c6a5656d3df2f7a620ee4385a90e57f59727ae63ec12729759d937095d4ef1573e8d545ba', 0, '2022-11-02 00:41:13'),
('0c0204f3aa25ea996adccebc9c0a53c8f6292b1595c4ac8a9453a5c5fae4e069ac323b7e72d33975', 'e3657c856a259c518d00c3a1e2522ed56351b79c500b98487fd466baac80310348814759ce01b08c', 0, '2022-10-18 12:28:04'),
('0c1d7a661cb382583614181983bdb71b7dd1e003f272566cc347dc5da02d8df0363fe5325440044f', 'b91929c5047b0c18a8614644c76667296ad7e4ca067608356529592997b55b81b085fdea93800fb3', 0, '2023-03-03 21:59:39'),
('0c9117eef98fbc30d4c2b1a0e05889e132802751f83442935b46abaa499027ca1975a363b2a94c34', 'f09e9b17f432159c407be01ccbbd6d4532d825caa00d5038409a0c61557373f5b5b0537bed833107', 0, '2022-10-11 18:29:51'),
('0cb4f116ec307a5acbd070b77a2d5b14d26d37dcc1bc74e98f919293e2ed8ebe2d53d4c709bdfd57', 'f4f6278090ba10aaf14a82742fdac150926f5036b1f841794048803965f025950d559b090edaecb3', 0, '2023-03-30 22:49:44'),
('0ccf860bc2d78c5517a39720a6dc74bcce3f6049251553f70cfbc96abae2b9e10c42fdff3d507e3b', '9ff6ab7742f5341dab614d1dff1caafd084b6ea37fd6fa971cc2cf454b4b0cecbf2916001a96a044', 0, '2022-10-05 15:43:02'),
('0ce0b08607580a4bcc3f1f678c49dcdd5aae53848608d97433aed4531b341a585161886e1a22f4c8', '9c78d343d1cf65bca30ab8dfb300877080ad7e7293e9c0340e14edd14f690bd27c3feec986e1f01c', 0, '2022-10-29 13:50:11'),
('0d0a0adbd31d3845eb2e5c69e3ff64c69a6d23ea4d3e94837218863750cb461e4ef98b2caa0502a8', '9a8a25866295ad49559e74c37acc589b8c63aab046e306a3d9b0bc32d44684ad551c22a6c1c3091b', 0, '2022-10-07 16:50:10'),
('0e4d98114a22de86e5bad1a43f3445d25495c31fd2f1341b526ca9a2925471f3e7c5f80a82559fa2', '359630d38202933db0892c813a61482c4d2ec38fc8ad52937f17056ce1c9bbf1b2f5e6516ea75399', 0, '2022-10-29 14:52:54'),
('0ece65f27b209e8591ef3d253721e202940d2d8f59b41028691f6ecd1f047ba4b10631f1a7e5bcc9', '7a2f9d62710199c43481c707e5e22ce1738050ab6cdbcdf0bab46bd4bda09b063e5e0c6a3654dfe4', 0, '2022-11-02 00:38:25'),
('0fda3c3d9bbc5a55297a6b37c83dc6e66ac27a99a420c48f480f7ad503ca8c346525f6a2ce056fa5', 'aeb24bd69d641206036c2da927e3980ae22e6c93f7c8225a38f6771b1b336f31eef4540a1bed13fb', 0, '2022-11-02 01:15:29'),
('100c16d1347940cce7c81059d07cb1449f2ca2e0f5302836e052c88b3270881ceb6c5dd69cdf72d2', 'fa1ad04801bfefafac20a4fca3ff697673b30e5b145f41db5a092f7e25cc07cc9cc479ff652a935e', 0, '2023-03-02 15:34:53'),
('11a1f22734771d80d48107e9207d16560329ee0edd4d34ecbd6b6ec4eb04c75c54b936e3ce4387c6', 'ccea72e40282668b845b5489950b3950488eb35ac10d0b213dab4af6609203f40fc2c8e4b5949f57', 0, '2022-11-02 00:38:26'),
('1202f733c9433ff0ac606ed8bbca0b9bc52ca0945479637e74063805c3a5cb9ab1a74fc4cf3fd479', 'a6e6caa397bf23f197bcdf4e1acb7dc20a295504ca62b0242cde462127b5e4bed4f6979af0fe3fcf', 0, '2023-03-08 17:14:11'),
('129278f25fe6231071cb9c82b99a101f0d3d5f3575255d91801279494600ad686b1c721598f38370', '405c1e7f8ebd0edeeccd6019d752d6e41612b9aaf471738764478727c503667e977855e9177fc9ab', 0, '2023-01-27 17:50:26'),
('139e9861cc06a936b6790e46aa9dca416dc34da8b341010c06a9c550ff539924cae6d46f42e02f39', '6feafb3d0b5b3afec856a05069dafee9e38d8d3517b29abcf1db3f92a26734ef366c8c585cc1c6af', 0, '2022-11-02 00:38:37'),
('13f817cfa89255049f3bfb9192449b29f89754bea17e00373403b71de6347f407272dee26a7a8b64', '9d740b6ad27f9f7c978ba6685734302405acc586582c092c1ac78be908f3139a1097a403ccb61e02', 0, '2023-03-30 21:51:55'),
('146ff3bb7c5a37cf65d1dcf3f1a869e19a6a65459c03256b3201acfe9f6c1f9292658a93f93284b5', '57b75c3413eb78d646648166918cc6b19d5b8bfbb7687ac0e10d09fb149787ed1f1722d2ac723d5c', 0, '2023-03-02 18:11:57'),
('14e4c8f2bb0c2c66023b3032f5af3e3a0d2deea8a75d59e7af4394f350e1677bb9a1f2908732af40', '8ea85169b91994611fc46fce0b5d3601a1c64a81bffa4539737dc7e731c48fec09a0cfb368767ac5', 0, '2022-11-02 00:39:45'),
('14fbf52e249ea7b0acf58c9a5c1f9e8168aebf3588edb7559a713e2ce858598776f061034728b1ea', 'f13bef03e59ab8b2f32af4239200582825e5a410b0fca2edf3eb6fbb2a4b8a02b569a9de53632c49', 0, '2023-03-15 21:01:14'),
('1501977a9590b50c8218b6e312b248c7980d0ffb77b11f3efd98233f254aa0bac61b2849154fd87f', '64d6d82eef34b4fcd375d0ec197d03d0c519ebfe1bd9c456ac6c508ec5a1489f3cc47732ca949109', 0, '2022-11-01 18:51:23'),
('153c1e0c0e6992cee6d17025564b0f99ce034d42a5891c2e74d37818dd7d71262be2cf34c8b5a24a', 'e564ae4df67e03d0f6e51b44c061dc44a9f0f893db5af4f4c068ac32dc772435b7914a4ceec1501f', 0, '2023-02-25 18:49:13'),
('15e068194876945972ab1f8072e4f0627bdf8f96179e2292a042aab41d381ae7317c2b329b415ea7', 'dae10649b2628502789c160059bf48c250bd4165aa17579a26396707062d61ed856a2a8f58c69e84', 0, '2022-10-13 13:24:32'),
('15eb2a879e96c141eb6d19ea37ef4f84e2da243e700e1d72ee1e79ae68304312cc16c1307461f435', '0a654ac1adfff603a83fc8326945b914a6c4a296d3e12e6688e4b56dcf475332c5cb465231e8817e', 0, '2023-02-03 20:05:33'),
('15faf7cdfcbd973ec454b795e0f774a4decb4a159c1e63c3b0044f9ed5abb1525eaf095cfcfc236f', 'aa51e60ea6fae9614f716f42bfff0b0edfd17ba408eb8379aae3c819d41b2e87b9026d773b66b6a7', 0, '2023-03-31 16:40:29'),
('17db52c79f8caf188ad4dd2e5d4d1fd8b2985f70cb02f31eb67446c93ad9e801abdd87566bb824cd', 'b6b0a5298098761e08e841568fab92d9d669abb992c80444c5981687c0088ff2fbe8116280dc1f29', 0, '2022-11-02 00:40:34'),
('17df871bf50ea753e4e4d2bafae171db4cac75e289921ee4faab48e042683d21bec922560511c017', 'ceb10ac546772d0c54a89311388d4462d8dcdd4067a766c30bea3724a6c8c85d0c7e87c5b5dd9c0d', 0, '2023-03-30 21:33:19'),
('18401681db966fa3ab95a5f434b5a23a2c18d3ecf59b08c721ca5407ff8381078b758c8891ea1d88', '7386c624f0e6c3957db9bb4942832d6d1a9a1dc92ed029ccd3d147bc0a6c032832240044feb38b9d', 0, '2023-02-12 17:42:38'),
('18aa392f2a1642128328043d0b02cc756d432e5ae7f7268d8b6b7948d95c94b036dcff8a59da3e99', '834ba69bb2365aedde14206ec5710e69340a0db7460cdda655712020f45f0d43317636520c20034c', 0, '2022-10-05 15:38:58'),
('18c945477a2401b27a8c30e61398d8a4a50eb6bed8fbfdd0e580bc9933733d7f4ed603a36f87376b', '71924ca497a01e1293b6fee5fbb51569a1a63dc32ad3dd496c4fdc6559337ce33bfa1db7c97ca054', 0, '2023-03-31 14:51:46'),
('1988feed9e2e85751565168b5b206c390a6a073ed53d1fbc3610e4adb1b7182cc4a6526d4ce67aa6', '46d2a0bff50169fc047e2ed94ea2e5ed11525ad7c2c53d9f2259f2e6183e470c70ded0e0c2f8bfc4', 0, '2022-11-02 00:40:31'),
('1996e12f7b538d46a0d34303eb0d8b8430063570d8d9e1f6b0ef28d6fa9154fd14962f9f035f7f0e', 'f5c2628544f12037e38961dce708a692292009aaf6ce20866a38d2dc16a5506c74903faa0745c83f', 0, '2022-11-02 00:39:26'),
('19e1da7e4d42c330bc40c4a3eb4c7fc2b4bc86c48216fe1968930c0acb518cb77aee08d1854b92c2', '53bc3e087262ea3e2972173980eb68b2717fcfc39e9d4fd726850ec7040b49b24f074f649969d1a2', 0, '2022-11-02 00:41:14'),
('19e5f0f46eb4a1d997a0da2af8a5ce601036f6ade34a1cda2716510cd3a8bc0999b5c64055910283', 'c425bd5753258becf5c2f879456214b06cdd6b165eaa8ae6dd01882b65e3140f8d8eedc65e690d35', 0, '2023-03-14 19:08:16'),
('1a63200257121d77ef54c737a21ee4916fc38a60051d5fea81b01ffdcf1662c1f2060c93c396d6e9', '26fc75d4906ea419800bfffdb6ad0d914a8e5f4f0a81eaf66e6beaef1565755c7537ccdf9a44fda9', 0, '2022-10-21 18:44:57'),
('1a723c1e4b5a36982e4a25f51a1e975280f74ba042f2189a9be301398952c0d95c4610edb19583af', 'e9210b53aca29d7a1a5849694c005ea776c5b8f9975549fadbfca81c6756cb557d244654f033612c', 0, '2022-10-05 15:08:56'),
('1a7268432e55e1dd29eafa875ef6319b90e6180a6623341b606f56147e23fd57008becb835d851cf', 'c925effe8168610652996c520a8810a8d984408ebb8af9720716d4442396812002af70c961d97d3e', 0, '2022-11-02 18:26:18'),
('1a8f1b475dc03d331040fe9b5880657c9a39748d1e91e836fef16921e2abb0e8275123c709598368', 'd0372f43cf5e09c521b703abc770b2da045776020aeea9fdeeed42f8ecaaeab99edc81c5f5450407', 0, '2023-03-14 19:08:43'),
('1ac2200ba7edb22d33312f141cf44f87468ca9af59699dba9599d76c73ff714150f557d8f69e8c7b', '6c03b1934402f46e990bb54e1fab578c9f9126e6e11aa7facdc637bfc08390cd2b24c080771d4f6e', 0, '2023-03-12 17:56:03'),
('1b0d354e1a2b4f7c8b02ad2c5bc247723169954fdd9dff44b4557d49b2e0a9754ec286284620331e', 'b6dffdb9b7c83b4c18d4a0c084774ff59c228e11ba5558d79b7bf16b47b18d408616a85cf15ebe4d', 0, '2022-10-05 22:33:46'),
('1b4618f8f2783410a7fcc5edb66d2b81acfac2626d066780d5c8ba1f9e1aca8b8adb8c5b2fa7af82', 'a819f7a7de3983876d205e93e69c8c5b965b92ac443083c125d2fe08743e34aaa9124fc577f7a920', 0, '2023-02-01 01:39:53'),
('1c740a45b8f6fa674327b9bd1840d471f43ade5a5960a833bb9a5b71a6f16687ead51525e00d78bc', 'ac5f37c39d3c1a4fa2b4640127fc18bc46f547ffbfa75f6449d52366a97f07186e49a03ca9700dcf', 0, '2023-02-08 14:32:36'),
('1cb958ebc0b2166ad8ef1d9bd5ed477531627df4b315de88ea02ded14685a8757509a3619b4e7548', '2bb82e917dbc7fd2b0db154e977d7c446aeb12714a25476da42dbe27a2d62593934d877a1e0da27f', 0, '2022-11-23 15:07:53'),
('1cbc51cd733adb1147810363a5169bec35ffdcef3d1b9e8d15ecb970ade4a80f5971478955da359b', 'b574ff585c8058e227f41b24caa6ef1c90d8c45c501a33463dad6cd0c5853c6f941c2b124238d5dd', 0, '2023-02-07 18:59:09'),
('1cccc1f5ea55851911043ffcae224378eb579f94d57abf6450f3503ad4e5b37ad6682c1697897a12', '433f6c6e16dd28b693a560a64cd74b229d417063954430128d54be385fe6179cc6da45c1597a7709', 0, '2022-11-02 01:15:19'),
('1d09b2bfb349b0ca7d60419e45887dfbc978fb6216d2c8a9fc7028248e1f7227c8a8cacf4be369ef', 'f441cf1ef2126893b00a1f29279ef233602026d21252d27a5489a27711b82554cf6500fc9cdcae64', 0, '2022-11-05 14:30:31'),
('1d8e548f2e7ed3ac10cde41d423ff81375fcb4b5bae47e9bd78aca3bbc8003a8ead8ef918c525018', '21759455d534e1cfdb7244914e219eb829fc6f0e1979f3cdea8db60d64a743a5a025a41dc8b91367', 0, '2023-02-03 02:27:11'),
('1e233f5244d25068a37bdfa97d5e4bbb99d46d75a59559faeeed121908b26d28dc31c8451f92f095', '874a81726c082dfa871a30dcc5620fbd2a6d5f29221d6d222148d0f96bd7cecc15deac876a524b9f', 0, '2022-10-29 23:27:42'),
('1ebd834037e96bd58add9a2f424d56b0228ea6c345a3092826d640cce82301b8ffb29cba09ad40c8', '3fbb8dbff2b28a5118c607a7e4deac87b98103cbbb6a20b6e9eb698b022f83f9f44ba9cbac2ffa57', 0, '2022-10-05 16:04:19'),
('1ec8fe159fa6df1b99105addec28ed176451fd37fba429204a79f1616976b0266511ceec809aac63', '86bea23480819837c3d79d747afb82c2b910c238ca20a47c6c0464ff710e5f43a3596cce62c8dbeb', 0, '2023-02-25 15:42:59'),
('1ecabcc3ffc5720f9cd4163d7eef2ecf2492ac184699831ba74a01c9f4e1250d96c739a76a9a09a4', 'a9e481803e16c4fdcd4b52cb98a97f227f158cf6519980aa84738d462de62327ff4c295fae3aafa5', 0, '2023-02-11 20:44:01'),
('1f62b65cd477d5ddea4805ed9f108090df6b5cba6cd2e2dadb2ad11c72c6245b72875f1cad7e4b62', '8dbccf4d12f7e632306cb879b26de8ddde43ed58da2f267a66c76034de7e4d5f40cfb00eab98e7f1', 0, '2023-02-22 21:01:38'),
('1fadceff9914ff8351820eb2f27d223387ca8e1a72bd407791433da32a9732433565f53252c65a41', '4233bcab3edec2c522e0140add5acd9d3ef2a219cb5eee51474fd0ca13ec1a8cdf51e16f3797d447', 0, '2023-03-01 19:58:48'),
('2035ffe392dd5149cacace11d9b5b4949c26da487620d4318f9304130700b9a07c1b9dc8954fcbf9', 'f85ced505907e14bbd9331139468b0bafa0e4605fbcb6f3f4c6c1c8e66eaf08bbc86ff3c1d0871d3', 0, '2023-03-30 20:44:58'),
('20e8c3c6193f68a95f4e76278e02bcc8e794fdf69327fe7253deef4944f69130e92cbb2cd8e13f10', 'c2f479413a27de2901dabf87d4347a95de54d3d3a8c4560f4160dcff50ea73c0cb5974b37d8b33e8', 0, '2023-02-03 19:57:19'),
('211fb407358c513ee743d3148634fd92f1a417e4a4afef839f30a30c86259afcdb450eb0999a42f8', '8cab119538450f833a7274be63c3eccc622b010c2b6fff311b1eb264fbef7638b649b98a38908799', 0, '2022-10-27 19:09:56'),
('216a3bc4794bbc5cb170b010043fde602ed0524dc17dbaa5f23ad7cd6544c476237df5cac4ed5fba', '5979c9da95ac5f6bca503012e2e9d34d00125377375ed416885744fffc7ca4c975d2d2e7ed06e52b', 0, '2022-11-24 14:30:32'),
('217098f0a852184c392e6b93433fee39fb449b916efe04c5551cc5c7ab955eb8942c6c73beed6901', 'c122d560d5dfccee4c3bcd6702d39779f4ea58fea92d9bef69513796397d0272b1a0bd1b5727963c', 0, '2022-10-05 17:53:52'),
('218268eff8f0b1c6e601af8c311c0df4eeebc1e083d04827182c1ffafcfc798cbc7acde0f1d8977f', '8d74a8fcabcda53b7e33be0e9313ef4c8a1c9fb805ffb58ef8aead9b936b4a6b974bb5d80e2fc135', 0, '2022-10-07 13:53:55'),
('21868b7fafc44f9c288ed8b20c61ca72a349a1084537def83bdc11b90ab88ceb3b79cfa50a6e4759', '337f6b535bed9670ce83e54ebf5c6fd35e51e35a78564be183c9422c23e87a21640cb2206111b053', 0, '2023-02-25 21:21:00'),
('2188481d880135e0fa6ce24312c2a33592d17e12fb4352c3e37a0c94dde5592e67f23de0b0680d01', '2935e8b79d40b6679571b942e285dccb21bd379ee26cf5b1e6c516f00ba11692fe1a9537ca00ff4e', 0, '2023-05-06 12:54:35'),
('229e9881b47b87cf4e7ea89bbe026b243bfcdb844bab60abf06831623ef8399b4b49d210b737b696', 'ff036b147aeaaaced9dad41dc15d591f182142e07ea4203c6bc763351243ef7a251c986a786e8401', 0, '2023-05-09 16:39:08'),
('23cba6648cd54122cdf7a1bfdbcee4c63fc2244482888ff3cccba9e5185fa080bbd4eec72201d372', '6678d9603f069ce97173744af825ae88af44daecf4d8de18133d5b8e768d165cccd1209f91a1e774', 0, '2022-11-02 00:38:33'),
('241c0aefb705431d94a9d468991dae60eb39a92492f055239af22c3e9261cb6ae599da09c70f346e', '255295c72567fe205ee2f6696a6aa3e60cc8f58866a94c581b4f60f2e581700e9b7f6430cd04251d', 0, '2023-03-10 22:20:42'),
('2546a04d36a6806472188c4816aed45bd127dbc31a9d751bdb6b22c2274b76a78d8a632c53ea6a24', '8523c16d8e3ef03176895418b8cb65544cf5e294ebaed81e8541b2b350f9bcebe2705e6ac90efbb0', 0, '2022-12-03 19:40:27'),
('255d73c159b2f0a57730d2c58bb215dfaf1a245b142422db05f0473ba3772e3d76871ff502032140', 'e2e3903425bd377cfd805b256f79b39109239937d4bad33e645fd21dbf063493306118ab7899e455', 0, '2023-01-27 17:47:02'),
('258c7b43722e7d2854473275f060a62ec433156e2e4bf44c2601aa60dfb9ada3080d19e24fa915c8', 'bad4b45e89b2883cad0f76f253ad94bd62f8eddd1249ceb40b50f5458f9ac00e8131ca1345624a36', 0, '2023-02-23 14:56:21'),
('260867ce51bb748a03a3d95ccdb4a2c726c6868152303d8a7a569ac1f82975eacb20289bfec07a99', '62c0fa8ad4112729f12944ee360e1bb33c24eb3ce766a4bbe0e7bb1a163a712dfb0de0cf67ae2b23', 0, '2022-11-02 00:39:50'),
('26e94baefedef653f9a966cea3bf54bc98c296b322935cc6aca4314d00c4dad895bd78ff916d2bf8', '3af772245deeb2d01354ba36986720fc8143360d28aae1d7d140904e34d103659b20ebc88a79dacf', 0, '2023-03-30 15:59:43'),
('270ec1b3ae14b274676da23166fc770788abf123059c7e2344800426a1f16c33b7f087b8251307ef', 'a5e43ecfeb41862703694bc9024633fcc7c41d95fbe71981c9144ad189792bc0a77d25d8539c92bf', 0, '2022-11-02 00:39:36'),
('29f7fd8480754060ffa544650720ac3a668564958aa11312672a01edbe3d661e63968b8106403ba0', '22e87f2324220a6942929b7fc55b4104de478a88544933a78cf13b0a55b941f9d3a15b463096b4f9', 0, '2022-11-02 00:41:22'),
('2a8fce3949f523ed21a5ac5a2ff1a6cf96199e25977fab85a011f887d3afe31889c5fcf98a05f0fe', 'b7c7309a39c9d744f52f2e3c2f350f4ba2af6a2201205eb325ffbf0fd96c4202f933f280ce778bfb', 0, '2023-02-03 13:25:32'),
('2a99a216eb6232e9a62cbebcceb45cfa36192b991123943e70f86efacf083a9998fbbe7c6d165a07', '2a67518c724641a1d2d9091f485d8036054934f72a698ae42c1b90bf8410953b34553fe4fff07dab', 0, '2023-02-09 20:58:50'),
('2b57acbea0f9a6972d713d73c50549fd6865101b98275115951bfbf8d9723e9d98e1d72b1f9b0e39', 'e3afd63848daa1bf3992162a90f3d7e550e9ce560928ae09ac15be5fbfe6adf3feedd9b57b9f687b', 0, '2022-10-06 23:02:18'),
('2b79a9e1cd853bf349696509998227b1619475e6cc5886eef1f02709e6ba5f83b704cd3afff32bb6', '0df12bc9632f395053d31c99f89503787f1fe1266f3fcf84fdd43177cb85cdc1a5181c81b9801e95', 0, '2022-11-02 00:38:27'),
('2ba108f956ace4fea25af9b75a3361a1fbbee0c3cbeb85050b3d6e45c6f0b14b09a191b10fa42686', 'ddc8a7f5955f46d13975bca6553f982e618d4348da79716e6a8de831d19b1936ea8ac93956db6e96', 0, '2022-11-02 00:40:42'),
('2bc79c478e167f4f6ae59df6a01ce05aced67117596edd5147452ad252c2ec27f18d5680c54ca172', 'b5458d46aae30a84ae474e8ffd45b7a5ab4b61fee00615f650a30a4665912063e58822e348684464', 0, '2022-10-06 15:19:29'),
('2be6017f3fd0e9a59b0f1e4b67eb2c33b493a9570c2f7d7b925739f39dde74d0a3b74c83c22b079c', '915fe0986a26311c4d06ecebe080f7b3bafe0fd44ce4f5e8ff55f9d6c03f01a4bc8d67be95209f23', 0, '2023-02-25 21:12:41'),
('2c181c3a24ff4d0a54b4729e4885d23a0bf4c10e52d0002b78e97a2078dce8ac937bd56124a170c3', 'f92b55bbee3faa3a93e32ba83d01464094e88ef8bb82bebada04f714bc02603399c69c581a61f7e9', 0, '2023-02-21 22:28:55'),
('2c3cde8c36561f57500010070b0e547f5912a1a912fe29bedfe89e68b890be299a5a6db19b969cf2', '78c3c48335d01aecae92e5171d0d608a75e3399e56cc672d6d8c32bacace8f787476404a953e92b0', 0, '2022-11-02 00:38:29'),
('2cb046c3e5e3ecdbb99c43f2889503a52fdaabb6b50e8581fb3507ff950fa0c2fc964f05cedc03b7', 'cdb00cbd62ddd637766276f6b2104b532e7a45f69e7ed9860c5682a494d0a7712f5e3640072c2068', 0, '2022-11-02 00:39:59'),
('2cecf193afe54ca1b967c5d9474887dfc6baa062f8e6fa6a436c1b4a49322b3f78cffc8d36877a0e', '7651a813e60afa916e60236eee1573edb20cb7710baa45b2738a04c7831d988129742c493285bb91', 0, '2022-10-29 14:50:39'),
('2d14ac4af54a9e7d7396ced18b526536e1e28aea32717c229b3d08999f44439407b54321a0eff1ae', 'd236a850af5dabd63e2ae942366024cb4c7ad31e66479cac408807767f3ac442dac5adb94f3f4325', 0, '2023-02-03 19:55:21'),
('2d294c18ad663a018d4729fffde3907390c6ef80b02ba35b072889e5bf5f5109040c8398da4bfa03', 'b21dd9b5ea1504dd64117b74d4a5e15321eda3cd4dff24b1e29af0a5eee74d54c6fd1fbce0d7ea5f', 0, '2022-10-05 14:45:06'),
('2d422f3c677e25d3a462ed43940ec6b444660adccce67f470e5aa34deda9bb37bd650bd821a4601e', '067fb5c7ad2869a3c4329feb6ddbd831cb543d9ab5ee0dfc9654242f0235bb3d92d7745e3b91683c', 0, '2022-10-05 23:59:04'),
('2d61b9bef027d9458a8d2855430081c6d5b1e86de3b15999fb9e7418e9f94c03301c8d418e28d63a', '94ab2b50ae761423338817151262a0cd873809888e746a39e976fe3ded9348479295675ad5fbd056', 0, '2023-07-06 20:44:30'),
('2dac95e5604c9392e22786d505514abe8b0e2dcdcb2524319cbdd56993980b3b3be228a63a402365', '94b0153ca5082ef35633bdb0485197f66f34be673ac0e6aba32ec58a2b5701306d0b4dd348e20016', 0, '2022-10-26 12:01:49'),
('2e949bfa0605e93f4ff758274514a5a7f606c567b04215903212b96afbc4043207b171353340a3dd', '9e666b23b78ccbdb4d7d3086319524c149186feac5062a5c86df3fb32db73912fb27a64e39e14b8e', 0, '2023-02-28 13:48:13'),
('2ea40a0a93c371947dda268a2160e5a204f56b787128c179d09f127e45ee3bf9f2c301f5832096ba', '357688505b89fecb800e17f0fea95f9bc8c3fd922d1313a3eac027ba186a5c63e83d9a200d84bbbb', 0, '2023-02-10 23:16:09'),
('2ea6656af64cf9e9a132cf4d6cd80c086023bcc86c7aa4cb1d45ee25426fcb5574170bf0048819d7', 'ba6a7a992aa068a66f20e6b149c945d156fe747d2f9bff195d2dcb0d392904bd1d4eafe14b8a9411', 0, '2022-10-07 16:36:40'),
('2ea76a0ce9af2c8099d02c4083467a07017b0cb644c3ea9b50791d991f385b176afcf5ea53374b2c', '243195e056b7909adde1b5970ca526520cc6453d3bc99fd513c38c8112de3836148fd62b41c5c951', 0, '2023-03-26 15:34:32'),
('2edd6b3eb4c5d66abc981613f613debb3ed2a0d4d43cf878fd91dabe918efb1dbb81b823f4675f18', 'f92b5f8f12a0a5e664d6ac1b4c3c0e0ebf3f2b6ef088874c039dcc1e45a4552394b889ac4f5abef4', 0, '2022-12-06 18:16:07'),
('2f399fefa53014cd1f77ec31db64e55c73fd77915e677468560f7a45b07a470ba29cdc69b79103c8', 'aa5ca17e6f8dc09b16fd00318b0eca50e6c12ba7ac97609a5d669073efd678ed91a2bcae47df25ad', 0, '2023-02-18 14:02:55'),
('2f832e8d708c081e2fd1174213030737cef19930b6ee7053d3147cb03ccd280c543f59f866bc946a', '3a1cf63a30eaa4e26fde355809775b2a1bbcbb0a1b59a2db4ed7c3bf7baa93def07dcb573432c815', 0, '2022-10-11 15:11:35'),
('3031d80dc60e44b7f0a5731d0bdc1c3f79f08b2fc796f4dfa5cbc799e533083ff7d1bf54f85f83d0', 'dc176c46edaccaf8b95105d6df2b64f407cd6b404b9544ec6e11736ef4c3faf876c5d7c8e96ca889', 0, '2023-02-02 13:07:21'),
('30799b9b97b94b36f8a0433f1c3beab54ba0ee92e53e1c61bbb26d1dc8d22492a84cd62739e302e6', 'd4ae56b992469ba5dccdb11f6f3223239ccf27869c371c25440ba84eab594dfa438eed1f4142405b', 0, '2023-03-23 14:18:23'),
('308964504b6c537c605ee286dce7f5dd5a5faf89028445613b6cd7e224e1894e41cacdff49034ae6', '73913d6d617d0ef24fa6a2fe91170f5ae3d988269f6239483f550b626e15b8503ed2ffcd1ff9c891', 0, '2022-11-02 00:40:28'),
('309d15a42e2dfc35d54754c4786c7c52e4e49d3c412cc3bf407e852c17e9aab99f7ca6adca027595', 'ebf12e5094fba52db52180e30558971a9a8033bc2e30a2c4f9a49dae4e04c2c01f5d38040abc8caf', 0, '2022-11-02 00:38:41'),
('310c079628ee411b60f76ae176c4c1be40d515c2a4562a9f0b65de9c994db867a2194bce6f26dba3', 'd60fb923fe57a5eb7eac05d8c8bd9edb86469e42dfbccfbc2d5b8a50a430f9610e65a6df47a545e7', 0, '2023-03-30 21:44:39'),
('31557efa8c4f0e0bcc5c7b88b61d1504ade0afe1abd2d5cdee3f636c90aa49297f3312c837a751eb', 'bc933f5f4dc74e4f7c3a0dbfe7e9c22525a8b93741d86d02c91ca927cbe4857229a712793364257a', 0, '2023-03-14 19:08:18'),
('317cf2bd25c775320ddbe6fc0bfd9e60eebb1bb198d1e659b86f732f861a7732bb5351e8353eb61b', 'acf575ae7a9459947133d35e8ba02094ebb5e3d40e9290df3830d84591a0a709f8c52ead6f5a9162', 0, '2023-03-01 19:44:18'),
('31874958adbeb06283a14259e25ec1bc2bb359520d9bbc7ed55e3880a6d84c70a5d2581e0fd7ef2a', '777cfdfb5958903f287ffb047f0ef342660718da000f22bee7327289a7ea2106b27914ff3aca7cf5', 0, '2022-10-11 15:19:03'),
('32782a4a8d754ca864228a45a6b2f82f24d2fd698ba846a4658f739a355c2e3d1187e156967e318a', 'cd6bc34420a5dc78a56153d8ea55063c8ce00a8558921e120930fed427f8b74ff7b1b5ee6a90ee4f', 0, '2022-10-05 19:33:56'),
('328b7a140b7d6d2a891f97a1ddb0f3b526177b80fcd5324d400cbf654b4ea89309788b47e1dc7976', '6c514b2fe830bed1a1bfe15f29eb83ce526fa85d2f69ea312a5058612dc7ca59276493463cd8377f', 0, '2022-11-02 00:40:34'),
('3291f5d938378c3385bc399ee743aee6553d257d371eb67124cae6e1a153c2da21002895ecdb3c03', '7cf24b06da87696cde0a4355e61001dfb6f816981931c5d04636c12c30c253c89682f0e397fde3c9', 0, '2022-10-28 12:44:44'),
('32e89c22b7894608b93ac103fcc44adff96098005a6c367ab5b222af4e9d333f282034aeef26622e', 'a774863128bd683bc764b4c2652525793ab72c42b1cbdf1b668383e0383e40cd9fd1f8333ef93124', 0, '2023-03-30 20:50:41'),
('333042959bfcc03caa9b9fbe415020f4b23625e54595ab53d48b644b83f443409955558f79a3efbf', '9766105921f893964a80534064bfd73e1ba1f9f873cb2711f00b1fb53baebbb2ba3f1233c9309c3b', 0, '2023-01-28 12:14:48'),
('336abd3d798d22a599147c8739ac8f06c178cc5739d15ec0229c9b812fbc203293b466ba3b1e06c5', '55a493e4a9acc76c6a05429ae76690bc3a7708dac91670b13705600d28c897f931a32764a1242def', 0, '2022-10-12 21:53:30'),
('33777f043a453a10631117cf2fa6dc4133761e10123ab409a38704bd61f5ae462b8f2c243ddb1317', 'fc8701eadddce960cd8e6d48e254ff5e5c95c1a16fb600dbc5f2546dec96dcb56f521e121f7e81bd', 0, '2023-04-01 00:24:47'),
('33ef108477b9a6337b29d955419cd79d4bb2f52780db9be61471cbcc921bb9538c252254801a2dc2', 'f90a2b99c40599de6ddc215b1f375bc5e71a5f56899684ad7a3b1dd5d6798ae7793fd76db914b989', 0, '2022-11-02 00:41:11'),
('344b6f1ce13e85aae4e3ceaff96d426742f40df9c26f5e1f1f1c7a8bfba75c9630129548d14b0858', '1ad0dc56681d79a17f24e475079885f15bc296867805338a93a83d250f1dfd2a689475ec378710b1', 0, '2023-02-21 12:04:45'),
('3481f343aa1bbbeaa11bf319949318e98b139cecee9b5d75e2a4bfd77d697984e2858f7cdedf933b', 'f1a183007926c3b7927524295b537e41fec0addde330d75ebb2232f79b2119fead9aa6b050ee2971', 0, '2022-11-03 16:01:04'),
('351402608cce7169f21bfc9ebf56f557eaf0d10d8b2fbbfba10cd18b8b83924cfbd0ed5e2861f367', '2dbc31cb2db45804a17877ba3f62001759e373313234f19f184e3b4582c338f2de17f311a56e56fa', 0, '2022-11-02 00:40:51'),
('351e19c8e02f98b9df23f4a0cf45796feaf4578097a56c7bbb21eea183774fd0156dac5de168156b', '80461527d231ceeb71084778d5a0b431735cc4ff78df7428218848f58fd3ac80974404d986fc3e03', 0, '2022-10-06 15:18:41'),
('352b87401ea3a5a35e62875866c04c15e667615f5a3bde08985e53d14f53dd4e07abaec8961283b0', 'a14db13278d52949e915df5052184e5585327242d99b70b7bc2c454d294eea8517e2e7b3926d500d', 0, '2023-03-04 21:49:44'),
('353a8c77bf512bf0a02f5e1e21a2034bd8b59d51b3c2bae7161b7f0f172dd9a65b486b09de13e085', 'd002834926236260d69c8344fe12c9ef5f1c0c8e6a3034fa610f9fbfe11a35ad30ee7bc102eb628a', 0, '2023-04-01 19:20:45'),
('35fce584917661b67bb0198792005a4a60c5d91ac1e8bd763596e0cad54f3b7726497ea7988e666c', '6ab4491a5cd65ff69c4f08f2c2fb0531a95b738856765ad4b26c0440f666ffbc7cc0c58475490b50', 0, '2023-01-28 14:48:04'),
('35ff6efc443310a99daebaae2ac35cc67693f0ecd5ad6b2f189d966f6d4014d5e96c46705b7dbb80', '1618c159cc5d9e1071992145efca6588c81ec3644d07b122ed1197f7d7d174ce89400e0265992dd9', 0, '2022-10-29 19:59:01'),
('361c7ed21dba4766320701ea3aec91e4844f803d28e5f7cf2155015476d366b6995c892dae0aa712', '79a72ebf04e3f027da3a40de0d52dcf6f8b885b08ebd9e0d585bdf927f418e1cec7aef71a2ef8132', 0, '2022-10-07 22:23:35'),
('36504cf1880ca69dfc3c2ae41709831e641567e23f2d1d2379867a7fd24dc0aaba054c9e6d55bfc5', '633990a0bb4914e10d0406493efae3ff264545de66bfc4789723cbc1d80da61d2dc3ac6ff67676cf', 0, '2023-07-25 20:47:16'),
('36b1ac50ef3e83213b03835bd4d99a76bbc700c010a0351c096458a237c695660310790564e26b19', '0741948bbcf8ef2e5b806cfd2f6dc3c2be665f83f70f514777e500a7e0fb919e8f650f66eb791790', 0, '2023-02-21 19:39:09'),
('36ef59cdf390926323c6732131a9bdef0ce2f85f5c66ddfe1a8fe67427811b7480a0d8052735732f', '23a9b58cf97a09f45a24cf5ed991e8734b5f65ed4f6cdd43cb07e04137775aee4c84d282cb00fbc9', 0, '2022-11-02 00:39:51'),
('374a5cf4b34d1009ef098d6da8413465e6c0d53f61100ce365025fbd79432508d0117c985ec9edd8', '1d697084cbe7c02d66c40949a4220388ef4333e8d909e197181ce0bac0e4ffa3acd4a85339069da4', 0, '2023-02-23 14:56:48'),
('374ed118c493d16e4033eb059b5741cebf9f3c11dd49848b2e6bdd3cbcb880c2e54ef4a4e7cb4edb', 'e066cca5d07a6d9bf7c31b41e4a74567d0d8dbb5895f67dcd2f60c99fb562c3f455fbde4e227094c', 0, '2023-02-28 13:49:26'),
('37697b611c2440cd6f7cfe303b99b986660c2b20633b48e57fb3c9c78ec43c6c75bd7dc451e2c76b', '895b5de4322df613d32869d50a890fc56bbdd2af0599eb9f5b948a6640bdf89815aa41a80267ea46', 0, '2022-11-02 00:36:25'),
('37e00360c848217d09b8cccc7e72b08367c7468abce32789726812f642f9ae9b61cd1df5c6025ea2', '8809a33735f12b98f8d6422daa7ff2e0c763ec51951dc6582096139835e24e3df1b175d8d929bea5', 0, '2022-11-02 00:41:26'),
('3800e7e1b547c8491c31e7294000afd17b574e262328bfc0a8f2a2242e82ca3a5f0f57a921e7dc67', 'cfdb5f39c933d7bfa6bc7215fd4f3890cea6edb72692cab767eb5f77ed917596c0bf21a4ab5c5959', 0, '2022-11-10 17:44:02'),
('38d55dc1ddc310656495d1729e547fa19126c824cf5f1ede9293a2bc4e698bf3be0aa6039e0e11cf', '4c386acdf576774a4c3fd8619c38f7c1e78a5edefcd70d3abd5b34b334ea0159a38680ec5e54ca5d', 0, '2022-11-02 00:39:30'),
('390508361f3fc218c08763aacb3b86b42996b612d615ef37436665dcf1885a1ff143eac9974f7c5b', '66761cd0530706754742db0450c1786bc27055b115db72001d6dcde3306b3cd41439802d892e213c', 0, '2023-03-31 19:22:02'),
('393176e212640a346a29695a2dfebd38c1ca8313f975215b224163336a590bdf7d2c37faeec922e5', 'a889cb4d2af805885ac0bd6b9b26531d8b45622cc0dc3c973a5242f3336660cf8de581b8f2bc7aa1', 0, '2023-03-28 22:16:43'),
('39783178d464d0d1a0523a98a1a896f3550f7720b862a134e758e76c038375499d6b0ad1985ab729', 'f5b3c9b937a40848effbe2d38859d431a66bf06ba6300adc4406af15d6da0606946c8dbe1d530f01', 0, '2022-11-23 20:22:03'),
('398db912726a91c31d5ef4168b48071bd06b1275a38cda83f94285ec943f384c6a30b52673e08187', 'a9e7bc56699bb20718a7f78c8339d3c1656c799f0872b54cc06953ff1c5102f46cf64c0f27e9d20a', 0, '2022-10-05 18:00:04'),
('3a03522531a55152fbcafabc24a4112aa2b39c0a4e5641d25e6d6f0bf8201849d94ec524841d0c88', '2172c231b2c58a9e1f99932b3b1a392553fd199c145b738854b13f69ee981a52cc14ca42ee850e28', 0, '2023-02-08 15:35:56'),
('3a28d8d295a2be18726f2905c9a1153921fd593c230166f62b43db6545732ece2a5aba274a3e47c5', '18a5e8650bd1cbe63317484287772e1d4d223a032f70e801b273aeba5187b05c5baf0138863ad244', 0, '2022-11-15 21:07:08'),
('3bafbb26afd4987c1148087da163f4d4ba0c7177540c43525b08af74ced4e5531903e29c62e320b4', 'd3562c2e01baf510be3fc30e6846b1bd35a7f432bdcf157d4c7ef9699746019683e86ec5375f430a', 0, '2022-11-09 18:48:24'),
('3c06b001efb4d65a372205290cef01d3c07b4320cc108ba8d40527a77aa684cb48c373a109f0a12e', 'bed034a2798656b8c42df3a0d475890479522a1a5011b9ca3b4c359805f89e87a4e5c860dd77b3eb', 0, '2022-11-17 00:35:22'),
('3c50dc4185d2e7287cf2ceef169d4b09f9a642d50137e0080facd121676f09731aed4174ec54fbbd', 'bdd924af76e4194ffaa88a667aea95968061fbd92846d0ba86de32248289936c49ce08aaa75d7e5a', 0, '2022-11-02 00:40:36'),
('3cb56f619feed650d4b8e3210762f3d9056d8263cea9f9bad4958dca3e7f5d8bdbd9ceb834007a14', 'bf2b8764d04718b9547469a414ed0ea21d470bbdd1baba32a7d5daccb80bf1f99e0b9ee1ae029550', 0, '2022-11-02 00:39:41'),
('3d499a56e18d3f0092c24b61992fb38cf985afbe05ed50ed775eb0d6f91fa665d0fd049b945cf89c', 'fd0277c18283ad931ff88011115c1991ec3371a09715bc1d73b9e1e7e92547508e390400bb680cb6', 0, '2023-03-30 19:58:06'),
('3d73317680dc2058e0872c64d5a742cad19198eed8e00f2ecd5ae8d21ac977fbd095bfef618ee5da', '5fb527fc67aae0af7926d245be4c0b40fcfe1de53c0f1918d73c55d54db25bb7eb5169ff587de2c9', 0, '2023-02-01 17:05:39'),
('3d80a2d13b59ede5a6b5eed1359f8abdbe3720b8a94bfae3fbcee119ca9808d097a8ecc216c19cca', '00aa0ec3586da3d47bb29ce91646773408220c097fbf940f8d321ce2faf6fb53fad29f8eb3565bff', 0, '2022-12-03 21:06:12'),
('3e69aa4e679e303bf85ae24bfa5ee8c57515dcb2fbaac09809aaca69c9f6c35ae79b5388ff45d872', '0bb5b2ec2323a9f30724d323878ad096df78ae7994ab1bbdd5009c9268806f53997f5943e220310f', 0, '2022-11-02 00:38:35'),
('3ff5fb931a9512b37c051747163f6a76a61cb25a6dd9f47982fd0b667afd832a33406e11fe3fa440', '8609ad9cccf9f75c183ee16bc85104c033caced0e00d3635629a4dea6d2796dbc4d000c908a8fba1', 0, '2022-10-29 13:53:08'),
('402aa5a8689258c71f6fa124754b59fed6786d17c3bfcfd91a45e3aca097d2a9fe34524107f69db2', '5fa8be372bece20f6531ee288382c6b608b622e42fd1148bc8ab7b465969fe485a12211715b4873b', 0, '2023-02-08 14:57:00'),
('402d282c7c52d293450a8d28fa624783e4718a881f856d1a039b81dfe4c613c4519f68bf28614ecb', 'f13baa57e10a28e6310f94ed8bb9c349793a411f0dabf6948938d0a8c940059fe1394e679b46db4b', 0, '2022-11-02 00:40:27'),
('405aca9fb986839baacb0dbd0d59ba265f51c8014fca3b8c11c75edbdcc12f185ef459791424585a', '4d3d82a18427794783924cb849bd644a75b30a37a07a4624177b4f7d52e2608eaf50481a8a243ae9', 0, '2023-02-25 20:08:07'),
('40711e72257d45a42522f8611622d95fc762216808444b910084f4b50a48e8e0ec1dbae86b035cff', '416ac468714b57ab00a23767eac910edd1e5790ed4392443c6011d5eba11bae831f6ab85ccf03025', 0, '2022-11-02 00:39:41'),
('40d4a967c070fc8861d87b329ec4b8bf5a20b09b207caf8d2db242158299d058499156f2359ca70e', 'bc6868a1b061adf891c0a4b6a91b811a7348cc15cd179775f3bfbaa5fe04987f9797b9b2353cf3c3', 0, '2023-03-30 21:58:01'),
('417e25d31b2eaf24508248910779d7347a01895f0426c91702db720557b093575ad18044d8ad1e48', '3e9c85098a89ac09c6ef5a545d3939d9693783cd75ffc6c58367d5d3d23ffede5194dc48698793a2', 0, '2022-10-29 13:55:08'),
('41d5d88c5e004cca4f92ee885e23f747ece409fe49e3db12f56c24d620563872169bc4f33ccd4faa', '5d8a69c1473eddc79aad65f004c854a11528d62ba5ab4f27dd39f4065f049310b5a06060ae81b736', 0, '2023-02-18 14:41:43'),
('4224aeb0242e41dbef10205257342436cf714b67a51bb6aaa9f793b94d7a310f4730036ad071eba3', '9708d68862f722a967565a93ac76f91a51be1d90607102b9358b9f8de31c2c08bc30ca64df2bfc06', 0, '2023-02-22 21:58:20'),
('422fc0f5b8b2b01207911c18f03907bf7ee35a24e18c995cf2f70aaa2b6eea474c8b701a4379f16a', '67b810f42b8e6feb28e4f1177fcd92afd9742c79b2042a82adabaaf5c167d42bd1292657c93cdeb9', 0, '2023-03-31 18:14:44'),
('42f6358b4f323360a2e121f856d1d70058428c8a5c11bc9f6f12d79a0b012fb8a7be90d7f8d1ea50', '5ef81789e701a72ae6f12694add8fe5819725f7be1c2bb3bbb595b6034af8c51f6e1bce2457c939f', 0, '2023-02-21 15:02:46'),
('4324bcc4235bf5230d5ae4eddba8424b4ffa438c84dcbda135a09fb247f87e04e8ea9aa7ef438da8', 'bf6648ae8b4cbfdd13fdbfdd85449ed1ab107213631f10b8074b1340b2651310414fcd711dfe732d', 0, '2022-11-02 00:41:12'),
('4326883224e87426783d6c95a820098076044a06af8bd443491b44192d18f3f37c214e8baa82d5aa', '6b9e8baee2b71dce5f362a5e8ab48c5a250d0faf569cbd28f814da0d6018e03d3ec6e75a97bb0ed6', 0, '2023-03-30 20:53:00'),
('4360796b3fc8c40f2bbce53aa5d7ffcc7441aa186a7593951417a700217c3c9ae6e13fb09df0d962', '54980634db8b23b1e7cebd52dcf0f45c2b88166a3a13784ff68a48551a514c90f92348de2c2019f6', 0, '2023-07-23 15:50:11'),
('44611af53c886dec37881ceeced744638f3b8fcbc0f48c5b900b7a6133f2711003e6e90b249103ee', '03bf4279e82f2a8c676f5956854081ea589ca68cd592d2f7637c32f1976e2deaf5f320ab0781b427', 0, '2023-04-01 13:47:30'),
('4469112860a58e84d22abe8b96d2d13034b67a75f3d466bb47244750132fc2977d403ca2aa5eabaf', 'bbc2a8147829a0bb9750bf545473e9e5ffdfaa806dfd7fe85a58127506072120b84565cae799dbcd', 0, '2023-02-10 14:14:58'),
('446a48baacb0b6c09bcf6d445e84616a6c8f67e7d3ee39bffed02fda88990da85d719c55274d9673', '32bbe02564d89e1184df6476b8eafeda8904058ab8aa119cc27ad61f5daffab2d7b66e00ac7a0082', 0, '2023-02-10 21:50:37'),
('44ff087f7829e54c902541b0cd1417f3c7095179c8bf0854f7c555400b33dd01fff9924c7ebbe88a', 'caf282c36210e16b8a37436379626690fdaa090a2e1ce467540a782472bdffcd4608f60919ad5094', 0, '2023-02-08 19:28:07'),
('453d958623fa59f0ed348b2e81a539618b177849a7b786557c39a2bce43ed37aec6cfe3100d7810b', 'f8da4b035cae8f6dc27c42b31160d09824729f563d50f4de2e879e8b5e1484dc81515904b2b48276', 0, '2023-02-03 02:26:50'),
('463c2ec7eb56f8c8f09cde7d8e652d2b0bf99bedd99f1f589963e1dbb767c58b93a6e84002e37b81', '1000254637fa7ecd3fb8dabc3f23f699a837f1d0c5aafb409aab1a2354b5179cc2aa8db7ae0c7321', 0, '2023-03-08 18:32:33'),
('46de8039a853eddefcbc571a446e49719032468e6b3ce931db9c61189f03f36cafb971bfba7e97f1', '65325e1b711a3e9ce997427d0c448bde2a1f14cd4e0d87d53889eaaf16da20a4922fca1ddfebbd4d', 0, '2022-11-11 18:11:17'),
('475c8e2e0fb074adb5acf582dd7061e1ece5e0ccbaf9ae34aa49fd3e7d3898383c12832d3bda023b', 'eea909c90e692a787c9e6583b963b184939da6d6eb16eb43110329a4b117c1d206fc07c95f0b923f', 0, '2022-11-01 16:09:00'),
('47c2d44327128f80c9f8d33a12036fd1be8dd5166ee10cbdc2b465571201342bd55a995f12731129', 'be19a1c43660a5ab9dfac5deb12243aa43fa351e23b558f6b91cba636dfae717e480748e78cd1f3e', 0, '2022-10-06 15:27:41'),
('482c39ac2b4583373a126d365f37cba1deca675f0578b480b043b8638abed33f28ec99c0764b0b1a', 'acfe51a524c2efb519ecaa04fb75b65f14fe860787453e15639da371e8e6feb63549f3435c2a3d06', 0, '2023-02-15 20:52:22'),
('48be20a2147074a66278f80294e239abec55fe03c0e7af90b59d71491ed4748be6365c58c6dbd47c', '2c5322ef04c9862b729622adf66b725ce60985418f3bfead1752b61632b97dfc9f0583331e8ba04c', 0, '2022-10-02 01:18:57'),
('48ca9185db6d127f9b3aa19b90fc86d968a3d49ced7b0624e277ff580c6ab700baa12eb7336a1c54', '04137e17787dd3f607ddf3c3df2903f237fa831ae5bf68c0f942698e9c38bc8e4dbdc4d715d68804', 0, '2022-12-03 20:38:43'),
('4954af54b5cb629954f16c90f8c23d61c21800fac867fa3ba45ffbc6ec3eba1481044deb2575314c', '7f945d6144e384ec6f7b76729098dfb0e90598bfad6320f77dbd4ff56f0b5d68aaf7a84bddbf18fa', 0, '2023-03-07 14:35:23'),
('49753e64d01936b8b92100b5ee19a9f7353184772596409b9493cde10cc4ec13fd089143f7316564', '5d0ba186fd337ca9cad5029e427b7e8ab2670b69518e8a30a01249d9c61cd07d84b00a3b772560bf', 0, '2023-03-14 19:08:17'),
('49ade0dea7e2498f668cf7f78950828280c223977b96c44103e9c5a47407a9e3e116095602176183', '541604afca747bac2800d8036c40fd0e9f3972e4886e89a66fee2207bbd0a4c46b019b3a44a41fdd', 0, '2023-03-28 22:05:31'),
('4a04015a8f1c221f6e33ef30b9845772ec3eb030788286638fbada539618b970667baedf81e702f0', '7c66e7020ee9d8fd1cfbb0a0fd9d06d3ea3ba269b51894d53bcdc982ac1a1577a11f7009a64c0d07', 0, '2023-02-01 16:21:10'),
('4a0d8f096c011d5f699e2b2dfcbee2c1fb31ee88144e8d3f96092e54fa39d3ccc77a1bc5cc600e82', '0c4bd94c9771400db076084d58f6c93e4d3b13ecfadd4fd186db2afd5cebd88b30bd09bfeb4c8f7d', 0, '2023-02-03 23:28:24'),
('4a208ace1593d2afd651040e0ea6ca0d607f008fa92d87cfaff106617efa8c1071047660c1b24380', '72c8a30837b366463d512b4446c2f4d4212b5578d1831fe18c730561e39fafce9aa37ff15140d27c', 0, '2022-11-02 00:40:40'),
('4a59d5b089ca8fa68212f5a08c6cd72efae98bea4d511604900cb725ca31d9091ed4ec732372c808', 'c6e2c5adcb275a7964559daedde78b7fb78e47204474cbec44d921afee36eb45a508fb6638ba9162', 0, '2023-03-04 23:03:09'),
('4a7a984bd73458f8b8760a02a7996a1eaf512ea6636b52cd19d89ca4f07f5e49af74ba9d4647098d', '206c508fdc8d13036e1d7199069a37b8cceec51ecc50eeb40d27875e947e50928475fae92b3ddcba', 0, '2022-10-29 13:14:05'),
('4a7d80a8553c7689ca87212d8c82e4eb72b70f0a0c8c387a76b88630e50f7895fbe8fc637235eea3', '826f010326b23b6b6b45a6bf30f91dc35f061f392c93b84a5ed588d1854e34c8748c356d8addcadc', 0, '2022-11-02 00:39:52'),
('4aa4a73cffd4f8182408ed9146b55f046f5aef8c2e926c45cfbce373cc23c7f728aa7ee178d42e9a', 'a0f9cb7b666d4ddb6ffc6a300a260d39560ee97784f0599a9900d3181aabec5559ba723f5f06c185', 0, '2023-03-28 22:04:32'),
('4afe87adc546e8e63b9fe670d452d99c73e5e301875cc4ccbdf688fee8c7d626f074802613920eed', '86afe2a36308390f2062d702b5083af5ebe7124be2ed70b367db4fdeb5c3d9bf71b95a3caeb86506', 0, '2022-10-18 18:57:02'),
('4b1edf933cd4b0d8e32626c42c9d7b5c931aa4d1ac2b31953dd7b9ef485b5de8b1518f901b22620b', '7844ad61f6e3a0d648c289cfcabbd755ab8ff8c444bdb76a969c982a926a31bccc4d1f3f11931374', 0, '2023-07-24 00:36:48'),
('4b7325fc1613810a61552069579c9af68411187ac49860881dc7cbd2ff9b097afc96dd952ea42d05', '7c5038cb17113b3a712c23a2ffcb48f7e41a03438fd277fe7e4aad04ea07fdfc9173d8100f749521', 0, '2022-11-02 00:39:26'),
('4bc115dbc118a6abc7fab91fba83b26e8d6b6b9c6da8d71e1753da3fb8410d4e3fe05d70ebd6739a', '94d2ad34c6e358a2ecf1410570ee7e9449e55d1638cf285fc777df5d2687952771778445513f4046', 0, '2023-03-12 16:19:31'),
('4bede3d049a15b799e89abce3a0cc24375dea1db95c3f0fa607b8ae7576cd7b1488d152990218524', '2d492b46ba42c23951ca9b96a7d4d10ec7e9cabaa41c25e659909d5b60c78f4c30701ddaf1b97c22', 0, '2022-11-02 00:41:23'),
('4c7cab56f65566291da27f5499ffbe6eb38d3d1d78e7dea879cd6f28417c47bf6dfbf321592c0778', '0611439dd0357794040e9ab04cd696f50d962924d4e75e6f0c6eccbd1176f50c9a331d6c0d686a2b', 0, '2023-03-14 19:08:18'),
('4c9e1fcc8d01f2182bdce0cd49f04c3cb7e7d66a74333146f6de91bdb65c9521894320c0676338d6', 'c7dadef4df5823a190f4b3b2c2c8357857de4b8dca3ee640b093cc7edc6be60e43dffec99f066c4f', 0, '2023-07-25 20:43:51'),
('4cb863759139058a459c39a6922f3d05323ab6d8881efc49c50a3d3da5c99e598c99afbdff088593', 'c716ee829eb3993e455932f94c607298288cb4f2cf69971fbae80b11707da321e0544805947bf08f', 0, '2022-10-11 18:03:23'),
('4d61780ebb468a8731b7733e7716be1fa3e6e2506dbbec39a8c9216b1a141233265d6404aeaa639f', '2048ea66fb4cb06645f9e079e01aef588bf8b507326efca7a98320b85a93e56ddc4411d626d16508', 0, '2022-10-29 18:38:45'),
('4de0d26797788d00d1da059e8eeec7660d2b2a6cf400d7492785c3febb76788ad10dbefbc477d613', '6e2c1529d4e6c64473c52d46608c66419a76aaaffddc62cea9a1400d1e89596c07c8ccf0bbf3fc94', 0, '2023-02-21 16:29:41'),
('4e5eca8b956cdd3131015ff87ad2561db9b4910a0939c068e5672f063320bf43ebbb7f7d9691b051', '7debf5a39bcd694603b4a3ec3936a9b0d910770cf763cd7895d6d69d311b512ae1172b5f5ab980fa', 0, '2023-02-09 20:50:10'),
('4ec64b5fb1c625f84c85ede69bcf99eeb89f6d9904a8da2eb10b5c0b6aa498d0dae2314cbcc0fa98', 'deb9ad8bdc62e503f0cf75d610b07ef8371a5449242c919c3a41b12fb94de77b3b176e830c506f35', 0, '2022-11-16 20:01:48'),
('4f4499fd5cd61870c440bd714c621e1631f9618ef7c18ec72bbcc78ef0eaac2f3f21cd8b32613607', '0d52c47ca7ac14882092c7315d531a5a95605b39fbb563a17003131c4712c44bb49f3861ed11321d', 0, '2022-10-18 17:37:32'),
('4f6766732b256a37a76a846c493465dcd4ed1d63d550d8c2a5f05a7d81414f2b078f59a8c161bd99', '4f0398f9fd7131b02e709e3d2e306b83a5ce86401b0b4e4d9e879c2d785a53feb02545d0e9b2f95c', 0, '2023-02-17 18:44:32'),
('4f8d37a3f70cb4de2eda406b68d0c3102af39422a764e697418c6673a3cadcf1c5930a6aae1cb075', 'c9f96414fb973cb8b65233134d025dc60844d3e28b75e2bec61227c1c6de23de507b031651ba416d', 0, '2023-03-06 19:23:10'),
('4fc2caf211df22462b35ea5dd0790f04fc6a9c72de5daaa01f02c561d8d4f7666cbaacc849893428', '4c60d1cc8ee1c9944ec81408e242ec0c2cb4719630e1345ca39c69162438a05e842aaef43fe54fba', 0, '2022-11-11 18:07:46'),
('4ffe86f1b4e930f3ab0fd6aedfe81dd634b7b6fc488f04b53fdc0ac185155822f6f6bd5bcc2d1e37', '1768ba60d7ae88544b23594d9599c67017ac6382bbab29f959792bddde12a1be8bfa1a53ec0b981b', 0, '2023-02-18 16:32:58'),
('502591564b01d674e5f1f0b9a428457a774244ced5b895df49b773bd12c3583b614a8098e3898a84', '136146889e2551ee106a86aa9491fc43bce5139b33561cd49e33209b494d03f80e9e486853b1d086', 0, '2023-02-23 14:35:16'),
('5086215006b9878e78332e7892c9db09d504edddef1a3e2c249c45b022d55db4dc5908bb9d5f29af', '80d66c79f8268aae0acd2e99546b0f981b57f7118b61c4508a9982a778578a9a5b6f8bd4d1fc4df3', 0, '2022-11-18 21:24:13'),
('509567969e8fc32561cafff6b4c511f2071bdf696bbebc91f6d4230e52269057517d801e8be15f89', 'b521198c3bcdafca939fa579ff3e6c90e3332cc50f506bb00566ee2e1a100e27ea7e39aacaecf661', 0, '2022-10-05 17:52:00'),
('50a6a3f49a609d7646b22445a8c17df574b640285755880b1bdbccd7bfe013d41c14d0a0238703bf', 'f410ca830a87caf1ccd8473ea8539a9f19c81d5ccb89b8cea2446d4f206f84fcdecb49ae14d471a1', 0, '2022-10-07 16:49:56'),
('510084b2464935fb99bcbf0479cb9674f2bf8694ffe6d827bb351becfd55b40ba0ad9096f2473ede', '659289535051d771cecfc88ba0fa7007fd801bb9e31b2bd68912a8a8f752ada5f4b1197a34c4f5c6', 0, '2023-02-26 03:46:39'),
('51377fde131ad5ac45a29514cd6ff4b12e9771bcd6698c4101c0869d19140aaba5f6b51a2419c585', '50046779c7a61ff2a7ba6ef3e5496247eae3c67ac47696dcf1920c7d9a8103fbeaa3e5aaa5368bc2', 0, '2022-10-07 14:57:37'),
('5155a89309ee024c16eea3f6d25664d09f3df1ed6dd0f23ec463a0f0522006ac33786ce0bb3fa68a', 'b0d9dc852dfc9c4655fff6cf9d92ed029a12e5cba2c901685403e7f3480f280da6eb0528bfee4d2a', 0, '2022-10-29 19:32:20'),
('51b5d902373f9372fcd7a53191151c3eb05670ced0da79065d7eb6b937103fc91eb84ab4b64e2e54', '1a7b90cc487e244d7aba233c52f651760a77384c7527ea55bfe8cae76fdf4ac000be62ae3f00a11c', 0, '2022-11-02 00:36:54'),
('51fe3f9b4b5b9876abf3362ace59cb1a5fd0b409b5b00b578ca9f3985b7b9ee0be868e5eade17fba', 'ac85de2519c7890c50f20e90c4f664323da9972d784a9f17d25e00ad3ebbc3fc968251bba997dabe', 0, '2022-11-02 00:40:25'),
('5238cfe95ddcb6c0ee82593a1ee484b3e683a313d0b1327b74ae3f91903f20192db14550da8cc4e2', 'bd90380ce0ee141ac95eb8200aad3fa0b908ee078923efed1705e9f98ad1c69df82c60abc8cadf8c', 0, '2022-11-02 00:38:32'),
('528715aa458b6c48392351f28b8880bfad28cc65bfae06b91d9edf9e490809db376ce4e6fb35da55', '4faa00750382d5269cc55b9376a5873c9a64d0f19960acd823f6b26a8a75f293c8e442373441d4ef', 0, '2022-11-16 15:05:19'),
('5297ab17277278b0c51d4fdf6e8ab0f0dbe5dab5da51c91cf21e232874c7b9f7235014dadcd26277', 'c81afd560b7d3fbeb112ff333d95194977580232e16df43cf321d809fc9869e19617e29d59891f9f', 0, '2022-10-29 14:52:38'),
('52eaf3fbc60c3d98d146d8891d27de5bba9374e8bf1037828b5d7ac6dfe1c99b915a250b60d584b1', 'fcd3429f29e95ddcbe575be5129859b6f9cc7c80129ef6366e356b089a253a2babf348563d1cacb4', 0, '2022-11-02 00:40:26'),
('53e3f270212cd37b1d5b99defd0feeece2c750d65b2debba402c9ff5f699b08e7393f4a65993e371', '83089fe0c32f710b4e71d22921ad4df3ba835a144f04637bf3b1e34c87edbaae389705bbbc1ce210', 0, '2023-03-31 15:15:10'),
('54bd1fd6ea69128fac72824061b6078799578e9fa13133d2a589a0861bc650709ddd00e9334e8985', '17e5e232fb24896fd55e66607318751267752c9e2be3b40c302d21ee9f5080e17b1f60b52dd558e1', 0, '2022-11-17 14:01:59'),
('54c31f99fb6885487293d1e0834708f1e72719eaff8f48e81cb9ad060dd6c21e2071469f7c81c888', '033956ebaa94bb66a65a3bca9c5b267e2102dace3e3b0b81eac8341acb2508850ede15d41d9bb442', 0, '2022-10-29 14:52:54'),
('56404165c482232db64d0e375b69fce72aba4dada277663acd6ca763fb942bfba095fd0298bc30e8', '8f8516dc287e8228b45bf37fe270e74ad8f1c8b058ea8eba9c3c736bdce40d634f01b0a0730eced4', 0, '2023-02-18 13:48:36'),
('5662b794b475e7783b2c3154794b4d371a27957f5d0345b04fcfb9c06812abeb3140a38d0dae46f1', '4c4727213dad157d1305a9aa3b2861655e252aa05ef3b5993cec2b106a7752c92b2f1d87f0e88979', 0, '2023-02-01 16:16:52'),
('566db2ffd41694bb870ecfb3ac4db9353769d17e3d1f21533e48dcf1a85a9ab6d7084fd06999b3a0', 'bcee79cf895bed0a3a1b185895c91fa521201f843a35db80d7cc91c48fe214a75a290a28188f2be1', 0, '2022-11-02 00:41:10'),
('568fb665316dff352002ebe52fa89459bcaa0daa86ddf91b407253c9072d28505e4ed8e3c759a781', 'd9d7009f42f457837dcf05eef2bef51bdc60b7ccc52b6c7a8e33c77e5669990902412a60b37c3dfe', 0, '2022-10-13 15:10:31'),
('56d94320e14e94e11429b1d023de14a2303f3ddcbc6f228f83521435a81ba828c194f5e6eecd6cac', '9cbf2715538e46c2e1a2b04926375490a3faebe12085b2246d03559b47ade7f1173503bddbe50018', 0, '2022-11-02 00:39:48'),
('56f9a435dd382e7715d186e92fbecbe9adb9933b3a901af8a829784d5b5c14593b0aaf4072d15de4', 'e210f6c3e7959807d443202c6b6a0e43c175dcbaba129f93964e753827934f33299d75c0e6d8868a', 0, '2023-02-15 20:28:48'),
('572089238d2c279e83ad526bc7772d9fd81e475685e0ffd314c2ec59db92cc34b7a75efd362d0b0e', '09538860bee0c03e5335dfffa3013379287cb8428374957b9a26de7ea3d1e60f52da7f7e1cc2da6d', 0, '2023-03-04 14:00:04'),
('577d9c152adc5d30feae6b47aff2c30d8e62284e0f84a2ec35c7fecdcb1614d41e1823233633c45e', '33f7451526e37cbbd4ef3113486d90981c807a0a1903076fa29c708f01abbc2f1d1603065b7480ee', 0, '2022-11-02 23:33:26'),
('57a767607f9a3f1440f3eb20d001dd2a86a68b6d5077a622a55dc14afc68a17ae8459070bd1e34e6', '50d298748ad3488adf9930227d1a9d68c7285fd04c9c3d4804d20cb1d4fd26c95b418f67a3c32ebf', 0, '2022-10-06 18:47:16'),
('57e431f2232f2ed0617b32d6692488a3a0a7dd0e5987eb8325e23bbfbdc3e374636b7b64ec4669db', '7f60d191a04c753d623ce7d8ee8d853c75e051c04125624ae5d7f4e524efad18f0dcad635659e9d0', 0, '2022-10-13 15:03:24');
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('58456c0b3703cf8a75185a279973fa89c4358cbf73fec0633c2ba362ad9aeb17a9da6f1417380f23', 'dd8cca9cc5830c4b6fca477893fe0fbd612fea6119c92c305365d1d170564e13d1d9e8d6f06a1ba5', 0, '2022-10-05 18:42:15'),
('585d73107ac33c29281c8a282b24dd4ef700679270049f4931ff3616dd8a7418c5dbf1dd4f382ed2', '7e98b71c49c60b557c20598247f51649c6331c9e00e88cd853dda6e7db1028df63dc1f859a6bfc6a', 0, '2022-11-15 21:27:47'),
('58908017d1e0a06beb16026010b9216d4506f5e1ef0b944db63a27b128488cd45cbcf66fb7b03192', '6581b7fdee5e49bd6c1a76470dd61dccc903e33246953f3ad5dde827399ef18aa8b153ed075e9caf', 0, '2023-03-28 22:19:04'),
('58de6eec9ade490c9b9a425506f6c745d604866a04e1156bc9fc4260a2c58d628ee6e32ec1cb9fb4', 'd57b99c704d58ff7418df78e9e388c6e95ab0b79f5308a1604ac68cc281a3dc978652c9801fb22fa', 0, '2023-03-30 16:07:08'),
('5a9dce24551a098bc0c9e9639b4abd579c0f71cd8289b7efa0bc1f5237caaf9c63863951a69951d3', 'c53e6f0fd721e453159187cac34d1183c1d559991f7cf1b47d58d90380f092dbf977116cb0c26454', 0, '2022-10-13 17:29:51'),
('5a9f9edeecb9eed7aea13bfbec172ece0920d545e3109b661f86babe755675e4119b2d763b7494a0', '933afb6c33dcb36448e7b7cddb6c6f1fa6ad623890f53dbefbd39c8494ffc7e332134533bc249df8', 0, '2022-10-18 13:21:48'),
('5abad40cd2a0ac3c572ea1d4e7df881899e7d94e6272501ff58a29d1f3395b0f46d6d9022fff711f', 'a5abbe346dccb63ac386cc5e31440c060f46fcf3004539d99ef565bf3c47d614f8bc4db9825defb1', 0, '2022-11-02 00:39:34'),
('5b26216bdbe819ed72d8b06edc9ed96bc72f0910d022413b8159389a457487ace6cc3414b8cc5fe1', 'b1fb0016efa9dc43989e230489091c061a6021f83a1b2184c1f2b5ab83e881790a55cdbf2c0a471b', 0, '2023-03-30 17:28:26'),
('5b77ad442dab5a0e67e361a0d3e2c0623a76b940cde81c13055a85bb55c66abde7afa6a01263c60c', '3cc086db593e0893a9e0770f2354b6dfdd4fa7947cf2688f82884abd05e8f479d38743e6042bcd6a', 0, '2023-02-08 15:06:10'),
('5bdc5898b644a9323e02768d1d69903407010cb033f610fcfbeaaf14e44b1a56c7c58aa4c05425a9', '2abfd7e3122b438b5c6e334e87492809d892f29973944cb5156d4ff8ad3bdcd69cc236c556fdfce4', 0, '2022-11-02 00:41:11'),
('5c414d4f9cc2570f6a457d109638f4f5e96fbafbaef50edda29e8982719345a2db53049bcadc5c9b', '2bb3dc54b8d13ab14e919f9a048ccc5f994ea97f30847f35c9db314fc5b0d0da03ada160a5f65afb', 0, '2023-02-02 23:45:22'),
('5c4a15f4c6836bb36b00fa653656683eeb07ba55eddc5776f7f5d291f1293f7e893673dd551fa3c2', '7fd685d14343e82a61fe5cf0bef97181335791a32ec6be4f4f0e328c282defbe2fb4cbed72d46773', 0, '2022-11-03 13:15:35'),
('5c4cfc05e50aa76067cc547d77c9b4ce6bb2c1f581de8775c6bbf21e86fb92ac41cc10fa75894c05', 'a9df1260c5fa3d8ad0f80e75cf8c227e81e24313da872bb5fb5d1768827bc8714c0933d882b4b092', 0, '2023-02-17 21:39:14'),
('5d1087533db53869c3d89d4e0077106b034c260fc4b5d1e972d1b5b508ec4f7b84e41e5256937c38', '7a2dcf1132ad10a5d350d4b694f1711f8871b73a03ca0448a3194128d34a4a4998da8fbcdd193373', 0, '2023-02-25 19:25:53'),
('5d20275cf2baa7f76c9510171a0e1c864b8603ada69842b962f4d2cc5b55bbef705e2b5fc106c440', 'a176ef2e4702ff296239867877a7d0321f076b23cda2bcedf13d0ad5600c6a8685b7d890e63f1882', 0, '2022-11-16 15:10:59'),
('5e0cdf8b5f01b51009acd59eb6e8ebfa71e70ab86dc29486c3cdcd95ba566f2d760e81ddced4dd53', 'f4961c2f262ac54171a34cb8bc561c37c251a26148688f88ba93a982528fd8de6166ac964ecb37ec', 0, '2023-05-06 12:55:06'),
('5e2fe4403a3f58297cb6a29898544c3b210f4561126627e9eb82e091691ba6c79e2ee393088bc8ea', '6578c28b4e750bf572ccd52392f4a7a4ce1acb23f3fa1c80dba71592df7e1c84dc7c0308d63b1fdd', 0, '2022-11-02 00:38:34'),
('5f97b39f7210460ec33fd89e45be5748fc3b76ddffb47bcb2cc60bf7adf5f92446822e07b15bd94e', '371ba8420e4299d6e8a09d869da1a820322ec7c2272da202f302afbb5d097db139990b5fa1a665ed', 0, '2022-12-15 21:22:56'),
('5fdbd2f1e8d76b4b02540299e979dd358e93fb2db9b85a06f38ca938d91a983f206b0c1478580601', '1e4a39dda126af52d29aa779f6c3e828dd673a8495ca233594bb2292fa9855657ca83bd478f419ed', 0, '2022-10-06 18:40:17'),
('60749f9163dff32667e7207e334d24c6dd12f91fa5768c3be68c3dbfc1476f80a80d8199c13f6445', '2ff18e7c0ec23f5779f160d9a110438bf6ec7dc77eb21605b8f9197e44d3ceb64566c2398fd8ee51', 0, '2022-10-05 15:43:57'),
('60bdf83242a5255c51f6aa0ea041242e1d285640a9830c424fea5fa4d837dbea454ae8dd95e4c488', '5f1e040f296f70a9e3b22878b7d25527939f625ad5420d0084ec22bc5ec61f67b9690cf2d234a8bf', 0, '2023-02-28 15:44:11'),
('611da150a9545febb8ef4228ba1caf65ca7de2b007fa8826c5ad01c0c333299f62cb3ba3e9546eeb', '355dd8ceb7f47a27c8d4d10b99f12cbea2265f2dba51a8577c0962dc3ead8ad9345c3763ee04fcb6', 0, '2022-11-02 00:41:12'),
('617a6b77b64e45410569bee28ce35219e91d36ffef2012682911add4bb4fe6a51748ce2764a373ca', 'e288fd2c4063ffa9df2763e21b5bf77b5206a9bcaff66637e675648998a776b2d577a643a886a28d', 0, '2023-02-07 18:25:19'),
('629dc7a9d2970e97adc0190ed6ff00e7a42144512740cd63388bbccefdf228ad44e67a13bf98ca02', '2ab0283c50c3f59852499e3155babf4433a5ec7dc702506ad21fa632d96aa61f978799f8f42b438e', 0, '2023-07-21 17:20:16'),
('635a0369cea1f687fad961f48dc455aa04d804aa2688436837240ebd02e81d7b4da2fd337bfa9ab6', '102ce777631a1901ca3b63a39657fbc0bd812e62690d09b7e7d2b6c40af153293e0bcfa1cb3aabee', 0, '2023-03-30 17:25:27'),
('639a908ffb42e3647c7827354aa3c70cc6cdd3860ec9081b9f26e0aaec590e1be79b7e9436db3d14', '86f43cc41047968e98ae282bba12743fa4dfff37e813af038decbd36f0649adf6af5993036029fd8', 0, '2022-11-25 18:11:56'),
('63a8a9125eb411c92119785a24abddf909173b2ab3037f86f3723e8870c4c181a29065a59c8dbae7', '097b9fcff85dd0e03e88a8bbf1c130e943b11ee3a1a79818ea777333d6eff365068d34913c932e6b', 0, '2023-01-27 19:41:55'),
('63f7934dd3e7047e256e3c598ec2d75ef0f6d073e14bf31a2e21c08d6be8d6df836db3bf2d7e587b', 'a895fd9d552d1e8b66a72712aae209ee129c821d7ae1f53f71738696db1e40bb0d03adc71a0540ad', 0, '2023-02-16 17:52:03'),
('64158346d4f9d32f760c313e097cf7299d131403e6c25fe9bfc0cd8eae29d2c38e4abf848dce6ea8', '0685998b7fa866440e9b8b85097abc14e43611480f9de65f83c5bb307c88d496ada2bf7c1b6d2280', 0, '2023-02-08 19:31:31'),
('6428c748d33aa99ef012c5f80be1f019968d0a95f0f0e365cb2b3e6726012d66e4c7c7e1d94ce896', 'cb23609f25976b10c6cccd4c4074e5a43fa76e171b22db93f82403fc596f7c61a836a905814522cf', 0, '2022-11-23 18:23:25'),
('64356913f4e76807ea47a49086f3353ed0c4e23802e99218e5f65fa8ca2633f5bb25894c9c3374fc', '1ed2f2038ecc761f9b8e9513dd78d087b4123be5ec4a8549c3e34adcedcb732d1ef5e71736613e36', 0, '2022-10-20 20:57:16'),
('649511c8aac78aab4ea7067a86b77d33330040eed868dae594658f1ef6dc543905a4bba006ac708a', 'f32759ebaa28a164ea7180cfe87aa975bbf2411013bf447200b76d2dfcdb2221c1db525679320608', 0, '2023-03-25 18:31:54'),
('64ba3da8e9a4a47f4245a1c44d53d83f000d24cd84c1deabee4de72a3bfa2fc0bd1fbcdf3f0dd863', '79def594cfd99eaf9a258e9c8a6afa425d8eec87ac5d197f981b87df8625b74220b1bbf9b735ba7a', 0, '2023-03-31 18:35:25'),
('64e791cad3593ade0b302f483dc6bdf0b3822dceb98e6cfd85eafdf17b991eb781e7ecc1d018221b', '9581ab9172e23276b351093ac7e1237de57528ac92b1b34f66ba6b9eec9389b31ecbdb68588cdd62', 0, '2022-12-08 14:09:22'),
('64e88cfa3f90e6dc005fe548e29ff94f3042e4c41efab64fffc69ca5ad8592b45cd34fd0b68b18be', '0ea72bc4a2d933f085d8b107a154bfca933901d2b6868f6fe741705b40331fa9ac530d2be41f9218', 0, '2022-10-11 12:58:25'),
('65361a1e1691e0b9c77d2813211dd6ae9d0e1539cc6c43c4dffac32ffa8f0d14add8aeac9ef5284b', '8f59ffc2b0acbcb206f3171147316357e45f55607130f88f09f4379af6668fbaf3ffa4d89fa89bc2', 0, '2022-10-06 18:53:46'),
('654accb44588dcd75d9cd5f74ec03a72c2c6fa2c312c20478a3604b43919843c61391861be2f5103', '63d6abbaa78027405ce2a9dc7976b40207d865a56484cdf1e3f0f17257fd7277b2f3513f2efa3477', 0, '2023-03-01 15:08:16'),
('65572f215fc54da79bae7ee68011a223d359db2be01a535edd8bd8e90002e20275c68c6df09406e0', '5e3fb431bb135f416dd55a19dab3448da84bdb8f37c7feebeecd552eb5216b6b1daeb0c416f4b7e9', 0, '2023-02-15 15:46:00'),
('658a5d281368f5081406176a32eb27f8759925abbe7433d403abdbc06308c7ee398fb1f1009b6ce5', '5fbc96fbc418823b9c6fcf36251fe639fd2ea19b750b4566a6ac689669dd06ed42eb15a5280499bd', 0, '2022-11-02 00:38:40'),
('65d22a392066a64b3aca6ac7fc796074ca7c5a44d6f52133dc4ed8f9ae71de5d5ac860bfa2b59f66', 'b658a02359e724c7c284a5b75ed992302340093835ebe7b62a1ba3ca390091e0beffe380ddd8f61e', 0, '2022-11-02 00:39:39'),
('660a45d0388070558ab16fc413ba95a84500032f485bce4b027ce391118b2ea6bb1ee36d441f7571', 'c00dafd68008470b209b6da00e9628f496c490cef21c3207611a4ec04586c10351c2005b1654feb2', 0, '2023-03-08 22:43:49'),
('664e31777329e7772f114de0c462adbe24f6ae02d82f8ad3e276845ebd8b1f8dbda984ce6fe306a6', 'c216c21dd64eae860827e5405dd63dec6b66a03def1e4583eb0780a5f8ad1c1108523288d9dd9787', 0, '2023-02-03 21:14:10'),
('66a129ff5a5bea0550a18efbc971113b1232a963b2389ee00257f01345220e8d786e47fd8934d3d1', '8c0320d2424cc3077bdda2abd01b076f149025b8de886f8daaa9a8110918fcf2424bd4f30e0bb0ef', 0, '2023-02-07 18:59:28'),
('66aa07e86022ea14f2770df63f29ce8972c28db7aae0b906d489efdc113059e19b5b3e551a154043', '4396bfc98b2fe752b20f73e5a4538a58c6038bbbd354b22952a1b67b500d8f80212fde744b0cf2ef', 0, '2023-02-22 21:43:01'),
('66bbf345091bc2469dbe658e6a1a1131facdb23aa3cf74cd00d6d19bf96557144191c987c10a8142', '1e7079e99d0307c039abedcf69dabf26e5115f2988893fca0f0a0ee06aefb63365310866eb81b3ef', 0, '2023-03-31 15:00:06'),
('66c2e03786f3ab441a94406cd24c8fa51d5df680c3dfa0a95fe467492d3091bc91c22773065008da', 'd672c62d852cc0e1025ba8a74e829051c2e3dde7e16c82c6492a3d7331a298db4e012da6be97db1f', 0, '2023-02-24 14:36:17'),
('66c57c0447f7cb3196da7261f162dd322279264a779267062c0a7409b50e421529fdaab9c9488198', '5c8458e380ea469c5d4bc9c5dc452c98f849037ba6c12a51ffe408f843f5d0661f0434745a943348', 0, '2023-02-09 18:29:28'),
('66cb9a525323985211fe601ef84b469f0f442adb704afaa0531d86d5f559bc1cdc6d4d4c9f5cbb4c', 'c2d4395dadbfefed45f1a0d534af18c75118f8795c9600081778e39dee3a35c95bec496170569b51', 0, '2022-11-02 00:39:37'),
('66d356dada4721520237acde4f6fa39d1e4bc3f0bc1e39a71ad6665c26f030c28d39bd79c745c836', '9dcfb071a02b1d0489880d050d6c0e5c3bd17244c48f1e3dfb810f00e5550d964c263480e4512efe', 0, '2022-10-09 00:28:35'),
('66f2b556607af4d674b53b7ed38c413615e75c1b9d8567dfdb21763ab55e33d765b20885f7313473', '07c8e12f46e1522917310b488a0cde8d2554b504786d24c12af2f8955dc68920b1393a273be4cb39', 0, '2022-10-11 23:06:48'),
('671db50533340cf998a8baf05e6b20d6f39e37f331879b8fea63612636090772d5a87ebff3af2b46', '698840af02c057d5e10df052dcdaa2460d9d9f153bf31602c12a857a9a7d34b968ed4f6b78e92dfc', 0, '2022-10-05 18:43:55'),
('671f40789147790db4c0a301b266dd6f056e029402ded7a1fce3b031048a321342ead59347f8ca05', '522bcb3d3bfe731ff056a83ec6c5758bc77106b8067a1669823370187219e47ae6bbe59c3d35a636', 0, '2023-03-31 13:42:48'),
('673df8b485b9f1c4dab71c2f51c99ac38c4c5667277b80df5eb9f7d63919f2a1417ca71dc07e222c', 'd189fe88a4af1db7b3b645a4d872181aacb500e84ca4ed399e01375451acfe3a59f718674a288f0c', 0, '2023-02-03 02:17:29'),
('676186ab3b2772b2cf0b2ce5ffab9f28471639ffbc7957ac8f510b4576f431184fd8bc2ffe47e37e', '2fae0463450aa1fd2c75088e88c047bbc87e0537bc6119cccce6b470584540a05fb11f31440dab4a', 0, '2022-10-29 13:04:34'),
('67bcb4ebb9487c3e1afdd969ff8ed871e048939f95204690d3a04396b379e308808855c70b10f155', '1ea349eea1384cf5e1246c09e7ed4dee00c67c6149ca7689f457327b9a18ca1dd97747261f6b663a', 0, '2023-02-15 21:09:59'),
('67d221757bb548842d5dd846fde38e3fa319de161e510174518fdf1da2be8371177cffe3ee7b5f4d', 'fa5b7933753ec72d7477cb54208abd2649c99f13735c87b8a47fd2c678cd13702a9c16d87c23eb5c', 0, '2022-11-24 14:25:50'),
('67f180edd234f4987a700f93715b0605efcd63a97626e68c505b882f5020b651eec291d9c093dd98', 'f23acdd5ebd021e118d7b3385a7ce19fd3123a4f385fbcd245a996c00a094510fdad1fc32d894dd9', 0, '2022-11-09 20:28:30'),
('6846a964e727229f97f5e34b3155777aa35433e0ca09d0275b68ed6f98983cb08dc14e51673e58e8', 'b9b25fca53f882e77a69f1326478d24114c657bf2366566f513b940c2007c48d493a7c521d56472a', 0, '2022-11-16 12:07:16'),
('684e8add48334c00483d1f586cb1d532bac8c0aaea87407a584e10ab949d2393ab3190c4c8feb8ce', 'e924f007e8b4094abcef7b38afc572f89b7cf8ace01571fe6fea69eeb3a6a2a569de44cb8b4f9033', 0, '2022-11-02 00:40:36'),
('68d794d5ff3a32b005913fe49a9eb91995de0b48b89499014efbc430a1e6797d9f38e366bdcb0708', '6989f2fb215b187a9faead65844afde4883d6055f8c4cf290fd12ea3f62889b3e85e01cd5f9b70e6', 0, '2022-10-11 12:43:18'),
('68fd43a6cd434d4dc78c82dc08d50aa1d8d6e51d8f49dc142e6d2579dc922f49a7a57d94bf8de78b', 'f3488108e459e9356fe1bf3973ce0e68ed48719bcd384bca26e1a92f90ea56ec2dad4ae81ad95c13', 0, '2023-02-22 20:59:18'),
('6913068388fb29df0a16d5f841dd6a4b486c747034ba65aa3dec50193a03a43fe24fab0a686ac520', '835ba46110b4af42be8ad0049bc6dfb564ac6fe0a64f94173433707c7e93b4ac8bc2931bcbb023a9', 0, '2022-12-03 18:21:45'),
('69ac9f295d275eb5fdedb8fbac8e91e1951cf52ec285f90ec1c1b597b22b48393f683a702a655754', 'b37719f9d2049221e41ae142c79d53dc5617119c692235633461e1febd68ba616beeb5582c46ab42', 0, '2022-11-02 00:38:45'),
('69beea59f0e724a8eb68794705a0118cc974b43e2348b1f8f1e4d6251d25d11bd592a164b98e6c24', 'be7e99a6e371f59b78d99a3e687955d22664c2f0008a2806c70f21d1a6e5e394630f9123a0c47206', 0, '2023-03-08 22:37:11'),
('6a04659f39fce2b04375ccb78abab40075238c4887491365c6227f9884d915173ba04089c769fff9', '8126432deb8ed855bb08ef68acfc4e9155aaa93b639601285bdb991a1c748d142255da3f829dd7f6', 0, '2022-11-02 00:39:34'),
('6ab0b031c4a60bd9b44fd99f53db82886b5246ad98e86865c4c4bdfb8baaedd682ead2b9bb16b3b0', '384434c60680bf5917d952852ad44459329c7576a784861a00e63a140488b8ea61c9e069ac345f6b', 0, '2022-11-15 21:29:52'),
('6ab124b38f3f0b181508bb87b673c3535010aad3919781b6e1a0e439105ee66420078d2b65487a2c', 'd55937c1d8e07986f7f495129a99767dfe271b5561c2757a6bba3bc2d29c6153a02b0509886effad', 0, '2023-07-22 15:03:08'),
('6b4f46d9d7eb4ed44e2ef7596165052af679cd7e8498bac42b83f290292f117104ddb94cb05e8de5', '445af44df7fc92a871baa664e990600a91da5c0e7777084ad5652b113a10f28c93ec331e6238a4f0', 0, '2022-11-02 00:40:30'),
('6b7218a355d7e129d9360a8d46acf3b490e92251ca029f495c766cb6dcd1dd5fb661485cb62b69f1', '15bd47e35362182d852c02902284e9062dcc73e8010b1d3f52d8dab8ff84ffd61c94cd5401604e34', 0, '2023-02-02 00:12:01'),
('6b73b5aa24d55f8508f0741d249b24a8be1620f8fe1daa748be9a4d810e6930686c98c8cf5344a87', 'd7e5b7753483e3d1c66edc39116408055f6ec2b1a089e41a1c1ac8dcd56999d8ce7a87baa38c9e13', 0, '2023-03-30 22:01:49'),
('6b7a9b5013bcb56ae17f4e026d4dc7d3cf91c20747ad524b04b64865beca74eddbc8f8e5009f2a9d', '3bfce2b2d57e2df012ed5986221eb7cd96d8e938a43de230559a863a4becebf874b916461af7e4cd', 0, '2022-11-02 00:41:12'),
('6bcae6895b623003d1aedf7e2928112d7a70e6ca7c5e5269abe58d427e0e529c5cb26d8f4bcff10e', '386dd8e0c7af8c7d358ba1d1bd19056b496d76828ff9e7c90d1ccc794e5cdb66e688009447fce779', 0, '2022-10-29 12:43:17'),
('6be77713989314487292eda233ef380942042968314d37c95e7b14b73dc1906b6ddf65fc35deddc9', '126d658c6ededf7f9d3a53ea9b74310103d7b32e8f4f74b649e6e6926ed46e3f8b90dd9643126b28', 0, '2022-11-25 15:06:45'),
('6c1e4fd995bd77cb2edd28aa320c72678455f44f7bb4cce1b11753aa10d7460f9ea309dd45c303eb', 'efad33c25fc4de4be1088d9411d119d5c6e6ff87291048fada1f90dbdd23d7b009edc9085d1a3609', 0, '2022-11-02 00:38:46'),
('6c780574f1a9262280902257903287f3909b84297cee2287cf1fd477e48eaf3862bd86b1035ecd94', '9dfafd283964c2fd9b41d060e2c03e85d4510b3273ad543f1f8615f8f246cceb8d77bf35f03ccf3f', 0, '2022-10-11 13:05:06'),
('6c9a00f8ee7cf9f6531f131fd44b3cd98410b7e35595055b65dd116663ef9e7ea153295bec66b818', 'ffa9529c3a702299a37d6db124f32cd806c2e202699ba7666624ebab053256adba51d6873f8e39fb', 0, '2023-03-10 21:36:04'),
('6ca68377b51be367b271447e0dd9aff82984a71fb552c2b3d716798a9dc04abd7b7a5dfc61944a2c', '83738b1c5fced0c921f3a30b59ffc255660f1d279fc421031cc20d228acfa4ef7d121d0ba090607d', 0, '2023-03-04 21:55:51'),
('6cc2e2229d553734382e183820246d96d16b12b83052d527681f614282b6f0a6aa2d2c3485c912ca', 'f7ee769f2da0c379075e468c7091520bfbcb2683d7c806b59acfa802c2f1cbf1da3fd39e55a2a37a', 0, '2022-11-29 23:01:50'),
('6d19c415de0c51705bb7879f782cdda961e17548a043e0c9a771abf71a32153f19ece5a07ea0cd40', '816b324c1de8757a48adab85fe8e1161534702dfa51ab2eca97cea5ecbd12e7ab3f636cb06b26d73', 0, '2022-11-02 00:38:36'),
('6ddc28d8130f9e4381890656c18eea74c0fbecc910fa2ba7eba46c9f42d29371930de74e16ad0bae', '8782d6eb7167cb877cc7ac87c7eab6f691ec340d1f4f9240639cf2622f3249954ca2539b1c56ae5b', 0, '2022-11-25 14:11:20'),
('6dfa3d186f53bd37d93e0afc7827186aa4c16ec542c958d196b4e7d48b109c4276dd80eed0641b5f', '8d45b0c34975ef4279bc47269cbeab8ba6c0686829993a0c50128556a7bd82e37e59522d553ca171', 0, '2023-02-25 14:03:03'),
('6e7559e5550f9ae04cd011561f28331369af1045c2b4eee8f0286724bae22fa2fd89880bb691d7be', '146c90cf800928a6b10b18184ec17b9a95c2d6afcb4334e9695ee1276868ccf06a536f60df54dc0a', 0, '2023-07-28 18:50:58'),
('6eb691b593056d28814022565e5fce316f4865a4d3010f0c8befa89d15990e909cabebfd7d2666ec', '32d6cffef2a9faf650ed1e3346d5f9c6cf2dc9aeebd263f3e0ad36b3b11b5ba35dc5cbac378f9ef4', 0, '2023-02-18 20:23:20'),
('6f5f8f5ae051696ad34f36d3caba5987857f68c02a242ba55549a41103def8b136c659d57a73c3a3', '0e10ad5652cbfff2ac80069f812fd7c41f185926650db8df9e80a1b78e126b7ae67b865cd5b9a128', 0, '2022-11-02 00:39:35'),
('6f7d87d3e0b68fbd51509999617a51abf1de32fb2d406d2e8104837c0e260f34c2bc7ad46db67cc8', '8b46833cba060030deb5ed7b3de6d241493f7b76a32cdb3f043e8b8ab267fc8f93339a6ded5f4060', 0, '2023-03-31 22:13:31'),
('7028beb6e0e78ee70314bde6141e04162fe5d956fecdbbdc1f0fc8a79c485b84253c129698161dc6', '38eac683d632fc6090b0a681f63004f493c4517abd701e1883a349dbadb5b30d6617778e9bae8679', 0, '2022-11-02 00:39:29'),
('7102353a486d9d4217a1f78a8515533c89594c62026383846f87cd59db5f98703264e2aa1d134ffc', '1629440f4afafd837f03f1ce360642d14ae2fd4a6a1a647dfb97bbfac6f2b713d49419200406b52f', 0, '2022-11-02 00:39:39'),
('71ab47fce10c7d68d8fe69e75e24f857099d6f548372fc586b984dc0fa25d75f5fdc9a6a90f737a5', 'ba1b454c75faecee5280f0372b7e6137e90c9a21ad5855b154be857c7d332b1014f6e5437f34b4bf', 0, '2023-03-11 18:46:58'),
('729fedee33903c48c28275b55b5933783525237294fe0765fab6711cc96813bee429e10c0b189b98', 'fdca28f92f0be9e04c47f8726ea499075182d0e8efd09450cc3c7fe2ba51a822fbe417b2b5991358', 0, '2023-03-04 13:53:16'),
('738fc736006fc091f8bc72d605ead28f9536905af7adb53f1bfa88c64e03876249ed263fc2d759d9', '5d53dc6fade30bd8c530f0c6b781ef6763abc4749d8130e82b770b270641cd394b868a689e1cc49a', 0, '2023-02-03 02:27:11'),
('73ec97bb58fa287ff3ca512caaccd920e06f3feff1f431d1653ca081b47d6dd117c70a350eee30d4', '67363c3d93969445c94f5907d1a61bb0ce8b289a90750929fdcd7699db7b5f3037973731fab2553a', 0, '2022-11-11 17:57:56'),
('74a98e930b57c86d31e50014eae82110d7adc8511521f4ee424f4002271b28227864644c53a49336', '458257cbb86d4cba0cfedea21b5a73cc2d127c9033eb40dfedf9daca12cb04ded4ace3f8c5b470c4', 0, '2022-12-03 20:38:43'),
('74d83047754d96a686ac014173495140a34f04100e84b06a91bb8c68c0221d40d9d4880ea5897670', '2c1d2bad7946988a5a170e4bd221985e9ea0c06baa8d8c6bcc674caa19186fd1cc59405b93a6dfd6', 0, '2022-11-02 00:41:25'),
('75d2ffdf3c13a30731a1109f76a9dfc9736ea121eae387c29ef1c829c9bf14ca7f96eff74bd3ebea', '1497848700a0c436e084a3457f0fcc6e4f725066c96ccf5145415625e8ba988564cb09a422ea6b27', 0, '2023-02-25 20:06:04'),
('76e9e87ee493027a7e93597b834bd91c1271735a9a9b5942d235652585a4d323cfdbeba99849dbf8', '01da08f1bda2d6f6a619c4079420a9d1718608f3c6e29acf746eb23d910b893312b7b802d7e45f9a', 0, '2022-10-06 19:45:12'),
('76ef9188219c81d91988c41a817dcd217d3aa7f400d23c43f794d4c4aaacb5a8f4380f072d4daca6', 'f2d6fd955bff5a3064fa6f43e8693ddd21b3fe17d877523bfe0e0399b97066927220a32c566b1ab9', 0, '2023-03-10 22:20:36'),
('771f62843b913dc9b04d033f0f6da207835f05f5847b35d855a252115dabe89bd4aa2e205bac19ab', '733bb95891374249c730094d9207d75b844a9eb2870a3999a3b426ff441b541fd4098e77d4a49633', 0, '2023-02-21 20:23:00'),
('778df610513c713c2dd58e44abfe0fb10d8e3127d26374129bc85ec66b50103f2978e9fff09e55b5', '1f13425136b1141dda6c4eac37d0353f13b270c701e7a65a714ade19f721dca3b2b464d96101fc07', 0, '2023-01-28 16:19:53'),
('77a3b5ef3a95c10f61f0e1e0b9af2c4cccfa7948700008a66e65c23ba46275d467eba92e36271868', '107782af2397b5c3b92b88e1b8b7613eb904182f0a8b0c7426a9a02a1254cc7c76b8ec5cd528ec80', 0, '2022-11-24 22:56:37'),
('77d6985cba5638e572925fa6e75f90b00f3ec11717b58e2807384dc4ed3e1df32a166b8f090c4cf2', '83f0007b2a49d29ea62380d0e3c55c09f4a83893452df2199532e16d66892130d9adb4a49b85e9ac', 0, '2022-11-02 00:39:28'),
('783be0b3f97285cd49d9e28a8396aaa82130fd04740541736b1a37cbe018476a6bc820c59803c5eb', '873ef58882bc21d4f55ed7ccf26c2bee7f9c6b3a1fe94cfda9917b200ea05b37be745046b63f41f6', 0, '2023-02-25 21:25:03'),
('78ebcbe58167b41a6672a4bc6b6b0281476fed1bcd0574a7ae4bc85382a9c09baa798e088a7a1371', '03c7eff6fa5d6bd5ead9c899b0751bd861def3ed8cf9df5057024fe82f9d3a02fd216832ed0ad339', 0, '2023-03-25 16:19:22'),
('7914e5cd3501c789c2a275e5939219ac58489d7e70f4aeef091b7eb4a7cf5dd41815d37d57b588fc', 'f6887dc234274802189d706f3fe4ac79b2297185759552882e920667c57284e77e0262f5b81a1eec', 0, '2022-11-17 11:55:36'),
('793051a333f8f5e20d7c3cb8845eb15f6f658bb637bed50327e60d6c1a2019219171055bb398e4e9', '69b8e0238d0f24f35b8d60fedbe7e0f63d8a2e92efd26a15fc0f365174986adc9d3183821420eb8f', 0, '2023-05-10 15:06:26'),
('7931f303c0b851065f6b841f2fd960a7073d163caa938b6fde545cedc95a80b561d6fd7bfe615bed', 'c0777dfc8b2b3e5b572e0bff9a2a9bae1b4b3957efbcd86bf5a24c572e14916cc6ef1028b0e23ad6', 0, '2022-11-02 00:40:42'),
('793381545fbe3129476a805553d6e34b72b2fe87f92de38f372e455bc43829e76cfcc0d5a02372ea', 'de8f03bc5fde984614659c6804f7d57637630c4dfd46cd47c3f48ec56baea86e2da7c2610417a0f8', 0, '2022-10-05 15:46:28'),
('797435cd0d63a1501381c8b7e7a43173dd1961d3c7b0427291d88a648dbbdfbda2849f5b467d29b1', '196611405091745f926e050bf2ec00db72fa6a9f6975900eac63f443bda25e1633afe33f504168de', 0, '2022-11-02 00:41:25'),
('7a5d23c1f9b6f671e64ba44025853d23eaa27dfcd96c9194e0f25c6e269d7d8e79af222cca90aa92', '373d65dabc78b5d9ec24a54de6232ca109731cd6497d4e6dba62a8b6954b9e49734a3b79dd95a451', 0, '2023-02-18 13:50:40'),
('7a75ec5afee11d665cbf6c8bff2c414b9e25d6484f4e995a2b426d699c64678a55f02deba05cc8e4', '1819767e464094d78527cafa32eda3667443a762dc09cadc1c6063fdf6d10c651628815f66a740fb', 0, '2022-11-02 00:41:10'),
('7a9af7a72cf289eb49eeba16eb9f275108e726f7a4b13198f831af90397da663c61cabd8fb915899', '4bdcc24a3e0db339a902ad58136eaebd01007808f816a181bdb88799146c0b5766f665a051ddfb87', 0, '2022-10-27 18:59:42'),
('7aae2eaf41378fc616eac2d294dcd79f60bbd2d464f93b067e3a32a40efbc10b81bdd7aea5d74eef', '41a3257cc6874fb0c323f489ff9cc2fcf652c52e434a8b500ff33531ea900568f013e872a28d255b', 0, '2023-02-09 20:47:19'),
('7b00ebc4bb4c02a5864e4fcf54a59b9d4723890124786345929b0e0171f53de9a617bd4f1d15c71c', '71e88c6c7abcd511b5ff00deb50bc9377ccf5cc7b48567154178b1ec2e95f5e168a8285da18baf5c', 0, '2022-10-07 15:51:07'),
('7b3fe54b8bda1b8a7e63f7231628dc9930f57508d17e2203312e73350a59d51c2bbed7861bef29f2', 'b9fa3537c251ba03996ee60707d13b3706d26f016c7f104019b5e8fd86378f00ec20ee1c393a91a0', 0, '2023-01-27 17:47:24'),
('7c5a82450dd6f643a7037e8a838eeb201cc69f219266fa0af90ebbdd7d254373ce80d376fe4ca14d', '0b3616c8ecc261f7a189482619026017b1a31c4e0556a1adbcc00355f93b1687b178dbea7e7b9da9', 0, '2023-02-18 15:20:17'),
('7c918917c3669e8a2f0b510853858f4d5a4da89b6955d48f58f42b9788c970b2fad4f8bc3ad85a58', '5e16dee4a4f3d1ef2657af5c841a7f540c3350577b3ce77f3214d4cb283f524111b7ca40e5a0fa08', 0, '2022-10-29 15:22:37'),
('7cd9f4f147735afb653593a264229f06e4b0769fde4347de80ddfd70db7112db5e6f2e9cca655888', 'fef7d593c425d22bebe289277eba03c601144b4b955f7069b513080486570283ca506f62fdb511a2', 0, '2022-12-07 19:37:53'),
('7cf9998eca591d080e26d1c8adf754a6d4c25a481a546c55d0afc4fec4f1c2c9dba7dab0b4c8042c', '44be0e830e87421232cfa5d3a6716e9f7d7a4131db3b63bcc3150ed70dc0765ab665475031a3c1e1', 0, '2022-11-02 00:39:55'),
('7d098ad8e1596b4b5c2b6620de8f6b7247cc8c6c1c882bb6c8515e63e96e16a8befa5278ee7c3ad7', '1efc13aef27bf7bf79d41f5f868f339410a33fa3fc542d4f295219c2f6bcd062a91c3dc917bce79f', 0, '2023-03-08 22:16:45'),
('7d621d005ff62cd51507be8955e560ba3d66520af0bbd70bdfd2b43ae2ecddf3be7b70ff5881d71f', 'cabee39ab64fe1cc1c3ae4e65f5c1b8059d20196f12b13d7cc7ff6509f474b7f471ad1ab17470e11', 0, '2022-10-18 15:02:02'),
('7dab427d08ad94659c5a7d3992ee04dc80eff62904fd40f98dcfe8e5c411ed698f5d2cb47ba6abb8', 'fe19ea1f38876b0aa19fa94c399cf8835866efb8082f57793ef10437b7d0cce5bc05b185cd04d3bc', 0, '2022-11-11 18:46:03'),
('7de56af172c09f9c1c16bb0cb70f957486d964e4622d85d409feb43fc459c2bd9b95d2ac6ebccf7c', '7638a80844a6f0ac0341646e29efc1741ed16fd9143782e858fc7ab1947827df4731e04fd4b2f0a5', 0, '2023-03-25 20:02:11'),
('7e037498aed4707a39a422e502d7e6fb186adaa4afc8e535a8ebaf2cba218c8b6c07e8b031ca9166', '80ffec6ed588dfc5a04e5b6bafcf2e74b71f691a5881cad11f550648630993dbfbf97bd9794a6db5', 0, '2023-02-09 20:41:33'),
('7e0d203cf828d1333c914dbfec00d2c5c76506014653fb1d741ed972750b0b5f5e5a09186734af52', '64769209aafd4a7c684a82adfc54e6d1878d74d9d2e7608785186b65f8c645dca954771f1da18607', 0, '2023-03-08 22:27:45'),
('7e7b55c078771c25b177f3e8ca859921e105993da47386c874272b47af2b8f377b9159d86a83135c', '1f72c0d911405a14892157cca9abb6874cbc6570a97e9af453e06bdf309a68767e8c1b83091e5093', 0, '2023-02-02 13:23:30'),
('7f0adfcdb2429a4950847315c079e33c7c2cd0aa42961ef1f1e4aedf720835645a992951f260c9e3', '115cd0166907f6039972084a912b57a4c06b52c91b91cb77e0d65c3fadac010a64ff4d12bc7182f7', 0, '2022-11-02 00:40:39'),
('7f61ee2352a6f0662e16f31c56063dc8a7d48d6ec55b52778bef30217b286daba3afc92ffeda8c00', '5b599d9c5620be99dbe43892d26fcf88736d7ac6e40e35aaeed07e0b84126eab3a77195e6c270c1b', 0, '2022-11-02 00:41:21'),
('7f6cb878c88f3e11a256b90aa3fc407cfc4194ed773fe74a5ce165860cb388f043095be651064922', '2bcde48a3e82cc05cfcf80ce6c6844758e386f823b6391ff4bbc75b2f29908dca0115d6a6ca31461', 0, '2022-11-02 00:41:11'),
('7f90d95ec221fceb74db02023bfbe355210127b5ea2d325801d767b10b283d81104a82711bd40f14', '337fa4598e4de35e5bdc0396b85811445616eff474f3224dd6f9cd3abdf765eb83f6b821eb66a2eb', 0, '2022-12-02 17:04:59'),
('7f94877370034a5f6065729d7d6e21c443e374d20b9c9cf3aebe1ba1e0a5e40213364e4996ca19a8', '8381b101517f080c61270af0a8d08c1ed2c12f67d1496b6d3212857e8b780b40ba1bc2efcfd5cef9', 0, '2023-02-11 16:00:52'),
('7f95ec259cf4a6085fed67605d9311c646685dabb7b9823b31aaa110be0a7d8452cdc90e01c58100', 'b0f5bdf51be2e6066856623458894ebc31b0e833cb70d29cb826206977884e4386cae942fec59adb', 0, '2023-07-18 18:01:32'),
('7fabc0ce0239d56050dfaf408b93f8dd46fc5ac1f681f2bceb6d3fd1e729474dc059267e2dc1dc21', '5a113f0ff079e6730e799fbe212722aa88f53eb83b73f669588a0cdfa01ea325dd46a4058c37472e', 0, '2023-03-23 14:17:30'),
('7fad5164c91d5e5936598844241722c3af3c17318bff6093f1def199b6c638ba8e41a3c893a90660', '2d04dc7fcf458d572567fc9946ecb36e7c2f4d46e277715540e1daf8ec6a31d3858953322b42f81b', 0, '2022-10-05 22:53:21'),
('7fc58b9c44818ec571471b8a65ea2b1de256e3e48833233945f2a68e56e4da5fc68dc41ff7180ff6', '2ea9aae81c1da9b34b68518574b0c3c2e073156bfca0e8c3dc4b2c31c8931d60402096f7eabac480', 0, '2022-11-18 06:34:23'),
('8007a2d1c4f118abfca800c954f62eee73110d3bb5675abf1c6390b20b6550870f4c4df1de3cbd01', 'aca49e0f65f028f372750252123000a651f33fc306808d1a17f6da06db8101894d21f07ac13b44ff', 0, '2022-11-02 00:39:46'),
('80410bfa5b6b880900d936e14085a4b755985e3adfd32b28fef40004c336bf148b4b73e56f2b7f47', 'c211f1cb75adec5a08e2d8950f412cd2cf0e55c794812b9d6b9fe08d6380ec26af4b594b2dd957e8', 0, '2023-03-23 15:00:21'),
('8044bcb483b4f9ebc6200510af17705d406182c56c8a70af0d773b1cad5b67ee49c8ebb9f30a8268', '1df49949baf4c8ca392ed6e2d2cb50d96140469b93cc1bffbb5bb57c7bdffa030263b0cabd400fa3', 0, '2022-11-02 00:38:30'),
('804af881456aaeae450ba54a42c67e0af01e305ec3265fc04928d62185e31068c97f24df2af8ebf4', '8e8b022f93d9577152a289e408f77f51c4d857fb405a6f8b9ab730ba8d2557e9e77a8c0ea9c67ce8', 0, '2023-02-17 18:42:48'),
('80d7c5b73a4b79c1a363b4de55b63bf378757af5e787bbc96efa15703584dfe98adf17c6dba866e7', '0dd9541edf258fb6915ccc60f933409fc1f8537e694de6b73c22b02d9e164f612a77cbd7b57a7338', 0, '2023-03-31 14:51:12'),
('811ea98f84e2decf2835c92bb457b3b959fc9594b735fbf3751db327b11afa148570d8480e3b662f', '4a4c1a384cbe96020b25e7451c416a1ce4d195c6f66f9825ea9dd02777777a3a29cf5b64b8bbce57', 0, '2022-11-09 20:28:10'),
('816d01e247137d93f1adba5fda7cb6399afe88a99c2f6ce5562c2987cc88f997ba31e6828609ada2', '2b4c47840a303814e7abfccbb6f5bb7dcb24d4a12d140f8681c62fb15244f89e7f5ada4b32fdf8a6', 0, '2023-01-28 21:42:12'),
('8188cecf1beed79b4e04c30b31472a7d9df38fcc4609e1150503d55ea5508c8e6f583d7164427ccc', '94b77762bc1d4174fe7cef3b55a89410e74de583fd9123b1d8e494cf23cd67937b49b50d8d0218b7', 0, '2022-10-05 17:05:15'),
('81d98bef7ab53d3171e1ff01428f443a71b4dd06c02fabfd5a0ef1716b537f99e4359a5f741cfc35', '2ce57843dd8f1eb915c33968f82206f7fcef6d1abeb43a25a3fed374c78e2b47b8cbeea63cdfc838', 0, '2023-03-11 19:14:51'),
('820b270371732ba871660af88ca88ab45f441ef8d34e01a03ccea79f0e37633967067a2138d92b98', '8ebf1b156500efba8d173bf8210dc0a91272d76dcac6f3d83b6a2a9fee58f98ef44bd65be8f3198c', 0, '2022-11-02 00:40:41'),
('820fbba35dec5d3dc9369ac4c87ec7eed6f65c9616d7a550b043fd512c34eeef0d4832095ba34c23', '3e97cb1d4d40c1309849a4e5ca1026c8417440df7d2539542810605ce5d937ea05ced9f41e587a0e', 0, '2022-10-29 19:20:16'),
('821986609189c7ad9545bdd77f0d8c99000a712a8a230507d854671a2c78b59534e63c06122f7049', 'f63becc67e5a78e67dbcf93f8fa2c39c57ac76038498e2d58695f627d900b2bda41ce7542c5d959e', 0, '2022-11-02 00:40:37'),
('82374f8b2ec3d39bc012dfc484df71fc8d0e31612c43ee5ad66c818d6cca5d20c3ecf93d129b033f', 'a975bf7a692e66775dd4eb99aacc0472dbb4b8d271db6e219dc68d03d7407a085c589b42e233cf4f', 0, '2022-10-29 14:50:39'),
('82453ade5093c01e98fb2b24965213a686f81e73702fe924c092ed8359d83a1e1482c22ebbef58b2', '1082536f1cb5b7647c121e8c3a9fd029004e59550a13e4858f82739b6782615b1bf32bb82d078809', 0, '2023-03-04 16:09:15'),
('8297ac0e2d75180e4c064c1638ed1b77e066f70c8f3ddc488d43465388d82252a06139d8ad2a9fed', '13fbc6d362dea4dd3950437481f80a98e52fdb6b4871e9c3ee5e56246533757575794fceeaea6725', 0, '2023-03-30 22:14:03'),
('82ff96aadbeb5df2471edaac0ab7f72ec8de380842cd656f27f225b8a61c95c5b96c1d8d6c750874', '56264135933f84b6610feddbfe6a0302d5798b77ee4c2a214e06a6e8e84ef0799f47bce5a05bc7ed', 0, '2022-11-02 00:41:10'),
('8304e1ff0edf1e8953ac07070e065f4faf223484a049f9a96f0a2106e2e0ffb812f65c9cdc04e69d', 'b1ea8a1e861d405e3edf4317da947af3c6c88369aa2f78e6b51be23a31d7d873fdd814e9f08b1347', 0, '2023-03-12 16:17:55'),
('832431c1c3eebe1a4bd05e1aa9c4bf2d24d1b56ab275d8c0dcf3203ce2b8381728c14177613891e4', '97680cac93c1096cb14237e4e567866d9082d161cce8db2cd8b000011326c12fee6757574ee04d45', 0, '2023-02-27 01:49:06'),
('83284fc3b6033915bb13d087c4f807b06e065bd6345a0a15e2ace950e78612877b0fb716270457c3', 'be78bd6f2ee45e7dcea3ca42b78f5304761c34249dcd089ed0c5b2d5d6168d9c776e9e2ff1308680', 0, '2022-11-02 00:40:38'),
('834f2df2dd9714079115635fbba392545198804a6d392a240fe28c49503ba0a537e053309becb38d', 'ed9ae7de971791afdb76074b3927a7534ecfbb666331a8703c5764e6925070a5b3fe76fc288f7922', 0, '2023-03-02 15:52:19'),
('83c364ffb35ee020495e768f5229b279b8c83ddeef1148d8aa082bafa7a092bc4dbd9e2cd68b2bde', 'e41b812d21de112c5a1947460a2048293cf7266cbdd1ec3464c28c236aa3638461a83324bc778246', 0, '2022-11-29 21:03:50'),
('849ac12f7aa01b033c2d009ef9c9bc7f7fa09c50d14a576c2304e05d82fd6b91c40171002bd38b82', 'efe5f5c758547f7c0c47a6b02ebf4246542caec213fe4e9aa54868253c19064aea23d0f0bae1e4c2', 0, '2023-02-10 20:46:48'),
('84fd7ce228851c2b514276f1d876d9d78bfc8e33911ef8676f939955bcebb0af14941a69a270b14c', 'e1f3e2d296890a26d03349f0e4453a67e3d8a19c5d055d5728031a8b0fbcf9998dd6596b4462e4f9', 0, '2023-02-15 21:09:14'),
('85bccd8e3d0138d73a3faf382000ea09657708a282a3897d8f1d46e86e201dde568a402619cae029', '35554e1a08277553a6a1b34cc2499d6cef48b583c905b2fad49c7bb33d647f264fdfd1c8487b91b2', 0, '2022-11-10 17:43:20'),
('85ef0a30309deb0e8852f793dc2c3bafafe1f919e2b9f26278d3a5d7e529d19c2519d6eee610d63d', '5372808b5331de1e718df43a5943f116e51dfe4330203ffa8b31f484742b6af8b56b81ff05aa363d', 0, '2023-02-26 16:13:35'),
('85fc99413cbe78c973d0614b6c3328056d9cdbc2e0044a7a3bcce790b849342a902bdb953f95ce3b', '2be90b690bc6a45ac0c6ba222bf9e33989c3ec1cc2a8dd9414b0c34ab1d696655c323c45a5d39216', 0, '2022-10-11 18:30:56'),
('8622fc8d97e5ab480ad9e5709e18840a435169198cff1f6adc55be9d267a40734c2aa3c59fadaa2f', 'ed50d56f07772d516bd337b83b4b775921dd074dbdef6a1358ed7358070d164e005fac9b71bd61a2', 0, '2023-03-01 20:12:06'),
('870083e8991bdd78db8df7c92473ba56f4235405d43f749feed3e7fdf4cd371db6e20276c0908e14', 'c5998c85c9efb97b7e98f94ab6c6919250ff606136b5ea9a459266f7be83c3c4454175878247b98b', 0, '2023-02-23 17:56:40'),
('8768a52bf54f155b6562d6afef0cb8a92fe5d945ecabc7643af5790d1d56da5f76185ec54ece69d0', '80057d8f5fc4cee3de40f8c8a351b53a6a160cae41db82dfbf32ae389739f61082b558721941de2b', 0, '2022-11-02 00:38:39'),
('877d3c579caa6cabd46453ad98ddb7a2949343bf7f04e4441e19c849f1954bd99939502e0789f9a2', '62a4159934940c6f9a1973335ec9c54d79ccd9705e0406fbdda9bbf59babfb0b49d42cc8f99dac14', 0, '2023-03-31 20:09:25'),
('8815d29a89ff34ee4d4562cf93825f503e8edce49fd0e4f49ed0a16702d8498cb9e21681d1c64875', '69b020effdd56e34250bbb3fd78a70838fb94a8e3a49820cacdb7bb84b08c08d64e5d0418655d1bf', 0, '2022-10-05 15:37:16'),
('8823766b9bb13a325b202cbd65e80d1152d8424915fe9dc18b70fc30dbd3b85e848343ecd8dcf1b4', '7f864a85b5b364f5b3bc93672e15449726bb67dcdd5b7d43124d1e36064ff35a4f9b5a2075d8fbf2', 0, '2022-10-08 12:16:40'),
('8897bfd52276eab9f884122298e2b7a3d65140dcae26b825f5f821016f2b7d51347186f3377f6c36', '28f9c8c8b1752e4e1e34866872078c57c6995b56792ce816eb0e501370d00cabea774f8b4e5061c2', 0, '2022-10-29 14:52:39'),
('88d61f73246333521d120c9f7b5a948dc49fe29e5f9910a7cd27734a00d0739ad25675233c4227ca', '7f57fa914300e8fa95c1e9df8f39ef9257a77288e71c9b5a5c78888ff537e5b1c328fbe98f325247', 0, '2023-03-08 18:29:01'),
('88fd6915b9a1d078da00c1b09f91adffd1871597e09a613f309250314ffedc1769df7421557a060c', '294d60ab8a32b811343ee7e5898c7886eb976b9c0fdbacda9b9d2ac80ba540c031f12f0b0e31960c', 0, '2023-01-27 19:58:02'),
('891221ba47482f51f1ca41fe659845a1b6d160e96e824cf7568d70a100925cfe4f0232d38b13daed', '004ddf6ac775805eb12d9121f1712ca05f36c6112a70c7942dfcf9c637c9d34223ff60093e3b0ed1', 0, '2022-11-17 00:36:06'),
('8957daf3813b3548ff0b3095400f017c0ba47a90a1c557b334ab57bb91688dbf55c39231aa9e984d', 'd9beb3fe642891ff69ec973a09adde0848ea3978dd25f39f544696870b0b2eb0ef919e11ba14c916', 0, '2022-11-02 18:11:25'),
('8a00a718a7ad84338fefe5be922ee6ef5977ffa5b97f94285ad895f60d6308df3a7f54fcf39be9e1', '6833a69f293b1cb86ce967b57bdfe3074e0d60a651daaadd4b78d1cc87c6f65d575c142be0e50d21', 0, '2022-10-11 17:47:04'),
('8a896817d344c1d6bee7912a86ef669ff1720ace318cc46b8ede1a302d59e8b38bd855a478fe3b87', '4e956996cd794fe880c081cbda8fc3473ca4b2be6b9c82688948195472aac1530196cb37f5d9a382', 0, '2023-02-08 18:10:55'),
('8adc0914eaf28820884efff53a4dafaefcd8a3fba6df7696cfd741081fa365191be251ece0c99f65', '7813dab17cdd52254f9e520f399ca65f615e2331d78d9e3589ad9fd48ee0548e6e65b5ed3f4963b0', 0, '2022-11-01 15:28:58'),
('8ade6b1ea7bdb1c113b879872822540bdf8bc60dff396711eed9c9c61a12176e622d31938a4a4bb1', '22585a0aa313eeeb6b620876692d1665bd4257c374f2770178d97833a1e113802e654f280960802d', 0, '2022-11-02 00:38:31'),
('8afd9381161c00c54a353e5adfd4e7dd43ff5b04cd263c82a6f26bb1197ffea334621f55df79b7f7', '6cd35f34bf423486b61379406f5294cb6f10b1e2bc6971e404d252700775041b4f8f20b9ec71168e', 0, '2022-12-24 16:36:24'),
('8b265d0c711e0eec44ab8f7414a65d6e5f84164529d056fd4995d67c9b4805463a5788e917711d9c', '8140da4d6f88b748793c16f6b4931cab0ebc154211bfd84ea183984e6908d07468c243569f24fd87', 0, '2023-03-14 19:08:17'),
('8b2be99661299fde8d73ebdd81a317a442110122bf5778298ddb4117f5926a9f2aefea64896d40dd', 'b61f9dc3e46b4a311a0fab20fb96c70848e44a7d51f57dc9042b77fc12266f6c90d38e0ec10f5530', 0, '2022-11-17 00:17:05'),
('8b508bc9901c369248f512b707d4c17a53be68bc95edf721a52aebe38a7bead2fce1ea7b4f1cb99f', 'e2007aca2b24be6cec15c6d86092c80c711f5d68747fc74561d0eeb0abd5fa46f7c7d89108d83c83', 0, '2022-11-09 21:10:31'),
('8bb2cea529ccc240322e32c836cc9771b30352bb7792510610a196e12405a02947a2b0d8c00b64d9', '9fce8e9df374d8783ec03ee29449e6bb9556eb152a58f2dae25d77ca1f579512fe7fc40f72d06555', 0, '2023-02-16 19:01:56'),
('8ce41038cf412e742ed935b43d6bdac3e42246a61e75da723dc218439f3c4a3e49dce6971069f672', 'abd1194a66bcbf7f5316e14df283018a65008e97a0f806d40bc31004346f90dca3c0d7a3e8bde96b', 0, '2023-02-18 15:22:51'),
('8d75a4e4717066bcef7ff064bfa431ceb53c564f5ccec30db88212f415a4d073cbd69114cac9d42b', '0c6485f3d13ee99e8aaef60883356a12517231925dfbb26a031280f2e004f43cff649ecb33d8ed90', 0, '2022-10-29 13:04:46'),
('8e2ad4a70536ab4c00f6b95099a53221bfd92d95f8b64362c4a42b62b336b903a88f9a2973be0cce', '0c49a9cc24bb6ce0a3be3b28a831d58a3f522737ba56b70c67374c3443fa67bb372a0dd58d78ee13', 0, '2023-01-28 12:23:26'),
('8e91bfdd2f4e138785aaa62c3d67003df25b2ce3f9465ceebd645056cf4274c68e0b177b87e5cf85', '258e0454b405a6c1b6ce171510bf99ba623b45297485833a97d1aa6cfa422a3c0fef2de4a8d061d9', 0, '2022-10-29 19:38:01'),
('8fc6200ca53240c7cc8ce394c35100b19ad01a6a31a4da0e90d059d02417ead8d6bd991151355f0a', '3c8cbff3cf8c0a9fb3fd39e6be1fb73cbc9a4e22a94081a460b840806e027cc15b0de518dfd87236', 0, '2023-03-28 22:20:03'),
('90160db8fac9ab38f605048e48133c45cfb220cff72da4da965a0e16aa5f45978a866a8bff1fade3', 'd02277fe3d52700d53d6a106832a0a88ee2adfd29faa2935c41e0ac129be475d5750247f3d6b5eec', 0, '2022-10-12 21:49:28'),
('916f1f7312b2fda3fad6a1c5ec8f082a0d44727b0b0ff67082f3664f89234f2b6f3c289520526f2e', '39be068d8800517ea5f3fcdb2eaf51f619900f5f7477d247c53c6d4b420c90fb7091bb871984047c', 0, '2022-11-02 00:39:29'),
('9213a90da184c6c6e388779411c3e7d51fe3bc79c7d804f722569e905a9da3f5269a6b48e8af93d8', '5acff4b7f7743910b9c128297b01de46a1a03972e76832ff018c1857edd4ec0d551269caa86964d8', 0, '2022-11-02 00:38:43'),
('9355b2ad35e923dc2fc247d04db96d0e68ff6acc35656d47b1847a8ef0fbf0d1d92a553026502ace', '1592b4ebd4b0f93c76cd588b1f6b54645f6506344d266e9ecd4a4d37252576270d931d7265ce02d8', 0, '2023-03-30 19:22:03'),
('9389b7a2c742a7d32b460858b84e1a76cb74931eb1e4ed8b0f47d31c81fcf047f53b93cd9dde580a', '7bfe0d5e8223b551c0604ab252090bfac2b14a5dff2adca77a4a88b4c4e2352a9f0f6bab13d0b7a2', 0, '2023-03-04 14:51:17'),
('938b83f303713f36f7efa17d18b6c2e75ecf30bd76dc40aa2a2ab64d3fa8386f1d7c8fd8fccbb52f', '78c94a998b89c58c95a51c69f96096b34592c28051a9e4567a76fa36a65c26f06f58937eeab48553', 0, '2022-12-15 20:16:25'),
('93c33dc6e6024dfeb627d436f2fefeb0e17744421b58f2b8616a5b1e0f587b36fce070ad7a957a6b', '1b3317536655fd3b4a7853079d3bb303c79fcfcc0115d2cffa601f68da0ad2c639cfd1175fcfbc84', 0, '2023-03-30 17:12:51'),
('93e2d4388b287b9da9e16e0ef798367a751a672efa7153c79b62e85859368273c91abb3a89680bf0', 'b450a6b36d12735f3ba9b0fe35fa46df2ac38a8ae95db2845828b6f57c8f3873a98cebedd53a8381', 0, '2023-03-31 14:37:06'),
('93f71186a19a88d174d707e3addc4a01647e4e76fc6cbc6b440d1e5310a81947019cc6b0d9d0fb07', '1b6c0e9e82a9097fad3b264e50c6d47a8adc2a547902be322c9a8db8833d19645c9849a01c87000b', 0, '2022-10-07 16:49:54'),
('9415ebe2d6d5418559fcfaa888c0b8eaad60e1f3c6a5443f3806c3ea50aa34f36d26af5a0e3b99a5', '3fdaffb7644217b1b4422328569c03991bc795135eebc55db1957682bbcb5d258c188d83e7d4f1c6', 0, '2022-11-11 18:53:53'),
('943af6a0437ba6137c9dbe1b5c61d6e59ee6a2b3720641f0d729d935875da78b6fcccbdb2a250fac', '7feb0ef015c1014493074351bfdcdb4bbe03d46f911464776286e278da4e6e0556d923e3bcc8ec49', 0, '2022-11-02 00:39:54'),
('9462adb3a11c453a9536c2d6c188145ef86a27f26fc3139b79f0ca3f29584f5be19cc9a60b36afdb', 'b1de13d2f0a7d7117ba1b702e707ee93e0cb107f1c77531638f09e64e60a625ee5f3f62eaa4d6c0c', 0, '2023-03-31 16:43:27'),
('94865f5deafc8fc6b22650e0ce43c69b2da22d687f7324b1a015d1725571a15745a2c41d476f1bce', 'c75129b4b634f18846d33dd032078bdf9743088061999c4c349d4c84cc646f4226f00bb3e683fc9e', 0, '2022-10-29 13:53:08'),
('94cb63c8d887f1902d5c6bd05aa047497c1c04ec391ebf71e621b2fd86f3bf3d4b90e32341f8669d', '3408a13f0d98467cca1cd3231ebff9424cba550f8c9941a6bfce88f2839161b2a749355b5944a71b', 0, '2023-03-10 21:53:04'),
('966ae77e172411b4b702414e9c8346e63af458eeb81f6cc17f5bba0ce80afd6cf7e58403c798f373', 'a362588975a01cd6e317350f508eb225a41287fbec3ba8dc3a94a060f5dbb33f7125daf788743b23', 0, '2022-11-02 00:39:46'),
('96a2f2e63971228e8602cb8c7df03113d0cf7d4df2c448128e3d25af25761a3656969df94646eb18', 'e3bf7b723c94c56f9913579cf3d90bdb0a07b8f219da734fa95b286ada5d0b77f0feb5298f04e3d1', 0, '2023-03-31 18:25:16'),
('97d29ca0456b125b879d750b3cc5159111a832816312a8ca006ec9c1e93811a4c9b36c3197da3cfd', 'a882ac36b3c204f04617be217bc4afb6cf65cd6157d85c0667d60e24c610b15513ccba92b8e7d127', 0, '2023-03-09 20:42:53'),
('989436173215b945651b9bf8761b1a82a16ad33d18f23a750d36542233f0e1a2818a9ee22c257ff3', '667be5ece4954bcf20260fd2aa094a995e38300f2bf86dd4fbc18488b38e37663026e575f522f4c4', 0, '2023-02-07 18:25:36'),
('991bacafd3f342816136264db704d0c26e2fdd7803462ec74e7866bdfd8364d092135e4cfcd98301', '2f9d51b2aa5f15f3d0652dbae66f804778db4cdc87d7bdef50eda5383616176b4c88fc3afa4581ab', 0, '2023-03-04 21:54:50'),
('9937224e8848295179915fbc20ea7f168b8a0562c8f6fcf1024e331b8879efd638b0dcea29d30c5b', 'b763d774a220e8b5356150e4ebcdc19eac22517b6916cdee3b5d23478c348271ef663334cf96e832', 0, '2022-11-02 00:39:43'),
('99b46fb3db874afbd6a8f8cf63cea062ca607c2dedd1dc9db2bf0308c02a8570fa7effc15cf4ff45', '08ef5d37b230a34972ad906fcd6e4e2ef2fc48f7a5781602cdc580706fad58deee594462fa572561', 0, '2023-03-22 22:43:55'),
('9a15d59fb0909ce5b6c01204685cfcb65255b76a4bc81614f56b18c7e6cfb53fd346fe43c781d47c', '9800667048a1a5dbf48ed51a6339af55c90dadcdac972d39ccc9d8cf4f06d036a2ab50524c0c98ab', 0, '2023-01-28 16:20:31'),
('9ac0e365186e4506d6daa20a5ff4b4acc9ecc64eaf12ce22a0016138828d22169819784f8fed3ef6', '6c1c3dee602cec9eba096fcd54f11d9729a927b7d968cb8c23d5a6ffb620b9e91f73671e9a16f240', 0, '2023-03-25 20:23:12'),
('9aca1348267d6b5a296c96993dc8a468fa54a71b73422aa575d3e5063eda72ef3553123025b7c802', 'bd856e0a09d3274f9fb983d7c5ac7fca550a1b65a915c45bf0778b644db91a67a059f1dd23cbb448', 0, '2023-03-30 16:02:01'),
('9b38fab576a9112cf0b7e28fe06add94f4531259a9458be48a1a4a710c53f36387f6b1afeb42c702', 'acaec70add20490bf3adb1366a44148ac50dd20ee5f6cf637296c75495236a5cbb36bca6c43fdaac', 0, '2023-02-21 22:30:31'),
('9b7edbd61f0f17ab2a9176688019c5697d7771b02f7c83c151b6a4e07b09f9eca1c89da2ee7c5257', '5f87613fb02ea73d58999d6d0f73e93a1da1a5719d89741680171acbe0d994001b3db132c178f691', 0, '2022-10-29 14:52:38'),
('9b8ba8da96d04d4abc5f00f2825c6e4629015fe265d6e74c952050570c6eac5636b2b8abdf74f170', '8d51acb7867860e955f52680d2cb0199d0888c845f6aa32e6343a40a6945d6466649cfac12e4b908', 0, '2022-10-05 17:14:43'),
('9ba64c2a330dbc35bd13816e5360590161d414028ffbea6ba878d7cd3d88cd55577557f3b9580d1f', 'db62d67d99ad2794edcbb62a1d6ba012c643d3821a77e61dee5292cb7fddbc648d220a33871eae1c', 0, '2022-11-02 00:40:32'),
('9c9dd0009dcd163a3f3436ca86146509f552770a1e9287308354ca04f3423bc7a28b109967087cbc', '2ef1510f7f036cbf17d61084564bf17c1dd743be1e972d146484f2534573842421a274f532290460', 0, '2023-03-22 17:56:29'),
('9d55c9a75cb49ccb8f4af4b9113c1f2788c977b8151e8fb40f45f81986f8f7975f373eae233ed827', '3c8d7258d2f34ae8228845d60f3a2ac684ac690c43eac1d29deb1f359c752750301a302755ef7809', 0, '2023-02-22 21:47:04'),
('9da78efe00019319edbb9cae95a6fd9aa1eae3ce7d0f1f5efe7246c4dd05cc5ab294b0e209fcb6f6', '9b638f1e28feb64e28d1f31a3d0c90451250238df560da397834f27623fe103243c3dbdd8ca56d4b', 0, '2022-10-08 20:04:40'),
('9da90b30d7aecea7faa060112f30964efbab1bae92bf62f5878102727b418ec62649a086af7ed05b', '8053c1f6cd9270e3fe50c8c011ac5647d79e1f2ce0a56f3850a3b4c222eae92028fb81f806e31b33', 0, '2022-10-28 17:40:42'),
('9e12ff446e9b55942ead33e3216d017faebd724179f68bd83f3a9821d3cc3c756d1e76c7d5d4c82b', '509bd6bea0480c0e5663796bcc0e239f14d2feca455016e82d7c1f12dc71f6b2d3292e41ad4336f6', 0, '2022-10-05 15:44:53'),
('9eedfc8e22d91f02f035cffccff352c02234557a6d5c1dc6f97ea6dbb95d01b07306c18d0d149714', '34edc3bf329b53fd79f999fbf1b855faf170d505e832302ef58bb40598f5c4d1d6ffce8b037bda84', 0, '2022-10-08 15:22:05'),
('9f0b608d2a73b194fade34249416f4149e0106a6002887df8d734fb54465558a03b0c02352db064f', '72433224677740ac7c1b4605221fb4fd39ef5da65943cd4b4cc315aeeb4f7dc81a6df57f17a7d5fc', 0, '2023-03-31 14:39:32'),
('9f769d4d11f9819f8c46a9f5068ce92846a8309c831a049e817feb58b3c75d7084e9a5ee1a7fb09b', '94ddee97e1d6bcb0d805851522fd17f2ff6048baea3fefa5044cca5936e92edfd43cce64f1e48d5f', 0, '2023-03-25 17:51:43'),
('9fa6523a43fe11c27d71d10acac88343c08756ec63eabd28574f3e20e71fb8fd183bb455f64dc012', '526f346882173670cb15523b904992553897aa23c64d901b6f6b081ff6e74f65008568c4542d521f', 0, '2023-03-25 20:42:46'),
('a031292866b3ab2eb5132aeb432e1c2814246ef500629eaa093de6e3bb1f018231b834ae154094b4', '018efd47a637e700f87e1927606eb997f77e90e1d8c3b4d90f2805e1d2afa0aff81c514290846d13', 0, '2022-11-15 21:24:51'),
('a046672403567d311f4f0946701a1b19cef849a4e27742099b500e6a2e3cbbb780e650cef82694a4', '18214c3b7ff009ce3e18d8faaf505583884be0d216efe8a98e3501e1a313488203ab25397ac2215b', 0, '2023-03-01 20:03:12'),
('a0bd5d640b7af4a95d8264dda9e43e1dced3f8b744c94ced013647a925e48764972945af605c7b7a', 'f182ca95c0b779519a28d1195cf1cf096bb83fb8d37841d4be8c160a54f5deea59bcad9fdbc71a10', 0, '2022-11-02 00:36:31'),
('a0be92f2a9cb04baa2ded3d97fb6c944822a1745f836f6a6a72e3809767279d1e709d38b317e0d0e', '7b6e11af718ef9c37c3202476a01f3bcbc8946515de8b65cf362c294667245edbd8b2117927bb3bd', 0, '2022-10-27 17:27:56'),
('a0c702153e5c5d2c05d4ad21f477b33f0e22f316daf4c275efbf471ff742fc208bfda913bd31e3fb', '0789f19a673c61919de3355fe95687bef63f7a70e69cb49e88b6cf04c2c09bb9a54d811e7d93f805', 0, '2022-10-07 16:50:03'),
('a0f4323b6264a1df4029f411c3606fdb74df03e32461983802a4ea0fc8b92533be899ae7bed2e37a', '586edf7a4fc3ad8dc412af1d5f1287037b1de24f39526c36cc8ddaba553e0220209e31db20bcbdff', 0, '2023-02-28 13:51:34'),
('a14300d2e355342d05234866d7aa30b98749f3a0648e939362b30d052f1cbb17696b58442e65b700', '2200f7e3675d3f9c6832769e366d32d82827f72a02c7584cb06ca503abf04d7b00b84e74f780bbb3', 0, '2022-10-29 14:50:38'),
('a1ab687b84637e8f495934ec11d6edc7e44d91d1fe6cb25d7e9526a7973bc68f8f9328c9e0c11f72', '6fb9f55a2a5143d286e75e057d04df2c8e0b95a25ff83dded8604a355595eee34bdf8bf680869391', 0, '2023-02-17 18:08:33'),
('a1cfca842479332dda10726c1301abb7bc4f98007b69c4c89df5297aec6f74a75fc48096625cda51', 'e30aa25e4de6bb6a2a2bf4943e8353dc66f8a9d2f14d77eb4e5c89f169170f9c871ac054a0c2fd2e', 0, '2022-11-02 00:41:28'),
('a206dc10a340692115ac437afd67df348787707796506a510da23bedb29f5c1bdd6551a658010589', '2ac9464deafe564e2ddb16a5ac279d6230fa09d3f2eed917e56b84c540803bf90e396f1e7332943e', 0, '2023-02-23 15:03:01'),
('a2979a2c091e52b4d84b5dc2c8559f7e046033f9b31d19ee808825b54f12af615f14860145c60d04', 'a785e1df4734b1d36567347155720b724a2432f96dfab2a82bf1c9195966d28eaa0e5a7b6543f151', 0, '2022-11-02 00:36:26'),
('a2ccef210faf4375ca85f4060cd1c8867f24a7a5bb44a934daf2d36036742d83d2792dcfe5fcf6f8', 'aea9ea6df928c7b34c6243a6900c2f3fea56be4769a870eefbaff015e1efefc56376b2849da9784f', 0, '2022-11-24 23:03:25'),
('a36ecaaaebdb4860c9b9edd6e06f3c563dda3e98d3d890034ed5e782ad695e6a53d427081e212a31', '14121c46b56cc88e188060d41153aa14df4ecefa48cd39e04a373d293fb7a28032c761ef270da536', 0, '2023-03-25 18:19:15'),
('a375a585dafa79f28fc81a0f5c4c293ad7063b2d50d956a446dad6b9499c2791f7cc1b7362de2792', 'c099fc10e9ce5f06f72c7779c78085f637d486ac2858f5b3e656d6f27e7fbf85c8676c400cef5d15', 0, '2023-03-22 21:45:48'),
('a3a25eb075d250d4b931123d4c4b39ba0d785d7dbe0f4084c6ed120fbab5eae3581f4bdc4947c267', '0e00eaa5380030f60b2c9e1fd54bb182e939e58df7e1725e5abd7b8858ea5d86e42594fe27cfa167', 0, '2023-06-20 14:10:31'),
('a46f5e1a1e7d65401e728c7bae1d09b0ef983f853aeee75b6b0f95d9de2519d037bc81a1e247d298', '7ad71eb522d885531f8791444a212d2a7244e6df3dc5a3bfd20b393768a405fe99d5e20d0e05636e', 0, '2023-02-08 14:26:41'),
('a4b5a9bcba0ce2561a19a7cd9465720d28a8e41359c93a16ff3e3ccf4b6f4eb05b332988809f8567', '9bf8eaf6c927c010d04e6f70daf69bdc2c3f4f3806f9881a7dcbc9de2e1b3ca6a35fcd3eb9b486d4', 0, '2022-11-02 18:07:26'),
('a5208b6969552c242091f1e2445e2a686e6817053acf08a22d299df0ec54dc98785941d3a4572f3d', 'f9e2feb26510dbfea383cce6afe99e526ce0c725da1b5d223669c81d4028da8e432de81fb808ef7d', 0, '2022-10-12 13:39:37'),
('a560ff06093bfdbeeb67c35e830c47609e2578646928e912f40e717b1db4cfa1d4db7f22581590b8', '858e7fa249cb75a2388171622c465e031f7d509a06dda70368f1ced6270ac8d75904f1a997276be9', 0, '2023-02-15 20:38:54'),
('a5c4cd251ef20d33b99952d62eb82b215f5bcf36e208cb5e6f0dfa6af8d74416145b395a204510f0', 'd89a74d8abb145097a73ffdf64b4c7accc35e82fd040ec99a14ca267f35c2f7674b425e32d1b2643', 0, '2022-11-02 00:39:44'),
('a63993849940ce163ca0a089db9ac620312dd1f79984735ca6ff7c51a06b2be4efd6e49bc49a4c0b', '212889d8305c6f16c6c15a96ecc4e7fc7ca82b7c847bf1a8ed0c7c299603fc22860774d1abc460db', 0, '2023-02-21 16:48:03'),
('a765f1ac9b28a1ab3bd74db0584d807599e3373953194d0201db74179a2da3fbef109aaa08472216', '937d24b62de7ad33ecd528c6366a5f302d634c19406583f97a50654bc677198661acf3229a0f3305', 0, '2023-07-06 20:47:47'),
('a7b43e51c10d02abd514296969b2ad9dcc416340add37d5dfb4fd0f6d8daa8fab3b564e226fda674', '86a68a568f2021eddeb0f71991ed6073b9f0593868f26423413d1b42a65dd21abd6d14e9b20cd7ad', 0, '2022-11-24 21:59:19'),
('a7b755a1dc313787c76c431f82d70491b446da58c1e19e7d31f703004771130981f03023d40452b1', '1f4102ad6129d612feedffbc58f2b3687fdc91a63d4dc435520259b129d46d155673edbd0f297b5e', 0, '2022-10-06 18:01:20'),
('a7b8795332b7ee0831d96a676c9ec9af19d10a56b1d8bf4836152274d36a132a0b6fc785ba711c7b', '76ef19ea0fd57a75423354c3862f3923bd28f9a9e895383feaa41bde064b751b80868f76b539dfc6', 0, '2022-12-06 20:53:33'),
('a7d2d23300f322ce9928029b5a957375d8387a99a9bb5309b640f275ff05422d5348762cb3083cba', '6990091061aa96e014953a8d207a9dcf68f46c8dc885e64b09b15961339cb9695bc1be0e0925231d', 0, '2022-11-05 12:57:43'),
('a7e201a79912ee97c29eb595c0af405ea66daeb85d21df4818b6cb2c5e2f194576f04ff929cc2d7a', '446b0e187042c451c5a4bafa060d77e6b8856be306265ef0f4d21fe54d50c72f2fbae1328cfeb725', 0, '2023-02-17 12:47:35'),
('a833f85398b515bf2bf832c8919b113c6d9a3c7ea55eb3c5b3854b65a0b593da0debe8213de0e162', '0f33bb6eca2de016f7a7e956311cf60e3baaf903bc6fbb53af39dbef42a01bd863e91a89a298c5ac', 0, '2023-02-23 17:47:25'),
('a89b0c8a09d313eb40ce4479a363a02eeeb1ab849709bbdf1c9eff2d60817031ff68706e2927b2d3', 'dde1820383180f62a87861bc3e2563224eecb653e7f23540ca85becc90b7701c2adb6c357bf83a0e', 0, '2022-10-29 13:53:17'),
('a8b34d3649c0805754d3ac063ef50778c60d542a385bc4895a6d0bf53c47d2a732dca4333ee003de', '78863ddd7bb207d2d8ef7fe9b0c1a2ec1fcae249e17c139da676e5dc8377f3372e4a34cc6b01038c', 0, '2023-02-15 21:06:34'),
('a8e55c50a65c87a13f2a2b0110303c0a606f7d903d45d648cc68fe33131ccd6ea0a7821df045b940', 'e4447a12be081ed180bfb85c138706ee3a283653a7f9c328185f9460133380188a422b17d2db71b0', 0, '2023-02-22 21:58:02'),
('a9b002727b7efae9e29de0ee586f7062ea0b2907a01bfcaa7fd988d3445dfc4e6090aeab5811bb08', '34a798c2ccc69cd73818d09a9c228acd1142ee3d65b3f459cbfb848eb16e17346d5013a0903f18c6', 0, '2022-11-02 00:38:38'),
('aa1dd0537413bced3792268f4c7c8ba0d0a7efc0bad2e84912eb2a82a0b6505f36c8a898dc8bdd10', 'afb31c857ceb5930c8c873f45d393df52cac9a4093e21770db32df07fa8a0d1bb2b9108eb2dee977', 0, '2022-10-20 20:48:39'),
('aa3034c576990b18844cf83f3463753f844d54254369c22fcf53e95de9195b8c57beef041cc7cecc', '4a7e8edfa616cb094000ce95268b51555f2ccf032d991a424a0754cb704fa72934e270e29de57288', 0, '2022-11-02 00:38:40'),
('aa60006075acb316b657c4bdca932e0fcca1d9c89eb318599f63cff5fe69341ff531110db0183417', '4bbbc8a5f1587bdab3abe3384e6535bb460ada7b7ab0fad50644e24e80e43d2af4f94c02943c714f', 0, '2022-11-02 00:38:42'),
('aa72c51283735dcc15ab0647320decbd19efbfd518f15730f76c3c8ae6988f0af0290a62dae3e7cc', '2fbd70b89cb5f7322714da94710afc0f5c0298df60dd1a5653fe1de3ef3059d3452870669fc5bf1e', 0, '2023-03-03 16:16:15');
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('aa9e8cf619c5e1cf67329e7a11bf7530095fadf080877afd9a6ac83667320f28a855a2fc49764746', '932da5f00606898a441321a4edd05bcc0caa367e9324cf6391f27b396efa124d054732603d03fb19', 0, '2023-03-15 20:53:23'),
('ab81f87cce5869c22a57102192e0339c8260df56ccea61967a5cf10bdd58bbeaf8c640de0c56aa69', '6eb345f029b7427c94cd173871c60250c35bf63ff6a05abfbf0acd3feaf789ac51eb030b7d3dc23e', 0, '2023-03-30 18:55:33'),
('aba346d2ab6e82ce06111a03649a0b3969a00f1f91d70f5c1c0255eacd5624bb300d82a0e1bf4487', '76da5fac45ca00dc06b34903e214ab71d25b4cfb1e363683b491d0bb3cf4741f352eb47744b2c129', 0, '2022-10-06 23:39:32'),
('abf638f211f5715d9e710b2e3cbe6cb2799d19796938edf19e39e60620e7ff07e8921d1234a77da2', '297e2b7895ecf88dea70763ac16c3d5c820d1b8595ffaaf5fc6f2b8ccfb2de7abeb856b564f976e2', 0, '2022-11-02 00:39:58'),
('ac43f6389a6e51ff2b9f9d796f1dfdf74ee8c88d38261e2be38c59d8e259567aca828513427a334f', 'eb5d5e4cefcff3b774476211f2d12e92bcd8d28c9f334421b68b67b0b8d432b210f6e7fef69b8fdc', 0, '2022-11-02 00:39:53'),
('ad9f64dd680447c790f41e510bbb1fd7c009b5614d377e87ef3d9065c7e213c699a2bc0a9e5271bf', 'b152a1a7bba5b9458bd02aa2f267c29eb1fa9b85c32d46aca34b1c3643561ff7926b87cb7d99fb7b', 0, '2022-10-06 18:58:30'),
('adf0b456002bba7cc4062d94d7021e162b12daf338cb2dd5b0029b2af2686d26edb7ac55528a0ef1', 'f8cfa20eea03dbf35ab527f1baefea9355fea95dd1ae52918d908c4b3b1fa7d8dc88b43a31f68456', 0, '2022-11-23 18:45:08'),
('ae1c1fe06f60f979c658bcd4590187f51c8f8c88fccc75c759be04e2213b5a8841c73b4a58d5ceb4', 'a063481e04b38ad784fedeb95788ad9cd2cc7bee0777b08f6e8f1cceea7dcad34b6d8b86aaf2cc8a', 0, '2023-02-11 14:47:07'),
('ae89a326dba9d03d16c58bbb37b4e793270b4ec9c88d46c2ef76e763f8f17436835c41ae442ffad0', 'f6d17f18a2ae40ab59a225f0d7dc537900c26086799dcfb3bbbe0e773fb42763d9fe85710d091fac', 0, '2023-03-31 16:48:45'),
('af57651592562b836d8d8d0f05e212b19699db1abb1247f9ac2e27661bc690b16c278c825f83cfb5', '1cabd7b0d82f2a293e138eb4f839403080753398d4150bbc0d114f4473ac83ccb92184a797499ad0', 0, '2023-02-02 00:20:53'),
('afb4d2fea9500c6d3121db76e4f40f7df4c1abc0453763443ae5fa9aeacc5ad6709cd9a1a8e73eed', 'a230a87742827263b3607ade6868376c7e4ed105d87b081d23e25388bf7563534121ec6b3c55e064', 0, '2022-10-08 15:24:03'),
('afb7db79a87bc7ba98f212e0ea711a997b68f306bafcbb04492c329053616d7c7f2d058cb8707950', 'c832371f509f590e7d2294960e93d036c3a54b73ccab366cf3fab31f2fc3b339b3bd7fcc78538ec8', 0, '2023-02-18 16:03:06'),
('b00f295984cdc9f4161282d0ac51ef5d63683b59e293ca7f5eab39ace9015888afc6dee85ee1b58e', 'af5524151ba928708d74cdf9f554001dc99e0dbebcb668a8e95086317ffe618913a643f4f1512392', 0, '2022-10-29 14:52:38'),
('b0dd30f91bbc0b0852e66d66efdec4449b27e62ade4ad0fc29caaa1569b354c53690225adf54fc82', '8ea2f7d922750264aae417e626cd82ad2db63eb8c7958dff521d113cf1796d353dc2e6e1fc813451', 0, '2023-03-22 22:42:32'),
('b1083b7839900098e4399d6ec3184b341fb89c57a91df2618139e092e30e2e46d790e8d48b6f55f1', 'b466e50d61ebb882a6e08e42b203b41bdef5f21c0c0c656590b9d97bb19569e7eceaca8601c17dac', 0, '2023-02-07 19:10:54'),
('b10d24f64ada1d1564e6192fd1ad782949ffcb51161f4c24e75ae4163c76bc520b564ddf449ba683', '2055e41275259ce77f13bf9277436266a58bd9f2eface56ae98b5fad4a9afae421c2d7236956df66', 0, '2023-02-03 20:11:32'),
('b1156fe072f901132256df17fcbfa98d7fec2be02cab1a712190b9865358c935a94629665a5fc922', 'cfe526e406980d37f9cb1cb166b785fb39731b85fa6a75542d6e215cff693cfdd8a1723bbccf35eb', 0, '2022-10-29 14:52:53'),
('b12ff03fce893d6f119b7520570ae0179006a0a1b1c97d9af074b5b0c73165f5e38aa5aeccdceef2', '089ddc783a1a6a923f01181c11f832e9b05638805e410cc15067f1b891fb22c1ff1e1111f854ff9e', 0, '2023-02-25 15:26:48'),
('b1722decb99b8e4fe531ba0a85b3d9a0696860048aeff679bbcb60e2817e2fbd8b43814efa8e2117', '33ce8fcc447272ca0949e055415764c0eeb27f5390bd57c70427d9c81af37414606eef64b47f0b96', 0, '2022-10-13 21:32:38'),
('b1902491b42193a62b827d8b98b8fdaf548deb6f2b93b98583d3b91d4bd7585a5afebff4848aaa41', '73722ed25caa01431e55d8fb299d6e2f54e8ca85496c2db7126be4c2435217c46c30a20abcc3e1e4', 0, '2023-02-07 21:28:30'),
('b19255509dc8ddf0480af150a05ae691bedea4471fd63bd4d613e2431d58bbb4e6b6b82c35870641', 'b734c2a51e5221d30cc5ce943b0cb4256525c4f7670f84a819189327c570bd9eed41e38c2d7471a8', 0, '2022-10-06 16:08:01'),
('b1be9c5f8d60b25f331d7a6f243e3a49655242a0b648966770c2c159cc84171a3d8873f9d9d2f01b', '957725c3058b5ddf491f220a665ed051d18654c0a9e68a6fbc1acd2f1b927c6dc3df35d83e685680', 0, '2022-10-12 21:09:51'),
('b1c6e1823b7ac83a0a3705fcedf7f852aa609cd1d15deafd65641caf2cc96ef550f632b874ed3349', '2afb708e5919ccfd20647afadfecd89171190baaa2aa05c44947f873558598dc6e37a29e4c4f9121', 0, '2023-03-08 22:18:01'),
('b1fb0cf8d769dc08177a78417c696cb98adcba5528243782c3fa5df5a4e0a2f68ab999ca081394b7', '4d6901f242a94a12a221a67de8f25f3a95eb21f16d2a097003a9be8a1f3358ef34b9d9c7a7c265a3', 0, '2023-04-28 20:24:27'),
('b240267286c13011c98ff112a748b873149d7e78426fc28e6da7954c8a63c4e904ed544bdcd34c7c', 'b01556fd4cbe2f61f625d8f7ef824af17a310c59f985da134cf630bd58395e0f8718d0380b6bab37', 0, '2022-11-10 11:38:58'),
('b24bb59af2ceb842b256abb4d1e3f381ce01b35371e89aeaed8590b7bb0b6a9623e749a5d9c39039', '2898e7173093695fcede7ad9ac5d0c06e3a9ad8072dff8b95a482bccce800f4f9ed9521367995c41', 0, '2023-03-04 22:31:42'),
('b2a471d999d50ecaa2e07cf3babc8cb935d81d94002a0b68e6e781d251480146a6d3ab4c10d4f27b', '85bd60fe248f75c1004162df4d35653a95b290369bded3dbf96eaad2e29528e89b353fc46593383c', 0, '2023-03-22 14:34:39'),
('b343b4303bb0c24403557f21d2bb5cdc4ebfe6e693094e5171232e92ae910362baa99d559cf422e6', '726a153718050497314a6bd3cb6a9b747b975267664a1bfd85112259faab2d73c961b034f0fd2548', 0, '2022-11-02 00:39:25'),
('b36528b87557924a7c87ddbaa5d55eeb1f0f6295556a68d5e72d6889684deda3d03e4e2c6fc66970', '83b016f4777ce24414831a4c8ae669f1ffa129152c67d61d603378977bea9b39d7eab0205b128809', 0, '2023-03-08 22:39:02'),
('b3dba39e4518c2b152be266293b0965ba5d6ac8c13d9d8796c6e6a5209220ed9414bc7a0e3986147', '872e4337af323b3d92e5bcc08f6a0fda6421fe3092706813f38ff1c55691f9910d8c743169843249', 0, '2023-03-31 16:38:01'),
('b41c4df46f242780c0d453fb7d67dddc83ff27d130102ac485442c5ea5da298b662a58725f40bac1', '81f4e5f5f44f8d5f4c09a8cdbe4f68b3a884147b64c183a3be0d6b2f86971b77a96d624ce882fd07', 0, '2022-10-05 18:05:06'),
('b49918c5d6c0f174a1ee6a0e1ed2e08b7959b0ab19e570c1e81fd0c73fe9af1b048e83a0d4457c15', 'a5f1511b825a8797d89d49ab556d1d23f87961850b38095045a813db7310dd1b49e25c88d22a27ae', 0, '2022-11-02 00:39:33'),
('b4c91c902d52e217090df4f205cbf10a748f022933a8aac3ed8042e0b21aa497a4da5157d5d9c356', 'd5ba77225b56daf3f15ca2a236e9414b333f8e2043bc985f874627c7749d161850df0a71646d233a', 0, '2022-10-05 22:42:53'),
('b4fdb9b929dc972c411def2d18aa60dc12fbc41b9d798212f15f5c933fb55ffe68d04791401fa028', '6a4b6d913017e809d6cb1dacb8015220d3be1ae2c9696f5c2a8da9f892760befd06027c9756238db', 0, '2023-02-17 13:49:22'),
('b5c2299292d2f62af21463594d3a7d0888e110fb8618166a7c42aab4b4bd70a7467f32a2c103f615', '52c4ba421402d91d713e7457e01b8981722ac0b9db6f756447c3ac9d9ceadb3e916e9584961a3ecb', 0, '2022-10-05 22:32:28'),
('b5e3d03f44126afce048164f76c3609a89b89651f217a562ab10a51162537c99680365919cd97981', '69474c3f244ecd603d23f3a5877f2c8240862987d7fdf6a76a5c6ed579354f2370e961d244759a62', 0, '2022-11-02 00:39:56'),
('b61f9009d6b50cef261b488a557e1c9d2a054a56040b8098ae1933555673966b36cb8193d099c1f7', 'ac53ecf2883dd1dbc71698e322f1e44945bf736ca9308c41e2a2c57a62f2c9f0eb00b83be408a1d7', 0, '2023-03-04 15:12:47'),
('b6c4e89562c21967ea279d44d3ba31cc9a5c2ee810b22ac0d4d0c2736a82d8babbd8a8a9d479fc55', '198db78733c5f3c7676d9e7ddc6727c4063aeb92a5c676357247cd8eaf6418ce74ee86822ea804cb', 0, '2023-03-04 15:50:36'),
('b70a134f6c2a0b1540ac04b2b48fa92121b335b18957a48fc04ea07cd804f2d31e898c2bb814f98c', '3ce4af8643ef47c75c1d4834a865560ad0dfe83f3b61406c1932cdc64dc9e275a518ae72fe7be582', 0, '2022-12-03 20:33:40'),
('b761a06777fa9119f640e0651ad5d6dca3547793f2a4bd976ad3d320f33fa1dd74bd6eae82190ee7', 'bfe6b57df621a7733b74c06a631c7ef7961af616cdbcdf71591abe2042d3587baf476151339a1aea', 0, '2023-03-04 14:04:22'),
('b7eda7d3fba4e00acba3e535d9bfdb84ead25085ef1331744c7b269549a271c80fc43c7b8be567da', 'eec080693d19b1621b6e2ce3427c6853c12cc7388ed076e27fd15c4b93262fe1cef8a814718fc1db', 0, '2023-02-25 15:28:23'),
('b7fb263b656268a164704872f43a4b14516692417f486b1643046d92c8379a627733d9a2bda6d41c', '1775492127049ba9337eefc830caff2df969fa99943e1f36d22f830323f1fd6cde12d33b0bd98b7a', 0, '2022-12-08 20:30:53'),
('b8035d9ca24ea53ec2145965d72b91e83b18ef8cd090d1af5620fc8b4517b92aee4dd9429fc41b47', 'ff7f910a7d548c5e310cae9c3261f231fac21c64c140385c4cf718cdd6b09f9e33cbc43fabb2f153', 0, '2022-10-04 14:24:59'),
('b81f50a45baf90bd86dffc7544a6fe884cba4cac7887da2da34fe635984a5b170e0af424b5a2f723', '4d80a15e519d9afa13b9b59fca379858222a7f5dc76fa77b2adeecf8d84e842942ce94c29e2011f2', 0, '2023-02-09 20:43:12'),
('b834b7ed7731a5858172bb0ede810012aa9de6e06bb23ad935d526467ba359cfa36748248a8c7ced', 'f3e66e5b4dd4eeb662d37fd4ef6ef3051365a0b3186c4ee423786e5bdbd87173f7c1061951d98fe9', 0, '2023-02-26 16:17:52'),
('b85ad35bc3ef5ae09df1c8ecea952f8f7b0bcd1e7446e1086834ff0e4a121a67bccde8fcf91d668c', '981cc95d105d18960f9e1d9872bc428fe0b4a621b2e4070b590df0736dfadb1c42d33fd98a147a49', 0, '2022-12-15 21:22:53'),
('b87daeba3e03d08d020add1c003c69294bb9f35ec71edcb134fc010fe143cfe1363f1de5bcc5d22c', '021e8cdc3c60edc742fea8c1e31922a1104836656a2df3cd3d8dbfce16ffb374280bfdcc57b63a2c', 0, '2022-11-01 18:45:48'),
('b8977d88214064d55892cac0420daca3caa2efc29475d84b2d41a3167a30582b1c8ee995b1a0495d', '6d6388520595835ca4f58decb65a42f54b29a1ab2d6ccfee0a7c12eaa37a525501e0237737aa790a', 0, '2022-10-05 19:52:26'),
('b93bd593bb316d365be3b4d5a4359947318d9363422cf17a2221737720e1c2fb6df9da3ee824925a', '92013071fb59e41d7b6fe8bb7de8be055e86258fa3f55d4c6e5b283c550d2a25212b5adf105d02e3', 0, '2023-02-18 15:21:59'),
('b9c3c747236cf86aefee3a077486e65b29ce0865ff2877b8b55aef3f064356049d5cbbdcbb39c239', '209b0a4f6d1714b3e9241229e9c385f31f895c7c4b98d045062df8b33abba8b8575ef17966e304b2', 0, '2023-02-25 19:54:53'),
('b9cdccb253cc3c770a4119be1649954fbda92360230f80470fd40b0a4726f9d9b2e793b2fcf0308c', '74052de653b46f787151851f80ed9a857f16de3a374589ab6ca61da437eab63698722b2cf36735df', 0, '2022-11-01 12:53:49'),
('ba20e51990bcd7a76cce19784b22978a251c4c92fb175fe89bb2918bc32ecbd78982ae214c23f92c', '9bff9b01cf70b09be7d853d861ffdf1ed22c9cddae61134c590e91354a34f1fb7ab57d35d0a84f09', 0, '2023-03-14 20:56:09'),
('ba27b8830da500f8f57e9b2e1ae17773ac9a0c1fb498efd35a49930d3cccba9f2bf5878da47f0c0d', 'b819803f217cc213ba9253759e5e64782d9b6d7ff212e5e4f729cd3118b5096b119244de82567b62', 0, '2022-11-02 00:39:49'),
('ba2a399c762abc38ef2ab2f03245d83c5313f4d7964b56766f22d25affe8720da7a6b5a237586928', 'ce994c7b26cf4c8a83bbfddebf69c21b4c9b1e5a537cf8887357fa4f63f558cf427bea0b2d3c23ff', 0, '2023-02-01 19:26:06'),
('ba6ea9f396f509af4cd5f06da4970b206529319d61821ef04fb42c142066f705973586def9fad0a9', 'c105c91ce055e41709375d78402428dc93c3280d2aa6d90c41d5219adb8dfdc64d449012aa474369', 0, '2022-11-10 16:55:08'),
('ba84d735a6cadc6b4ba5da0a2d21b99143a2d0e1f3f4e32b7f018751fb887544e522ab1917184778', '3bdc86a90fff4744f11ad16330a283d9048a1f1d395bfa3fa69a65d7736bdd0b48a44c32bae34e8d', 0, '2022-10-05 18:26:18'),
('bae3b63ad621e23992517a015c4a8a4738dee4a4c114c327cdf65c829de1963c52fa055855c1a3d5', 'c3dfacffb215a7d8085501bb90b13031de188af190bdc1d9b86faaf3770232641d010b10a05ec409', 0, '2023-03-30 19:07:10'),
('baea1699964fe254a4be8ea263668b64051461219e4f7a5688ed354d05498d4b33c7dfb894db7b42', '65e89fefa1d528f66cf6966e86cf1cb353ef4ebb0449559240c01ef92e04869aa99723fac85a6703', 0, '2023-02-11 15:07:23'),
('bb2a9b7acb05166852225ce6fa47795f3869c5169d906d5176f7b18115b1ea39352c0a45ab453918', 'c16810fc2fd4225644b5577f6ab5db639ce344163b8de7b4d9ef1734c5c15fc0949c234f8fa0bfba', 0, '2022-11-02 00:38:28'),
('bc39eda850a354b7bf88c6367af4ffbd3f35772416c87b7e5bf5dee02efa692bf9b0c38c5bceec31', 'c2139ebe66b9c75cddffc44266680779f8b45c89bf94f345ffca736663389718b0fa8a7af8f31e66', 0, '2023-03-22 23:00:30'),
('bcb486bbde1aebb627a51ed7fa04555870bb34f0991b55883365488fd6bb76a1c6dc6c486c3d6b63', 'dcf3d856e9f18b98902f25fafbca123521d01c332f12363717217ca55867fd1d94ff58d3dd9a153c', 0, '2023-02-18 15:16:31'),
('bcb5f1cddca79710fa59401025731dc87c416a6c607d42e4b9bfec23186519d7312ea49060fc0618', '418b1227acc9af26d998d46f2df7a933659e38fa2d8a432ac9c67a3a8d7536ff6d6d166056c7e451', 0, '2023-02-18 14:06:16'),
('bcc79ea589a78c630a0e72517efab948456c22abc2f2eead268dfe8040be898f94f43ab3679f27ec', 'c4e3962a45fafd6fd66fb887870584c0b36648600197773baec9f89b24ee1a71dd9a56c1520daf7a', 0, '2023-02-25 21:16:43'),
('bd458df1819beeead3ef37702ce97b35938026f7c923ff042ff8cd25a9cf780d385bd117804ab7c0', '59424dfc0f6e8c9471304258fdb722fcdfa545866579322c0761ce33bdc8482ddc8453747ea25eb5', 0, '2023-02-18 14:44:28'),
('bd8e6db08891e048eab72a4292fbbccaa6a1131228eefb4083984669b05f802b0e9e37a35fb9deb2', '6b7de19246d12b560dbc7dc16bff85a70ea004bbe315dff01c6b0774a604e720700a76f2c9f752e3', 0, '2022-10-11 13:05:25'),
('bdefa80586c8f0fe8f0994a9032405109db49e71d21d308edd911f52d78c31d4579691d49e7746d3', '4632308f932c2929abe1d2e4b7bc80632aae8b0dd6b94a42273dfea910b38a9c0076c993dba6a5ed', 0, '2023-03-30 21:54:15'),
('be26dd7f8433f83d61ab097bd8eecc98e20b776033ec95e8a3796e98a0a8c8584ba9fd56ef5571e4', 'cbe09f1c6da7f2fd384d7d21b50b6fce8fbe0d935e343aea743c086e58fc813390c99e691b4c1c2f', 0, '2023-02-07 18:26:37'),
('be6cd0d8ad91b4ba597d1216501dcdb187addc598c50eff65dab158c969abf1927f28a5cedfb2f5e', '5231d63e1fd596196fd572059b810734fa05f3301ed7dbbe7d2c2275f6e03a138dec1532420629d4', 0, '2022-11-16 20:00:59'),
('bec64e0c72703486f1932ec34d30447dba563acd83c1413e98f4bb1a3f6573e67a344acac388688f', 'cc1a99a1850cffb0164b78e1bb1cee08aa9a6039fa15572b50cf6e3216f3a58dae773d003e8f1e5f', 0, '2022-11-02 00:41:22'),
('bf5f55aebfa990446643829b1e36e5105628755f54309ba31361c1cc41d75c006104d06c754621ce', '81c035ec8e92c35b26e86ad6c8cf22ccf2c538d663197f0a7ffe9339b87c2af30f5c70e7e6e14947', 0, '2022-11-02 00:39:54'),
('bf73e8948906606d150bc6832da78b17c0453a42214ddcd4a8f0fca640e48b58368c582bfd6865a1', 'ed369c1126d45b25cd563a5358c6feef2bed898abd3ad2df677da9043c41a6f44932fbae21f9d6ca', 0, '2023-02-25 14:40:35'),
('bf7ce19a3507bf81fbd3308eee08d00b3827cb53e7e6e350a6251c55462d5053fe5c16fa6909dbe3', '27640fbcaeadf9c15fb9ce5cc3643f57634d66e79dab69f690d0b783de68106335d3f1a80047edfa', 0, '2022-10-11 18:37:24'),
('bf90659de37bc3d81a73afcb84b5301cfbcb36d5533c7379ebac4fb7b58acd8bb31068f366bf975f', '900cf8af6bb62a9b1bb5da498d29fd77155c85c9f45dd0f00e13aeecfdd30ad97542ec543f5f71b7', 0, '2022-12-03 20:39:54'),
('c07d3aab06df737151f81e106a7efc87682394b3de936b20b4e03b6bb1df5263e10aff6ed7302f4c', 'baeb69046202cd5033ca7853f113b0690aedf2ae2a9b310018990c8a81e0194ccd453b00c10d6cc2', 0, '2023-02-08 15:36:16'),
('c10bf00dcfcc2a8b41358eb299e9301cd380bd8cfefdf8042c9447788507d27d8a4d46c85c1a7fcf', 'e7153121ffcbf954f84c802e178c3cbe0dcb679522da016ad24f255de880ca9c1d2139acba32f583', 0, '2022-11-02 00:39:27'),
('c14fd76eb7360df2bd16ce0891968670989cc0e13da3843b9933495924ef7702e46ef364dea4ec46', 'c1c4c44e17a29e1a96d7d0bacef4601b0d51454ab24a186a0089b025378f84853888a216961699e6', 0, '2022-11-02 00:39:56'),
('c1b0141bb7fdb978fb5da5af7125b093945a1e1e7303d2f3b2f69af2006041e48a8bedf6b55d310b', 'a43a95a2d5af897d1df66cbdd0c8f952923c5ced81712430618c0673c651ca78070dc2cd4a068156', 0, '2022-10-29 13:53:08'),
('c1d19c9367dcd9ed323099e2e3a6f4ef76b53f42fb48644fc0ef40d32889b1152eb4d02d4e588abd', '51b735594c3e61c69571fd8b790db9d78b5771dc9ca6bb9e18594a5f9dcb5254d5919534018b09ef', 0, '2022-10-14 12:51:33'),
('c234af9346a4ff02d3e77eb0ffd27728fc11d9d9409380bb8bdf65a467161bfd721823619565f5f0', '89825aac07a8064dc8a97e55c9e4268544d0a823e636e70d3fc9c4851bf1cf63928ebb84bba5b954', 0, '2023-03-02 15:44:40'),
('c243de719da19f52cebe54a069a88ea00941ded256bc12db0c4a94075cb6bdc2b9bdf276cbdaac03', '853774c1c5c7f38e5d4aab5e7486ff41aeb8704da29e5e1079ffa0efc973ab7b9a892f7a2077132b', 0, '2023-02-17 22:31:02'),
('c26bd4dacd9b95192d5dd11f54ec2a10fc60c5776fb5ea0e88e26340e791849a82f8c4bc56374ba4', '91a75b950e12c5832d58a6e2e58b1a1a582bd6adb398834f0c5261ee55af87b4283244671eaece37', 0, '2023-03-31 19:22:39'),
('c2b6a48a4a7918a3a19a5836c1dc529587bf79ca1867e78e514f7cf0485e87d6744e706528cf7cb2', 'b2e6119033e3341dc678c708b2cc389df708e4e306eaf048a4372ad123416f9db58add483187f714', 0, '2023-02-22 21:40:47'),
('c2d960378d8afce552528c20a913435b103b46a50b18eda76a91be8b9ecd7057b987b52c2a8ce3ad', 'cf6432252138503776b0feff4e8ae275233efb24afd993d896f50b48a3137e37f55495bf6de8d7a6', 0, '2023-02-08 14:23:10'),
('c372947a8a86eff39f2edf5e96d366a244094c42eb274123f18203e1ef84e2a522403c0b8f875b86', '483ad352623d0cd1d0811047c19b9ba123e3027652337652fa6a37f5412a31bc127f567d2100893e', 0, '2022-11-24 16:46:43'),
('c3bffa2efdc0efc141009362c5d9bd91c532376b87b96ec4ec9965b8e43d57351886b2361b7e2f3f', '17f23287af236f1c9184c96c7c0e0db357ccd2680eff7f0596d9a0008ba3c2d0935c2c3b74037778', 0, '2023-02-07 18:30:15'),
('c3dbf7570c79fdcd1011b2ede6eddd4d6a6a83a53ef2ddb70e43aee53b8b6678e1c3d98a099c8f83', '3136a86adf3f0e5f5186b54c6136f69a6e03345dc6da7a15b69576666d0c5f093a911bb1787602d6', 0, '2022-10-05 15:12:47'),
('c4b259be4c7ab4b7c0fb4f156e75acf9c4212cff3d1fbb9c743cdcf869805f3d60ea391f6e133824', '1bba76f5e70f3bbed2be8ac52d5dbf7fbbb3f4c851186e175fb639cd0fd6642d6ae34fffd9e68831', 0, '2022-11-15 21:46:11'),
('c4e905131bfb32498ccedc3517c840eba47d9461aa654281f4d3bb2c8ea214aa1d951a1584475e02', '186657a1dbe9846d77c88bbe9db8b7acba3dda55dcf369e21b543616f3ae1b1536ffa1494d9bd859', 0, '2023-03-22 21:38:45'),
('c4f03349457815e60798a68b295e0e980a24d366703d4d582af7d8baf8f799792275f475c61cfc38', '85c1d48c9c4f357e1931eeb4c92445a8066ccb32dac6b4cccd2ab6c0faa745be49a6a02aee54843a', 0, '2022-10-04 14:22:21'),
('c530edc8dbf158295d8244ae1d5264bfed004280a175b35e25372df58470419c421474327a523186', '5e0344a28732cc14d6ca371b93ba3eb7dc83bfece8e1c67bf1f8e2decd88b0a051c7622d9473bb17', 0, '2022-11-02 00:41:10'),
('c6055f9124324ea62335a97d7f23d76bf938c1e64c0e32d4e09ee0cc71ed529531117dab38b4ac69', '7e5a25eb23003c86e60e584350b6f3ebc1fb95dcdca7e73c063ede8930595af3770b7e1cda55e18b', 0, '2023-05-30 16:14:40'),
('c726f9e73ff0ca58cd87b61788a0127d35d82e6e9ab9b31def93adf3e6ba911feca12335742d0330', 'f83e489fe657fdde28f05573613609ca9b635a47a5f1f0ac0fec059171ffcfc0ba801c0b0580a690', 0, '2023-02-02 13:20:16'),
('c75b7ff6c3904e30e4b3b855a09eea667047695c4d4fe09fa9e7698581aa8fd2483b6996393b045d', '67852e68bfee7078bd06dd7b106e17b7cd80da4e48c10de02392219ab33d29aecc0bdf5b73c0ce59', 0, '2022-11-09 16:57:19'),
('c7849393b9fd31cb62a17cc55dccaa419cb5569e98bfff2e085c5fb16816ded07e53de756085f637', '1f725eb7a8ba7c04efc1e80a1d966b1888dcefaa7aa61fb3f5efec2eaabbbdf289c3ef935c2c644d', 0, '2023-03-04 13:00:08'),
('c7936f11243fa1a15146f4b6482a6784a6cc38199f70974dd5507664670aa99c42ffb37a20150370', '885156b39a6a2273c2e435cd7b7f28df2fb92d1ddf73c8bd8bbd389177f26b699338c014c0efd4e3', 0, '2023-02-25 20:02:23'),
('c7c5ef52671f176f216a5b4d6f02c3858c24a2f79c125ccc883b81c5e4ad327c2aed124cf8780f08', 'a6a770248976c980f941550a7cc8e847a478d91a42740a2bd149845c616da39da9feaad279ecadf8', 0, '2023-03-03 15:35:40'),
('c7d961451d5d51bcb33398a1af5a76614384e0592dc48332f0b31338b289d4a11348a121e6b72573', '7bda335652fba6b5f9971fce607a7c51e0009572268d07541b83a346cfa375fa86d265b9ba23caa4', 0, '2023-02-21 16:48:18'),
('c7fa0b50abd4bc520bfcaaf74be979a10084ffc70b4a45bdfaf8fc82d247970a18bd8e1f6233cb40', 'c1596782e968562c6b8e3ed8843890fa369cf97c3d14a91a1deb1e56cf239e038ec03157d717323d', 0, '2023-02-25 14:27:33'),
('c8643a35085080a9de5ff8e1d3ef8a56cb3d1619b84bd58ed04f05048baab558a9e1a1e52f894b83', '07a95364d95eae4f3f2daa6873b2cfaf8faf7de3a457916ab9e4b07b129d00172069813a0d56e610', 0, '2023-02-22 20:50:55'),
('c872676bc19835d7fd111440855ccc58993fbde074740fa860e5dc0c4a002263aa329445d8f7dca2', 'a517e2090b6576fe103a03f75861895d4c2b0144760fed283db9e328255445b26415307e1fabb6cc', 0, '2022-11-02 00:39:44'),
('c8f3b9a4ed47ef32c0347debe95082b8caefc5aa411a5a80ad31772cea172903fa08599ed01745cd', 'ed28b7c68a094d752d027a1e3ce2fa69bbc97eef45ab0e398eb01954dfb1ed7d2c8fdc3baaab3e63', 0, '2023-03-30 19:34:02'),
('c9a7117aecd6b29752c103043be6cd711ea12850fb7e2be4f78bb1465b4856de53a83f646b0dc4a1', 'a5aed8cd0d9d518fb560b44eaac00853ac56836169cf13c050ce83785e96ba2a59e3e6ccf5adb483', 0, '2022-10-29 19:15:42'),
('ca3e64b18c6378897b1261eb9974f2385bf93f520987559b1dd26c6ac289f925fee4d24455acd419', 'bf73318d1a259b13c19b01fd394802f901dc9b7f90f552e0700b6a63cf05fa4f5e9c8d8813401399', 0, '2022-10-06 15:18:14'),
('ca57a1a9dc446f8d389f9090d549c6ff0457f7fa46ed75fb7e82cf31dce9f85e57783bff3fd40339', '91dbf9a73940d1d8ebb23b2fc0a64586aa6a54bc4a76fd89fc5681bea78f95df498d139de0295106', 0, '2023-03-31 20:10:01'),
('caa392e167077302b66f03749e54e773d288d991ab14907bf545cb5ee357996a0b3bd33a89ca0d1f', '7ee01eab2b28de54ed99f15feee65312cb991506016f1845ab81636d117d96edeb1d00234659d827', 0, '2022-10-05 16:34:17'),
('cb18ebfc0ae12a670df3ab675903c80b5a06f6998d4e9cc4a9f9e81f24dcc96ae5a216fe545e391b', '7702c12f25f78edeaacd469bce858534dda110e1cb6759fc1b06a10b9aea2c85ad75d51210630555', 0, '2022-12-06 15:41:47'),
('cb3a5a78905f6aa46c2ec9c8197657e3def373192f967555fdb2416fabbf515a5e66be4f3cb158b4', '65498574c7b3c987346321f9e219624c4bf6cae365dd7de10768f74ffa0921d82284978730bd6fee', 0, '2023-03-10 22:24:09'),
('cba8228af10d8beb9b5c02c17541b0b9094660f2eb1feba534051ebfff023283b6f99cab0523bc68', '310271db165507a29c478753a3bfc803bc10b7837abb652db0425930e9b452c78c78bbb9b755168f', 0, '2022-11-02 00:39:42'),
('cbabd40e925c1a2c42e5e70b36a3f13730ecd25b86f24a72603cec9670d4fbcbb20c62182c7504be', 'f35017a2472219860da8fcca7d7d13ed0c42b1c9f97300634d1ee8154601c3c9bef75a5ac5c4e478', 0, '2023-03-01 20:12:05'),
('cbbc102ea2403e05062692f65d9dd5c45a90ddebe6d5399ceb9b17a14314292e7f2d795f77632611', '10a0d350561a72ce6d53aa8f237608ab17fa87a4578aea98ca7a3c63808801403430ade378887584', 0, '2023-02-02 23:40:16'),
('cbf9f81f94ab550c23f2e6754ed6726c68436af839b09d18063ea2fb84471e39672e7f8e57f26e61', 'c2437261da6e42a1b5254990580f89b9f5355337e4b4725c4898d19154e9cd997143f7dd54af4234', 0, '2022-10-12 12:50:37'),
('cc0438a758552ddbe42cafa4e8bff97687da445ea93571672de4612bd83c8c09b3ac6c7e3af80481', 'b1b97e78d22abaa74aeb1054185f4d7c5ad65754313fa3e89f3fa9c61ddd69b6075ea38a9689349b', 0, '2022-11-17 18:04:55'),
('cc57da484057b3170fc2803d90b7f7d8c0130d6e4c33bb4a8245f131dddf3817f6e5d27f16f5708b', '503bf1a1646e44a1c453b4391a3eb62f15d9273ff36318ffd019a050c7742924de223ca308948825', 0, '2023-03-30 22:23:18'),
('cca1fdc1087fdca97e7b55f5f49bec4815f10ea3ff7ee67f264d92be9da81a93f76ebb734122c41b', 'd8615ba30cbfb63a37b72c9307dcec90567a466fe1475b01ddb9e4c8e06ba9b7f1d41faf932980d3', 0, '2022-10-11 12:57:32'),
('ccc1a609ed8722107848b32a3d84c34d05ca8e33d5d23ff82ccc9d891ef306c2b7370a8fd99eae2e', '0cddf06f65aaff32dc888b41e96d4905a72bb071af9078d3d13bff31ec0855cfdee251154fb2b7c9', 0, '2022-11-02 00:40:29'),
('cd16862fe05ffb21f3e1b5f3f5e6eed09896bea621fb44c039545c993fa01e4d873d2967dc079655', 'e53e8e84db72d47ff853e3cbbb47e4f50757e20c1b7b6081e274968625a9e22f539955826f73bfae', 0, '2023-02-22 18:58:54'),
('cde4c08947871a3f85a562a2f8aa21d929e72fadff363fe670093c0f6e55a4d25b1193177e88474d', '25298ed7426d0e388116e63c0f062f91251ce7198bb0537f32acd7950f8b51b5e3137d00d232d589', 0, '2023-03-12 18:54:35'),
('ce1faf8f7859cf4553ab35ddf3465385ff1d1e8676372c4210722f965d9a4d9156841b0bc15fa232', '0fc042bf0a32afab07cf738d83c51ede9cdc8a4513b8321fd5a0ff09a565066ebb875980d577e237', 0, '2023-02-22 20:23:50'),
('ce3f0ce9a8f90f27d1553065aba6987c94470c7eb7f4b5bf2fb31dcd4149e228fcf9737044118594', '07cf4c8c8445e554b5ed771441af93620da5e1200c4e0fd4b0544f4c105bd4469531cb75d18d58ad', 0, '2022-11-02 00:40:35'),
('ce6943dca1f67ec8bf36cc5f723dbec7de3458de1bde36676a8dc3ee56fcd0b71996c62a822a7d72', 'bed7a3a7f40e5777f8cab0e08067db6efbe61f040aa43a5153e59966976376f01d9ed3a61654fb50', 0, '2022-11-09 21:52:13'),
('cf14c698cc437e91b60e0ce2550e112ceba7570768eaa371ea6a109a0fcadd20e1222fd973782951', '4197f05fa10d10b91453c7dc6d1ea65c160f561b667a77fc14855cbb399ed270704f82097ca1a063', 0, '2022-10-12 01:38:05'),
('cf78b8493d7ed2d6a527d5b206f447966aaf966e0186fcb1343e8fb8932ff8c67348e72672c825b3', 'cee316ec7c41e328763505e6a59a3109e249e12e27c4af47d5bb51afa56e6f81d5c3fe075592c6d0', 0, '2023-02-22 22:55:07'),
('cf938a1fd9152d74b3f9c22d9af5ae9b63bf7f5050ffc76507a43ea42014fd58561526e6941a5192', '996fb5a9a03433aade5df15a21172823b038d09b6650991c89775c4e6557f7a40a943e8c568fd761', 0, '2022-11-02 00:38:37'),
('cfd4bb05091d703d3e4b67088d75f817e89abca025b3b4ad65e8245424473a30dc075695728e32a5', 'cd345dee09180090976bc24b1fa305e8da1ea95f2b1f1cf8f3dc753a06280499c53774f132a119f4', 0, '2023-03-30 22:18:55'),
('cfedb4eda4433d766c5f00b125cf17e851af74ffd9e92e649fcb46c7ffa32f6cc5ebdfc853d99033', '231330e12308ebaa448dd815742ded182b106eb3ac535ebbcac65723eefec5919bba346fa28079c1', 0, '2022-11-02 00:40:00'),
('d02fa21bac77b52a64f1231eea6021e368321a18c6591ca83bf45bbe348bb06c030b3a304ce27b1f', '45372ca2c39dfaf297a9a0444f73a46e691fd2d28407c70a7f33f8a91be3e96e901cb1f0dfe18142', 0, '2022-11-02 00:39:40'),
('d073dda4b73f8c644e22db566b9115cbba77e58f4a971b2cbe8aeefe3f70d05bf734757d9b9c4569', '7ff23b9806364c930cde13f501650bca91c119b3e96b42915d622cc020cb1766064e4da26c0be689', 0, '2022-10-11 13:32:45'),
('d0f52605028e83a61485f9d9f12e97db764daaf091edd43600d6e8ba8cf366b34c86d70270ee7160', '377a2f948bf29831bf2a47647786478d1223766e895d103ef88ad1e4a8cbd487051d5752e6e04779', 0, '2022-11-02 00:38:42'),
('d17d47fe70a194592f613979e40414b8080da5c6804aed303677db2fba0acc40312c10e13f58e938', '05126ff2c047cbdc5b31d506c03c4b2a3b8654e55ee5918580713fd8e50672198e536a58fee40abc', 0, '2022-10-05 17:16:12'),
('d17eddee19bb9777a2131cd9e9210e7f08c0c8e2c24e8856d5eba238f7a79d8b09e6de7c11875b43', '9015403d3b44432a33586fbd896bfffd293bb0d94c7b4e1bc91212e7268cf91f0198a74d300b9888', 0, '2023-07-06 20:48:57'),
('d1d0fa9f62cd9ce663fa1508476937677f6779195b5213019db0ebb8d06a075135280c3e29a73424', 'dba94c96ba5b46c67221df7adc22c7f55b923685e80b5e1336393f1053af06f262d05085792dbf02', 0, '2022-11-02 00:39:32'),
('d1f6160c211509e26c0dda815d3887cb1b387d216bf37c222967ef33cf368e085f2a7acf1e6a20b1', '6872bc2c0c489ff916c34d4b55287a51bdd0aeffe4255f2f4484d07465fd5cbb8246e2d45f1e1892', 0, '2023-03-30 15:57:06'),
('d2099ea80f5ebd74d07ff0a3715fbea3de102fb8ea8bbe6ea0a08f8ad372f52fe75e32859ecda55b', 'ce6720d0f8b77af733b0db16d2c3c4a7b29273b03bf49cce9c4aea04e565f9cb96bdc9aa582755fe', 0, '2022-11-09 16:55:16'),
('d2315da484ed76ba63945dd1d1e06f808a2f676c506f8b7bdfb4ca96ac943f5c4bfd6a37aa87eeb1', 'dc9a1eabbf8a80ca18b79da5580e2210bea18351752a6dc4372a749ef767b944f1a3fcf745f7c92e', 0, '2023-02-26 02:04:08'),
('d23ba30db2c4275ee03a1ff4746cd1d93db17bf9e4d127b65a7e919e2785f1371cafa26a4ccd9b37', '6173e8fad18ea86fb42fc6a55df083965349165667241caa6792d3f45e5a670eb2e3fef51e41d615', 0, '2022-11-01 13:48:12'),
('d30d6d2a674e0df93ddeaae953701dab2e51d97add3b950f187bb692282f41266ec6286966a6dce6', '6bf9835b72c9212271577f24ef5c1c7b94a52686e37767182ed5829f7a525a4cfeec15f0d95277b1', 0, '2023-03-01 20:01:51'),
('d39e86479f0718b0d6e56b8e829e494d0ab21f14c11bb27d360f834eb459ba77739c1412dd8e8681', 'efd24b887ea822026ba960f346773b1951ff589153d080307b4910581c29663837570bcf454f4fc5', 0, '2023-03-01 20:02:40'),
('d3dcf4cb43637e6f6390c1a00ea971073537a9ca649292ec6d83582c8bf2447a9810dc3c078cf9e9', 'e2e492188c22373fca32b031de6840da6463cdada564a2fe04d70a19d127c67969643a7a989f1de6', 0, '2022-11-17 00:31:45'),
('d43ac54da0f07d0cf62d1f97d29ce158b74463c769760124fa42db7ddec4a1e31f0a1918911ef7d5', '0e921d754e53f628f1da44ad4684168010bba95fc795a3ea92f8abc48ea94c01b95b07beb79301ea', 0, '2023-02-26 16:40:39'),
('d58e67096ef231de355bc225ad7483c2016c5fef72c4b36f69eae23520af2be12e2885fe205a04cd', 'f36baee00b1fa34d420b4f7cf493aebecb5f6cb1bd6a6d67679e814a4771073d2c9d5d4a2cd97379', 0, '2023-03-01 20:01:24'),
('d59905cd132641bfb3f56446f200600b71ecf8220802644e423f3f7783c064d6ed691f9aa5a3c31f', '267e4dd8aca800c775d2ebf2362658c58ece9d1267f277b5fec1187f16da4a4e9a4bb97c48c56f4f', 0, '2022-11-02 00:38:44'),
('d5a30a020056245ede52242ea98bf94cbafa81613672370f0c2fe76c30fe7c08e73598385e252019', '7ed445fd1f0ab4a1711bf664590326b5fdacd38b66a8d0ed4e91a0775e26523f4b2484c6ea09f6aa', 0, '2022-11-02 00:40:29'),
('d5c932726d930a240ef960cc2ccecc54827e92f40cc3ea73a6ceb8a263084ac944f934a865fe422f', '1d1cd84cd3bafc183092975fcc209dbd929d7dd5c8d38d69b98750dcdeb4bb58d728f23eeecd0102', 0, '2023-02-21 14:57:50'),
('d5cedbd0644e2620347c3a147e4e83710496c6be848b4ba661aa49db813350fe6f2a7e9a4400d6d8', '024336883ea2e7d23cd379a52ea78f91de0e2624cadc3b08d834c3183e96da151b461a16a53e35ad', 0, '2022-11-02 00:38:32'),
('d5d7413bbf1ea5a1fa4ebce2f8167cd8060315fbff880b3555ec4316070d6a3df0019474b1a0a82e', '39c685693dc50a2fdcb9c7648699d6146cf8ae6bc1ebe03a3f2a3dadb03603b5cc8aa38edd800e95', 0, '2023-02-22 21:25:17'),
('d5ecc0de9b2f267ebd77e233e2bb1d188e0ce26560f731a422993792f7d62e5f2541d2c79b47c414', 'cd271a6c0c151a640a875b4c419c1ff4cc402b21d729f930dbfdcd1d751363c85215eea0b7e287b9', 0, '2022-10-05 19:36:05'),
('d66dc8e46b2cee1b99e7322ae867e4f10935aa9424cf204daa620598a70faac71d1462d77e1d4253', '9081a767e790bb8135aa2ea0c2fe28edd9dadd7289c0f0cc225083aa9183a07479f47fc6a5978e67', 0, '2022-10-12 00:13:28'),
('d6982ff17ff2642295844209e243fc20ffc71012ab7b0394504236194388411eb5f23e403863fa09', 'e7120c0ac404f3e682206d78d1777cbf787bab7bc1cd6cb7a704fbd2adb1aca891b3276861a259c6', 0, '2023-03-30 22:24:22'),
('d6a080f1c2c5c129c1cbc5204d4740899e9afa5fe0e6ab8bd9d6b64090637e0e469ab3edc8410d89', 'f2e99646cca8120b0306ed3b721a92fefc52d2d138f5e6ede6134b3817a2adb036c86485790320e1', 0, '2022-10-14 17:07:47'),
('da4747a087c3c78141078b11bea354ca9586890d9b98a08fde8ab6ac6329c82c46fb270758e98e28', '69ed16f324d2360eff6a5d3ffc034820478c81ce8efaa7c25533e452a321af6331e2d16e1d45caff', 0, '2023-03-31 15:27:15'),
('da57b94647850e3ac2990e5e7af0ee50eed0ee086d22408978b399d32252631ae618bd59b5e5ff9a', '8312ea5d487ce6f2c4a2a06cf236002641bf7de824dded0343e2fd626376af88341ccd4017c887ed', 0, '2023-03-08 22:49:12'),
('da8c401257d48acea344d50ff890bb9a2c66341f53920033c177fbcef065eaf9e2292fcd74893187', '939eadc29c514555f0bab249b457cd48adb7d866c3b589b9095e1eaaf3fc4683489b2930e9455e00', 0, '2023-03-22 22:44:20'),
('daba1d431025f4155d4366c4efcf074d3122baafa02efd9f46f9cc0b03873d4a9ed1fa9b83dfc23e', '38876aab78790860ebb0dce1cbbfaaace6237f71f831626684c7fd8217a9bc4843dea45f01582b2b', 0, '2023-03-24 23:05:18'),
('daf661865a6bb6e4c77684ac11f10209f4bf8e3de741f2ac3b59cb701d49c02d4af869153db37ffd', '7b3a86508c36fe16cd972e4af158eb42f1651592155e6c5587e414a35e9cdf31abcd1110b3ffe52a', 0, '2022-10-07 19:05:54'),
('db54a99d0340b185d1f122ca282fc11c07359f44103197f862771355a064f8d5c32fa4781931ee6e', '2dacd88c4a86338a7a9b015a2bc49db84098fc9f77f3b66e62c4e9d11601b93a54e059cbbb42237f', 0, '2022-10-12 21:48:19'),
('db723b70019e415cf4a250c57be5619481c57c72c083a08a2b58e147798856b063bf85a91cd5c56d', 'dface0c2c118e0f7f313dad898cf83ad15cca897c75ee858a5bae8ae0386a682ab141bb902642693', 0, '2022-10-05 15:43:02'),
('dc88d9d726f4337dff00ba1ac103e05d1840cc7c061ef1b9aeedd047d5b53f77dca58a85639ffb0c', '211a2d1c2e37e9e0bd10161b7d3a0eecafab5fee2a03bf8d3e721ca0fa5fbfb178eb95394898f48d', 0, '2023-02-24 14:32:08'),
('dc94c8a61c216ee3053fd563131d5b5d85971f1864ad0a9c52287ccc33540e6c6c874d023ff49015', 'f4635e23ac070f09a23e2a31169512cbadea2d35aaec5bd1148e91083896db2544a871ce869cd550', 0, '2023-03-04 23:48:43'),
('dd0ce9681dc7651f991b75e4364a372ae17ac26aa5393709d7cd8a697c512a1286a7675b2b36cdc4', '94e1e20cc9a050e0de940dd60d82ab26bf180ef5e168a819667f4f4353aa0a74ac4e4329956f51f1', 0, '2023-02-23 15:01:52'),
('dd2dfec944d0fb521c6a224175b193bfe304295c759e1d6a54a2515dda5ba29d9aeb789eddc17c63', 'caa2ae9ac99de481b88f5feddd8614de5db229519c963f7fa3565363d804b9f05c384632708ff76a', 0, '2023-02-25 15:42:46'),
('dd5ec183013ba784f0b16686d0661f82b52fecdba9ec9a89b77a86c0e283c8953ab0ff871a0fd2d1', 'ffd9ee533583bea1d5468cb13739c0067382eb363f4182b48d4e98b3d0a920829f7fbfc96a8658a7', 0, '2023-03-31 14:24:26'),
('dd8c47ec976c75d6d3ebbec966d6e2c92dea29a06f5ac78d0a100cc30997dfd2b735992fcd4f59b7', '18065ac6f1084d4677dfe04a21b838a2d3d7c474cc772ad34580af67ca3e7bb2f3cb994b83466a57', 0, '2023-02-17 18:43:19'),
('ddbb01f74dd5146207542c31ebeb689cf68ae9cd6c0fc8aaa469c107f9952ea7443b4820caa6f963', 'fc5e3ad725d486b8ecb6177983820fafce86d8ccc3d1e51866beb9e9b114771b51d549ac686edae9', 0, '2022-10-05 17:14:44'),
('de171230eebe3849741d7b5ce8ddaf38484d6c67ad6468ef780956cd7611fdab8248da8a90a02664', '78255d6189a90436da2592918ecf728c2cabfae47202ec5842f985e8c20a305181c240ab01658de7', 0, '2023-03-22 18:06:55'),
('de1d58190da8ab617568a3c0dbd35d58fe29cc835003bbc48247a8f82b1a8e40b3b38a475cc13a7e', '3378fbb3c34e1b6fccc22f51c8dd83487a3a173a698a939c42f1ca35dac3dd51a615b79c5902a136', 0, '2022-10-29 13:52:07'),
('de28fb6c9956c21c083b57740f0b14ac827be0ecfdbbbc703eeebd074ee1c48dada0d25540506590', '32f3320a37404863d8a5c811dcd440007601225744165a4df3ad4591883f57794163dee68fed0459', 0, '2022-11-02 00:41:24'),
('de73b96d1267f2e1865457eed77931e8e01087a5fab6d29f1abaa6c8bfd3198a5db0fcbfe5807742', '46c6e02894313d3697c9d95f039882a0897c8a7fd1667104e0dbaff6e176c80ab57a1504479591ca', 0, '2022-11-02 00:39:59'),
('de95806b7353b4e3cb33f14755fdd0ab84dd31f7c05c14a7c4e27d80c74d3812d43b4cd217e9a95a', '3aeee10fbad42361d92c80f403851bfade0f37f5b891ae7f0df58706d101399e7b5e2b276c7b5041', 0, '2023-02-17 18:14:54'),
('decf03c9aae165dc1010ebf0a972e5bc28599ccb5319a479cea7e06adcf1b9264af132f93643ebc6', '873f89abcfe7ee03eb9eb302ae8ddfa658de1d797547295ce1492262cd139810fe82e8f52bde4611', 0, '2023-01-28 17:25:13'),
('df2aec774f367df0c628e35dda9f0faee9bc58c50bdd257b403b696c84f35ad62b9c66935147b5cb', 'ddee8cb68b5a4cba535b98882b0ee5b04dede9fff1fc292f8decb4d2949945578fc1e8a958c1248d', 0, '2023-07-25 20:49:10'),
('df2ddd140dd2a6c6cecde17c6b9d4857b698e2c47a8ba36cecea3c79de735f6eff1c5680e82ec3be', '6e2fdf812174a163faa65d8b1f5bc2b8221af27bfc486e2c7614375e97160f232ad99602474c0dcd', 0, '2023-07-18 18:01:11'),
('df3a6d90ec486c74d5fac9ed2675159eb7d5bff5728f9ae3343ff8bbc28cadc08a58dc755107796f', '7ffa4b83e33057e1c5cfe3e3e7e8ae0a51f56099cfbe604c366c2d97eec36ffcd14f5eccc719cf60', 0, '2023-03-31 14:05:53'),
('df3d58ea6e422210807588e7152e7867f17e7e1c9613dd503b8f8a74f15b021606a63e72e49373fa', 'adb986e8857144babf03351a8a7468d4bf33ea0a676846492e8c7589b465e9d4b702b6f02f2322e7', 0, '2023-03-31 16:34:14'),
('df71925736d498ec70454d0ce5afbf50d63fc7b81fd9577e1b4642518caa692b172a4583ebdbfcc7', 'e71635832c4c11a54a41284b1bfce9248b51d7068358d6f0ec3201b7bd44ed584e289527671fafee', 0, '2022-11-02 00:37:32'),
('dfe982c93f8906fd8629b632a400b2f89c5a93ebc50e4ed93b771dc9ac86f8fd4714e65c7db3de62', 'b79079fc4b4cc060d53520001be21d19897a4fabacf1d06e0ba6c8f7f08fc4fb28b128797fb48561', 0, '2022-11-02 00:40:27'),
('e0246056f200fd75ff782641bfdaea3f8e3e7e93700c6a300a6df00fafc55f048d4b917167784404', '25dc2f5df3ee0047c7c48c4ea74d9a724bc38831d26629e327fab3c5449605cc5a18c172a7378750', 0, '2022-10-13 13:16:58'),
('e03fc033965cce34138f7a96e14d0682ca7d82f83d2a731dcc532502ee62ed125c3f65a42322c894', 'f68abc3f7b238e8191a5d8e08cc253b05140b5ecaa6a82a6b5a9f8f8b6f78c63c95bda6c14d421a2', 0, '2022-11-02 00:38:44'),
('e085f5a4cb2d85c6d9127025d121e952ba3fba104f6587c572a9fcb1626562690b399d4ca9dfeaf5', '45133b6f6df9abfeb3ec570112b1b6a950bbfaaa1b2328b79b7b4cb42a047be8e91deedc09d4a5b2', 0, '2022-11-02 00:39:31'),
('e08b5c4e84c772e6d2840899bf17375cb9e61c21974806cad79993f8fd1e42244437948cb83779e8', '092f033742c3bbf46d281c4ee085c58cebe91c9a76466a80a2634f4b4764da988c2d4000d68ea23e', 0, '2023-04-01 12:44:55'),
('e11e7279cc48d70af80f6e0a3dbaf4ee435e310cc2838d9422c7c0e7d0879e2a260659ccf095edb4', 'f77b5ee8fca44da1aa2a268da23bd4643f3f6ac892202f10955057b2237696f98029a4476c215e6a', 0, '2023-02-07 18:49:07'),
('e1369504310803c20abe04e36c0539993de9ad2e1720459727ae4d01a896f5b90a5430327ccb4aef', '2ef8efe778b5b84ed2123fd3af7b8efa852b36eb29e97946bd41d34b6aaadfe62e43552296e1bdea', 0, '2022-10-07 14:45:15'),
('e1b5286c9417508d2940f4b264697c37b2c150307138997202139bf0fb098f05f55fc24d5fc088f4', '31e4a849f400d880c0d941db018677fd180433eea316e021a2fc6ffcd4b66a2f9180c432ed4a377c', 0, '2022-12-07 22:36:13'),
('e1f89abe3fb644ca1bdb251f20b940a974de68be79b16e96e6ad664a45eba7446af28cb13d7a859a', '46ecf98d4cb42c2e8d6e16c5445e921bcefd86752a357e178f60256148d167258929eb12b286f824', 0, '2023-02-18 13:40:15'),
('e205ea0c7f7a4343aababa94f73a2f2d1359b85d6e7a30a7927ace961c8283d71eccd2da71a35eaf', '71f947aae6b3b3861f694cf7529104d23435ea9ccc8797cbaca1a67ec828e2a43d7dc747689cb448', 0, '2023-03-06 19:23:22'),
('e21bdd049512dfe412e76fbfaae9132f7ffa62447aa12faf801aa764fb2909adb6a7de6413d37cf7', '038d5afc8e2b69c703db9e787d674669163e17ab2f56c09675ec679e79e96c3a3f3d7589ab79baff', 0, '2022-10-11 18:48:21'),
('e22aba032cdab67c40107a2a68e5fdd1792c81574c3ef3b59cce8edaed638b213e12b1e59f12842c', '8c6383358d56748ea48cc550d1e1e510fadc311ec28b712bf7def569974f7588f71cded487f2d0bb', 0, '2022-10-08 13:48:07'),
('e2d5a00193b2f0b622df5cbf1ac887a70de425621c8a14b3b7664f0637f748276d730a333c6db8e5', 'a2a57fd11246dc64bc9735aa4b127ee59375843ccad1052ed445bc21ec31a0529aacdb6745c79cb9', 0, '2022-11-10 17:57:07'),
('e2d5bd6d72b1a7148cfa8ffd91e38c61f1b3d1e066a2bdc0219ff50b3759d472099c0d05f07a5dbf', '62ebe70a867013d0e1075a58804e0d336e97637cec116c761877f4f50677cb1f6cf86efda59131de', 0, '2023-01-31 16:40:37'),
('e2e5066314a0766f51e035ea58341365e36d4fb8c76dc6c92d1045bba4b25802d46ec52a9aa898dd', '71f384cba99d3e3f2bf83d18c3cf5e6b5776290266d6c40301ecd8c2d81324775cb7c3c5c603a7de', 0, '2023-02-07 18:27:50'),
('e33e378b6f965107633daea437be87a09474edbeae0d6e9596a36bdf23f14c8f92feede213405d4a', '384e5449d68da59a172e447235efc13318d3c7e866e295ae8359c335df6bb5688162b01901121cc2', 0, '2023-03-30 17:29:39'),
('e369d4e8184a26c23f1eeebb2526683b0e79c3ec102b1a1d8bdcc2f61021e8ae3d7c880633a19b44', '4286831dfcd79904cd4e37582680c7b49bd7ceb0b3e05d49b0105098efedd681c639ecc267a36f02', 0, '2023-03-30 21:48:53'),
('e3dfafb6869081f5a9a25784ab6acbc8caffc2691b62e4a6c98aa99c36483cd4ae22d8817d9f84e2', 'e47b9182f4fb0c4ea76e8d075485ddcb7cdc4320635d79d307857ce286a86039f18ad24355113a3a', 0, '2023-02-03 16:14:05'),
('e444aae06c7b75e7b88849e4e1c60b215dcc2fa4b4da1d15205b2bc12232257c1fc40d3ecb432125', 'fc6e977cc04eb073985d08aababc25aea05b09abe527be9f41f1eaef555bf8ade0152ab4df10bec0', 0, '2023-03-30 17:11:47'),
('e44f95eff49d8349acd6dcf415a81870faf22aa543803038d1541f8df8d4e50521131632ee77634c', 'ae4521c9f7df85709b43978a586e320a3aca0e0abc543e97eda11e4b86516a38e7aa80e423e2f810', 0, '2023-03-31 14:34:21'),
('e5957630794ee4a7f4fe01540c21b6caaeb19fd3170fc2edd6420a2692d94e1b8e04c5a9a00168da', 'ec67dd64dbaef5163eee34cd8c7cae835f118887994c548097a970f9eaa9eec0265980dc3f54d7c7', 0, '2022-11-02 00:41:13'),
('e5c1c205f3ed9bc3e034c3bc1f29f89aedae0d4b0bbc5eaa24f73be01646c44f3949df10320ea6cc', '60d3da26c64183e080a138ab3eb23cd4904611bb0f8a7e34c83540ca49f0f015733cf7deadbde3c2', 0, '2023-02-18 16:24:48'),
('e5d8c775c5bf984e8560bba92c355eea9c1f0e8ac00e7022dfea1de7739a0351496b94f9dd175297', '1d73f656bdb4110cce8b5bd47480d96d59df1c13978d3e86b69826421849cfe30b4cb9a0fdd7205f', 0, '2022-11-02 00:41:11'),
('e6e5aa5bc6411aaa95c94884c11aa75f540df5ba4adfde2576680a58673a9ff964f8615e46031713', '403e5185b21a7bb066e82160435026b94c5ca963b15d1d1913864592c4568c4d6b383fdff5070dc5', 0, '2023-02-25 20:17:58'),
('e73c6f8112440bc8a57df385ea60f8ddfe827624fe1c0ecc8108013370253c41bb8453a99eeba90e', '827233dcadae1a8d48e15658ca01140a886d1598652d3dd4ce3a4d3cdb2ec036259a7aef755adf3e', 0, '2022-11-23 18:11:47'),
('e7f4762189a4b9e564396d57b7b577ccf32e356511a849f1dc372422f8037476fca7ca469210cb4d', 'da99615ab2a35c2de35a7cbc85a22f8a9394fc719f96912c210d4764dcc751bdb820f10b26973ba2', 0, '2022-10-06 15:27:20'),
('e85fa0ecac6f3b1022388440940458ad8d2f5f0f610083bdddcd68fdc931e802d248adac07111485', '3d447018a83d0a57cc90dff6a19f5dfbdc90179594844fdd00c94d87a925fb4c020a3653b41f92b8', 0, '2022-10-29 14:52:38'),
('e8bc2ff796fc519deb46b171fb1cf48119ec140b8f0507390c6470f86c0e69c58828a73232bba81e', 'caed075ac811a044deb2b1878a00c2abe15559b7df1860b18638e088526f6a8e923b4b9667501298', 0, '2022-11-10 01:24:50'),
('e8e6cea6a5ea2b5c070c67f6b2b639745d302a0549d2ac2cc8705c0d2e8b9193eec83e782dfbd7b8', '45d04e6db963f7fbc7b82162849b2bf90076bce6aa2afa6ab3bcd94e7edcb4a12920269b6649e9ff', 0, '2022-11-17 14:18:32'),
('e95665885ea93bd87547e1f2dbc3d2e0d77a8c2f51a82b427be23ec5c7ad2f22c8a0873d0c6c89f3', '4012ae96147aca4db639f604c1a5a0edbba1bab1a0ac170f8aee1c30c3382bfd9d78d2b5de59b04d', 0, '2023-02-23 17:53:27'),
('e98fdcfe2a61199bad883042fb4c1171f437fc0a08bea4e9ed21485b23da07b87b1ab656a9b0e50c', '2afbf9454fe99d604be1fecaa5a42a2cd693ff410ccb61676bfe74e6b5dff565b59ce756c921ee47', 0, '2023-02-17 19:09:48'),
('ea90d155f4c1ff2f739742212cc8d70e9004ac1bd8667d7bdc0a09a6a6deb619d21952381110cceb', '8dfe1e2028e6d79f928ea3444e912cad9dd7b8317f9bba95990380cb8023fe8ffdac2774e8291e4b', 0, '2022-10-08 04:12:16'),
('ea968a54aea61868fc5de02cbc5eec2d82b4622b54fd407909b561f5f6e09908d5245653be5e808a', '629dd03825ec3cf42cf4409e5661e64741d864c3b657995d1b534482c535e8ee64a965ab26afad55', 0, '2022-10-11 18:45:08'),
('eb31a7c8e9131689a2e9675f6f82f9930812cd0f23da872e5ddaaa9af7260beac237b080a4861d07', '210119b9238d50c966510ca8c0eade255ec5ecb4b710c333672b26b0e804ad543c21027e5c77bc5f', 0, '2023-03-04 13:25:44'),
('ebbcf7ccc42153c86cf4fce248368432f88d5e537b3a73565200284804d7b73953448f769ebe9b94', 'ae2bb39c074f7e2d4479b1ab3f06823e95b0a621d54ce8fcbacf09d4f6e4eccae7814082db440ca0', 0, '2022-11-02 00:41:28'),
('ebce1f76174c1d0243ee3d88faed56225aa0994ad469cb2fc2846de9d3e542e133ab8dbc4eb112b3', 'e3da3bc8e7ba182fdb7af559f61c412ea47ae203ba6f9d13964710e12cc35fedc913900c7f93b378', 0, '2023-02-17 14:37:11'),
('ec25678080105baf89ab7d1a4087be880ae3bfb3d976436fa4d3a3fdf98bdf2e2968faf379e58e41', 'da472247c143a3ddf7580d31bd06088a5df617ee0a44bdc8b78ea4ee4ff091084b0baa039c2a11d8', 0, '2022-11-29 19:32:08'),
('ec377f7679482de6e561d75398f3592f435b099a80d06317405a6886999e0ab707f204572169453c', '9719ee16b1c0f63f639b9bbf65ba936e186eeb369b54e2d9fe36c2ca7e3cd7f8985c80af19f4660f', 0, '2023-03-22 21:51:21'),
('ec3fb8833d62b172b67f78c4d8e010954de47760ebdc592c696e0f72495a65f188be7fcc749fd796', '9ee93b56edccb5d7f075eecb8ffca92e40ca683d04ab2bb0675adc34d81ba96492b1f16941728634', 0, '2023-02-24 14:36:17'),
('ec8a873ecf8e3ff9072573767fe3a7fb1b185fdcaba39a56fdfe91112c817e5b58a4fdbe1fa549f1', '89dce7c370e4a0fa4ee714b93c80a3517e82d9f7d807724bd15ac34ccd0732d1f5bd5f1a28e94fad', 0, '2022-10-05 01:45:56'),
('ed043325df8cd828cdcfb8222dc9816efd8436b3844c0d948d0c2bec2f4111a3f0eb2b72f613f208', 'b34ffe16d9a7674ee7f5db8634b1903600d2b76a659ce9c75a8394ab4498859ff5194ed7f4e3d616', 0, '2023-02-07 21:47:43'),
('edb7beb80143e63e6f0cbd8ae397a1ce4644ff3af7a38b40dadfa797bb9c711ae57b3e0553a05d2b', '8c465157352be2e1337d27b8e097e380486a8fe1f15b4ff812ac490c6f4cac4bbdddc5c251e97a36', 0, '2023-02-11 18:21:03'),
('ee47f56fd2e0fe5bc77c6ed88efafe3f726a8992e6e6f230a20791145b2fb72ca341376769d224f0', '13c85f4603d5a66e1f410a065f6f977777f591e9849a0fda4920000478f38b5df0ef398519993d17', 0, '2022-10-06 15:48:45'),
('eef1710f6ee6d20768cb1f9d0fadc5257f9847d78cd795b55846a0ef084c89c48452aa6ae32e801a', '8e47d2168d16af13a7cc54a3aefb4b7420f900c8c8396d8506966e4abe47b3d8bb671891dc6dcb0b', 0, '2023-03-25 20:18:05'),
('efcd6cc5a6fabf4d8e3c3139287e5f15da354aa04c70e05137dba6df7b183749d920009e109a6e4e', '629aecde67cbbe4bf04dada4ee687e1afe4649ea6383f2d08331332159de71b1f989d0b7dc216386', 0, '2023-03-17 20:40:00'),
('efe88eab0e23f8e4105669e83b7a608609e891efc84dfaf046e8e9abd33e592f4ca79ea94b7d04e9', '287174ce7e531f2aef6bda901c41893b46f57d065f20f8f8ad8e4d28e68bb4037e8931266e14a341', 0, '2022-10-27 18:35:08'),
('f0787a200e1efddda813a5750bc431c2de804081df1de48ebfff458ab519fe71678fde691cbb9ced', 'd342f325a002e9e9bbf286f8cfd2b2dafa46b0b6a999914a8ab96a771c7586a9fcc0a399b853a637', 0, '2023-03-30 20:53:30'),
('f1214031b9364d760e77b2157d4f8880c78f7714214845f4563bedba9f56a687c8f4e16b98939c30', '8a200f9cd02902721146398a790d494c0e90f0b784daddea9b106b93a40c08febab7d45f3cb14ac9', 0, '2022-11-03 12:47:41'),
('f13066a20d0eaad782b187b24a61c0fea66955b2a2bda2cc87f867f7662509fc34f198a15f432100', '2cb8eb92b8d0eb9460770f7ce1150c73d95988a4c623aca98200215634656e833330fffe9eb100b0', 0, '2022-10-06 15:49:34'),
('f155138dc6b311bb5f142840b1bd65da2613fe3445b9d2cf9b828a34ea5cfd522c417252df6557fb', '3abe36c0e091a7013157a1a0d9210a6bd192f67e4a8435ad25902343ba7b7302c897f4f69ddc7ca0', 0, '2023-03-31 15:07:30'),
('f17de1930285366ae9c3f787781ea58f187f62b7ff9bc7d7c4b8d6fbf652e4af77b6a6d607680e0a', 'f1e01039c3e55ee0327654deea53e6fdec1ba315238315edf236ee596cf7317922079ac0a132f06d', 0, '2022-11-09 21:56:41'),
('f1964b91d37d72e83cfae7f965bd84a61210fdf0741470e4077696ef7bbae2e6b848c234ea0d03b0', '4129950dcf6a9e0739b03a7fd466a7926958e29effc85cb243a70f4aa512e1d8eb874eaf05281a17', 0, '2022-11-16 13:36:24'),
('f1b77b17b076492738c90b8c31e888a81b8ab42ede6f7043ead348e420e87bd11fb41ad2c2543bfb', '8f44792cdebb339c1144e0a52be6e50f9f94196197837cd542e99c069449332ab22f7dc29c3c3d6b', 0, '2022-10-04 14:23:55'),
('f1d9abfa9a166e391e7638c9bd5efc659a297f6f06b14648df09cf83c05b6180d145a9732a2d0e5c', 'a458025f6db9b04d5e40d7269645305a93e8f911d511d054ad2131b8499e1527784282293cb627aa', 0, '2022-10-13 15:10:16'),
('f2162c94aa491c6ab2ebf1fb2d11f5c3c4c859381d5e0588a786201d281e55a896705915eefdf2ca', 'c884681206f240acda578004667741fc7fa5a00b6129b9e77f0900f9689a5a1a646093b15a56aa41', 0, '2022-12-03 20:33:40'),
('f2324ce8d48f0cea177270c879539296023c0b0ea3522b31e94fe2fcae839df48b5c50a63e945c13', 'f7bc7009e144cceb133d386f1d68c1a66161632a2594133d25f2e050cdb34762f45191d40a0d6541', 0, '2022-10-11 18:45:32'),
('f2573a81338e08a3abcdb021987567e1acb8071a19ae3f5eff9d02b0a406166eea5a0e27d0fbd78b', 'd8bc4db28165e8960980e926b776b2d397b5376cf809ec746e14dbe58f619ef9a758ff4751f97726', 0, '2023-02-23 18:36:30'),
('f310d3c696dde7a143eb3f570cf95a91f3f835d34ab640155393c036fb2deaf3870adc042f5adec7', '2f31398c521c1e6c77a05b47aa153b941a4649c243201c196f4afa99b23cc3dd633de27d7c6275cd', 0, '2023-03-02 15:44:14'),
('f35a5279b70db4de2380e9aac319aafa3a568bbf3d266e035c1a7fa12c8552d5f13cfd2e94b9564b', '87ee5fd3e829cf148366bca945f45a0dd2c0dbda422144ee5fc849850c9147519f18e27d43aa5047', 0, '2023-03-25 20:27:25'),
('f3769a1d735ae2d8357dd6c9fb6ecc13c3c3c92a0bfacff0f8b1597b15f27439b909ec3c894ffb0a', 'b7a04219e23fd4ba484ca91e5560a140055e5b947075f1959e3575c8471f0febb0cb8153000d26a8', 0, '2022-10-08 03:02:26'),
('f3b284ca909253f9e6164bf92d9da00745f16ee22dd4d4ddf1f14fc79dc9b27ba76e55822ad69c89', '5bfeef26ba7e7a68eb48b5dcacf6986aac9e749a3e661801b9c048fbe777d372d4e82a9ff24eca50', 0, '2022-11-11 17:01:53'),
('f3e04e19919c4f497d153f77f2ada490158b20ebb1c0a2ab2025216a049a32c1795995b22452500e', 'b51b800ef4be3016683814ee97a141ea4505746e31d5786f0fa7cfb2fadad1d5ace5f991d2111868', 0, '2022-11-24 18:30:10'),
('f40469641a0928c32407f0bddee63646ddfad63015f593011f031a836c3589dc3be70524c0817923', 'c47dc032e9e0a4f4387391351fe1c698c793d6acac18b0ac3b47d5c2663e9a1052c04ac015684ddd', 0, '2022-11-05 12:31:15'),
('f482445e4fe407b25338994a3d4042851502eb04213fc0e475610009b7fe06b83f6957d73ebdce7a', 'f859951a89af393ca64815ba5ff366b0f385c0d016d39236cbece041d2c936012fa7226cf286aec3', 0, '2022-11-01 16:15:07'),
('f51336c74c38c69b5d7eea37cd113a8e534f7faea06619b3e08358399489a6743e898feeeb430922', '29d324c28a0a99daf103f95f217d816f1c3befea68eef678375ad9c61f5886974a4551939d000013', 0, '2023-03-04 15:36:18'),
('f5ac93ee93c75d9ae71a1833ac8c07715895b64252dd40488196f7b03e9d758a741636dc2ed15290', '9821442a279b6a96c2f87fc71aadfb110ec6c381aa696beed73411af76648f2a0661699d852230c1', 0, '2023-02-25 21:10:43'),
('f65b59d788de07143e3887d56a055f4011b46d183c54c4393f91731a902c7ff6705c60af73065b11', '66fe56d6f211d52bc4de2969bb4a79613b04f1a3878870f792c77f32c417ade674cbc8cf751bb893', 0, '2022-10-05 15:45:18'),
('f689703e2b66ef76667d8fc34a1e4a2775ea7f113c00e810c6f690e2bacafe243941ac8d9ea9dc85', 'd7add418216f61663002cdba1d8265e0bc8a7af3a29abb294fc526b09034a6e2cb254c46673db129', 0, '2023-02-03 21:22:43'),
('f6c23b1f382be62f3a6f0fc1192025b0f9ce1f9af3baa780b8733ec614eb5795152e5085f93ba5fc', '79c0d40875e18869f50d132d162e6f4d3f857360ed7721c1e5c5155dc841c45edf7400044af068a7', 0, '2022-11-29 18:14:42'),
('f6cd8857f3257e1d93dc3eb9243f87fbde0a6cc864f89b02111cf5cc5eb03be66eac475286f7f490', '4e5a0d7182fbf22e56a5010404dedb9f5f18553cb30808dc10294d0cf0ba891c86ac007d0a2976f0', 0, '2022-10-25 15:46:57'),
('f706655c56892c4d1ce3963752012610bba09301d221ad80cf1108f8b61eb76fced5c450d25bd640', '22cf18ad467a27a8c9dd449a890f6cd2cf48625ef2851e5c74210aa46f7614153807153bb8861980', 0, '2022-12-03 22:54:42'),
('f740df7a9f270f9bc318105d3fb4fa0a1f48a4f0e576a2de3bfb0324ac6f27951d0ec1b2c06be3bc', 'a170f6efab8015dc535c95fbc05e1a89a93be05d82a4d4715d853746b6d8927d7d8841c1698d5450', 0, '2023-02-16 17:53:42'),
('f7ba3400adf33cfe6c3d47bb9b85a487ee3fecfe803ce74953e8138e83ab780fe9c5a57d26e71607', '9e5cf5b8fa26b090f0af1fa6b54985ff9acae1a483ced99f5452cdb193600dfe7c8acd4b0913c060', 0, '2022-10-11 23:04:46'),
('f80ee217423093ecbb18fbf7289a60f8ccdde696f6f0048fec0686e7b4c1e000432caafb8aa99145', '564ef370dcaf7a17065f40d49ab66fb6d6f8f03893f34be288f4e05b41ad01c44d22f8e31c338fed', 0, '2023-03-30 21:50:18'),
('f815d2b93e58e2475a5de9c19ef04b89662c2bc9768467c6f4326077c00d14c7718f1de5b3521ae9', '9a3148ef23afe8e13792278b5fb4e481a4a2ca27ace4d531f2b893c920dca606b6ab3e917e688380', 0, '2023-03-08 22:40:27'),
('f85c842a77b09ba694907a88a60da6a0a3b4d807a1fc67489fe5ce2e9e1968cac7eabd77b9df1ee6', 'e608c39d0e5c8c67663cb1c7d9dbafdee2aa15e4c45ed157c3a9d37b3396324601b8b6ccc01aa4c8', 0, '2022-11-02 00:36:47'),
('f96525b1ba41f0b055ff8cb9f911b67f39d571fed72e1618541614e4579056cfbf9d357324d20ff4', 'd08d4f6d9ca733fbb502ebe55592a519aa3eaea51654ad7c186af42a74ad9a367528f0aec674070f', 0, '2023-02-02 16:21:22'),
('f968f155d7fe29fa71a7d133fffec7963f585a1f8a1d3cf8c3ac3a549b91df890ab43ea1d8c82f4b', '157e18dbf1d404ea1ffb9957f30508385b2a78dcabc3c4f1f0be592914acc58ee924f549250d11c0', 0, '2022-10-29 13:52:38'),
('f9f1805fdc8985c499218ad51e2cffa0427319b7bf18577f11b0f13d36309e0949c72173b3851d61', '1d702b080c8d07a6da5f98278d982818e1446067f641b2d09f56fe1e2b45a19d59a79e8499826eb4', 0, '2023-03-02 15:19:36'),
('fa2cb4bb79056444e6b563f5fbffad849b6c1eb30ddbbd932c25d4cb7cbce8626cabcd1cbf8cd958', '9eceb8bb516c3aaa0b42a2dbab32dc16d5f8079365142113d2e2761a9426473efee0fcbbce0ec6c8', 0, '2023-03-04 13:00:41'),
('fa4c70e766f95f27c4e31a42a95e24f1d22a673e322979a7b0057542933f79e8301a05a6c5b8dce0', 'c6ce01a85f588eb77ffed530f3381b4c76dba759b9dac215709c6e607be9e8b85ba7012a2a556a3e', 0, '2022-10-29 19:55:16'),
('faaa928cc51cb202a6a174a51ca8bfd1ee9fb136ee4d2efa6055c0649564fef4e8ec68bfa73f2401', '2ca6d4a91e5da629d6f5eb1205d03aaa4dfc8337f4c48598b29dfa82b5b1c8acb57c59b8dcbda5d2', 0, '2023-02-01 01:09:07'),
('faaec3f3361b3cb279f738fe0437ccd4fcd303f973937bb46fb6e4838812f8abef4b84fb55b150c2', '4284e83e6795cbbd9dbf8deb6a1f72a37d1b2972b51b0f43d9a5b0a2963d503c7d1de3873b31bbc7', 0, '2022-12-24 16:28:05');
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('fad7e517cde2d67c20d603bbd9604ed65359e886df301dfec6190222c4056cc901de260de907fffb', 'beb69531cd6b5905771f7eefc8d9faef38c77af8ddebd7a83cbd0ed0b063c8af1df259b00594e490', 0, '2022-11-02 00:39:38'),
('fb299cc088547d1c296a90f4f6aeb1633063658f10c70727f2bd0da2e61d73b1c7a7b9c33e2d32e9', '87641f433342bde65f8826a9b29a0857b80e0315d503c804f113a92e1209b9d71c27e50ddf8f597a', 0, '2023-03-30 19:35:58'),
('fb3f2e19c1aa2ca8d3b0e851589addd831e7b6cef88f69126bafc29c70842d55aedac340d3bd58dd', '78cc017fa9c1f0b6ceb5759842c9ca40bcf24cc9e8110a8b8bfb84eee6cf2aa20d0c8ebd7ef31536', 0, '2022-11-02 00:39:36'),
('fbd33e721e32ccccef17f8aa18e1b86355d65207bbf69274a7c00fedf398695c83b205b7e91875ee', 'da545981b16c4a5d49af9113841ac584d68549705c4a66d61ef69b913ad304da8874b1353b1a3573', 0, '2023-03-25 17:53:37'),
('fbd3ef213ef44593a5467469042650e0c2648552eb91a2ad34b06b48a3a668c1233f85ebd1499910', 'af98e6e69750eca1af0b8d65384c88062a1555cba47af8d0220936ebe05406041665c6703e195c6f', 0, '2022-10-05 19:14:45'),
('fbe5cc01eb92d7240ef6617d520af87931ead7743d5212295e50c8706b578724f046d9b6643d07e3', '3bcd1b96aa8cf44bcf237674bf806adda20620ae11cee0833e296d4f823fa6c9075992ca396354a7', 0, '2022-10-18 12:29:37'),
('fc1a42f1ada0920bd93f0eecad4a66e772527e91db1883c56d447e75a60d5b9dc141c553c9e3d0e9', '90491b924f9f29742908d3c8d24a7f772bfd80319ccbe95fa6bf4b826e50900be4b3ba6db4d15833', 0, '2023-02-02 13:23:03'),
('fc8ece9c60c92c5d7fb167c2c018c891547ac93a404ca59cd4684aa4051a24ab798e4886a994a69a', '18e34151e26a6abf978292a3c0318d38688136538901a9ac03e9426c7a3f6c00a941c127e70e493b', 0, '2023-03-04 17:23:45'),
('fc9e1f53b543ac70ceca1fe860edd0581b549a8b2ec0aacb445f9740a9beba232975dcc288300c66', '710cf75838163934c6437e0674bb5aeb2e809ec8211dd473a545dcbde6a167ca8bedfc421a27aaf7', 0, '2023-02-09 20:51:24'),
('fca9b8268ec3770ec0a6a67ad4b258d32cb137e4806980bb2687e3b806144ee229f5dcdd481903b0', 'bdfd73572b0cea0e313386420739ff23f519f3589407e00ae8b83e218567be805832090a3a94d87e', 0, '2023-03-31 15:16:51'),
('fcc64e73ebd6b8d5761d6a95458a8e5fee9830b625af40699d13f1c61ed6df65b17f1bec801172a7', '1e657c79c887f0b3234ce94d73740a4f0bafdf6b9b43e731ee8bf76e46774a9909708e513c0247e9', 0, '2022-10-29 19:28:19'),
('fcd064967888eb42d6572fca9509fdaa7518747e233933e7b9694d14899ab96aa8e5c6d19c519714', '2b721c205027fc1b24f220a3e3953a986230b3eed7f40aadfc3cbc4024bc188378d0f930e392ce04', 0, '2022-10-07 14:04:40'),
('fced6f5188a28e433be22760c07afbbf3624513a630514c6ffcc520785a98fd7039fd9fced4bdac4', 'd91c4f9a48922162b8b2731e43af2e23b32bd932c91f8941680d94678f30fdd9622e3da1d05432dd', 0, '2023-03-31 15:26:20'),
('fd95551f1b94663386e1cc70cb529b914633234eabe854f3e395b76779fd4b6f87c83d79006b3ecb', 'f0da29ab932652c48f07d43706e6d043b45411ae4ff27e9856006c079555423f78fe3a05d2b2f869', 0, '2022-11-29 18:06:07'),
('fda3570b6852c81cca928cd3bf893af07a51a248e9a002efc9840e35836cea33a3f390d8a96c9993', '4d77e65a88cf7825e875dcbf49585373309b928f1666db439b0cf07e0009a9837a3762185cb830e3', 0, '2023-02-21 21:39:06'),
('fdbcb5484326305f31d32593d660fd23abc0f6ff2f28bd16d1c22cefb56f522cd66218650b9a68c5', '68f8032fba8acf001018714d58a0bc4d42d8e4929afe601ea8a0d170edc1da061768119d63974512', 0, '2023-03-31 14:52:38'),
('fde072e17e6e3e535fcbbabfcc9f47ec634b9c4271557e22c52fb36264051891eca042fb43072920', '0238416832e2b26cdaa3dc4981af01e03fe8d6d57acc0feb53b04b365a301b5b74dbeacf1ec4a795', 0, '2022-11-02 00:39:57'),
('feb34738d2f25494d437c3495ba2ea809abe3c75f0b5b752d335cb18dd4045e869407d9cef52f07d', 'd4e717a3eeae8908bb0d4c133249eab763b3b27770b7fe3e25d0265f554cd6d589fd26e658b9820b', 0, '2022-11-02 00:41:20'),
('feb4b32b22d67d5e36131cbd16fa32410db4355b5f17aba43c584b2815f893878643a7dc5083ee9d', 'ceae3be2f65f2fbf5635468a9941a5615ee4ec3d462c895ee45fc71d89c409c71946b46c115e2ebf', 0, '2022-10-26 12:33:23'),
('fec895a379bebb60a8debd1b6e63595d1911e27cc4346e4a63d2a34d906adfefa32c1c69571304b3', 'cf6cf5076ff817aea52dac0056a190815b8a89fede7becd0528b290258cf99a3c836cd15bcc78014', 0, '2023-03-25 19:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_img_ecommerce`
--

CREATE TABLE `product_img_ecommerce` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `img_url` text,
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TABLE 217`
--

CREATE TABLE `TABLE 217` (
  `COL 1` varchar(10) DEFAULT NULL,
  `COL 2` varchar(25) DEFAULT NULL,
  `COL 3` varchar(28) DEFAULT NULL,
  `COL 4` varchar(36) DEFAULT NULL,
  `COL 5` varchar(37) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_achieved_user_matching_bonus`
--

CREATE TABLE `tbl_achieved_user_matching_bonus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bonus_name` varchar(150) DEFAULT NULL,
  `perform_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `bonus_receiv_count` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '''0'' is Active, ''1'' is Inactive	',
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_achieved_user_matching_bonus`
--

INSERT INTO `tbl_achieved_user_matching_bonus` (`id`, `user_id`, `bonus_name`, `perform_id`, `amount`, `bonus_receiv_count`, `status`, `entry_time`) VALUES
(1, 2, 'RANK 1', 1, 16, 0, 1, '2021-11-15 22:13:53'),
(2, 2, 'RANK 2', 2, 19, 0, 1, '2022-03-22 15:35:59'),
(3, 2, 'RANK 3', 3, 50, 0, 1, '2022-03-22 15:35:59'),
(4, 2, 'RANK 4', 4, 110, 0, 1, '2022-03-22 15:35:59'),
(5, 2, 'RANK 5', 5, 315, 0, 0, '2022-03-22 15:35:59'),
(6, 3, 'RANK 1', 1, 16, 0, 1, '2022-03-25 18:29:43'),
(7, 3, 'RANK 2', 2, 19, 0, 1, '2022-03-25 18:29:43'),
(8, 3, 'RANK 3', 3, 50, 0, 1, '2022-03-25 18:29:43'),
(9, 3, 'RANK 4', 4, 110, 0, 0, '2022-03-25 18:29:43'),
(10, 9, 'RANK 1', 1, 16, 0, 1, '2022-03-11 18:34:50'),
(11, 9, 'RANK 2', 2, 19, 0, 0, '2022-03-25 18:54:08'),
(12, 10, 'RANK 1', 1, 16, 0, 1, '2020-03-25 20:37:27'),
(13, 10, 'RANK 2', 2, 19, 0, 1, '2020-04-15 20:52:42'),
(14, 10, 'RANK 3', 3, 50, 0, 1, '2020-05-08 20:59:06'),
(15, 10, 'RANK 4', 4, 110, 0, 1, '2020-06-07 21:02:40'),
(16, 10, 'RANK 5', 5, 315, 0, 1, '2020-06-07 21:03:44'),
(17, 10, 'RANK 6', 6, 710, 0, 1, '2020-06-07 21:03:44'),
(18, 10, 'RANK 7', 7, 1500, 0, 1, '2020-09-09 21:10:51'),
(19, 10, 'RANK 8', 8, 4000, 0, 1, '2020-09-12 21:10:51'),
(20, 10, 'RANK 9', 9, 8400, 0, 0, '2020-09-27 21:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_notification`
--

CREATE TABLE `tbl_activity_notification` (
  `srno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0:Unread,1:Read'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_activity_notification`
--

INSERT INTO `tbl_activity_notification` (`srno`, `id`, `message`, `entry_time`, `status`) VALUES
(1, 11, 'Password reset successfully', '2022-02-08 09:09:24', 1),
(2, 2, '$10 has withdrawan from working wallet', '2022-02-10 14:25:15', 1),
(3, 9, '$10 has withdrawan from working wallet', '2022-02-10 16:08:03', 1),
(4, 9, '$20 has withdrawan from working wallet', '2022-02-10 16:10:22', 1),
(5, 9, '$10 has withdrawan from working wallet', '2022-02-10 16:35:20', 1),
(6, 9, '$15 has withdrawan from working wallet', '2022-02-10 16:36:15', 1),
(7, 9, '$20 has withdrawan from working wallet', '2022-02-10 16:36:49', 1),
(8, 9, '$25 has withdrawan from working wallet', '2022-02-10 16:37:24', 1),
(9, 9, '$54 has withdrawan from working wallet', '2022-02-11 15:33:04', 1),
(10, 4, '$25 has withdrawan from working wallet', '2022-02-18 20:27:43', 1),
(11, 4, '$35 has withdrawan from working wallet', '2022-02-18 20:32:12', 1),
(12, 4, '$50 has withdrawan from working wallet', '2022-02-18 20:32:52', 1),
(13, 4, '$150 has withdrawan from working wallet', '2022-02-18 20:33:26', 1),
(14, 14, 'Password reset successfully', '2022-02-22 12:54:25', 1),
(15, 11, 'Password reset successfully', '2022-02-22 12:56:59', 1),
(16, 10, 'Password reset successfully', '2022-02-23 09:36:14', 1),
(17, 12, 'Password reset successfully', '2022-02-25 05:26:01', 1),
(18, 12, '$20 has withdrawan from working wallet', '2022-02-25 15:47:03', 1),
(19, 12, '$25 has withdrawan from working wallet', '2022-02-25 15:47:44', 1),
(20, 12, '$30 has withdrawan from working wallet', '2022-02-25 15:48:37', 1),
(21, 12, '$35 has withdrawan from working wallet', '2022-02-25 15:49:21', 1),
(22, 12, '$20 has withdrawan from working wallet', '2022-02-25 15:49:57', 1),
(23, 12, '$30 has withdrawan from working wallet', '2022-02-25 15:50:32', 1),
(24, 12, 'Password reset successfully', '2022-02-25 10:50:19', 1),
(25, 19, 'Password reset successfully', '2022-02-25 10:54:15', 1),
(26, 12, '$50 has withdrawan from working wallet', '2022-02-25 20:08:58', 1),
(27, 2, '$20 has withdrawan from working wallet', '2022-02-25 20:39:21', 1),
(28, 12, '$50 has withdrawan from working wallet', '2022-02-25 21:33:42', 1),
(29, 2, '$30 has withdrawan from working wallet', '2022-03-01 20:06:10', 1),
(30, 2, 'Password reset successfully', '2022-03-04 06:25:40', 1),
(31, 2, 'Password reset successfully', '2022-03-04 06:27:28', 1),
(32, 2, '$50 has withdrawan from working wallet', '2022-03-04 22:19:58', 1),
(33, 2, '$50 has withdrawan from working wallet', '2022-03-04 22:20:30', 1),
(34, 2, '$100 has withdrawan from working wallet', '2022-03-04 22:21:05', 1),
(35, 2, '$150 has withdrawan from working wallet', '2022-03-04 22:21:37', 1),
(36, 2, '$100 has withdrawan from working wallet', '2022-03-04 22:22:16', 1),
(37, 2, '$150 has withdrawan from working wallet', '2022-03-04 22:22:49', 1),
(38, 2, '$200 has withdrawan from working wallet', '2022-03-04 22:24:00', 1),
(39, 2, '$50 has withdrawan from working wallet', '2022-03-04 22:24:27', 1),
(40, 2, '$50 has withdrawan from working wallet', '2022-03-04 22:46:14', 1),
(41, 2, '$50 has withdrawan from working wallet', '2022-03-04 23:30:15', 1),
(42, 2, '$50 has withdrawan from working wallet', '2022-03-04 23:31:59', 1),
(43, 2, '$20 has withdrawan from working wallet', '2022-03-08 18:35:59', 1),
(44, 2, '$30 has withdrawan from working wallet', '2022-03-08 18:36:44', 1),
(45, 3, '$400 has withdrawan from working wallet', '2022-03-28 22:16:09', 1),
(46, 4, '$250 has withdrawan from working wallet', '2022-03-28 22:18:49', 1),
(47, 10, '$200 has withdrawan from working wallet', '2022-03-28 22:21:20', 1),
(48, 10, '$60 has withdrawan from working wallet', '2022-03-30 17:17:32', 1),
(49, 10, '$60 has withdrawan from working wallet', '2022-03-30 17:23:56', 1),
(50, 9, '$30 has withdrawan from working wallet', '2022-03-30 17:27:49', 1),
(51, 3, '$150 has withdrawan from working wallet', '2022-03-30 17:32:02', 1),
(52, 9, '$60 has withdrawan from working wallet', '2022-03-30 21:03:53', 1),
(53, 2, '$60 has withdrawan from working wallet', '2022-03-31 15:20:35', 1),
(54, 2, '$122 has withdrawan from working wallet', '2022-03-31 22:32:10', 1),
(55, 2, 'User  ED567890  has been added to your team as level  1', '2022-07-22 16:02:26', 1),
(56, 1, 'User  admin  has been added to your team as level  2', '2022-07-22 16:02:26', 1),
(57, 2, 'Reset password link sent successfully to your registered email id', '2022-07-25 10:20:16', 1),
(58, 2, 'Reset password link sent successfully to your registered email id', '2022-07-25 10:37:18', 1),
(59, 2, 'Reset password link sent successfully to your registered email id', '2022-07-25 10:39:08', 1),
(60, 2, 'Reset password link sent successfully to your registered email id', '2022-07-25 10:40:25', 1),
(61, 2, 'Reset password link sent successfully to your registered email id', '2022-07-25 12:41:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address_external`
--

CREATE TABLE `tbl_address_external` (
  `srno` int(11) NOT NULL,
  `address` varchar(34) DEFAULT NULL,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address_reserved`
--

CREATE TABLE `tbl_address_reserved` (
  `srno` int(11) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `admin_remark` varchar(500) DEFAULT NULL,
  `invoice_id` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `used_status` enum('Used','Unused') DEFAULT 'Unused',
  `used_time` datetime DEFAULT NULL,
  `user_ip` varchar(250) DEFAULT NULL,
  `currency_code` enum('BTC','ETH') DEFAULT 'BTC'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address_reserved_05`
--

CREATE TABLE `tbl_address_reserved_05` (
  `srno` int(11) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `admin_remark` varchar(500) DEFAULT NULL,
  `invoice_id` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `used_status` enum('Used','Unused') DEFAULT 'Unused',
  `used_time` datetime DEFAULT NULL,
  `user_ip` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_address_reserved_old`
--

CREATE TABLE `tbl_address_reserved_old` (
  `srno` int(11) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `admin_remark` varchar(500) DEFAULT NULL,
  `invoice_id` varchar(500) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `used_status` enum('Used','Unused') DEFAULT 'Unused',
  `used_time` datetime DEFAULT NULL,
  `user_ip` varchar(250) DEFAULT NULL,
  `currency_code` enum('BTC','ETH') DEFAULT 'BTC'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_funds`
--

CREATE TABLE `tbl_add_funds` (
  `srno` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL COMMENT 'user id',
  `network_type` varchar(255) DEFAULT NULL,
  `network_type_value` double DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `fund_type` enum('Credit','Debit') NOT NULL DEFAULT 'Credit' COMMENT 'Credit:Add Fund, Debit:Deduct Fund',
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) NOT NULL DEFAULT 'confirmed' COMMENT 'default confirmed',
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_remove_business`
--

CREATE TABLE `tbl_add_remove_business` (
  `srno` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `position` int(11) DEFAULT '0',
  `power_bv` int(11) DEFAULT NULL,
  `type` enum('1','2','3','4') DEFAULT '1' COMMENT '1-add power above Id,2 -add power upto admin,3-remove power above id,4-removepower upto admin',
  `before_lbv` double DEFAULT NULL,
  `before_rbv` double DEFAULT NULL,
  `after_lbv` double DEFAULT NULL,
  `after_rbv` double DEFAULT NULL,
  `before_curr_lbv` double DEFAULT NULL,
  `before_curr_rbv` double DEFAULT NULL,
  `after_curr_lbv` double DEFAULT NULL,
  `after_curr_rbv` double DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT NULL,
  `entry_status` enum('Add','Remove') DEFAULT 'Add',
  `cron_status` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_remove_business_upline`
--

CREATE TABLE `tbl_add_remove_business_upline` (
  `srno` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `position` int(11) DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `power_bv` int(11) DEFAULT NULL,
  `type` enum('1','2','3','4') DEFAULT '1' COMMENT '1-add power above Id,2 -add power upto admin,3-remove power above id,4-removepower upto admin',
  `before_lbv` double DEFAULT NULL,
  `before_rbv` double DEFAULT NULL,
  `after_lbv` double DEFAULT NULL,
  `after_rbv` double DEFAULT NULL,
  `before_curr_lbv` double DEFAULT NULL,
  `before_curr_rbv` double DEFAULT NULL,
  `after_curr_lbv` double DEFAULT NULL,
  `after_curr_rbv` double DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT NULL,
  `entry_status` enum('Add','Remove') DEFAULT 'Add',
  `cron_status` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_remove_rank_business`
--

CREATE TABLE `tbl_add_remove_rank_business` (
  `srno` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `rank` varchar(150) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `type` enum('Add','Remove') DEFAULT 'Add',
  `before_bv` double DEFAULT NULL,
  `power_bv` int(11) DEFAULT NULL,
  `after_bv` double DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_add_remove_rank_business_upline`
--

CREATE TABLE `tbl_add_remove_rank_business_upline` (
  `srno` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `rank` varchar(150) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `type` enum('Add','Remove') DEFAULT 'Add',
  `before_bv` double DEFAULT NULL,
  `power_bv` int(11) DEFAULT NULL,
  `after_bv` double DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_mac_address`
--

CREATE TABLE `tbl_admin_mac_address` (
  `id` int(11) NOT NULL,
  `mac_address` text,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `entry_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_all_transaction`
--

CREATE TABLE `tbl_all_transaction` (
  `srno` int(11) NOT NULL,
  `id` int(11) DEFAULT '0',
  `network_type` varchar(500) DEFAULT NULL,
  `phases_id` int(11) NOT NULL DEFAULT '0',
  `credit` double DEFAULT '0',
  `debit` double DEFAULT '0',
  `coin` double NOT NULL DEFAULT '0',
  `prev_balance` decimal(10,0) NOT NULL DEFAULT '0',
  `final_balance` decimal(10,0) NOT NULL DEFAULT '0',
  `balance` double DEFAULT '0',
  `refference` varchar(50) DEFAULT '0' COMMENT 'tbl_add_fund(srno)',
  `transaction_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `remarks` varchar(500) DEFAULT NULL,
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_all_transaction`
--

INSERT INTO `tbl_all_transaction` (`srno`, `id`, `network_type`, `phases_id`, `credit`, `debit`, `coin`, `prev_balance`, `final_balance`, `balance`, `refference`, `transaction_date`, `type`, `status`, `remarks`, `entry_time`) VALUES
(1, 2, 'USD', 0, 0, 50, 0, '0', '0', -50, '2', '2022-03-04 13:19:58', 'working_wallet', 1, '$50 has withdrawan from working wallet', '2022-03-04 22:19:58'),
(2, 2, 'USD', 0, 0, 50, 0, '0', '0', -100, '2', '2022-03-04 13:20:30', 'working_wallet', 1, '$50 has withdrawan from working wallet', '2022-03-04 22:20:30'),
(3, 2, 'USD', 0, 0, 100, 0, '0', '0', -200, '2', '2022-03-04 13:21:05', 'working_wallet', 1, '$100 has withdrawan from working wallet', '2022-03-04 22:21:05'),
(4, 2, 'USD', 0, 0, 150, 0, '0', '0', -350, '2', '2022-03-04 13:21:37', 'working_wallet', 1, '$150 has withdrawan from working wallet', '2022-03-04 22:21:37'),
(5, 2, 'USD', 0, 0, 100, 0, '0', '0', -450, '2', '2022-03-04 13:22:16', 'ROI wallet', 1, '$100 has withdrawan from ROI wallet', '2022-03-04 22:22:16'),
(6, 2, 'USD', 0, 0, 150, 0, '0', '0', -600, '2', '2022-03-04 13:22:49', 'ROI wallet', 1, '$150 has withdrawan from ROI wallet', '2022-03-04 22:22:49'),
(7, 2, 'USD', 0, 0, 200, 0, '0', '0', -800, '2', '2022-03-04 13:24:00', 'ROI wallet', 1, '$200 has withdrawan from ROI wallet', '2022-03-04 22:24:00'),
(8, 2, 'USD', 0, 0, 50, 0, '0', '0', -850, '2', '2022-03-04 13:24:27', 'ROI wallet', 1, '$50 has withdrawan from ROI wallet', '2022-03-04 22:24:27'),
(9, 2, 'USD', 0, 0, 50, 0, '0', '0', -900, '2', '2022-03-04 13:46:14', 'working_wallet', 1, '$50 has withdrawan from working wallet', '2022-03-04 22:46:14'),
(10, 2, 'USD', 0, 0, 50, 0, '0', '0', -950, '2', '2022-03-04 14:30:15', 'working_wallet', 1, '$50 has withdrawan from working wallet', '2022-03-04 23:30:15'),
(11, 2, 'USD', 0, 0, 50, 0, '0', '0', -1000, '2', '2022-03-04 14:31:59', 'working_wallet', 1, '$50 has withdrawan from working wallet', '2022-03-04 23:31:59'),
(12, 2, 'USD', 0, 0, 20, 0, '0', '0', -1020, '2', '2022-03-08 09:35:59', 'working_wallet', 1, '$20 has withdrawan from working wallet', '2022-03-08 18:35:59'),
(13, 2, 'USD', 0, 0, 30, 0, '0', '0', -1050, '2', '2022-03-08 09:36:44', 'ROI wallet', 1, '$30 has withdrawan from ROI wallet', '2022-03-08 18:36:44'),
(14, 3, 'USD', 0, 0, 400, 0, '0', '0', -400, '3', '2022-03-28 22:16:09', 'working_wallet', 1, '$400 has withdrawan from working wallet', '2022-03-28 22:16:09'),
(15, 4, 'USD', 0, 0, 250, 0, '0', '0', -250, '4', '2022-03-28 22:18:49', 'ROI wallet', 1, '$250 has withdrawan from ROI wallet', '2022-03-28 22:18:49'),
(16, 10, 'USD', 0, 0, 200, 0, '0', '0', -200, '10', '2022-03-28 22:21:20', 'working_wallet', 1, '$200 has withdrawan from working wallet', '2022-03-28 22:21:20'),
(17, 10, 'USD', 0, 0, 60, 0, '0', '0', -260, '10', '2022-03-30 17:17:32', 'working_wallet', 1, '$60 has withdrawan from working wallet', '2022-03-30 17:17:32'),
(18, 10, 'USD', 0, 0, 60, 0, '0', '0', -320, '10', '2022-03-30 17:23:56', 'working_wallet', 1, '$60 has withdrawan from working wallet', '2022-03-30 17:23:56'),
(19, 9, 'USD', 0, 0, 30, 0, '0', '0', -30, '9', '2022-03-30 17:27:49', 'working_wallet', 1, '$30 has withdrawan from working wallet', '2022-03-30 17:27:49'),
(20, 3, 'USD', 0, 0, 150, 0, '0', '0', -550, '3', '2022-03-30 17:32:02', 'working_wallet', 1, '$150 has withdrawan from working wallet', '2022-03-30 17:32:02'),
(21, 9, 'USD', 0, 0, 60, 0, '0', '0', -90, '9', '2022-03-30 21:03:53', 'working_wallet', 1, '$60 has withdrawan from working wallet', '2022-03-30 21:03:53'),
(22, 2, 'USD', 0, 0, 60, 0, '0', '0', -1110, '2', '2022-03-31 15:20:35', 'working_wallet', 1, '$60 has withdrawan from working wallet', '2022-03-31 15:20:35'),
(23, 2, 'USD', 0, 0, 122, 0, '0', '0', -1232, '2', '2022-03-31 19:02:11', 'working_wallet', 1, '$122 has withdrawan from working wallet', '2022-03-31 22:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_all_transactions_ip_history`
--

CREATE TABLE `tbl_all_transactions_ip_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `deduction` double DEFAULT '0',
  `invoice_id` varchar(50) DEFAULT '0',
  `payment_mode` varchar(20) DEFAULT NULL,
  `product_url` text,
  `type` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app_version`
--

CREATE TABLE `tbl_app_version` (
  `id` int(11) NOT NULL,
  `version_name` varchar(100) NOT NULL,
  `version_code` int(20) NOT NULL,
  `version_desc` text NOT NULL,
  `device_type` enum('A','I','') NOT NULL DEFAULT '',
  `update_type` enum('F','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_app_version`
--

INSERT INTO `tbl_app_version` (`id`, `version_name`, `version_code`, `version_desc`, `device_type`, `update_type`) VALUES
(1, '1.0.9', 9, 'Updated version of your app is available now. Please install new version for better experience..!!!\n\n', 'A', 'F');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_app_versions_logs`
--

CREATE TABLE `tbl_app_versions_logs` (
  `id` int(11) NOT NULL,
  `version_name` varchar(100) NOT NULL,
  `version_code` int(20) NOT NULL,
  `version_desc` text NOT NULL,
  `device_type` enum('A','I','') NOT NULL DEFAULT '',
  `update_type` enum('F','N') NOT NULL DEFAULT 'N',
  `created` datetime DEFAULT NULL,
  `createdby` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_awards_list`
--

CREATE TABLE `tbl_awards_list` (
  `award_id` int(11) NOT NULL,
  `downline_needed` int(11) DEFAULT '0',
  `business_required` int(11) DEFAULT '0',
  `reward` int(11) DEFAULT '0',
  `direct` int(11) DEFAULT '0',
  `qualified_bv` int(11) DEFAULT '0',
  `award` double DEFAULT '0',
  `designation` varchar(200) DEFAULT '',
  `time_period` int(11) DEFAULT '0' COMMENT 'time period is in Months'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_awards_list_bonanza`
--

CREATE TABLE `tbl_awards_list_bonanza` (
  `award_id` int(11) NOT NULL,
  `qualified_bv` int(11) DEFAULT '0',
  `next_qualified_bv` int(11) DEFAULT '0',
  `award` text,
  `image` varchar(200) DEFAULT NULL,
  `time_period` varchar(50) DEFAULT '' COMMENT 'time period is in days',
  `from_date` date DEFAULT '0000-00-00',
  `to_date` date DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_award_winner`
--

CREATE TABLE `tbl_award_winner` (
  `winner_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `award_id` int(11) DEFAULT '0',
  `amount` double DEFAULT '0',
  `total_downId` int(11) DEFAULT NULL,
  `total_direct` int(11) DEFAULT NULL,
  `match_bv` decimal(10,2) DEFAULT '0.00',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_award_winner_bonanza`
--

CREATE TABLE `tbl_award_winner_bonanza` (
  `winner_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `award_id` int(11) DEFAULT '0',
  `match_bv` decimal(10,2) DEFAULT '0.00',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_balance_transfer`
--

CREATE TABLE `tbl_balance_transfer` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-Pending,1-Approved,2-Rejected',
  `transferred_amount` double DEFAULT '0',
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_billing_info`
--

CREATE TABLE `tbl_billing_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_binary_settings`
--

CREATE TABLE `tbl_binary_settings` (
  `id` int(11) NOT NULL,
  `min_range` double NOT NULL DEFAULT '0',
  `max_range` double NOT NULL DEFAULT '0',
  `capping_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_binary_settings`
--

INSERT INTO `tbl_binary_settings` (`id`, `min_range`, `max_range`, `capping_amount`) VALUES
(1, 50, 4999, 2000),
(2, 5000, 24999, 4000),
(3, 25000, 79999, 8000),
(4, 80000, 149999, 10000),
(5, 150000, 1000000, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_binrprt`
--

CREATE TABLE `tbl_binrprt` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `l_bv` decimal(10,2) DEFAULT '0.00',
  `r_bv` decimal(10,2) DEFAULT '0.00',
  `cl_bv` decimal(10,2) DEFAULT '0.00',
  `cr_bv` decimal(10,2) DEFAULT '0.00',
  `payamt` decimal(10,2) DEFAULT '0.00',
  `matching` decimal(10,2) DEFAULT '0.00',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonus`
--

CREATE TABLE `tbl_bonus` (
  `srno` int(11) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `bonus` double DEFAULT '0',
  `entry_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '0 means inactive,1 means active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bulk_emails`
--

CREATE TABLE `tbl_bulk_emails` (
  `srno` int(11) NOT NULL,
  `from_mail` varchar(255) NOT NULL,
  `to_mail` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_business_setting`
--

CREATE TABLE `tbl_business_setting` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `remark` text,
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_business_setting`
--

INSERT INTO `tbl_business_setting` (`id`, `user_id`, `amount`, `remark`, `entry_time`) VALUES
(1, 2, 100, NULL, '2021-06-12 19:46:43'),
(2, 2, 2105, '.', '2021-06-14 14:03:38'),
(3, 2, 4112, 'test', '2021-06-15 08:06:15'),
(4, 2, 4112, 'test', '2021-06-15 08:06:48'),
(5, 8, 900, 'tet', '2021-11-25 18:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buy_report`
--

CREATE TABLE `tbl_buy_report` (
  `srno` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `coin` double DEFAULT NULL,
  `coin_rate` double DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carry_bv`
--

CREATE TABLE `tbl_carry_bv` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payout_no` int(11) DEFAULT NULL,
  `before_l_bv` double DEFAULT NULL,
  `before_r_bv` double DEFAULT NULL,
  `match_bv` int(11) DEFAULT NULL,
  `carry_l_bv` double DEFAULT NULL,
  `carry_r_bv` double DEFAULT NULL,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_carry_bv`
--

INSERT INTO `tbl_carry_bv` (`id`, `user_id`, `payout_no`, `before_l_bv`, `before_r_bv`, `match_bv`, `carry_l_bv`, `carry_r_bv`, `entry_time`) VALUES
(1, 2, 1, 220000, 209999, 209999, 10001, 0, '2022-02-18 06:16:50'),
(2, 2, 2, 450001, 480000, 450001, 0, 29999, '2022-02-18 06:32:50'),
(3, 2, 3, 235799, 169999, 169999, 65800, 0, '2022-02-22 12:12:38'),
(4, 8, 3, 135299, 96500, 96500, 38799, 0, '2022-02-22 12:12:38'),
(5, 10, 3, 3000, 3500, 3000, 0, 500, '2022-02-22 12:12:38'),
(6, 11, 3, 30100, 30000, 30000, 100, 0, '2022-02-22 12:12:38'),
(7, 8, 4, 38799, 161999, 38799, 0, 123200, '2022-02-25 06:08:06'),
(8, 10, 4, 84999, 77500, 77500, 7499, 0, '2022-02-25 06:08:06'),
(9, 12, 4, 4500, 4999, 4500, 0, 499, '2022-02-25 06:08:06'),
(10, 8, 5, 850, 129250, 850, 0, 128400, '2022-02-25 11:09:39'),
(11, 19, 5, 5000, 1000, 1000, 4000, 0, '2022-02-25 11:09:39'),
(12, 19, 6, 4000, 2000, 2000, 2000, 0, '2022-02-25 11:25:16'),
(13, 19, 7, 15000, 15000, 15000, 0, 0, '2022-02-25 11:42:59'),
(14, 2, 1, 5000, 250, 250, 4750, 0, '2022-03-15 11:48:27'),
(15, 2, 2, 49750, 81000, 49750, 0, 31250, '2022-03-22 06:07:15'),
(16, 2, 3, 30000, 82249, 30000, 0, 52249, '2022-03-22 12:58:16'),
(17, 3, 3, 24999, 26000, 24999, 0, 1001, '2022-03-22 12:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text,
  `is_mob_filed` int(11) NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `name`, `image`, `is_mob_filed`, `status`, `entry_time`) VALUES
(1, 'Ecommerce', NULL, 0, 'Active', '2021-04-08 17:27:52'),
(2, 'Retail', NULL, 0, 'Active', '2021-04-08 17:29:04'),
(3, 'Apparel', NULL, 0, 'Active', '2021-04-08 17:29:49'),
(4, 'Health and Beauty', NULL, 0, 'Active', '2021-04-08 17:30:48'),
(5, 'Home', NULL, 0, 'Active', '2021-04-08 17:30:59'),
(6, 'Electronics', NULL, 0, 'Active', '2021-04-08 17:31:22'),
(7, 'Food', NULL, 0, 'Active', '2021-04-08 17:31:31'),
(8, 'Restaurants', NULL, 0, 'Active', '2021-04-08 17:31:58'),
(9, 'Groceries', NULL, 0, 'Active', '2021-04-08 17:33:00'),
(10, 'Games', NULL, 0, 'Active', '2021-04-08 17:33:14'),
(11, 'Travel', NULL, 0, 'Active', '2021-04-08 17:33:26'),
(12, 'Entertainment', NULL, 0, 'Active', '2021-04-08 17:33:49'),
(13, 'Gifts', NULL, 0, 'Active', '2021-04-08 17:34:06'),
(14, 'VolP', NULL, 0, 'Active', '2021-04-08 17:34:51'),
(15, 'Prepaid Phones', NULL, 1, 'Active', '2021-04-08 17:35:24'),
(16, 'Data', NULL, 1, 'Active', '2021-04-08 17:35:35'),
(17, 'Bills', NULL, 0, 'Active', '2021-04-08 17:35:48'),
(18, 'Digital Television DTH', NULL, 0, 'Active', '2021-04-08 17:36:36'),
(19, 'Lightning Utilities', NULL, 0, 'Active', '2021-04-08 17:37:33'),
(20, 'Phone Codes', NULL, 0, 'Active', '2021-04-09 05:32:35'),
(21, 'Other Bundles', NULL, 1, 'Active', '2021-04-09 05:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE `tbl_chat` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `translated_message` text CHARACTER SET utf8 COLLATE utf8_bin,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `attachment` text,
  `status` enum('unread','read') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'unread',
  `entry_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coin`
--

CREATE TABLE `tbl_coin` (
  `id` int(11) NOT NULL,
  `coin` varchar(50) NOT NULL,
  `min_daily` decimal(10,3) NOT NULL,
  `max_daily` decimal(10,3) NOT NULL,
  `min_onetime` decimal(10,3) NOT NULL,
  `max_onetime` decimal(10,3) NOT NULL,
  `code` varchar(50) NOT NULL,
  `coin_name` varchar(55) NOT NULL,
  `usd_rate` double NOT NULL,
  `status` enum('Active','Deactive') NOT NULL DEFAULT 'Active',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_coin`
--

INSERT INTO `tbl_coin` (`id`, `coin`, `min_daily`, `max_daily`, `min_onetime`, `max_onetime`, `code`, `coin_name`, `usd_rate`, `status`, `entry_time`, `update_date`, `img`) VALUES
(1, 'Bitcoin', '0.005', '4.686', '0.012', '9.373', 'BTC', 'bitcoin', 21338, 'Active', '2022-07-27 09:33:23', '2022-07-27 13:03:20', 'user-assets/images/Bitcoin_perspective_matte.png'),
(2, 'Bitcoin Gold', '3.150', '3061.950', '4.980', '3498.900', 'BTG', '', 0, 'Deactive', '2022-07-25 07:47:02', '2022-07-25 07:40:29', ''),
(3, 'Ethereum', '0.068', '68.400', '0.171', '136.800', 'ETH', 'ethereum', 1461.99, 'Active', '2022-07-27 09:33:23', '2022-07-27 13:03:20', 'user-assets/images/Ethereum_perspective_matte.png'),
(4, 'Ethereum Classic', '4.073', '20.367', '6.110', '28.513', 'ETC', 'ethereum-classic', 24.55, 'Deactive', '2022-07-26 08:58:54', '2022-07-25 13:40:25', ''),
(5, 'Litecoin', '1.858', '1857.700', '4.644', '3715.400', 'LTC', 'litecoin', 53.83, 'Active', '2022-07-27 09:33:23', '2022-07-27 13:03:20', 'user-assets/images/Litecoin_perspective_matte.png'),
(6, 'Tether (TRC-20)', '99.900', '99900.100', '249.750', '199800.200', 'USDT', 'tether', 1.001, 'Active', '2022-07-28 09:58:48', '2022-07-27 13:03:20', 'user-assets/images/Tether_perspective_matte.png'),
(7, 'Tron', '1526.787', '7633.937', '2290.181', '10687.512', 'TRX', 'tron', 0.065497, 'Deactive', '2022-07-26 08:58:40', '2022-07-25 13:40:25', ''),
(8, 'Dogecoin', '1595.100', '1595099.853', '3987.750', '3190199.707', 'DOGE', 'dogecoin', 0.062692, 'Active', '2022-07-27 09:33:23', '2022-07-27 13:03:20', 'user-assets/images/Dogecoin_perspective_matte.png'),
(9, 'Lumens', '100.000', '493942.000', '130.000', '512844.000', 'XLM', '', 0, 'Deactive', '2022-07-25 07:47:06', '2022-07-25 07:40:29', ''),
(10, 'XRP', '288.596', '1442.981', '432.894', '2020.173', 'XRP', 'ripple', 0.346505, 'Deactive', '2022-07-26 08:58:45', '2022-07-25 13:40:25', ''),
(11, 'QTUM', '5.000', '18173.100', '8.000', '21172.980', 'QTUM', '', 0, 'Deactive', '2022-07-25 07:47:10', '2022-07-25 07:40:29', ''),
(12, 'Dash', '0.150', '1176.250', '1.980', '1398.210', 'DASH', '', 0, 'Deactive', '2022-07-25 09:19:23', '2022-07-25 07:40:29', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coin_transaction_log`
--

CREATE TABLE `tbl_coin_transaction_log` (
  `sr_no` int(11) NOT NULL,
  `from_id` int(11) DEFAULT NULL COMMENT 'user tbl id',
  `to_id` int(11) DEFAULT NULL COMMENT 'user tbl id',
  `from_user_id` varchar(80) DEFAULT NULL,
  `to_user_id` varchar(80) DEFAULT NULL,
  `coin` double DEFAULT NULL,
  `trans_type` enum('1') DEFAULT '1' COMMENT '1- transfer to user',
  `remark` varchar(200) DEFAULT NULL,
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contest_setttings`
--

CREATE TABLE `tbl_contest_setttings` (
  `id` int(11) NOT NULL,
  `required_left_commanders` int(11) NOT NULL,
  `required_right_commanders` int(11) NOT NULL,
  `contest_prize` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contest_setttings`
--

INSERT INTO `tbl_contest_setttings` (`id`, `required_left_commanders`, `required_right_commanders`, `contest_prize`) VALUES
(1, 20, 20, 'Trip to Dubai'),
(2, 70, 70, 'Trip to Dubai & Apple Iphone 12 Max Pro'),
(3, 150, 150, '100 Gram Gold'),
(4, 600, 600, 'Mercedes E class ex Showroom');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country_new`
--

CREATE TABLE `tbl_country_new` (
  `country_id` int(11) NOT NULL,
  `iso_code` varchar(7) DEFAULT NULL,
  `country` varchar(44) DEFAULT NULL,
  `code` varchar(17) DEFAULT NULL,
  `avoid_con` int(11) NOT NULL DEFAULT '0',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country_new`
--

INSERT INTO `tbl_country_new` (`country_id`, `iso_code`, `country`, `code`, `avoid_con`, `entry_time`) VALUES
(2, 'AF', 'Afghanistan', '93', 0, '2018-02-21 15:55:17'),
(3, 'AX', 'Aland Islands', '358', 0, '2018-02-21 15:55:17'),
(4, 'AL', 'Albania', '355', 0, '2018-02-21 15:55:17'),
(5, 'DZ', 'Algeria', '213', 0, '2018-02-21 15:55:17'),
(6, 'AS', 'American Samoa', '1-684', 0, '2018-02-21 15:55:17'),
(7, 'AD', 'Andorra', '376', 0, '2018-02-21 15:55:17'),
(8, 'AO', 'Angola', '244', 0, '2018-02-21 15:55:17'),
(9, 'AI', 'Anguilla', '1-264', 0, '2018-02-21 15:55:17'),
(10, 'AQ', 'Antarctica', '672', 0, '2018-02-21 15:55:17'),
(11, 'AG', 'Antigua and Barbuda', '1-268', 0, '2018-02-21 15:55:17'),
(12, 'AR', 'Argentina', '54', 0, '2018-02-21 15:55:17'),
(13, 'AM', 'Armenia', '374', 0, '2018-02-21 15:55:17'),
(14, 'AW', 'Aruba', '297', 0, '2018-02-21 15:55:17'),
(15, 'AU', 'Australia', '61', 0, '2018-02-21 15:55:17'),
(16, 'AT', 'Austria', '43', 0, '2018-02-21 15:55:17'),
(17, 'AZ', 'Azerbaijan', '994', 0, '2018-02-21 15:55:17'),
(18, 'BS', 'Bahamas', '1-242', 0, '2018-02-21 15:55:17'),
(19, 'BH', 'Bahrain', '973', 0, '2018-02-21 15:55:17'),
(20, 'BD', 'Bangladesh', '880', 0, '2018-02-21 15:55:17'),
(21, 'BB', 'Barbados', '1-246', 0, '2018-02-21 15:55:17'),
(22, 'BY', 'Belarus', '375', 0, '2018-02-21 15:55:17'),
(23, 'BE', 'Belgium', '32', 0, '2018-02-21 15:55:17'),
(24, 'BZ', 'Belize', '501', 0, '2018-02-21 15:55:17'),
(25, 'BJ', 'Benin', '229', 0, '2018-02-21 15:55:17'),
(26, 'BM', 'Bermuda', '1-441', 0, '2018-02-21 15:55:17'),
(27, 'BT', 'Bhutan', '975', 0, '2018-02-21 15:55:17'),
(28, 'BO', 'Bolivia', '591', 0, '2018-02-21 15:55:17'),
(29, 'BQ', 'Bonaire', '599', 0, '2018-02-21 15:55:17'),
(30, 'BA', 'Bosnia and Herzegovina', '387', 0, '2018-02-21 15:55:17'),
(31, 'BW', 'Botswana', '267', 0, '2018-02-21 15:55:17'),
(32, 'BV', 'Bouvet Island', '47', 0, '2018-02-21 15:55:17'),
(33, 'BR', 'Brazil', '55', 0, '2018-02-21 15:55:17'),
(34, 'IO', 'British Indian Ocean Territory', '246', 0, '2018-02-21 15:55:17'),
(35, 'VG', 'British Virgin Islands', '1-284', 0, '2018-02-21 15:55:17'),
(36, 'BN', 'Brunei Darussalam', '673', 0, '2018-02-21 15:55:17'),
(37, 'BG', 'Bulgaria', '359', 0, '2018-02-21 15:55:17'),
(38, 'BF', 'Burkina Faso', '226', 0, '2018-02-21 15:55:17'),
(39, 'BI', 'Burundi', '257', 0, '2018-02-21 15:55:17'),
(40, 'CI', 'Cate dIvoire', '225', 0, '2018-02-21 15:55:17'),
(41, 'KH', 'Cambodia', '855', 0, '2018-02-21 15:55:17'),
(42, 'CM', 'Cameroon', '237', 0, '2018-02-21 15:55:17'),
(43, 'CA', 'Canada', '1', 0, '2018-02-21 15:55:17'),
(44, 'CV', 'Cape Verde', '238', 0, '2018-02-21 15:55:17'),
(45, 'KY', 'Cayman Islands', '1-345', 0, '2018-02-21 15:55:17'),
(46, 'CF', 'Central African Republic', '236', 0, '2018-02-21 15:55:17'),
(47, 'TD', 'Chad', '235', 0, '2018-02-21 15:55:17'),
(48, 'CL', 'Chile', '56', 0, '2018-02-21 15:55:17'),
(49, 'CN', 'China', '86', 0, '2018-02-21 15:55:17'),
(50, 'CX', 'Christmas Island', '61', 0, '2018-02-21 15:55:17'),
(51, 'CC', 'Cocos (Keeling) Islands', '61', 0, '2018-02-21 15:55:17'),
(52, 'CO', 'Colombia', '57', 0, '2018-02-21 15:55:17'),
(53, 'KM', 'Comoros', '269', 0, '2018-02-21 15:55:17'),
(54, 'CG', 'Congo', '242', 0, '2018-02-21 15:55:17'),
(55, 'CK', 'Cook Islands', '682', 0, '2018-02-21 15:55:17'),
(56, 'CR', 'Costa Rica', '506', 0, '2018-02-21 15:55:17'),
(57, 'HR', 'Croatia', '385', 0, '2018-02-21 15:55:17'),
(58, 'CU', 'Cuba', '53', 0, '2018-02-21 15:55:17'),
(59, 'CW', 'CuraÃ§ao', '599', 0, '2018-02-21 15:55:17'),
(60, 'CY', 'Cyprus', '357', 0, '2018-02-21 15:55:17'),
(61, 'CZ', 'Czech Republic', '420', 0, '2018-02-21 15:55:17'),
(62, 'CD', 'Democratic Republic of the Congo', '243', 0, '2018-02-21 15:55:17'),
(63, 'DK', 'Denmark', '45', 0, '2018-02-21 15:55:17'),
(64, 'DJ', 'Djibouti', '253', 0, '2018-02-21 15:55:17'),
(65, 'DM', 'Dominica', '1-767', 0, '2018-02-21 15:55:17'),
(66, 'DO', 'Dominican Republic', '1-809,1-829,1-849', 0, '2018-02-21 15:55:17'),
(67, 'EC', 'Ecuador', '593', 0, '2018-02-21 15:55:17'),
(68, 'EG', 'Egypt', '20', 0, '2018-02-21 15:55:17'),
(69, 'SV', 'El Salvador', '503', 0, '2018-02-21 15:55:17'),
(70, 'GQ', 'Equatorial Guinea', '240', 0, '2018-02-21 15:55:17'),
(71, 'ER', 'Eritrea', '291', 0, '2018-02-21 15:55:17'),
(72, 'EE', 'Estonia', '372', 0, '2018-02-21 15:55:17'),
(73, 'ET', 'Ethiopia', '251', 0, '2018-02-21 15:55:17'),
(74, 'FK', 'Falkland Islands (Malvinas)', '500', 0, '2018-02-21 15:55:17'),
(75, 'FO', 'Faroe Islands', '298', 0, '2018-02-21 15:55:17'),
(76, 'FJ', 'Fiji', '679', 0, '2018-02-21 15:55:17'),
(77, 'FI', 'Finland', '358', 0, '2018-02-21 15:55:17'),
(78, 'FR', 'France', '33', 0, '2018-02-21 15:55:17'),
(79, 'GF', 'French Guiana', '594', 0, '2018-02-21 15:55:17'),
(80, 'PF', 'French Polynesia', '689', 0, '2018-02-21 15:55:17'),
(81, 'TF', 'French Southern Territories', '262', 0, '2018-02-21 15:55:17'),
(82, 'GA', 'Gabon', '241', 0, '2018-02-21 15:55:17'),
(83, 'GM', 'Gambia', '220', 0, '2018-02-21 15:55:17'),
(84, 'GE', 'Georgia', '995', 0, '2018-02-21 15:55:17'),
(85, 'DE', 'Germany', '49', 0, '2018-02-21 15:55:17'),
(86, 'GH', 'Ghana', '233', 0, '2018-02-21 15:55:17'),
(87, 'GI', 'Gibraltar', '350', 0, '2018-02-21 15:55:17'),
(88, 'GR', 'Greece', '30', 0, '2018-02-21 15:55:17'),
(89, 'GL', 'Greenland', '299', 0, '2018-02-21 15:55:17'),
(90, 'GD', 'Grenada', '1-473', 0, '2018-02-21 15:55:17'),
(91, 'GP', 'Guadeloupe', '590', 0, '2018-02-21 15:55:17'),
(92, 'GU', 'Guam', '1-671', 0, '2018-02-21 15:55:17'),
(93, 'GT', 'Guatemala', '502', 0, '2018-02-21 15:55:17'),
(94, 'GG', 'Guernsey', '44', 0, '2018-02-21 15:55:17'),
(95, 'GN', 'Guinea', '224', 0, '2018-02-21 15:55:17'),
(96, 'GW', 'Guinea-Bissau', '245', 0, '2018-02-21 15:55:17'),
(97, 'GY', 'Guyana', '592', 0, '2018-02-21 15:55:17'),
(98, 'HT', 'Haiti', '509', 0, '2018-02-21 15:55:17'),
(99, 'HM', 'Heard Island and McDonald Mcdonald Islands', '672', 0, '2018-02-21 15:55:17'),
(100, 'VA', 'Holy See (Vatican City State)', '379', 0, '2018-02-21 15:55:17'),
(101, 'HN', 'Honduras', '504', 0, '2018-02-21 15:55:17'),
(102, 'HK', 'Hong Kong S.A.R.', '852', 0, '2018-02-21 15:55:17'),
(103, 'HU', 'Hungary', '36', 0, '2018-02-21 15:55:17'),
(104, 'IS', 'Iceland', '354', 0, '2018-02-21 15:55:17'),
(105, 'IN', 'India', '91', 0, '2018-02-21 15:55:17'),
(106, 'ID', 'Indonesia', '62', 0, '2018-02-21 15:55:17'),
(107, 'IR', 'Iran, Islamic Republic of', '98', 0, '2018-02-21 15:55:17'),
(108, 'IQ', 'Iraq', '964', 0, '2018-02-21 15:55:17'),
(109, 'IE', 'Ireland', '353', 0, '2018-02-21 15:55:17'),
(110, 'IM', 'Isle of Man', '44', 0, '2018-02-21 15:55:17'),
(111, 'IL', 'Israel', '972', 0, '2018-02-21 15:55:17'),
(112, 'IT', 'Italy', '39', 0, '2018-02-21 15:55:17'),
(113, 'JM', 'Jamaica', '1', 0, '2018-02-21 15:55:17'),
(114, 'JP', 'Japan', '81', 0, '2018-02-21 15:55:17'),
(115, 'JE', 'Jersey', '44', 0, '2018-02-21 15:55:17'),
(116, 'JO', 'Jordan', '962', 0, '2018-02-21 15:55:17'),
(117, 'KZ', 'Kazakhstan', '7', 0, '2018-02-21 15:55:17'),
(118, 'KE', 'Kenya', '254', 0, '2018-02-21 15:55:17'),
(119, 'KI', 'Kiribati', '686', 0, '2018-02-21 15:55:17'),
(120, 'KP', 'Korea North', '850', 0, '2018-02-21 15:55:17'),
(121, 'KR', 'Korea South', '82', 0, '2018-02-21 15:55:17'),
(122, 'KW', 'Kuwait', '965', 0, '2018-02-21 15:55:17'),
(123, 'KG', 'Kyrgyzstan', '996', 0, '2018-02-21 15:55:17'),
(124, 'LA', 'Lao Peoples Democratic Republic', '856', 0, '2018-02-21 15:55:17'),
(125, 'LV', 'Latvia', '371', 0, '2018-02-21 15:55:17'),
(126, 'LB', 'Lebanon', '961', 0, '2018-02-21 15:55:17'),
(127, 'LS', 'Lesotho', '266', 0, '2018-02-21 15:55:17'),
(128, 'LR', 'Liberia', '231', 0, '2018-02-21 15:55:17'),
(129, 'LY', 'Libya', '218', 0, '2018-02-21 15:55:17'),
(130, 'LI', 'Liechtenstein', '423', 0, '2018-02-21 15:55:17'),
(131, 'LT', 'Lithuania', '370', 0, '2018-02-21 15:55:17'),
(132, 'LU', 'Luxembourg', '352', 0, '2018-02-21 15:55:17'),
(133, 'MO', 'Macao', '853', 0, '2018-02-21 15:55:17'),
(134, 'MK', 'Macedonia, the Former Yugoslav Republic of', '389', 0, '2018-02-21 15:55:17'),
(135, 'MG', 'Madagascar', '261', 0, '2018-02-21 15:55:17'),
(136, 'MW', 'Malawi', '265', 0, '2018-02-21 15:55:17'),
(137, 'MY', 'Malaysia', '60', 0, '2018-02-21 15:55:17'),
(138, 'MV', 'Maldives', '960', 0, '2018-02-21 15:55:17'),
(139, 'ML', 'Mali', '223', 0, '2018-02-21 15:55:17'),
(140, 'MT', 'Malta', '356', 0, '2018-02-21 15:55:17'),
(141, 'MH', 'Marshall Islands', '692', 0, '2018-02-21 15:55:17'),
(142, 'MQ', 'Martinique', '596', 0, '2018-02-21 15:55:17'),
(143, 'MR', 'Mauritania', '222', 0, '2018-02-21 15:55:17'),
(144, 'MU', 'Mauritius', '230', 0, '2018-02-21 15:55:17'),
(145, 'YT', 'Mayotte', '262', 0, '2018-02-21 15:55:17'),
(146, 'MX', 'Mexico', '52', 0, '2018-02-21 15:55:17'),
(147, 'FM', 'Micronesia, Federated States of', '691', 0, '2018-02-21 15:55:17'),
(148, 'MD', 'Moldova, Republic of', '373', 0, '2018-02-21 15:55:17'),
(149, 'MC', 'Monaco', '377', 0, '2018-02-21 15:55:17'),
(150, 'MN', 'Mongolia', '976', 0, '2018-02-21 15:55:17'),
(151, 'ME', 'Montenegro', '382', 0, '2018-02-21 15:55:17'),
(152, 'MS', 'Montserrat', '1-664', 0, '2018-02-21 15:55:17'),
(153, 'MA', 'Morocco', '212', 0, '2018-02-21 15:55:17'),
(154, 'MZ', 'Mozambique', '258', 0, '2018-02-21 15:55:17'),
(155, 'MM', 'Myanmar', '95', 0, '2018-02-21 15:55:17'),
(156, 'NA', 'Namibia', '264', 0, '2018-02-21 15:55:17'),
(157, 'NR', 'Nauru', '674', 0, '2018-02-21 15:55:17'),
(158, 'NP', 'Nepal', '977', 0, '2018-02-21 15:55:17'),
(159, 'NL', 'Netherlands', '31', 0, '2018-02-21 15:55:17'),
(160, 'NC', 'New Caledonia', '687', 0, '2018-02-21 15:55:17'),
(161, 'NZ', 'New Zealand', '64', 0, '2018-02-21 15:55:17'),
(162, 'NI', 'Nicaragua', '505', 0, '2018-02-21 15:55:17'),
(163, 'NE', 'Niger', '227', 0, '2018-02-21 15:55:17'),
(164, 'NG', 'Nigeria', '234', 0, '2018-02-21 15:55:17'),
(165, 'NU', 'Niue', '683', 0, '2018-02-21 15:55:17'),
(166, 'NF', 'Norfolk Island', '672', 0, '2018-02-21 15:55:17'),
(167, 'MP', 'Northern Mariana Islands', '1-670', 0, '2018-02-21 15:55:17'),
(168, 'NO', 'Norway', '47', 0, '2018-02-21 15:55:17'),
(169, 'OM', 'Oman', '968', 0, '2018-02-21 15:55:17'),
(170, 'PK', 'Pakistan', '92', 0, '2018-02-21 15:55:17'),
(171, 'PW', 'Palau', '680', 0, '2018-02-21 15:55:17'),
(172, 'PS', 'Palestine, State of', '970', 0, '2018-02-21 15:55:17'),
(173, 'PA', 'Panama', '507', 0, '2018-02-21 15:55:17'),
(174, 'PG', 'Papua New Guinea', '675', 0, '2018-02-21 15:55:17'),
(175, 'PY', 'Paraguay', '595', 0, '2018-02-21 15:55:17'),
(176, 'PE', 'Peru', '51', 0, '2018-02-21 15:55:17'),
(177, 'PH', 'Philippines', '63', 0, '2018-02-21 15:55:17'),
(178, 'PN', 'Pitcairn', '870', 0, '2018-02-21 15:55:17'),
(179, 'PL', 'Poland', '48', 0, '2018-02-21 15:55:17'),
(180, 'PT', 'Portugal', '351', 0, '2018-02-21 15:55:17'),
(181, 'PR', 'Puerto Rico', '1', 0, '2018-02-21 15:55:17'),
(182, 'QA', 'Qatar', '974', 0, '2018-02-21 15:55:17'),
(183, 'RE', 'Reunion', '262', 0, '2018-02-21 15:55:17'),
(184, 'RO', 'Romania', '40', 0, '2018-02-21 15:55:17'),
(185, 'RU', 'Russia', '7', 0, '2018-02-21 15:55:17'),
(186, 'RW', 'Rwanda', '250', 0, '2018-02-21 15:55:17'),
(187, 'BL', 'Saint Barthalemy', '590', 0, '2018-02-21 15:55:17'),
(188, 'SH', 'Saint Helena', '290', 0, '2018-02-21 15:55:17'),
(189, 'KN', 'Saint Kitts and Nevis', '1-869', 0, '2018-02-21 15:55:17'),
(190, 'LC', 'Saint Lucia', '1-758', 0, '2018-02-21 15:55:17'),
(191, 'MF', 'Saint Martin (French part)', '590', 0, '2018-02-21 15:55:17'),
(192, 'PM', 'Saint Pierre and Miquelon', '508', 0, '2018-02-21 15:55:17'),
(193, 'VC', 'Saint Vincent and the Grenadines', '1-784', 0, '2018-02-21 15:55:17'),
(194, 'WS', 'Samoa', '685', 0, '2018-02-21 15:55:17'),
(195, 'SM', 'San Marino', '378', 0, '2018-02-21 15:55:17'),
(196, 'ST', 'Sao Tome and Principe', '239', 0, '2018-02-21 15:55:17'),
(197, 'SA', 'Saudi Arabia', '966', 0, '2018-02-21 15:55:17'),
(198, 'SN', 'Senegal', '221', 0, '2018-02-21 15:55:17'),
(199, 'RS', 'Serbia', '381', 0, '2018-02-21 15:55:17'),
(200, 'SC', 'Seychelles', '248', 0, '2018-02-21 15:55:17'),
(201, 'SL', 'Sierra Leone', '232', 0, '2018-02-21 15:55:17'),
(202, 'SG', 'Singapore', '65', 0, '2018-02-21 15:55:17'),
(203, 'SX', 'Sint Maarten (Dutch part)', '1-721', 0, '2018-02-21 15:55:17'),
(204, 'SK', 'Slovakia', '421', 0, '2018-02-21 15:55:17'),
(205, 'SI', 'Slovenia', '386', 0, '2018-02-21 15:55:17'),
(206, 'SB', 'Solomon Islands', '677', 0, '2018-02-21 15:55:17'),
(207, 'SO', 'Somalia', '252', 0, '2018-02-21 15:55:17'),
(208, 'ZA', 'South Africa', '27', 0, '2018-02-21 15:55:17'),
(209, 'GS', 'South Georgia and the South Sandwich Islands', '500', 0, '2018-02-21 15:55:17'),
(210, 'SS', 'South Sudan', '211', 0, '2018-02-21 15:55:17'),
(211, 'ES', 'Spain', '34', 0, '2018-02-21 15:55:17'),
(212, 'LK', 'Sri Lanka', '94', 0, '2018-02-21 15:55:17'),
(213, 'SD', 'Sudan', '249', 0, '2018-02-21 15:55:17'),
(214, 'SR', 'Suriname', '597', 0, '2018-02-21 15:55:17'),
(215, 'SJ', 'Svalbard and Jan Mayen', '47', 0, '2018-02-21 15:55:17'),
(216, 'SZ', 'Swaziland', '268', 0, '2018-02-21 15:55:17'),
(217, 'SE', 'Sweden', '46', 0, '2018-02-21 15:55:17'),
(218, 'CH', 'Switzerland', '41', 0, '2018-02-21 15:55:17'),
(219, 'SY', 'Syrian Arab Republic', '963', 0, '2018-02-21 15:55:17'),
(220, 'TW', 'Taiwan', '886', 0, '2018-02-21 15:55:17'),
(221, 'TJ', 'Tajikistan', '992', 0, '2018-02-21 15:55:17'),
(222, 'TH', 'Thailand', '66', 0, '2018-02-21 15:55:17'),
(223, 'TL', 'Timor-Leste', '670', 0, '2018-02-21 15:55:17'),
(224, 'TG', 'Togo', '228', 0, '2018-02-21 15:55:17'),
(225, 'TK', 'Tokelau', '690', 0, '2018-02-21 15:55:17'),
(226, 'TO', 'Tonga', '676', 0, '2018-02-21 15:55:17'),
(227, 'TT', 'Trinidad and Tobago', '1-868', 0, '2018-02-21 15:55:17'),
(228, 'TN', 'Tunisia', '216', 0, '2018-02-21 15:55:17'),
(229, 'TR', 'Turkey', '90', 0, '2018-02-21 15:55:17'),
(230, 'TM', 'Turkmenistan', '993', 0, '2018-02-21 15:55:17'),
(231, 'TC', 'Turks and Caicos Islands', '1-649', 0, '2018-02-21 15:55:17'),
(232, 'TV', 'Tuvalu', '688', 0, '2018-02-21 15:55:17'),
(233, 'UG', 'Uganda', '256', 0, '2018-02-21 15:55:17'),
(234, 'UA', 'Ukraine', '380', 0, '2018-02-21 15:55:17'),
(235, 'AE', 'United Arab Emirates', '971', 0, '2018-02-21 15:55:17'),
(236, 'GB', 'United Kingdom', '44', 0, '2018-02-21 15:55:17'),
(237, 'TZ', 'United Republic of Tanzania', '255', 0, '2018-02-21 15:55:17'),
(238, 'US', 'United States', '1', 0, '2018-02-21 15:55:17'),
(239, 'UY', 'Uruguay', '598', 0, '2018-02-21 15:55:17'),
(240, 'VI', 'US Virgin Islands', '1-340', 0, '2018-02-21 15:55:17'),
(241, 'UZ', 'Uzbekistan', '998', 0, '2018-02-21 15:55:17'),
(242, 'VU', 'Vanuatu', '678', 0, '2018-02-21 15:55:17'),
(243, 'VE', 'Venezuela', '58', 0, '2018-02-21 15:55:17'),
(244, 'VN', 'Vietnam', '84', 0, '2018-02-21 15:55:17'),
(245, 'WF', 'Wallis and Futuna', '681', 0, '2018-02-21 15:55:17'),
(246, 'EH', 'Western Sahara', '212', 0, '2018-02-21 15:55:17'),
(247, 'YE', 'Yemen', '967', 0, '2018-02-21 15:55:17'),
(248, 'ZM', 'Zambia', '260', 0, '2018-02-21 15:55:17'),
(249, 'ZW', 'Zimbabwe', '263', 0, '2018-02-21 15:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cryptocurrency_buy_sell_live_market`
--

CREATE TABLE `tbl_cryptocurrency_buy_sell_live_market` (
  `srno` int(11) NOT NULL,
  `exchanger` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `high` double DEFAULT '0',
  `low` double DEFAULT '0',
  `avg` double DEFAULT '0',
  `updated` datetime DEFAULT CURRENT_TIMESTAMP,
  `last` double DEFAULT '0',
  `volume` double DEFAULT '0',
  `status` enum('Active','Inactive') DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cryptocurrency_live_market`
--

CREATE TABLE `tbl_cryptocurrency_live_market` (
  `srno` int(11) NOT NULL,
  `exchanger` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `high` double DEFAULT '0',
  `low` double DEFAULT '0',
  `avg` double DEFAULT '0',
  `updated` datetime DEFAULT CURRENT_TIMESTAMP,
  `last` double DEFAULT '0',
  `volume` double DEFAULT '0',
  `status` enum('Active','Inactive') DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(25) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `node_currency_code` varchar(100) DEFAULT NULL,
  `currency` varchar(10) NOT NULL,
  `status` int(11) DEFAULT '1',
  `withdrwal_status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0-reguler,1-withdrwal_mode',
  `coinpayment_status` int(11) DEFAULT '0',
  `node_api_status` int(11) DEFAULT '0',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`id`, `currency_name`, `currency_code`, `node_currency_code`, `currency`, `status`, `withdrwal_status`, `coinpayment_status`, `node_api_status`, `entry_time`) VALUES
(1, 'Bitcoin', 'BTC', 'BTC', 'BTC', 1, '1', 1, 0, '2018-02-21 15:54:34'),
(2, 'Ethereum', 'ETH', 'ETH', 'ETH', 0, '0', 0, 0, '2018-02-21 15:54:34'),
(3, 'Ethereum Classic', 'ETC', 'ETC', 'ETC', 0, '0', 0, 0, '2018-02-21 15:54:34'),
(4, 'Litecoin', 'LTC', 'LTC', 'LTC', 1, '1', 1, 0, '2018-02-21 15:54:34'),
(5, 'Dogecoin', 'DOGE', 'DOGE', 'DOGE', 1, '1', 1, 0, '2018-02-21 15:54:34'),
(6, 'BCH', 'BCH', 'BCH', 'BCH', 0, '0', 0, 0, '2018-02-21 15:54:34'),
(7, 'Indian Rupee', 'INR', 'INR', 'INR', 0, '0', 0, 0, '2019-02-22 05:07:42'),
(8, 'Perfect Money', 'PM', 'PM', 'PM', 0, '0', 0, 0, '2019-02-22 05:07:42'),
(9, 'Ripple', 'XRP', 'XRP', 'XRP', 0, '0', 0, 0, '2018-02-21 15:54:34'),
(10, 'Tron', 'TRX', 'TRX', 'TRX', 1, '1', 1, 0, '2018-02-21 15:54:34'),
(11, 'Tether', 'USDT', 'USDT', 'USDT', 0, '0', 0, 0, '2018-02-21 15:54:34'),
(12, 'Binance', 'BNB.ERC20', 'BNB.ERC20', 'BNB.ERC20', 0, '0', 0, 0, '2021-03-09 14:17:51'),
(13, 'Cardano', 'ADA', 'ADA', 'ADA', 0, '0', 0, 0, '2021-03-09 14:20:25'),
(14, 'Polkadot', 'DOT', 'DOT', 'DOT', 0, '0', 0, 0, '2021-03-09 14:27:12'),
(15, 'Dexdrone', 'DEXD', 'DEXD', 'DEXD', 0, '0', 0, 0, '2021-03-19 04:10:09'),
(16, 'USDT', 'USDT.TRC20', 'USDT-TRC20', 'USDT-TRC20', 1, '1', 1, 0, '2022-02-10 03:59:14'),
(17, 'BNB Coin', 'BNB.BSC', 'BSC', 'BNB-BSC', 1, '1', 1, 0, '2022-02-10 03:59:14'),
(18, 'SHIBA', 'SHIB', 'SHIB', 'SHIB', 0, '0', 0, 0, '2022-02-25 18:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency_rate`
--

CREATE TABLE `tbl_currency_rate` (
  `srno` int(11) NOT NULL COMMENT 'table id',
  `coin` double DEFAULT NULL COMMENT 'main coin value',
  `usd` double DEFAULT NULL COMMENT 'main coin rate in USD',
  `btc` double DEFAULT NULL COMMENT 'main coin rate in BTC',
  `transaction_fee` double NOT NULL,
  `bonus` mediumint(9) NOT NULL,
  `min_coin` int(11) NOT NULL,
  `enrty_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'entry time',
  `remark` varchar(200) DEFAULT NULL COMMENT 'if any optional',
  `status` int(11) DEFAULT '1' COMMENT 'default 1 , 1-active,0-inactive',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_currency_rate`
--

INSERT INTO `tbl_currency_rate` (`srno`, `coin`, `usd`, `btc`, `transaction_fee`, `bonus`, `min_coin`, `enrty_time`, `remark`, `status`, `entry_time`) VALUES
(1, 1, 0.02, 0.000002, 0, 0, 50, '2018-01-31 06:38:04', 'by admin', 1, '2018-02-21 15:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_curr_amt_bv`
--

CREATE TABLE `tbl_curr_amt_bv` (
  `cron_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `left_bv` decimal(10,2) DEFAULT '0.00',
  `right_bv` decimal(10,2) DEFAULT '0.00',
  `vleft_bv` decimal(10,2) DEFAULT '0.00',
  `vright_bv` decimal(10,2) DEFAULT '0.00',
  `level` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_curr_amt_details`
--

CREATE TABLE `tbl_curr_amt_details` (
  `cron_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `left_bv` decimal(10,2) DEFAULT '0.00',
  `right_bv` decimal(10,2) DEFAULT '0.00',
  `vleft_bv` decimal(10,2) DEFAULT '0.00',
  `vright_bv` decimal(10,2) DEFAULT '0.00',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dailybonus`
--

CREATE TABLE `tbl_dailybonus` (
  `sr_no` int(11) NOT NULL,
  `amount` float DEFAULT '0.5',
  `pin` varchar(255) DEFAULT '',
  `tax_amount` double DEFAULT '0',
  `id` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '1',
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Unpaid','Paid') DEFAULT 'Paid',
  `remark` varchar(200) DEFAULT '',
  `software_perentage` double DEFAULT '0',
  `daily_percentage` double DEFAULT '1',
  `software_amount` double DEFAULT '0',
  `daily_amount` double DEFAULT '0.5',
  `notification` int(11) DEFAULT '1',
  `on_amount` double DEFAULT '50'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dailybonus`
--

INSERT INTO `tbl_dailybonus` (`sr_no`, `amount`, `pin`, `tax_amount`, `id`, `type`, `entry_time`, `status`, `remark`, `software_perentage`, `daily_percentage`, `software_amount`, `daily_amount`, `notification`, `on_amount`) VALUES
(1, 7.5, '324648685363413', 0, 2, 1, '2021-12-22 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(2, 22.5, '193503274478723', 0, 3, 1, '2022-03-14 00:00:00', 'Paid', '', 0, 15, 0, 22.5, 1, 150),
(3, 7.5, '324648685363413', 0, 2, 1, '2021-12-29 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(4, 7.5, '324648685363413', 0, 2, 1, '2022-01-05 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(5, 7.5, '324648685363413', 0, 2, 1, '2022-01-12 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(6, 7.5, '324648685363413', 0, 2, 1, '2022-01-19 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(7, 7.5, '324648685363413', 0, 2, 1, '2022-01-26 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(8, 7.5, '324648685363413', 0, 2, 1, '2022-02-02 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(9, 7.5, '324648685363413', 0, 2, 1, '2022-02-09 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(10, 7.5, '324648685363413', 0, 2, 1, '2022-02-16 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(11, 7.5, '324648685363413', 0, 2, 1, '2022-02-23 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(12, 7.5, '324648685363413', 0, 2, 1, '2022-03-02 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(13, 7.5, '324648685363413', 0, 2, 1, '2022-03-09 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(14, 7.5, '121378790080820', 0, 3, 1, '2021-11-22 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(15, 7.5, '121378790080820', 0, 3, 1, '2021-11-29 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(16, 7.5, '121378790080820', 0, 3, 1, '2021-12-06 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(17, 7.5, '121378790080820', 0, 3, 1, '2021-12-13 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(18, 7.5, '121378790080820', 0, 3, 1, '2021-12-20 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(19, 7.5, '121378790080820', 0, 3, 1, '2021-12-27 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(20, 7.5, '121378790080820', 0, 3, 1, '2022-01-03 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(21, 7.5, '121378790080820', 0, 3, 1, '2022-01-10 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(22, 7.5, '121378790080820', 0, 3, 1, '2022-01-17 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(23, 7.5, '121378790080820', 0, 3, 1, '2022-01-24 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(24, 7.5, '121378790080820', 0, 3, 1, '2022-01-31 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(25, 7.5, '121378790080820', 0, 3, 1, '2022-02-07 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(26, 450, '140285396671521', 0, 2, 1, '2021-12-29 00:00:00', 'Paid', '', 0, 15, 0, 450, 1, 3000),
(27, 7.5, '714604276276689', 0, 3, 1, '2022-03-18 00:00:00', 'Paid', '', 0, 15, 0, 7.5, 1, 50),
(28, 22.5, '193503274478723', 0, 3, 1, '2022-03-21 00:00:00', 'Paid', '', 0, 15, 0, 22.5, 1, 150),
(29, 150, '609326286891891', 0, 3, 1, '2022-03-22 00:00:00', 'Paid', '', 0, 15, 0, 150, 1, 1000),
(30, 800, '209956259450906', 0, 4, 2, '2022-03-22 00:00:00', 'Paid', '', 0, 16, 0, 800, 1, 5000),
(31, 450, '140285396671521', 0, 2, 1, '2022-01-05 00:00:00', 'Paid', '', 0, 15, 0, 450, 1, 3000),
(32, 450, '140285396671521', 0, 2, 1, '2022-01-12 00:00:00', 'Paid', '', 0, 15, 0, 450, 1, 3000),
(33, 450, '140285396671521', 0, 2, 1, '2022-01-19 00:00:00', 'Paid', '', 0, 15, 0, 450, 1, 3000),
(34, 450, '140285396671521', 0, 2, 1, '2022-02-09 00:00:00', 'Paid', '', 0, 15, 0, 450, 1, 3000),
(35, 450, '140285396671521', 0, 2, 1, '2022-02-16 00:00:00', 'Paid', '', 0, 15, 0, 450, 1, 3000),
(36, 450, '140285396671521', 0, 2, 1, '2022-02-23 00:00:00', 'Paid', '', 0, 15, 0, 450, 1, 3000),
(37, 450, '140285396671521', 0, 2, 1, '2022-03-02 00:00:00', 'Paid', '', 0, 15, 0, 450, 1, 3000),
(38, 450, '140285396671521', 0, 2, 1, '2022-03-09 00:00:00', 'Paid', '', 0, 15, 0, 450, 1, 3000),
(39, 450, '140285396671521', 0, 2, 1, '2022-03-16 00:00:00', 'Paid', '', 0, 15, 0, 450, 1, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daily_business`
--

CREATE TABLE `tbl_daily_business` (
  `srno` int(11) NOT NULL,
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `total_business` double DEFAULT '0',
  `reserved` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daily_summary`
--

CREATE TABLE `tbl_daily_summary` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coinpayment_funds` double NOT NULL DEFAULT '0',
  `direct_income` double NOT NULL DEFAULT '0',
  `roi_income` double NOT NULL DEFAULT '0',
  `binary_income` double NOT NULL DEFAULT '0',
  `supermatching_income` double NOT NULL DEFAULT '0',
  `freedom_club_income` double NOT NULL DEFAULT '0',
  `credit_fund` double NOT NULL DEFAULT '0',
  `debit_fund` double NOT NULL DEFAULT '0',
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dashboard`
--

CREATE TABLE `tbl_dashboard` (
  `srno` int(11) NOT NULL,
  `id` int(11) DEFAULT '0' COMMENT 'user unique table id',
  `coin` double DEFAULT '0',
  `coin_withdrawal` double NOT NULL DEFAULT '0',
  `btc` double DEFAULT '0',
  `usd` double DEFAULT '0',
  `total_investment` double DEFAULT '0',
  `active_investment` double DEFAULT '0' COMMENT 'Active Investment',
  `direct_income` double DEFAULT '0',
  `direct_income_withdraw` double DEFAULT '0',
  `level_income` double DEFAULT '0',
  `level_income_withdraw` double DEFAULT '0',
  `level_income_roi` double DEFAULT '0',
  `level_income_roi_withdraw` double DEFAULT '0',
  `level_income_ico` double DEFAULT '0',
  `roi_income` double DEFAULT '0',
  `roi_income_withdraw` double DEFAULT '0',
  `binary_income` double DEFAULT '0',
  `binary_income_withdraw` double DEFAULT '0',
  `matching_bonus_income` double NOT NULL DEFAULT '0',
  `matching_bonus_income_withdraw` double DEFAULT '0',
  `leadership_income` double DEFAULT '0',
  `leadership_income_withdraw` double DEFAULT '0',
  `supper_maching_income` double DEFAULT '0',
  `supper_maching_income_withdraw` double DEFAULT '0',
  `top_up_wallet` double DEFAULT '0',
  `top_up_wallet_withdraw` double DEFAULT '0',
  `setting_fund_wallet` float DEFAULT '0',
  `setting_fund_wallet_withdraw` float DEFAULT '0',
  `transfer_wallet` double DEFAULT '0',
  `transfer_wallet_withdraw` double DEFAULT '0',
  `passive_income` double DEFAULT '0',
  `passive_income_withdraw` double DEFAULT '0',
  `working_wallet` double DEFAULT '0',
  `working_wallet_withdraw` double DEFAULT '0',
  `dex_wallet` double DEFAULT '0',
  `dex_wallet_withdraw` double NOT NULL DEFAULT '0',
  `sent_balance` double NOT NULL DEFAULT '0',
  `received_balance` double NOT NULL DEFAULT '0',
  `sent_purchase_balance` double DEFAULT '0',
  `received_purchase_balance` double DEFAULT '0',
  `single_leg_income` double DEFAULT '0',
  `single_leg_income_withdraw` double DEFAULT '0',
  `promotional_income` double DEFAULT '0',
  `promotional_income_withdraw` double DEFAULT '0',
  `franchise_income` double NOT NULL DEFAULT '0',
  `franchise_income_withdraw` double NOT NULL DEFAULT '0',
  `freedom_club_income` double DEFAULT '0',
  `freedom_club_income_withdraw` double DEFAULT '0',
  `fund_wallet` double NOT NULL DEFAULT '0',
  `fund_wallet_withdraw` double NOT NULL DEFAULT '0',
  `total_withdraw` double DEFAULT '0' COMMENT 'Total Withdraw',
  `total_profit` double DEFAULT '0' COMMENT 'Total Profit',
  `last_profit` double DEFAULT '0',
  `first_time_balance` double NOT NULL DEFAULT '0',
  `second_time_balance` double DEFAULT '0',
  `working_to_topup` double NOT NULL DEFAULT '0',
  `total_income_without_roi` double NOT NULL DEFAULT '0',
  `old_total_income_without_roi` double NOT NULL DEFAULT '0',
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated Date and time',
  `complete_90_days` int(11) DEFAULT '0' COMMENT '0-No,1-Yes',
  `after_90_days_date` datetime DEFAULT NULL,
  `transfer_cron_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dashboard`
--

INSERT INTO `tbl_dashboard` (`srno`, `id`, `coin`, `coin_withdrawal`, `btc`, `usd`, `total_investment`, `active_investment`, `direct_income`, `direct_income_withdraw`, `level_income`, `level_income_withdraw`, `level_income_roi`, `level_income_roi_withdraw`, `level_income_ico`, `roi_income`, `roi_income_withdraw`, `binary_income`, `binary_income_withdraw`, `matching_bonus_income`, `matching_bonus_income_withdraw`, `leadership_income`, `leadership_income_withdraw`, `supper_maching_income`, `supper_maching_income_withdraw`, `top_up_wallet`, `top_up_wallet_withdraw`, `setting_fund_wallet`, `setting_fund_wallet_withdraw`, `transfer_wallet`, `transfer_wallet_withdraw`, `passive_income`, `passive_income_withdraw`, `working_wallet`, `working_wallet_withdraw`, `dex_wallet`, `dex_wallet_withdraw`, `sent_balance`, `received_balance`, `sent_purchase_balance`, `received_purchase_balance`, `single_leg_income`, `single_leg_income_withdraw`, `promotional_income`, `promotional_income_withdraw`, `franchise_income`, `franchise_income_withdraw`, `freedom_club_income`, `freedom_club_income_withdraw`, `fund_wallet`, `fund_wallet_withdraw`, `total_withdraw`, `total_profit`, `last_profit`, `first_time_balance`, `second_time_balance`, `working_to_topup`, `total_income_without_roi`, `old_total_income_without_roi`, `entry_time`, `complete_90_days`, `after_90_days_date`, `transfer_cron_status`) VALUES
(1, 2, 0, 0, 0, -100, 4603, 4603, 12535, 12535, 0, 0, 0, 0, 0, 5590, 0, 2000, 0, 3780, 3780, 0, 0, 0, 0, 0, 0, 1100, 295.9, 0, 0, 0, 0, 19315, 182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110000, 10507.1, 10803, 17125, 0, 0, 0, 0, 0, 0, '2022-03-04 05:03:33', 0, NULL, 0),
(2, 3, 0, 0, 0, -100, 81450, 81450, 116399.9, 116399.9, 0, 0, 0, 0, 0, 292.5, 0, 2499.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 20, 0, 0, 0, 0, 118899.8, 150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 130, 150, 116692.4, 0, 0, 0, 0, 0, 0, '2022-03-04 08:15:53', 0, NULL, 0),
(3, 4, 0, 0, 0, 3000, 50000, 50000, 3000, 3000, 0, 0, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3800, 0, 0, 0, 0, 0, 0, '2022-03-12 08:55:46', 0, NULL, 0),
(4, 5, 0, 0, 0, 0, 5000, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-22 12:41:51', 0, NULL, 0),
(5, 6, 0, 0, 0, 0, 25000, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-22 12:42:29', 0, NULL, 0),
(6, 7, 0, 0, 0, 0, 4999, 4999, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-22 12:48:45', 0, NULL, 0),
(7, 8, 0, 0, 0, 0, 20000, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-22 12:50:17', 0, NULL, 0),
(8, 9, 0, 0, 0, 350, 26000, 26000, 350, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 382, 90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 350, 0, 0, 0, 0, 0, 0, '2022-03-22 12:51:00', 0, NULL, 0),
(9, 10, 0, 0, 0, 111689.9, 3500, 3500, 111689.9, 111689.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8857, 8857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120546.9, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111689.9, 0, 0, 0, 0, 0, 0, '2022-03-23 05:09:43', 0, NULL, 0),
(10, 11, 0, 0, 0, 0, 1135500, 1135500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-23 05:10:47', 0, NULL, 0),
(11, 12, 0, 0, 0, 0, 3500, 3500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-25 18:32:38', 0, NULL, 0),
(12, 13, 0, 0, 0, -650, 1116649, 1116649, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50000, 390, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50000, 260, 650, 0, 0, 0, 0, 0, 0, 0, '2022-03-25 19:57:34', 0, NULL, 0),
(13, 14, 0, 0, 0, 0, 250, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-03-30 15:58:28', 0, NULL, 0),
(14, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2022-07-22 16:02:26', 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dashboard_old`
--

CREATE TABLE `tbl_dashboard_old` (
  `srno` int(11) NOT NULL,
  `id` int(11) DEFAULT '0' COMMENT 'user unique table id',
  `coin` double DEFAULT '0',
  `btc` double DEFAULT '0',
  `usd` double DEFAULT '0',
  `total_investment` double DEFAULT '0',
  `active_investment` double DEFAULT '0' COMMENT 'Active Investment',
  `direct_income` double DEFAULT '0',
  `direct_income_withdraw` double DEFAULT '0',
  `level_income` double DEFAULT '0',
  `level_income_withdraw` double DEFAULT '0',
  `level_income_ico` double DEFAULT '0',
  `roi_income` double DEFAULT '0',
  `roi_income_withdraw` double DEFAULT '0',
  `binary_income` double DEFAULT '0',
  `binary_income_withdraw` double DEFAULT '0',
  `leadership_income` double DEFAULT '0',
  `leadership_income_withdraw` double DEFAULT '0',
  `top_up_wallet` double DEFAULT '0',
  `top_up_wallet_withdraw` double DEFAULT '0',
  `transfer_wallet` double DEFAULT '0',
  `transfer_wallet_withdraw` double DEFAULT '0',
  `working_wallet` double DEFAULT '0',
  `working_wallet_withdraw` double DEFAULT '0',
  `single_leg_income` double DEFAULT '0',
  `single_leg_income_withdraw` double DEFAULT '0',
  `total_withdraw` double DEFAULT '0' COMMENT 'Total Withdraw',
  `total_profit` double DEFAULT '0' COMMENT 'Total Profit',
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Updated Date and time'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deduction_stat`
--

CREATE TABLE `tbl_deduction_stat` (
  `srno` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `wallet_name` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deposit_address`
--

CREATE TABLE `tbl_deposit_address` (
  `srno` int(11) NOT NULL COMMENT 'Auto increment unique id',
  `id` int(11) DEFAULT '0' COMMENT 'user unique table id',
  `currency_code` varchar(20) DEFAULT 'BTC' COMMENT 'For reference use tbl_currency table',
  `address` varchar(100) DEFAULT '' COMMENT 'currency code address',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'entry time',
  `label` varchar(100) DEFAULT NULL COMMENT 'remark if any it is optional',
  `total_received` double NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '1' COMMENT '1- active , 0 - not active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='store deposit addresses ';

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deposit_address_transaction`
--

CREATE TABLE `tbl_deposit_address_transaction` (
  `srno` int(11) NOT NULL,
  `transaction_hash` text NOT NULL,
  `address` text,
  `confirmation` int(11) DEFAULT '0',
  `value` double DEFAULT '0' COMMENT 'in satoshi',
  `btc` double DEFAULT '0',
  `usd` double DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) DEFAULT '0',
  `remark` text,
  `confirm_remark` text,
  `confirm_date` datetime DEFAULT NULL,
  `notification` int(11) DEFAULT '1',
  `ip_address` text,
  `network_type` varchar(200) DEFAULT 'BTC',
  `status` enum('confirmed','pending') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deposit_address_transaction_pending`
--

CREATE TABLE `tbl_deposit_address_transaction_pending` (
  `srno` int(11) NOT NULL,
  `transaction_hash` char(64) NOT NULL,
  `address` text,
  `confirmation` int(11) DEFAULT '0',
  `value` double DEFAULT '0' COMMENT 'in satoshi',
  `btc` double DEFAULT '0',
  `usd` double DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) DEFAULT '0',
  `remark` text,
  `confirm_remark` text,
  `confirm_date` datetime DEFAULT NULL,
  `notification` int(11) DEFAULT '1',
  `ip_address` text,
  `network_type` varchar(200) DEFAULT 'BTC',
  `status` enum('confirmed','pending') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dex_to_passive_transfer`
--

CREATE TABLE `tbl_dex_to_passive_transfer` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `transfer_charge` double NOT NULL DEFAULT '0',
  `tds_charge` double NOT NULL DEFAULT '0',
  `net_amount` double NOT NULL DEFAULT '0',
  `from_wallet_type` int(11) DEFAULT '1' COMMENT '1-Working, 2- Topup Wallet',
  `to_wallet_type` int(11) DEFAULT NULL COMMENT '1-Working, 2- Topup Wallet',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-Pending,1-Approved,2rejected-',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dex_to_purchase_transfer`
--

CREATE TABLE `tbl_dex_to_purchase_transfer` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `transfer_charge` double NOT NULL DEFAULT '0',
  `tds_charge` double NOT NULL DEFAULT '0',
  `net_amount` double NOT NULL DEFAULT '0',
  `from_wallet_type` int(11) DEFAULT NULL COMMENT '1-Working, 2- Topup Wallet',
  `to_wallet_type` int(11) DEFAULT NULL COMMENT '1-Working, 2- Topup Wallet',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-Pending,1-Approved,2rejected-',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_directincome`
--

CREATE TABLE `tbl_directincome` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `amt_pin` decimal(10,2) DEFAULT '0.00',
  `topup_wallet_amount` double DEFAULT '0',
  `working_wallet_amount` double DEFAULT '0',
  `toUserId` varchar(100) DEFAULT '',
  `fromUserId` varchar(100) DEFAULT '',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Unpaid','Paid') DEFAULT 'Unpaid',
  `invoice_id` text,
  `remark` varchar(255) DEFAULT 'Direct Income',
  `laps_amount` double DEFAULT '0',
  `notification` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_directincome`
--

INSERT INTO `tbl_directincome` (`id`, `amount`, `tax_amount`, `amt_pin`, `topup_wallet_amount`, `working_wallet_amount`, `toUserId`, `fromUserId`, `entry_time`, `status`, `invoice_id`, `remark`, `laps_amount`, `notification`) VALUES
(1, '0.00', '0.00', '0.00', 0, 0, '1', '2', '2022-03-04 17:41:53', 'Paid', '324648685363413', 'Not having active topup', 5, 1),
(2, '15.00', '0.00', '0.00', 0, 15, '2', '3', '2022-03-07 18:24:11', 'Paid', '193503274478723', 'Direct income', 0, 1),
(3, '5.00', '0.00', '0.00', 0, 5, '2', '3', '2022-03-11 18:54:13', 'Paid', '714604276276689', 'Direct income', 0, 1),
(4, '5.00', '0.00', '0.00', 0, 5, '2', '3', '2022-03-11 19:15:59', 'Paid', '121378790080820', 'Direct income', 0, 1),
(5, '0.00', '0.00', '0.00', 0, 0, '2', '4', '2022-03-15 20:45:36', 'Paid', '209956259450906', 'Not having active topup', 500, 1),
(6, '0.00', '0.00', '0.00', 0, 0, '2', '3', '2022-03-15 21:01:59', 'Paid', '609326286891891', 'Not having active topup', 100, 1),
(7, '4500.00', '0.00', '0.00', 0, 4500, '2', '4', '2022-03-22 15:05:52', 'Paid', '292157477496169', 'Direct income', 0, 1),
(8, '8000.00', '0.00', '0.00', 0, 8000, '2', '3', '2022-03-22 15:06:17', 'Paid', '115901253129918', 'Direct income', 0, 1),
(9, '500.00', '0.00', '0.00', 0, 500, '4', '5', '2022-03-22 21:43:53', 'Paid', '152091954677645', 'Direct income', 0, 1),
(10, '2500.00', '0.00', '0.00', 0, 2500, '4', '6', '2022-03-22 21:44:40', 'Paid', '189992355356019', 'Direct income', 0, 1),
(11, '499.90', '0.00', '0.00', 0, 499.9, '3', '7', '2022-03-22 21:52:03', 'Paid', '119873877359600', 'Direct income', 0, 1),
(12, '2000.00', '0.00', '0.00', 0, 2000, '3', '8', '2022-03-22 21:52:23', 'Paid', '250183943204438', 'Direct income', 0, 1),
(13, '0.00', '0.00', '0.00', 0, 0, '2', '9', '2022-03-22 21:52:50', 'Paid', '224596370306070', 'Not having active topup', 2600, 1),
(14, '0.00', '0.00', '0.00', 0, 0, '2', '3', '2022-03-22 22:50:44', 'Paid', '320789271422391', 'Not having active topup', 10, 1),
(15, '100.00', '0.00', '0.00', 0, 100, '9', '12', '2022-03-25 09:33:13', 'Paid', '346396051022534', 'Direct income', 0, 1),
(16, '150.00', '0.00', '0.00', 0, 150, '3', '10', '2022-03-25 09:33:30', 'Paid', '345390914494828', 'Direct income', 0, 1),
(17, '250.00', '0.00', '0.00', 0, 250, '9', '12', '2022-03-25 09:36:34', 'Paid', '306003158472291', 'Direct income', 0, 1),
(18, '200.00', '0.00', '0.00', 0, 200, '3', '10', '2022-03-25 09:37:01', 'Paid', '270182945518531', 'Direct income', 0, 1),
(19, '100.00', '0.00', '0.00', 0, 100, '10', '13', '2022-03-25 10:58:23', 'Paid', '308143735503425', 'Direct income', 0, 1),
(20, '150.00', '0.00', '0.00', 0, 150, '3', '11', '2022-03-25 10:58:49', 'Paid', '224034885623819', 'Direct income', 0, 1),
(21, '500.00', '0.00', '0.00', 0, 500, '10', '13', '2022-03-25 11:48:50', 'Paid', '819329313645018', 'Direct income', 0, 1),
(22, '300.00', '0.00', '0.00', 0, 300, '3', '11', '2022-03-25 11:49:17', 'Paid', '233086430598294', 'Direct income', 0, 1),
(23, '499.90', '0.00', '0.00', 0, 499.9, '10', '13', '2022-03-25 11:57:56', 'Paid', '151480026941455', 'Direct income', 0, 1),
(24, '600.00', '0.00', '0.00', 0, 600, '3', '11', '2022-03-25 11:58:19', 'Paid', '285571233628893', 'Direct income', 0, 1),
(25, '2500.00', '0.00', '0.00', 0, 2500, '10', '13', '2022-03-25 12:00:28', 'Paid', '989447525798791', 'Direct income', 0, 1),
(26, '3500.00', '0.00', '0.00', 0, 3500, '3', '11', '2022-03-25 12:00:46', 'Paid', '140352549557042', 'Direct income', 0, 1),
(27, '8000.00', '0.00', '0.00', 0, 8000, '10', '13', '2022-03-25 12:03:17', 'Paid', '229965270381482', 'Direct income', 0, 1),
(28, '9000.00', '0.00', '0.00', 0, 9000, '3', '11', '2022-03-25 12:03:36', 'Paid', '920718189253663', 'Direct income', 0, 1),
(29, '100000.00', '0.00', '0.00', 0, 100000, '10', '13', '2022-03-25 12:10:23', 'Paid', '310881283166009', 'Direct income', 0, 1),
(30, '100000.00', '0.00', '0.00', 0, 100000, '3', '11', '2022-03-25 12:10:44', 'Paid', '550489673671412', 'Direct income', 0, 1),
(31, '10.00', '0.00', '0.00', 0, 10, '2', '3', '2022-03-28 13:08:16', 'Paid', '283368716643704', 'Direct income', 0, 1),
(32, '65.00', '0.00', '0.00', 0, 65, '10', '13', '2022-03-30 12:45:32', 'Paid', '213854182267882', 'Direct income', 0, 1),
(33, '25.00', '0.00', '0.00', 0, 25, '10', '14', '2022-03-31 07:48:17', 'Paid', '191173285684060', 'Direct income', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_directincome_referral`
--

CREATE TABLE `tbl_directincome_referral` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `amt_pin` decimal(10,2) DEFAULT '0.00',
  `toUserId` varchar(100) DEFAULT '',
  `fromUserId` varchar(100) DEFAULT '',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Unpaid','Paid') DEFAULT 'Unpaid',
  `invoice_id` varchar(255) DEFAULT '0',
  `remark` varchar(255) DEFAULT 'Referral Income'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_directincome_registration`
--

CREATE TABLE `tbl_directincome_registration` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `amt_pin` decimal(10,2) DEFAULT '0.00',
  `toUserId` varchar(100) DEFAULT '',
  `fromUserId` varchar(100) DEFAULT '',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Unpaid','Paid') DEFAULT 'Unpaid',
  `invoice_id` varchar(255) DEFAULT '0',
  `remark` varchar(255) DEFAULT 'Registration Income'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_direct_binary`
--

CREATE TABLE `tbl_direct_binary` (
  `id` int(11) NOT NULL,
  `dsp_id` int(11) DEFAULT '0',
  `dsp_amount` decimal(10,2) DEFAULT '0.00',
  `dsp_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dsp_payId` int(11) DEFAULT '0',
  `tax1` decimal(10,2) DEFAULT '0.00',
  `tax2` decimal(10,2) DEFAULT '0.00',
  `status` enum('Unpaid','Paid') DEFAULT 'Unpaid',
  `withdraw_date` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dlevel_income`
--

CREATE TABLE `tbl_dlevel_income` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT '250.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `amt_pin` decimal(10,2) DEFAULT '0.00',
  `level` int(11) DEFAULT '0',
  `toUserId` varchar(100) DEFAULT '',
  `fromUserId` varchar(100) DEFAULT '',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dmit_scan`
--

CREATE TABLE `tbl_dmit_scan` (
  `id` int(11) NOT NULL,
  `pdc_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `entry_time` datetime DEFAULT '0000-00-00 00:00:00',
  `attachment` varchar(1000) DEFAULT '',
  `status` int(11) DEFAULT '0' COMMENT '0-pending 1-approve from  admin 2- got payment',
  `approve_by` int(11) DEFAULT '0',
  `approve_date` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dxwallet_remove_fund`
--

CREATE TABLE `tbl_dxwallet_remove_fund` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `amount` double DEFAULT NULL,
  `invoice_id` varchar(50) DEFAULT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `trn_ref_no` int(11) DEFAULT NULL,
  `holder_name` varchar(50) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `deposit_date` datetime DEFAULT NULL,
  `pay_slip` varchar(255) DEFAULT NULL,
  `admin_remark` varchar(255) DEFAULT NULL,
  `status` enum('Pending','Approve','Reject') NOT NULL DEFAULT 'Pending',
  `fund_status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0-admin fund,1-setting fund',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approve_date` datetime DEFAULT NULL,
  `reject_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email`
--

CREATE TABLE `tbl_email` (
  `id` int(11) NOT NULL,
  `to` varchar(45) DEFAULT '',
  `form` varchar(45) DEFAULT '',
  `subject` varchar(45) DEFAULT '',
  `message` text,
  `username` varchar(45) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `success` tinyint(4) DEFAULT '0',
  `attachment` varchar(45) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiry`
--

CREATE TABLE `tbl_enquiry` (
  `srno` int(11) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `mobile` varchar(30) DEFAULT '',
  `subject` varchar(500) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL,
  `enquiry_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attachment` varchar(255) DEFAULT NULL,
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_error_message`
--

CREATE TABLE `tbl_error_message` (
  `err_id` int(11) NOT NULL,
  `err_code` int(11) NOT NULL,
  `err_status` varchar(200) NOT NULL,
  `err_message` varchar(200) NOT NULL,
  `err_page` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exchange_order`
--

CREATE TABLE `tbl_exchange_order` (
  `srno` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `order_type` char(10) DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `total_quantity` double DEFAULT NULL,
  `coin_rate` double DEFAULT NULL,
  `usd_rate` double DEFAULT NULL,
  `btc_rate` double DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0-open,1-processing,2-success,3-cancel',
  `entry_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exchange_rate_report`
--

CREATE TABLE `tbl_exchange_rate_report` (
  `srno` int(11) NOT NULL,
  `usd` double DEFAULT NULL,
  `btc_rate` double DEFAULT NULL,
  `coin_rate` double DEFAULT NULL,
  `quantity` double DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exchange_report`
--

CREATE TABLE `tbl_exchange_report` (
  `srno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `transction_fees` double DEFAULT NULL,
  `btc` double DEFAULT '0',
  `usd_rate` double DEFAULT NULL,
  `btc_rate` double DEFAULT NULL,
  `coin` double DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fees_record`
--

CREATE TABLE `tbl_fees_record` (
  `srno` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `fees_percent` double DEFAULT NULL,
  `fees` double DEFAULT NULL,
  `order_type` char(10) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flight_airports`
--

CREATE TABLE `tbl_flight_airports` (
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `cityCode` varchar(50) DEFAULT NULL,
  `cityName` varchar(200) DEFAULT NULL,
  `countryName` varchar(200) DEFAULT NULL,
  `countryCode` varchar(200) DEFAULT NULL,
  `timezone` varchar(8) DEFAULT NULL,
  `lat` varchar(32) DEFAULT NULL,
  `lon` varchar(32) DEFAULT NULL,
  `numAirports` int(11) DEFAULT NULL,
  `city` enum('true','false') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flight_booking`
--

CREATE TABLE `tbl_flight_booking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(500) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `adult` int(11) NOT NULL DEFAULT '1',
  `child` int(11) NOT NULL DEFAULT '0',
  `travel_class` enum('ECONOMY','PREMIUM_ECONOMY','BUSINESS','FIRST') DEFAULT 'ECONOMY',
  `adultArr` text,
  `childArr` text,
  `booking_data` text,
  `carriers` text,
  `remark` text,
  `img` text,
  `total_usd` double NOT NULL DEFAULT '0',
  `total_coin` double NOT NULL DEFAULT '0',
  `payment_mode` enum('coin_wallet','purchase_wallet') NOT NULL DEFAULT 'purchase_wallet',
  `status` enum('pending','confirm','cancel') NOT NULL DEFAULT 'pending',
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `fimg` text,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_flight_booking`
--

INSERT INTO `tbl_flight_booking` (`id`, `user_id`, `order_id`, `email`, `mobile`, `adult`, `child`, `travel_class`, `adultArr`, `childArr`, `booking_data`, `carriers`, `remark`, `img`, `total_usd`, `total_coin`, `payment_mode`, `status`, `entry_time`, `fimg`, `updated_at`) VALUES
(1, 3, '5734330628', NULL, NULL, 1, 0, 'ECONOMY', '\"[{\\\"name\\\":\\\"amol bedge\\\"}]\"', '\"[]\"', '\"{\\\"type\\\":\\\"flight-offer\\\",\\\"id\\\":\\\"1\\\",\\\"source\\\":\\\"GDS\\\",\\\"instantTicketingRequired\\\":false,\\\"nonHomogeneous\\\":false,\\\"oneWay\\\":false,\\\"lastTicketingDate\\\":\\\"2021-06-01\\\",\\\"numberOfBookableSeats\\\":4,\\\"itineraries\\\":[{\\\"duration\\\":\\\"PT22H30M\\\",\\\"segments\\\":[{\\\"departure\\\":{\\\"iataCode\\\":\\\"PNQ\\\",\\\"at\\\":\\\"2021-06-01T19:00:00\\\"},\\\"arrival\\\":{\\\"iataCode\\\":\\\"HYD\\\",\\\"at\\\":\\\"2021-06-01T22:15:00\\\"},\\\"carrierCode\\\":\\\"AI\\\",\\\"number\\\":\\\"9888\\\",\\\"aircraft\\\":{\\\"code\\\":\\\"ATR\\\"},\\\"operating\\\":{\\\"carrierCode\\\":\\\"9I\\\"},\\\"duration\\\":\\\"PT3H15M\\\",\\\"stops\\\":[{\\\"iataCode\\\":\\\"ISK\\\",\\\"duration\\\":\\\"PT25M\\\",\\\"arrivalAt\\\":\\\"2021-06-01T20:00:00\\\",\\\"departureAt\\\":\\\"2021-06-01T20:25:00\\\"}],\\\"id\\\":\\\"53\\\",\\\"numberOfStops\\\":1,\\\"blacklistedInEU\\\":false},{\\\"departure\\\":{\\\"iataCode\\\":\\\"HYD\\\",\\\"at\\\":\\\"2021-06-02T13:45:00\\\"},\\\"arrival\\\":{\\\"iataCode\\\":\\\"GOI\\\",\\\"at\\\":\\\"2021-06-02T17:30:00\\\"},\\\"carrierCode\\\":\\\"AI\\\",\\\"number\\\":\\\"9881\\\",\\\"aircraft\\\":{\\\"code\\\":\\\"ATR\\\"},\\\"operating\\\":{\\\"carrierCode\\\":\\\"9I\\\"},\\\"duration\\\":\\\"PT3H45M\\\",\\\"stops\\\":[{\\\"iataCode\\\":\\\"MYQ\\\",\\\"duration\\\":\\\"PT30M\\\",\\\"arrivalAt\\\":\\\"2021-06-02T15:30:00\\\",\\\"departureAt\\\":\\\"2021-06-02T16:00:00\\\"}],\\\"id\\\":\\\"54\\\",\\\"numberOfStops\\\":1,\\\"blacklistedInEU\\\":false}]}],\\\"price\\\":{\\\"currency\\\":\\\"USD\\\",\\\"total\\\":\\\"81.97\\\",\\\"base\\\":\\\"62.00\\\",\\\"fees\\\":[{\\\"amount\\\":\\\"0.00\\\",\\\"type\\\":\\\"SUPPLIER\\\"},{\\\"amount\\\":\\\"0.00\\\",\\\"type\\\":\\\"TICKETING\\\"}],\\\"grandTotal\\\":\\\"81.97\\\"},\\\"pricingOptions\\\":{\\\"fareType\\\":[\\\"PUBLISHED\\\"],\\\"includedCheckedBagsOnly\\\":true},\\\"validatingAirlineCodes\\\":[\\\"AI\\\"],\\\"travelerPricings\\\":[{\\\"travelerId\\\":\\\"1\\\",\\\"fareOption\\\":\\\"STANDARD\\\",\\\"travelerType\\\":\\\"ADULT\\\",\\\"price\\\":{\\\"currency\\\":\\\"USD\\\",\\\"total\\\":\\\"81.97\\\",\\\"base\\\":\\\"62.00\\\"},\\\"fareDetailsBySegment\\\":[{\\\"segmentId\\\":\\\"53\\\",\\\"cabin\\\":\\\"ECONOMY\\\",\\\"fareBasis\\\":\\\"SIP9I\\\",\\\"class\\\":\\\"S\\\",\\\"includedCheckedBags\\\":{\\\"weight\\\":15,\\\"weightUnit\\\":\\\"KG\\\"}},{\\\"segmentId\\\":\\\"54\\\",\\\"cabin\\\":\\\"ECONOMY\\\",\\\"fareBasis\\\":\\\"SIP9I\\\",\\\"class\\\":\\\"S\\\",\\\"includedCheckedBags\\\":{\\\"weight\\\":15,\\\"weightUnit\\\":\\\"KG\\\"}}]}]}\"', 'AIR INDIA', 'PNR-437648723646', NULL, 81.97, 40.985, 'coin_wallet', 'confirm', '2021-05-28 15:51:50', NULL, '2021-05-28 16:55:24'),
(2, 3, '5487579883', NULL, NULL, 1, 0, 'ECONOMY', '[{\"name\":\"amol bedge\"}]', '[]', '{\"type\":\"flight-offer\",\"id\":\"2\",\"source\":\"GDS\",\"instantTicketingRequired\":false,\"nonHomogeneous\":false,\"oneWay\":false,\"lastTicketingDate\":\"2021-05-31\",\"numberOfBookableSeats\":1,\"itineraries\":[{\"duration\":\"PT8H15M\",\"segments\":[{\"departure\":{\"iataCode\":\"LAX\",\"terminal\":\"6\",\"at\":\"2021-06-03T07:00:00\"},\"arrival\":{\"iataCode\":\"SFO\",\"terminal\":\"2\",\"at\":\"2021-06-03T08:30:00\"},\"carrierCode\":\"AS\",\"number\":\"1425\",\"aircraft\":{\"code\":\"73J\"},\"operating\":{\"carrierCode\":\"AS\"},\"duration\":\"PT1H30M\",\"id\":\"45\",\"numberOfStops\":0,\"blacklistedInEU\":false},{\"departure\":{\"iataCode\":\"SFO\",\"terminal\":\"2\",\"at\":\"2021-06-03T09:45:00\"},\"arrival\":{\"iataCode\":\"PHL\",\"terminal\":\"D\",\"at\":\"2021-06-03T18:15:00\"},\"carrierCode\":\"AS\",\"number\":\"1138\",\"aircraft\":{\"code\":\"73H\"},\"operating\":{\"carrierCode\":\"AS\"},\"duration\":\"PT5H30M\",\"id\":\"46\",\"numberOfStops\":0,\"blacklistedInEU\":false}]}],\"price\":{\"currency\":\"USD\",\"total\":\"174.21\",\"base\":\"140.47\",\"fees\":[{\"amount\":\"0.00\",\"type\":\"SUPPLIER\"},{\"amount\":\"0.00\",\"type\":\"TICKETING\"}],\"grandTotal\":\"174.21\"},\"pricingOptions\":{\"fareType\":[\"PUBLISHED\"],\"includedCheckedBagsOnly\":false},\"validatingAirlineCodes\":[\"AS\"],\"travelerPricings\":[{\"travelerId\":\"1\",\"fareOption\":\"STANDARD\",\"travelerType\":\"ADULT\",\"price\":{\"currency\":\"USD\",\"total\":\"174.21\",\"base\":\"140.47\"},\"fareDetailsBySegment\":[{\"segmentId\":\"45\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"GH3OAJBN\",\"class\":\"X\",\"includedCheckedBags\":{\"quantity\":0}},{\"segmentId\":\"46\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"GH3OAJBN\",\"brandedFare\":\"SV\",\"class\":\"X\",\"includedCheckedBags\":{\"quantity\":0}}]}]}', 'AIR INDIA', 'PNR-437648723646', NULL, 174.21, 87.105, 'coin_wallet', 'pending', '2021-05-31 03:59:49', NULL, NULL),
(3, 3, '7715870602', NULL, NULL, 1, 0, 'ECONOMY', '[{\"name\":\"amol\"}]', '[]', '{\"type\":\"flight-offer\",\"id\":\"1\",\"source\":\"GDS\",\"instantTicketingRequired\":false,\"nonHomogeneous\":false,\"oneWay\":false,\"lastTicketingDate\":\"2021-06-02\",\"numberOfBookableSeats\":9,\"itineraries\":[{\"duration\":\"PT21H40M\",\"segments\":[{\"departure\":{\"iataCode\":\"PNQ\",\"at\":\"2021-06-09T16:55:00\"},\"arrival\":{\"iataCode\":\"DEL\",\"terminal\":\"3\",\"at\":\"2021-06-09T19:05:00\"},\"carrierCode\":\"UK\",\"number\":\"998\",\"aircraft\":{\"code\":\"320\"},\"operating\":{\"carrierCode\":\"UK\"},\"duration\":\"PT2H10M\",\"id\":\"34\",\"numberOfStops\":0,\"blacklistedInEU\":false},{\"departure\":{\"iataCode\":\"DEL\",\"terminal\":\"3\",\"at\":\"2021-06-10T13:25:00\"},\"arrival\":{\"iataCode\":\"IXJ\",\"at\":\"2021-06-10T14:35:00\"},\"carrierCode\":\"UK\",\"number\":\"645\",\"aircraft\":{\"code\":\"320\"},\"operating\":{\"carrierCode\":\"UK\"},\"duration\":\"PT1H10M\",\"id\":\"35\",\"numberOfStops\":0,\"blacklistedInEU\":false}]}],\"price\":{\"currency\":\"USD\",\"total\":\"119.91\",\"base\":\"102.00\",\"fees\":[{\"amount\":\"0.00\",\"type\":\"SUPPLIER\"},{\"amount\":\"0.00\",\"type\":\"TICKETING\"}],\"grandTotal\":\"119.91\"},\"pricingOptions\":{\"fareType\":[\"PUBLISHED\"],\"includedCheckedBagsOnly\":true},\"validatingAirlineCodes\":[\"UK\"],\"travelerPricings\":[{\"travelerId\":\"1\",\"fareOption\":\"STANDARD\",\"travelerType\":\"ADULT\",\"price\":{\"currency\":\"USD\",\"total\":\"119.91\",\"base\":\"102.00\"},\"fareDetailsBySegment\":[{\"segmentId\":\"34\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"VL1PTFYS\",\"class\":\"V\",\"includedCheckedBags\":{\"weight\":15,\"weightUnit\":\"KG\"}},{\"segmentId\":\"35\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"VL1PTFYS\",\"brandedFare\":\"ECOYS\",\"class\":\"V\",\"includedCheckedBags\":{\"weight\":15,\"weightUnit\":\"KG\"}}]}]}', 'AIR INDIA', NULL, NULL, 119.91, 59.955, 'purchase_wallet', 'pending', '2021-06-02 11:49:52', NULL, NULL),
(4, 3, '5012738444', NULL, NULL, 1, 0, 'ECONOMY', '[{\"name\":\"amol\"}]', '[]', '{\"type\":\"flight-offer\",\"id\":\"1\",\"source\":\"GDS\",\"instantTicketingRequired\":false,\"nonHomogeneous\":false,\"oneWay\":false,\"lastTicketingDate\":\"2021-06-02\",\"numberOfBookableSeats\":9,\"itineraries\":[{\"duration\":\"PT21H40M\",\"segments\":[{\"departure\":{\"iataCode\":\"PNQ\",\"at\":\"2021-06-09T16:55:00\"},\"arrival\":{\"iataCode\":\"DEL\",\"terminal\":\"3\",\"at\":\"2021-06-09T19:05:00\"},\"carrierCode\":\"UK\",\"number\":\"998\",\"aircraft\":{\"code\":\"320\"},\"operating\":{\"carrierCode\":\"UK\"},\"duration\":\"PT2H10M\",\"id\":\"34\",\"numberOfStops\":0,\"blacklistedInEU\":false},{\"departure\":{\"iataCode\":\"DEL\",\"terminal\":\"3\",\"at\":\"2021-06-10T13:25:00\"},\"arrival\":{\"iataCode\":\"IXJ\",\"at\":\"2021-06-10T14:35:00\"},\"carrierCode\":\"UK\",\"number\":\"645\",\"aircraft\":{\"code\":\"320\"},\"operating\":{\"carrierCode\":\"UK\"},\"duration\":\"PT1H10M\",\"id\":\"35\",\"numberOfStops\":0,\"blacklistedInEU\":false}]}],\"price\":{\"currency\":\"USD\",\"total\":\"119.91\",\"base\":\"102.00\",\"fees\":[{\"amount\":\"0.00\",\"type\":\"SUPPLIER\"},{\"amount\":\"0.00\",\"type\":\"TICKETING\"}],\"grandTotal\":\"119.91\"},\"pricingOptions\":{\"fareType\":[\"PUBLISHED\"],\"includedCheckedBagsOnly\":true},\"validatingAirlineCodes\":[\"UK\"],\"travelerPricings\":[{\"travelerId\":\"1\",\"fareOption\":\"STANDARD\",\"travelerType\":\"ADULT\",\"price\":{\"currency\":\"USD\",\"total\":\"119.91\",\"base\":\"102.00\"},\"fareDetailsBySegment\":[{\"segmentId\":\"34\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"VL1PTFYS\",\"class\":\"V\",\"includedCheckedBags\":{\"weight\":15,\"weightUnit\":\"KG\"}},{\"segmentId\":\"35\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"VL1PTFYS\",\"brandedFare\":\"ECOYS\",\"class\":\"V\",\"includedCheckedBags\":{\"weight\":15,\"weightUnit\":\"KG\"}}]}]}', 'AIR INDIA', NULL, NULL, 119.91, 59.955, 'purchase_wallet', 'pending', '2021-06-02 11:49:52', NULL, NULL),
(5, 3, '5675166236', NULL, NULL, 1, 0, 'ECONOMY', '[{\"name\":\"amolb\"}]', '[]', '{\"type\":\"flight-offer\",\"id\":\"1\",\"source\":\"GDS\",\"instantTicketingRequired\":false,\"nonHomogeneous\":false,\"oneWay\":false,\"lastTicketingDate\":\"2021-06-18\",\"numberOfBookableSeats\":4,\"itineraries\":[{\"duration\":\"PT21H35M\",\"segments\":[{\"departure\":{\"iataCode\":\"PNQ\",\"at\":\"2021-06-18T19:00:00\"},\"arrival\":{\"iataCode\":\"HYD\",\"at\":\"2021-06-18T22:30:00\"},\"carrierCode\":\"AI\",\"number\":\"9888\",\"aircraft\":{\"code\":\"ATR\"},\"operating\":{\"carrierCode\":\"9I\"},\"duration\":\"PT3H30M\",\"stops\":[{\"iataCode\":\"ISK\",\"duration\":\"PT25M\",\"arrivalAt\":\"2021-06-18T20:00:00\",\"departureAt\":\"2021-06-18T20:25:00\"}],\"id\":\"48\",\"numberOfStops\":1,\"blacklistedInEU\":false},{\"departure\":{\"iataCode\":\"HYD\",\"at\":\"2021-06-19T06:55:00\"},\"arrival\":{\"iataCode\":\"GOI\",\"at\":\"2021-06-19T10:50:00\"},\"carrierCode\":\"AI\",\"number\":\"9881\",\"aircraft\":{\"code\":\"ATR\"},\"operating\":{\"carrierCode\":\"9I\"},\"duration\":\"PT3H55M\",\"stops\":[{\"iataCode\":\"MYQ\",\"duration\":\"PT25M\",\"arrivalAt\":\"2021-06-19T08:55:00\",\"departureAt\":\"2021-06-19T09:20:00\"}],\"id\":\"49\",\"numberOfStops\":1,\"blacklistedInEU\":false},{\"departure\":{\"iataCode\":\"GOI\",\"at\":\"2021-06-19T15:20:00\"},\"arrival\":{\"iataCode\":\"BOM\",\"terminal\":\"2\",\"at\":\"2021-06-19T16:35:00\"},\"carrierCode\":\"AI\",\"number\":\"664\",\"aircraft\":{\"code\":\"32A\"},\"operating\":{\"carrierCode\":\"AI\"},\"duration\":\"PT1H15M\",\"id\":\"50\",\"numberOfStops\":0,\"blacklistedInEU\":false}]}],\"price\":{\"currency\":\"USD\",\"total\":\"131.71\",\"base\":\"107.00\",\"fees\":[{\"amount\":\"0.00\",\"type\":\"SUPPLIER\"},{\"amount\":\"0.00\",\"type\":\"TICKETING\"}],\"grandTotal\":\"131.71\"},\"pricingOptions\":{\"fareType\":[\"PUBLISHED\"],\"includedCheckedBagsOnly\":true},\"validatingAirlineCodes\":[\"AI\"],\"travelerPricings\":[{\"travelerId\":\"1\",\"fareOption\":\"STANDARD\",\"travelerType\":\"ADULT\",\"price\":{\"currency\":\"USD\",\"total\":\"131.71\",\"base\":\"107.00\"},\"fareDetailsBySegment\":[{\"segmentId\":\"48\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"SIP9I\",\"class\":\"S\",\"includedCheckedBags\":{\"weight\":15,\"weightUnit\":\"KG\"}},{\"segmentId\":\"49\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"SIP9I\",\"class\":\"S\",\"includedCheckedBags\":{\"weight\":15,\"weightUnit\":\"KG\"}},{\"segmentId\":\"50\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"SIPFS\",\"class\":\"S\",\"includedCheckedBags\":{\"weight\":15,\"weightUnit\":\"KG\"}}]}]}', 'AIR INDIA', 'asd', NULL, 131.71, 65.855, 'purchase_wallet', 'confirm', '2021-06-04 16:53:21', NULL, '2021-06-15 13:34:44'),
(6, 3, '1512070810', NULL, NULL, 1, 0, 'ECONOMY', '[{\"name\":\"amol\"}]', '[]', '{\"type\":\"flight-offer\",\"id\":\"1\",\"source\":\"GDS\",\"instantTicketingRequired\":false,\"nonHomogeneous\":false,\"oneWay\":false,\"lastTicketingDate\":\"2021-06-10\",\"numberOfBookableSeats\":9,\"itineraries\":[{\"duration\":\"PT14H15M\",\"segments\":[{\"departure\":{\"iataCode\":\"PNQ\",\"at\":\"2021-06-10T18:50:00\"},\"arrival\":{\"iataCode\":\"DEL\",\"terminal\":\"3\",\"at\":\"2021-06-10T21:05:00\"},\"carrierCode\":\"AI\",\"number\":\"850\",\"aircraft\":{\"code\":\"32B\"},\"operating\":{\"carrierCode\":\"AI\"},\"duration\":\"PT2H15M\",\"id\":\"9\",\"numberOfStops\":0,\"blacklistedInEU\":false},{\"departure\":{\"iataCode\":\"DEL\",\"terminal\":\"3\",\"at\":\"2021-06-11T07:00:00\"},\"arrival\":{\"iataCode\":\"BOM\",\"terminal\":\"2\",\"at\":\"2021-06-11T09:05:00\"},\"carrierCode\":\"AI\",\"number\":\"887\",\"aircraft\":{\"code\":\"321\"},\"operating\":{\"carrierCode\":\"AI\"},\"duration\":\"PT2H5M\",\"id\":\"10\",\"numberOfStops\":0,\"blacklistedInEU\":false}]}],\"price\":{\"currency\":\"USD\",\"total\":\"153.20\",\"base\":\"132.00\",\"fees\":[{\"amount\":\"0.00\",\"type\":\"SUPPLIER\"},{\"amount\":\"0.00\",\"type\":\"TICKETING\"}],\"grandTotal\":\"153.20\"},\"pricingOptions\":{\"fareType\":[\"PUBLISHED\"],\"includedCheckedBagsOnly\":true},\"validatingAirlineCodes\":[\"AI\"],\"travelerPricings\":[{\"travelerId\":\"1\",\"fareOption\":\"STANDARD\",\"travelerType\":\"ADULT\",\"price\":{\"currency\":\"USD\",\"total\":\"153.20\",\"base\":\"132.00\"},\"fareDetailsBySegment\":[{\"segmentId\":\"9\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"SIP\",\"class\":\"S\",\"includedCheckedBags\":{\"weight\":25,\"weightUnit\":\"KG\"}},{\"segmentId\":\"10\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"SIP\",\"class\":\"S\",\"includedCheckedBags\":{\"weight\":25,\"weightUnit\":\"KG\"}}]}]}', 'AIR INDIA', NULL, NULL, 153.2, 76.6, 'purchase_wallet', 'pending', '2021-06-04 17:48:06', NULL, NULL),
(7, 3, '7332356142', NULL, NULL, 1, 0, 'ECONOMY', '[{\"name\":\"amol\"}]', '[]', '{\"type\":\"flight-offer\",\"id\":\"1\",\"source\":\"GDS\",\"instantTicketingRequired\":false,\"nonHomogeneous\":false,\"oneWay\":false,\"lastTicketingDate\":\"2021-06-08\",\"numberOfBookableSeats\":9,\"itineraries\":[{\"duration\":\"PT14H15M\",\"segments\":[{\"departure\":{\"iataCode\":\"PNQ\",\"at\":\"2021-06-08T18:50:00\"},\"arrival\":{\"iataCode\":\"DEL\",\"terminal\":\"3\",\"at\":\"2021-06-08T21:05:00\"},\"carrierCode\":\"AI\",\"number\":\"850\",\"aircraft\":{\"code\":\"32B\"},\"operating\":{\"carrierCode\":\"AI\"},\"duration\":\"PT2H15M\",\"id\":\"7\",\"numberOfStops\":0,\"blacklistedInEU\":false},{\"departure\":{\"iataCode\":\"DEL\",\"terminal\":\"3\",\"at\":\"2021-06-09T07:00:00\"},\"arrival\":{\"iataCode\":\"BOM\",\"terminal\":\"2\",\"at\":\"2021-06-09T09:05:00\"},\"carrierCode\":\"AI\",\"number\":\"887\",\"aircraft\":{\"code\":\"321\"},\"operating\":{\"carrierCode\":\"AI\"},\"duration\":\"PT2H5M\",\"id\":\"8\",\"numberOfStops\":0,\"blacklistedInEU\":false}]}],\"price\":{\"currency\":\"USD\",\"total\":\"154.25\",\"base\":\"133.00\",\"fees\":[{\"amount\":\"0.00\",\"type\":\"SUPPLIER\"},{\"amount\":\"0.00\",\"type\":\"TICKETING\"}],\"grandTotal\":\"154.25\"},\"pricingOptions\":{\"fareType\":[\"PUBLISHED\"],\"includedCheckedBagsOnly\":true},\"validatingAirlineCodes\":[\"AI\"],\"travelerPricings\":[{\"travelerId\":\"1\",\"fareOption\":\"STANDARD\",\"travelerType\":\"ADULT\",\"price\":{\"currency\":\"USD\",\"total\":\"154.25\",\"base\":\"133.00\"},\"fareDetailsBySegment\":[{\"segmentId\":\"7\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"SIP\",\"class\":\"S\",\"includedCheckedBags\":{\"weight\":25,\"weightUnit\":\"KG\"}},{\"segmentId\":\"8\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"SIP\",\"class\":\"S\",\"includedCheckedBags\":{\"weight\":25,\"weightUnit\":\"KG\"}}]}]}', 'AIR INDIA', 'wdasdasda', NULL, 154.25, 77.125, 'purchase_wallet', 'cancel', '2021-06-07 15:11:35', NULL, '2021-06-15 13:38:10'),
(8, 3, '4395995392', NULL, NULL, 1, 0, 'ECONOMY', '[{\"name\":\"amol\"}]', '[]', '{\"type\":\"flight-offer\",\"id\":\"7\",\"source\":\"GDS\",\"instantTicketingRequired\":false,\"nonHomogeneous\":false,\"oneWay\":false,\"lastTicketingDate\":\"2021-06-16\",\"numberOfBookableSeats\":9,\"itineraries\":[{\"duration\":\"PT6H15M\",\"segments\":[{\"departure\":{\"iataCode\":\"PNQ\",\"at\":\"2021-06-17T11:25:00\"},\"arrival\":{\"iataCode\":\"DEL\",\"terminal\":\"3\",\"at\":\"2021-06-17T13:45:00\"},\"carrierCode\":\"UK\",\"number\":\"972\",\"aircraft\":{\"code\":\"320\"},\"operating\":{\"carrierCode\":\"UK\"},\"duration\":\"PT2H20M\",\"id\":\"7\",\"numberOfStops\":0,\"blacklistedInEU\":false},{\"departure\":{\"iataCode\":\"DEL\",\"terminal\":\"3\",\"at\":\"2021-06-17T15:30:00\"},\"arrival\":{\"iataCode\":\"BOM\",\"terminal\":\"2\",\"at\":\"2021-06-17T17:40:00\"},\"carrierCode\":\"UK\",\"number\":\"933\",\"aircraft\":{\"code\":\"73H\"},\"operating\":{\"carrierCode\":\"UK\"},\"duration\":\"PT2H10M\",\"id\":\"8\",\"numberOfStops\":0,\"blacklistedInEU\":false}]}],\"price\":{\"currency\":\"USD\",\"total\":\"177.21\",\"base\":\"156.00\",\"fees\":[{\"amount\":\"0.00\",\"type\":\"SUPPLIER\"},{\"amount\":\"0.00\",\"type\":\"TICKETING\"}],\"grandTotal\":\"177.21\"},\"pricingOptions\":{\"fareType\":[\"PUBLISHED\"],\"includedCheckedBagsOnly\":true},\"validatingAirlineCodes\":[\"UK\"],\"travelerPricings\":[{\"travelerId\":\"1\",\"fareOption\":\"STANDARD\",\"travelerType\":\"ADULT\",\"price\":{\"currency\":\"USD\",\"total\":\"177.21\",\"base\":\"156.00\"},\"fareDetailsBySegment\":[{\"segmentId\":\"7\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"VL1PYS\",\"brandedFare\":\"ECOYS\",\"class\":\"V\",\"includedCheckedBags\":{\"weight\":15,\"weightUnit\":\"KG\"}},{\"segmentId\":\"8\",\"cabin\":\"ECONOMY\",\"fareBasis\":\"VL1PYS\",\"brandedFare\":\"ECOYS\",\"class\":\"V\",\"includedCheckedBags\":{\"weight\":15,\"weightUnit\":\"KG\"}}]}]}', 'VISTARA', 'PNR-36472364623874', NULL, 177.21, 88.605, 'coin_wallet', 'confirm', '2021-06-16 10:25:32', NULL, '2021-06-16 06:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flight_city_keyword`
--

CREATE TABLE `tbl_flight_city_keyword` (
  `id` int(11) NOT NULL,
  `keyword` varchar(150) DEFAULT NULL,
  `description` text,
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flight_name`
--

CREATE TABLE `tbl_flight_name` (
  `id` int(11) NOT NULL,
  `airline_name` varchar(100) DEFAULT NULL,
  `IATA` varchar(111) DEFAULT NULL,
  `3_cigit_code` varchar(111) DEFAULT NULL,
  `ICAO` varchar(111) DEFAULT NULL,
  `Country` varchar(111) DEFAULT NULL,
  `logo` text,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_flight_name`
--

INSERT INTO `tbl_flight_name` (`id`, `airline_name`, `IATA`, `3_cigit_code`, `ICAO`, `Country`, `logo`, `status`) VALUES
(1, 'ABSA Cargo Airline', 'M3', '', 'TUS', 'Brazil', 'flight-logo/mOio8i9uNJ4u9Jf56fJP3TYI1aY3DwjKjFikTgXp.png', 'Active'),
(2, 'Adria Airways', 'JP', '165', 'ADR', 'Slovenia', NULL, 'Active'),
(3, 'Aegean Airlines', 'A3', '390', 'AEE', 'Greece', NULL, 'Active'),
(4, 'Aer Lingus', 'EI', '053', 'EIN', 'Ireland', NULL, 'Active'),
(5, 'Aero República', 'P5', '845', 'RBP', 'Colombia', NULL, 'Active'),
(6, 'Aeroflot', 'SU', '555', 'AFL', 'Russian Federation', NULL, 'Active'),
(7, 'Aerolineas Argentinas', 'AR', '044', 'ARG', 'Argentina', NULL, 'Active'),
(8, 'Aerolineas Galapagos S.A. Aerogal', '2K', '547', '547', 'Ecuador', NULL, 'Active'),
(9, 'Aeromexico', 'AM', '139', 'AMX', 'Mexico', NULL, 'Active'),
(10, 'Afriqiyah Airways', '8U', '546', 'AAW', 'Libya', NULL, 'Active'),
(11, 'Aigle Azur', 'ZI', '439', 'AAF', 'France', NULL, 'Active'),
(12, 'Air Algérie', 'AH', '124', 'DAH', 'Algeria', NULL, 'Active'),
(13, 'Air Arabia', 'G9', '514', 'ABY', 'United Arab Emirates', NULL, 'Active'),
(14, 'Air Astana', 'KC', '465', 'KZR', 'Kazakhstan', NULL, 'Active'),
(15, 'Air Austral', 'UU', '760', 'REU', 'France', NULL, 'Active'),
(16, 'Air Baltic', 'BT', '657', 'BTI', 'Latvia', NULL, 'Active'),
(17, 'Air Berlin', 'AB', '745', 'BER', 'Germany', NULL, 'Active'),
(18, 'Air Botswana', 'BP', '636', 'BOT', 'Botswana', NULL, 'Active'),
(19, 'Air Caledonie', 'TY', '190', 'TPC', 'New Caledonia', NULL, 'Active'),
(20, 'Air Canada', 'AC', '014', 'ACA', 'Canada', NULL, 'Active'),
(21, 'Air China Limited', 'CA', '999', 'CCA', 'China (People\'s Republic of)', NULL, 'Active'),
(22, 'Air Corsica', 'XK', '146', 'CCM', 'France', NULL, 'Active'),
(23, 'Air Europa', 'UX', '996', 'AEA', 'Spain', NULL, 'Active'),
(24, 'Air France', 'AF', '057', 'AFR', 'France', NULL, 'Active'),
(25, 'Air India', 'AI', '098', 'AIC', 'India', 'flight-logo/a8YUYJymRQ0VwEtwYxbIUcMRBQ37u74K82rKoXUw.png', 'Active'),
(26, 'Air Koryo', 'JS', '120', 'KOR', 'Korea, Democratic People\'s Republic of', NULL, 'Active'),
(27, 'Air Macau', 'NX', '675', 'AMU', 'Macao SAR, China', NULL, 'Active'),
(28, 'Air Madagascar', 'MD', '258', 'MDG', 'Madagascar', NULL, 'Active'),
(29, 'Air Malta', 'KM', '643', 'AMC', 'Malta', NULL, 'Active'),
(30, 'Air Mauritius', 'MK', '239', 'MAU', 'Mauritius', NULL, 'Active'),
(31, 'Air Moldova', '9U', '572', 'MLD', 'Moldova, Republic of', NULL, 'Active'),
(32, 'Air Namibia', 'SW', '186', 'NMB', 'Namibia', NULL, 'Active'),
(33, 'Air New Zealand', 'NZ', '086', 'ANZ', 'New Zealand', NULL, 'Active'),
(34, 'Air Niugini', 'PX', '656', 'ANG', 'Independent State of Papua New Guinea', NULL, 'Active'),
(35, 'Air Nostrum', 'YW', '694', 'ANE', 'Spain', NULL, 'Active'),
(36, 'Air One S.p.A.', 'AP', '867', 'ADH', 'Italy', NULL, 'Active'),
(37, 'Air SERBIA a.d. Beograd', 'JU', '115', 'JAT', 'Serbia', NULL, 'Active'),
(38, 'Air Seychelles', 'HM', '061', 'SEY', 'Seychelles', NULL, 'Active'),
(39, 'Air Tahiti', 'VT', '135', 'VTA', 'French Polynesia', NULL, 'Active'),
(40, 'Air Tahiti Nui', 'TN', '244', 'THT', 'French Polynesia', NULL, 'Active'),
(41, 'Air Transat', 'TS', '649', 'TSC', 'Canada', NULL, 'Active'),
(42, 'Air Uganda', 'U7', '926', 'UGA', 'Uganda', NULL, 'Active'),
(43, 'Air Vanuatu', 'NF', '218', 'AVN', 'Vanuatu', NULL, 'Active'),
(44, 'AirBridgeCargo Airlines', 'RU', '580', 'ABW', 'Russian Federation', NULL, 'Active'),
(45, 'Aircalin', 'SB', '063', 'ACI', 'New Caledonia', NULL, 'Active'),
(46, 'Airlink', '4Z', '749', '', 'South Africa', NULL, 'Active'),
(47, 'Alaska Airlines', 'AS', '027', 'ASA', 'United States', NULL, 'Active'),
(48, 'Alitalia', 'AZ', '055', 'AZA', 'Italy', NULL, 'Active'),
(49, 'All Nippon Airways', 'NH', '205', 'ANA', 'Japan', NULL, 'Active'),
(50, 'AlMasria Universal Airlines', 'UJ', '110', 'LMU', 'Egypt', NULL, 'Active'),
(51, 'ALS', 'K4', '', '', 'Kenya', NULL, 'Active'),
(52, 'American Airlines', 'AA', '001', 'AAL', 'United States', NULL, 'Active'),
(53, 'Arik Air', 'W3', '725', 'ARA', 'Nigeria', NULL, 'Active'),
(54, 'Arkia Israeli Airlines', 'IZ', '238', 'AIZ', 'Israel', NULL, 'Active'),
(55, 'Asia Pacific Airlines', 'A6', '046', 'MGE', 'United States', NULL, 'Active'),
(56, 'Asiana', 'OZ', '988', 'AAR', 'Korea', NULL, 'Active'),
(57, 'Atlas Air', '5Y', '369', 'GTI', 'United States', NULL, 'Active'),
(58, 'Atlasjet Airlines', 'KK', '610', 'KKK', 'Turkey', NULL, 'Active'),
(59, 'Austral', 'AU', '143', 'AUT', 'Argentina', NULL, 'Active'),
(60, 'Austrian', 'OS', '257', 'AUA', 'Austria', NULL, 'Active'),
(61, 'AVIANCA', 'AV', '134', 'AVA', 'Colombia', NULL, 'Active'),
(62, 'Avianca Brasil', 'O6', '247', 'ONE', 'Brazil', NULL, 'Active'),
(63, 'Azerbaijan Airlines', 'J2', '771', 'AHY', 'Azerbaijan', NULL, 'Active'),
(64, 'B&H Airlines', 'JA*', '995', 'BON', 'Bosnia and Herzegovina', NULL, 'Active'),
(65, 'Bangkok Air', 'PG', '829', 'BKP', 'Thailand', NULL, 'Active'),
(66, 'Belavia - Belarusian Airlines', 'B2', '628', 'BRU', 'Belarus', NULL, 'Active'),
(67, 'BH AIR', '8H', '366', 'BGH', 'Bulgaria', NULL, 'Active'),
(68, 'Biman', 'BG', '997', 'BBC', 'Bangladesh', NULL, 'Active'),
(69, 'Binter Canarias', 'NT', '474', 'IBB', 'Spain', NULL, 'Active'),
(70, 'Blue Panorama', 'BV', '004', 'BPA', 'Italy', NULL, 'Active'),
(71, 'Blue1', 'KF', '142', 'BLF', 'Finland', NULL, 'Active'),
(72, 'bmi Regional', 'BM', '480', 'BMR', 'United Kingdom', NULL, 'Active'),
(73, 'Boliviana de Aviación - BoA', 'OB', '930', 'BOV', 'Bolivia', NULL, 'Active'),
(74, 'British Airways', 'BA', '125', 'BAW', 'United Kingdom', NULL, 'Active'),
(75, 'Brussels Airlines', 'SN', '082', 'BEL', 'Belgium', NULL, 'Active'),
(76, 'Bulgaria air', 'FB', '623', 'LZB', 'Bulgaria', NULL, 'Active'),
(77, 'C.A.L. Cargo Airlines', '5C', '700', 'ICL', 'Israel', NULL, 'Active'),
(78, 'Cargojet Airways', 'W8', '489', 'CJT', 'Canada', NULL, 'Active'),
(79, 'Cargolux S.A.', 'CV', '172', 'CLX', 'Luxembourg', NULL, 'Active'),
(80, 'Caribbean Airlines', 'BW', '106', 'BWA', 'Jamaica', NULL, 'Active'),
(81, 'Carpatair', 'V3', '021', 'KRP', 'Romania', NULL, 'Active'),
(82, 'Cathay Pacific', 'CX', '160', 'CPA', 'Hong Kong SAR, China', NULL, 'Active'),
(83, 'China Airlines', 'CI', '297', 'CAL', 'Chinese Taipei', NULL, 'Active'),
(84, 'China Cargo Airlines', 'CK', '112', '', 'China (People\'s Republic of)', NULL, 'Active'),
(85, 'China Eastern', 'MU', '781', 'CES', 'China (People\'s Republic of)', NULL, 'Active'),
(86, 'China Postal Airlines', '8Y*', '804', 'CYZ', 'China (People\'s Republic of)', NULL, 'Active'),
(87, 'China Southern Airlines', 'CZ', '784', 'CSN', 'China (People\'s Republic of)', NULL, 'Active'),
(88, 'CityJet', 'WX', '689', 'BCY', 'Ireland', NULL, 'Active'),
(89, 'Comair', 'MN', '161', 'CAW', 'South Africa', NULL, 'Active'),
(90, 'Condor', 'DE', '881', 'CFG', 'Germany', NULL, 'Active'),
(91, 'COPA Airlines', 'CM', '230', 'CMP', 'Panama', NULL, 'Active'),
(92, 'Corendon Airlines', 'XC', '395', 'CAI', 'Turkey', NULL, 'Active'),
(93, 'Corsair International', 'SS', '923', 'CRL', 'France', NULL, 'Active'),
(94, 'Croatia Airlines', 'OU', '831', 'CTN', 'Croatia', NULL, 'Active'),
(95, 'Cubana', 'CU', '136', 'CUB', 'Cuba', NULL, 'Active'),
(96, 'Cyprus Airways', 'CY', '048', 'CYP', 'Cyprus', NULL, 'Active'),
(97, 'Czech Airlines j.s.c', 'OK', '064', 'CSA', 'Czech Republic', NULL, 'Active'),
(98, 'Delta Air Lines', 'DL', '006', 'DAL', 'United States', NULL, 'Active'),
(99, 'DHL Air', 'D0', '936', 'DHK', 'United Kingdom', NULL, 'Active'),
(100, 'DHL Aviation EEMEA B.S.C.(c)', 'ES*', '155', 'DHX', 'Bahrain', NULL, 'Active'),
(101, 'Donavia', 'D9', '733', 'DNV', 'Russian Federation', NULL, 'Active'),
(102, 'Dragonair', 'KA', '043', 'HDA', 'Hong Kong SAR, China', NULL, 'Active'),
(103, 'Egyptair', 'MS', '077', 'MSR', 'Egypt', NULL, 'Active'),
(104, 'EL AL', 'LY', '114', 'ELY', 'Israel', NULL, 'Active'),
(105, 'Emirates', 'EK', '176', 'UAE', 'United Arab Emirates', NULL, 'Active'),
(106, 'Estonian Air', 'OV', '960', 'ELL', 'Estonia', NULL, 'Active'),
(107, 'Ethiopian Airlines', 'ET', '071', 'ETH', 'Ethiopia', NULL, 'Active'),
(108, 'Etihad Airways', 'EY', '607', 'ETD', 'United Arab Emirates', NULL, 'Active'),
(109, 'Euroatlantic Airways', 'YU', '551', 'MMZ', 'Portugal', NULL, 'Active'),
(110, 'European Air Transport', 'QY', '615', 'BCS', 'Germany', NULL, 'Active'),
(111, 'Eurowings', 'EW', '104', 'EWG', 'Germany', NULL, 'Active'),
(112, 'EVA Air', 'BR', '695', 'EVA', 'Chinese Taipei', NULL, 'Active'),
(113, 'Federal Express', 'FX', '023', 'FDX', 'United States', NULL, 'Active'),
(114, 'Fiji Airways', 'FJ', '260', 'FJI', 'Fiji', NULL, 'Active'),
(115, 'Finnair', 'AY', '105', 'FIN', 'Finland', NULL, 'Active'),
(116, 'flybe', 'BE', '267', 'BEE', 'United Kingdom', NULL, 'Active'),
(117, 'Freebird Airlines', 'FH', '', 'FHY', 'Turkey', NULL, 'Active'),
(118, 'Garuda', 'GA', '126', 'GIA', 'Indonesia', NULL, 'Active'),
(119, 'Georgian Airways', 'A9', '606', 'TGZ', 'Georgia', NULL, 'Active'),
(120, 'Germania', 'ST', '246', 'GMI', 'Germany', NULL, 'Active'),
(121, 'Gulf Air', 'GF', '072', 'GFA', 'Bahrain', NULL, 'Active'),
(122, 'Hahn Air', 'HR*', '169', 'HHN', 'Germany', NULL, 'Active'),
(123, 'Hainan Airlines', 'HU', '880', 'CHH', 'China (People\'s Republic of)', NULL, 'Active'),
(124, 'Hawaiian Airlines', 'HA', '173', 'HAL', 'United States', NULL, 'Active'),
(125, 'Hi Fly', '5K', '', 'HFY', 'Portugal', NULL, 'Active'),
(126, 'Hong Kong Airlines', 'HX', '851', 'CRK', 'Hong Kong SAR, China', NULL, 'Active'),
(127, 'Hong Kong Express Airways', 'UO', '128', 'HKE', 'Hong Kong SAR, China', NULL, 'Active'),
(128, 'IBERIA', 'IB', '075', 'IBE', 'Spain', NULL, 'Active'),
(129, 'Icelandair', 'FI', '108', 'ICE', 'Iceland', NULL, 'Active'),
(130, 'InselAir', '7i', '958', 'INC', 'Curaçao', NULL, 'Active'),
(131, 'Interair', 'D6', '625', 'ILN', 'South Africa', NULL, 'Active'),
(132, 'InterSky', '3L', '222', '', 'Austria', NULL, 'Active'),
(133, 'Iran Air', 'IR', '096', 'IRA', 'Iran, Islamic Republic of', NULL, 'Active'),
(134, 'Iran Aseman Airlines', 'EP', '815', 'IRC', 'Iran, Islamic Republic of', NULL, 'Active'),
(135, 'Israir', '6H', '818', 'ISR', 'Israel', NULL, 'Active'),
(136, 'Japan Airlines', 'JL', '131', 'JAL', 'Japan', NULL, 'Active'),
(137, 'Jazeera Airways', 'J9', '486', 'JZR', 'Kuwait', NULL, 'Active'),
(138, 'Jet Airways', '9W', '589', 'JAI', 'India', NULL, 'Active'),
(139, 'Jet Lite (India) Limited', 'S2', '705', '', 'India', NULL, 'Active'),
(140, 'JetBlue', 'B6', '279', 'JBU', 'United States', NULL, 'Active'),
(141, 'Jordan Aviation', 'R5', '151', 'JAV', 'Jordan', NULL, 'Active'),
(142, 'JSC Aircompany Yakutia', 'R3', '849', 'SYL', 'Russian Federation', NULL, 'Active'),
(143, 'JSC Nordavia-RA', '5N', '316', 'AUL', 'Russian Federation', NULL, 'Active'),
(144, 'Juneyao Airlines', 'HO', '018', 'DKH', 'China (People\'s Republic of)', NULL, 'Active'),
(145, 'Kenya Airways', 'KQ', '706', 'KQA', 'Kenya', NULL, 'Active'),
(146, 'Kish Air', 'Y9', '780', 'IRK', 'Iran, Islamic Republic of', NULL, 'Active'),
(147, 'KLM', 'KL', '074', 'KLM', 'Netherlands', NULL, 'Active'),
(148, 'Korean Air', 'KE', '180', 'KAL', 'Korea', NULL, 'Active'),
(149, 'Kuwait Airways', 'KU', '229', 'KAC', 'Kuwait', NULL, 'Active'),
(150, 'LACSA', 'LR', '133', 'LRC', 'Costa Rica', NULL, 'Active'),
(151, 'LAM', 'TM', '068', 'LAM', 'Mozambique', NULL, 'Active'),
(152, 'Lan Airlines', 'LA', '045', 'LAN', 'Chile', NULL, 'Active'),
(153, 'Lan Argentina', '4M', '469', 'DSM', 'Argentina', NULL, 'Active'),
(154, 'Lan Cargo', 'UC', '145', 'LCO', 'Chile', NULL, 'Active'),
(155, 'Lan Perú', 'LP', '544', 'LPE', 'Peru', NULL, 'Active'),
(156, 'LanEcuador', 'XL', '462', 'LNE', 'Ecuador', NULL, 'Active'),
(157, 'LIAT Airlines', 'LI', '140', 'LIA', 'Antigua and Barbuda', NULL, 'Active'),
(158, 'Libyan Airlines', 'LN', '148', 'LAA', 'Libya', NULL, 'Active'),
(159, 'LLC \"NORD WIND\"', 'N4', '216', 'NWS', 'Russian Federation', NULL, 'Active'),
(160, 'LOT Polish Airlines', 'LO', '080', 'LOT', 'Poland', NULL, 'Active'),
(161, 'Lufthansa', 'LH', '220', 'DLH', 'Germany', NULL, 'Active'),
(162, 'Lufthansa Cargo', 'LH', '020', 'GEC', 'Germany', NULL, 'Active'),
(163, 'Lufthansa CityLine', 'CL', '683', 'CLH', 'Germany', NULL, 'Active'),
(164, 'Luxair', 'LG', '149', 'LGL', 'Luxembourg', NULL, 'Active'),
(165, 'Mahan Air', 'W5', '537', 'IRM', 'Iran, Islamic Republic of', NULL, 'Active'),
(166, 'Malaysia Airlines', 'MH', '232', 'MAS', 'Malaysia', NULL, 'Active'),
(167, 'Malmö Aviation', 'TF', '276', 'SCW', 'Sweden', NULL, 'Active'),
(168, 'Martinair Cargo', 'MP', '129', 'MPH', 'Netherlands', NULL, 'Active'),
(169, 'MAS AIR', 'M7', '865', 'MAA', 'Mexico', NULL, 'Active'),
(170, 'MEA', 'ME', '076', 'MEA', 'Lebanon', NULL, 'Active'),
(171, 'Meridiana fly', 'IG', '191', 'ISS', 'Italy', NULL, 'Active'),
(172, 'MIAT', 'OM', '289', 'MGL', 'Mongolia', NULL, 'Active'),
(173, 'Montenegro Airlines', 'YM', '409', 'MGX', 'Montenegro', NULL, 'Active'),
(174, 'Nesma Airlines', 'NE', '477', 'NMA', 'Egypt', NULL, 'Active'),
(175, 'NIKI', 'HG', '', '', 'Austria', NULL, 'Active'),
(176, 'Nile Air', 'NP', '325', 'NIA', 'Egypt', NULL, 'Active'),
(177, 'Nippon Cargo Airlines (NCA)', 'KZ', '933', 'NCA', 'Japan', NULL, 'Active'),
(178, 'Nouvelair', 'BJ', '796', 'LBT', 'Tunisia', NULL, 'Active'),
(179, 'Olympic Air', 'OA', '050', 'OAL', 'Greece', NULL, 'Active'),
(180, 'Oman Air', 'WY', '910', 'OAS', 'Oman', NULL, 'Active'),
(181, 'Onur Air', '8Q', '066', 'OHY', 'Turkey', NULL, 'Active'),
(182, 'PAL', 'PR', '079', 'PAL', 'Philippines', NULL, 'Active'),
(183, 'Pegasus Airlines', 'PC', '624', 'PGT', 'Turkey', NULL, 'Active'),
(184, 'PGA-Portugália Airlines', 'NI', '685', 'PGA', 'Portugal', NULL, 'Active'),
(185, 'PIA', 'PK', '214', 'PIA', 'Pakistan', NULL, 'Active'),
(186, 'Precision Air', 'PW', '031', 'PRF', 'Tanzania, United Republic of', NULL, 'Active'),
(187, 'PrivatAir', 'PV', '', 'PTI', 'Switzerland', NULL, 'Active'),
(188, 'Qantas', 'QF', '081', 'QFA', 'Australia', NULL, 'Active'),
(189, 'Qatar Airways', 'QR', '157', 'QTR', 'Qatar', NULL, 'Active'),
(190, 'Rossiya Airlines', 'FV', '195', 'SDM', 'Russian Federation', NULL, 'Active'),
(191, 'Royal Air Maroc', 'AT', '147', 'RAM', 'Morocco', NULL, 'Active'),
(192, 'Royal Brunei', 'BI', '672', 'RBA', 'Brunei Darussalam', NULL, 'Active'),
(193, 'Royal Jordanian', 'RJ', '512', 'RJA', 'Jordan', NULL, 'Active'),
(194, 'SAA', 'SA', '083', 'SAA', 'South Africa', NULL, 'Active'),
(195, 'Safair', 'FA*', '640', 'SFR', 'South Africa', NULL, 'Active'),
(196, 'Safi Airways', '4Q', '741', 'SFW', 'Afghanistan', NULL, 'Active'),
(197, 'SAS', 'SK', '117', 'SAS', 'Sweden', NULL, 'Active'),
(198, 'SATA Air Açores', 'SP', '737', 'SAT', 'Portugal', NULL, 'Active'),
(199, 'SATA Internacional', 'S4', '331', 'RZO', 'Portugal', NULL, 'Active'),
(200, 'Saudi Arabian Airlines', 'SV', '065', 'SVA', 'Saudi Arabia', NULL, 'Active'),
(201, 'Shandong Airlines', 'SC', '324', 'CDG', 'China (People\'s Republic of)', NULL, 'Active'),
(202, 'Shanghai Airlines', 'FM', '774', '', 'China (People\'s Republic of)', NULL, 'Active'),
(203, 'Shenzhen Airlines', 'ZH', '479', 'CSZ', 'China (People\'s Republic of)', NULL, 'Active'),
(204, 'SIA', 'SQ', '618', 'SIA', 'Singapore', NULL, 'Active'),
(205, 'SIA Cargo', 'SQ', '', 'SIA', 'Singapore', NULL, 'Active'),
(206, 'Siberia Airlines', 'S7', '421', 'SBI', 'Russian Federation', NULL, 'Active'),
(207, 'Sichuan Airlines', '3U', '876', '', 'China (People\'s Republic of)', NULL, 'Active'),
(208, 'Silkair', 'MI', '629', 'SLK', 'Singapore', NULL, 'Active'),
(209, 'South African Express Airways', 'XZ', '', 'EXY', 'South Africa', NULL, 'Active'),
(210, 'SriLankan', 'UL', '603', 'ALK', 'Sri Lanka', NULL, 'Active'),
(211, 'Sudan Airways', 'SD', '200', 'SUD', 'Sudan', NULL, 'Active'),
(212, 'SunExpress', 'XQ*', '564', 'SXS', 'Turkey', NULL, 'Active'),
(213, 'Surinam Airways', 'PY', '192', 'SLM', 'Suriname', NULL, 'Active'),
(214, 'SWISS', 'LX', '724', 'SWR', 'Switzerland', NULL, 'Active'),
(215, 'SYPHAX AIRLINES', 'FS', '393', 'SYA', 'Tunisia', NULL, 'Active'),
(216, 'Syrianair', 'RB', '070', 'SYR', 'Syrian Arab Republic', NULL, 'Active'),
(217, 'TAAG - Angola Airlines', 'DT', '118', 'DTA', 'Angola', NULL, 'Active'),
(218, 'TACA', 'TA', '202', 'TAI', 'El Salvador', NULL, 'Active'),
(219, 'TACA Peru', 'T0', '530', 'TPU', 'Peru', NULL, 'Active'),
(220, 'TACV Cabo Verde Airlines', 'VR', '696', 'TCV', 'Cape Verde', NULL, 'Active'),
(221, 'TAM - Transportes Aéreos del Mercosur Sociedad Anónima', 'PZ', '692', 'LAP', 'Paraguay', NULL, 'Active'),
(222, 'TAM Linhas Aéreas', 'JJ', '957', 'TAM', 'Brazil', NULL, 'Active'),
(223, 'TAME - Linea Aérea del Ecuador', 'EQ', '269', 'TAE', 'Ecuador', NULL, 'Active'),
(224, 'TAP Portugal', 'TP', '047', 'TAP', 'Portugal', NULL, 'Active'),
(225, 'TAROM', 'RO', '281', 'ROT', 'Romania', NULL, 'Active'),
(226, 'Tassili Airlines', 'SF', '515', '', 'Algeria', NULL, 'Active'),
(227, 'Thai Airways International', 'TG', '217', 'THA', 'Thailand', NULL, 'Active'),
(228, 'THY - Turkish Airlines', 'TK', '235', 'THY', 'Turkey', NULL, 'Active'),
(229, 'Tianjin Airlines', 'GS', '826', 'GCR', 'China (People\'s Republic of)', NULL, 'Active'),
(230, 'TNT Airways S.A.', '3V', '756', 'TAY', 'Belgium', NULL, 'Active'),
(231, 'Transaero', 'UN', '670', 'TSO', 'Russian Federation', NULL, 'Active'),
(232, 'TransAsia Airways', 'GE', '170', 'TNA', 'Chinese Taipei', NULL, 'Active'),
(233, 'TUIfly', 'X3*', '617', 'TUI', 'Germany', NULL, 'Active'),
(234, 'Tunisair', 'TU', '199', 'TAR', 'Tunisia', NULL, 'Active'),
(235, 'Ukraine International Airlines', 'PS', '566', 'AUI', 'Ukraine', NULL, 'Active'),
(236, 'United Airlines', 'UA', '016', 'UAL', 'United States', NULL, 'Active'),
(237, 'UPS Airlines', '5X', '406', 'UPS', 'United States', NULL, 'Active'),
(238, 'US Airways', 'US', '037', 'USA', 'United States', NULL, 'Active'),
(239, 'UTair', 'UT', '298', 'UTA', 'Russian Federation', NULL, 'Active'),
(240, 'Uzbekistan Airways', 'HY', '250', 'UZB', 'Uzbekistan', NULL, 'Active'),
(241, 'Vietnam Airlines', 'VN', '738', 'HVN', 'Vietnam', NULL, 'Active'),
(242, 'Virgin Atlantic', 'VS', '932', 'VIR', 'United Kingdom', NULL, 'Active'),
(243, 'Virgin Australia', 'VA', '795', 'VAU', 'Australia', NULL, 'Active'),
(244, 'VLM Airlines', 'VG', '', 'VLM', 'Belgium', NULL, 'Active'),
(245, 'Volaris', 'Y4*', '036', 'VOI', 'Mexico', NULL, 'Active'),
(246, 'Volga-Dnepr Airlines', 'VI*', '412', 'VDA', 'Russian Federation', NULL, 'Active'),
(247, 'VRG Linhas Aéreas S.A. - Grupo GOL', 'G3', '127', 'GLO', 'Brazil', NULL, 'Active'),
(248, 'White coloured by you', 'WI', '097', 'WHT', 'Portugal', NULL, 'Active'),
(249, 'Wideroe', 'WF', '701', 'WIF', 'Norway', NULL, 'Active'),
(250, 'Xiamen Airlines', 'MF', '731', 'CXA', 'China (People\'s Republic of)', NULL, 'Active'),
(251, 'Yemenia', 'IY', '635', 'IYE', 'Yemen', NULL, 'Active'),
(252, 'Silk Way Airlines', 'ZP', '463', 'AZQ', 'Azerbaijan', NULL, 'Active'),
(253, 'Silk Way West Airlines Limited', '7L', '501', '', 'Azerbaijan', NULL, 'Active'),
(254, 'amol', '1123', NULL, NULL, NULL, NULL, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_flight_temp_book_info`
--

CREATE TABLE `tbl_flight_temp_book_info` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` varchar(500) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `adult` int(11) NOT NULL DEFAULT '1',
  `child` int(11) NOT NULL DEFAULT '0',
  `travel_class` enum('ECONOMY','PREMIUM_ECONOMY','BUSINESS','FIRST') DEFAULT 'ECONOMY',
  `booking_data` text,
  `remark` text,
  `img` text,
  `total_usd` double NOT NULL DEFAULT '0',
  `total_coin` double NOT NULL DEFAULT '0',
  `payment_mode` enum('coin_wallet','purchase_wallet') NOT NULL DEFAULT 'purchase_wallet',
  `status` enum('pending','confirm','cancel') NOT NULL DEFAULT 'pending',
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `fimg` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_franchise_income`
--

CREATE TABLE `tbl_franchise_income` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `on_amount` double DEFAULT NULL,
  `topup_id` int(11) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_freedom_club_income`
--

CREATE TABLE `tbl_freedom_club_income` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double DEFAULT '0',
  `laps_amount` double DEFAULT '0',
  `rank` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fund_request`
--

CREATE TABLE `tbl_fund_request` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `amount` double DEFAULT NULL,
  `invoice_id` varchar(50) DEFAULT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `trn_ref_no` int(11) DEFAULT NULL,
  `holder_name` varchar(50) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `deposit_date` datetime DEFAULT NULL,
  `pay_slip` varchar(255) DEFAULT NULL,
  `admin_remark` varchar(255) DEFAULT NULL,
  `status` enum('Pending','Approve','Reject') NOT NULL DEFAULT 'Pending',
  `fund_status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0-admin fund,1-setting fund',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approve_date` datetime DEFAULT NULL,
  `reject_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fund_transfer`
--

CREATE TABLE `tbl_fund_transfer` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `balance_transfer_id` int(11) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `transfer_charge` double NOT NULL DEFAULT '0',
  `tds_charge` double NOT NULL DEFAULT '0',
  `net_amount` double NOT NULL DEFAULT '0',
  `wallet_type` int(11) DEFAULT NULL COMMENT '1-roi, 2 - binary, 3 - direct income, 4 - all, 5 - level income 6 = top up wallet 7 = passive wallet 8 = working wallet 9 = fund wallet',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-Pending,1-Approved,2rejected-',
  `remark` varchar(100) NOT NULL,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `text` text,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active' COMMENT 'Active,Inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallerya`
--

CREATE TABLE `tbl_gallerya` (
  `id` int(11) NOT NULL,
  `gid` int(11) DEFAULT '0',
  `attachment` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_goa_tour_winner_list`
--

CREATE TABLE `tbl_goa_tour_winner_list` (
  `winner_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `award` varchar(50) DEFAULT 'Goa Tour ',
  `match_bv` int(11) DEFAULT '0',
  `entry_time` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ico_coin_bonus`
--

CREATE TABLE `tbl_ico_coin_bonus` (
  `srno` int(11) NOT NULL,
  `phase_id` int(11) DEFAULT NULL,
  `bonus` double DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income`
--

CREATE TABLE `tbl_income` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `from_user_id` varchar(20) DEFAULT '',
  `amount` decimal(10,2) DEFAULT '0.00',
  `status` enum('Paid','Unpaid') DEFAULT 'Unpaid',
  `entry_time` datetime DEFAULT '0000-00-00 00:00:00',
  `type` int(11) DEFAULT '0',
  `remark` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inventory_temp`
--

CREATE TABLE `tbl_inventory_temp` (
  `id` int(5) NOT NULL,
  `p_id` int(5) NOT NULL,
  `p_qty` bigint(20) NOT NULL,
  `p_rate` bigint(20) NOT NULL,
  `p_total` bigint(20) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sess_id` varchar(255) NOT NULL,
  `user_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoices`
--

CREATE TABLE `tbl_invoices` (
  `srno` int(11) NOT NULL,
  `invoice_id` varchar(50) NOT NULL DEFAULT '0',
  `id` int(11) DEFAULT '0',
  `hash_rate` varchar(50) DEFAULT NULL,
  `hash_unit` double DEFAULT NULL,
  `price_unit` double DEFAULT NULL,
  `price_in_usd` double DEFAULT '0',
  `currency_price` double NOT NULL DEFAULT '0',
  `payment_mode` enum('BTC','PM') DEFAULT 'BTC',
  `product_url` text,
  `address` varchar(100) DEFAULT '',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `plan_id` int(11) DEFAULT '0',
  `in_status` int(11) DEFAULT '0' COMMENT '0:Pending,1:Auto Confirmed',
  `remark` text,
  `trans_hash` text,
  `rec_amt` double DEFAULT '0',
  `top_up_status` int(11) DEFAULT '0' COMMENT '0-not top up , 1- top up done',
  `top_up_date` datetime DEFAULT NULL,
  `payee_account_name` varchar(255) DEFAULT NULL,
  `payee_account` varchar(255) DEFAULT NULL,
  `payer_account` varchar(255) DEFAULT NULL,
  `payment_id` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_invoices`
--

INSERT INTO `tbl_invoices` (`srno`, `invoice_id`, `id`, `hash_rate`, `hash_unit`, `price_unit`, `price_in_usd`, `currency_price`, `payment_mode`, `product_url`, `address`, `entry_time`, `plan_id`, `in_status`, `remark`, `trans_hash`, `rec_amt`, `top_up_status`, `top_up_date`, `payee_account_name`, `payee_account`, `payer_account`, `payment_id`) VALUES
(1, '310107469548', 19, '9', 9, 9, 9, 9, 'PM', 'system', '', '2022-02-28 16:26:47', 1, 0, 'X4965635 added fund of $ 9', NULL, 0, 0, NULL, 'Xento-Corp', 'U30291481', NULL, 310107469548),
(2, '184052639723', 2, '11', 11, 11, 11, 11, 'PM', 'system', '', '2022-02-28 16:38:25', 1, 0, 'X1113349 added fund of $ 11', NULL, 0, 0, NULL, 'Xento-Corp', 'U30291481', NULL, 184052639723),
(3, '141949064344', 19, '250', 250, 250, 250, 250, 'PM', 'system', '', '2022-03-02 15:59:32', 1, 0, 'X4965635 added fund of $ 250', NULL, 0, 0, NULL, 'Xento-Corp', 'U30291481', NULL, 141949064344);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoices_reg`
--

CREATE TABLE `tbl_invoices_reg` (
  `invoice_id` varchar(50) NOT NULL DEFAULT '0',
  `id` int(11) DEFAULT '0',
  `price_in_usd` double DEFAULT '0',
  `price_in_btc` double DEFAULT '0',
  `product_url` text,
  `address` varchar(100) DEFAULT '',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `plan_id` int(11) DEFAULT '0',
  `in_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_generation`
--

CREATE TABLE `tbl_invoice_generation` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT '',
  `pin` varchar(100) DEFAULT '',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_payments`
--

CREATE TABLE `tbl_invoice_payments` (
  `transaction_hash` char(64) NOT NULL DEFAULT '',
  `value` double DEFAULT '0',
  `invoice_id` varchar(50) DEFAULT '',
  `amount_in_doller` double DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payout_count` int(11) DEFAULT '0',
  `level_income_status` int(11) DEFAULT '0',
  `plan` int(11) DEFAULT '0',
  `percentage` decimal(10,2) DEFAULT '0.00',
  `bv_update` int(10) DEFAULT '0',
  `user_id` int(11) DEFAULT '0',
  `remark` text,
  `confirm_remark` text,
  `confirm_date` datetime DEFAULT NULL,
  `notification` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_refund`
--

CREATE TABLE `tbl_invoice_refund` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `invoice_id` varchar(250) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `currency` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `payment_id` varchar(250) DEFAULT NULL,
  `invoice_type` enum('Fund','Topup') DEFAULT NULL,
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ip_tack`
--

CREATE TABLE `tbl_ip_tack` (
  `id` int(11) NOT NULL,
  `hostname` varchar(45) DEFAULT '',
  `ipaddress` varchar(45) DEFAULT '',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `forward` varchar(45) DEFAULT '',
  `status` varchar(10) DEFAULT '',
  `user_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kyc`
--

CREATE TABLE `tbl_kyc` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `pancard` varchar(100) DEFAULT '',
  `pancardv` int(11) DEFAULT '0',
  `pdate` datetime DEFAULT '0000-00-00 00:00:00',
  `address` varchar(100) DEFAULT '',
  `addressv` int(11) DEFAULT '0',
  `adate` datetime DEFAULT '0000-00-00 00:00:00',
  `cheque` varchar(100) DEFAULT '',
  `chequev` int(11) DEFAULT '0',
  `cdate` datetime DEFAULT '0000-00-00 00:00:00',
  `photo` varchar(100) DEFAULT '',
  `photov` int(11) DEFAULT '0',
  `phdate` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_details`
--

CREATE TABLE `tbl_last_details` (
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leadership_income`
--

CREATE TABLE `tbl_leadership_income` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT '250.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `amt_pin` decimal(10,2) DEFAULT '0.00',
  `level` int(11) DEFAULT '0',
  `toUserId` varchar(100) DEFAULT '',
  `fromUserId` varchar(100) DEFAULT '',
  `type` int(11) DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leadership_plan`
--

CREATE TABLE `tbl_leadership_plan` (
  `srno` int(11) NOT NULL,
  `amount` int(11) DEFAULT '0',
  `percentage` double DEFAULT '0',
  `status` enum('Active','Inactive') DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `id` int(11) NOT NULL,
  `level_id` int(11) DEFAULT '0',
  `percentage` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_ico`
--

CREATE TABLE `tbl_level_ico` (
  `id` int(11) NOT NULL,
  `level_id` int(11) DEFAULT '0',
  `percentage` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_income`
--

CREATE TABLE `tbl_level_income` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT '250.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `amt_pin` decimal(10,2) DEFAULT '0.00',
  `level` int(11) DEFAULT '0',
  `toUserId` varchar(100) DEFAULT '',
  `fromUserId` varchar(100) DEFAULT '',
  `type` int(11) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_income_ico`
--

CREATE TABLE `tbl_level_income_ico` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT '250.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `amt_pin` decimal(10,2) DEFAULT '0.00',
  `level` int(11) DEFAULT '0',
  `toUserId` varchar(100) DEFAULT '',
  `fromUserId` varchar(100) DEFAULT '',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_income_roi`
--

CREATE TABLE `tbl_level_income_roi` (
  `id` int(11) NOT NULL,
  `amount` double DEFAULT '0',
  `tax_amount` double DEFAULT '0',
  `amt_pin` double DEFAULT '0',
  `level` int(11) DEFAULT '0',
  `toUserId` varchar(100) DEFAULT '',
  `fromUserId` varchar(100) DEFAULT '',
  `type` int(11) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '0',
  `pin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_roi`
--

CREATE TABLE `tbl_level_roi` (
  `id` int(11) NOT NULL,
  `level_id` int(11) DEFAULT '0',
  `percentage` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_view`
--

CREATE TABLE `tbl_level_view` (
  `srno` int(255) NOT NULL,
  `id` int(255) DEFAULT '0',
  `level` int(255) DEFAULT '0',
  `down_id` int(255) DEFAULT '0',
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_view`
--

INSERT INTO `tbl_level_view` (`srno`, `id`, `level`, `down_id`, `entry_time`) VALUES
(1, 2, 1, 16, '2022-07-22 19:32:26'),
(2, 1, 2, 16, '2022-07-22 19:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_magic_bv`
--

CREATE TABLE `tbl_magic_bv` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `position` int(11) DEFAULT '0',
  `bv` decimal(10,2) DEFAULT '0.00',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manage_coin_currency`
--

CREATE TABLE `tbl_manage_coin_currency` (
  `id` int(11) NOT NULL,
  `coin_id` int(11) DEFAULT NULL,
  `coin_name` varchar(200) DEFAULT NULL,
  `org_coin_name` varchar(200) DEFAULT NULL COMMENT 'used for usd rate update',
  `symbol` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `usd_rate` decimal(10,3) DEFAULT NULL,
  `coin_last_updated` datetime DEFAULT NULL,
  `logo` text,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `entry_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_manage_coin_currency`
--

INSERT INTO `tbl_manage_coin_currency` (`id`, `coin_id`, `coin_name`, `org_coin_name`, `symbol`, `slug`, `usd_rate`, `coin_last_updated`, `logo`, `status`, `entry_date`, `updated_date`) VALUES
(1, 1, 'Bitcoin', 'Bitcoin', 'BTC', 'bitcoin', '30406.000', '2022-05-30 14:25:17', 'https://s2.coinmarketcap.com/static/img/coins/64x64/1.png', 'Active', '2021-07-09 16:43:54', '2022-05-30 14:28:01'),
(2, 25, 'Goldcoin', 'Goldcoin', 'GLC', 'goldcoin', NULL, '1970-01-01 09:00:00', 'https://s2.coinmarketcap.com/static/img/coins/64x64/25.png', 'Inactive', '2021-07-09 18:13:56', '2022-03-09 00:46:05'),
(3, 1958, 'TRON', 'TRON', 'TRX', 'tron', '0.082', '2022-05-30 14:26:34', 'https://s2.coinmarketcap.com/static/img/coins/64x64/1958.png', 'Active', '2021-07-09 18:18:07', '2022-05-30 14:28:01'),
(4, 4774, '1irstGold', '1irstGold', '1GOLD', '1irstgold', NULL, '1970-01-01 09:00:00', 'https://s2.coinmarketcap.com/static/img/coins/64x64/4774.png', 'Inactive', '2021-07-12 20:37:21', '2022-03-09 00:46:05'),
(5, 4920, 'Aerotoken', 'Aerotoken', 'AET', 'aerotoken', NULL, '1970-01-01 09:00:00', 'https://s2.coinmarketcap.com/static/img/coins/64x64/4920.png', 'Inactive', '2021-07-13 16:39:05', '2022-03-09 00:46:05'),
(6, 10144, '$BOOB', '$BOOB', '$BOOB', 'boob', NULL, '1970-01-01 09:00:00', NULL, 'Inactive', '2021-09-07 22:18:43', '2022-03-09 00:46:05'),
(7, 1027, 'Ethereum', 'Ethereum', 'ETH', 'ethereum', '1883.690', '2022-05-30 14:26:52', 'https://s2.coinmarketcap.com/static/img/coins/64x64/1027.png', 'Active', '2021-10-06 00:00:00', '2022-05-30 14:28:01'),
(8, 2, 'Litecoin', 'Litecoin', 'LTC', 'litecoin', '66.080', '2022-05-30 14:25:06', 'https://s2.coinmarketcap.com/static/img/coins/64x64/2.png', 'Active', '2021-10-06 22:33:40', '2022-05-30 14:28:01'),
(9, 74, 'Dogecoin', 'Dogecoin', 'DOGE', 'dogecoin', '0.085', '2022-05-30 14:25:05', 'https://s2.coinmarketcap.com/static/img/coins/64x64/74.png', 'Active', '2021-10-06 22:33:55', '2022-05-30 14:28:01'),
(10, 52, 'Ripple', 'XRP', 'XRP', 'xrp', '0.398', '2022-05-30 14:26:53', 'https://s2.coinmarketcap.com/static/img/coins/64x64/52.png', 'Active', '2022-03-08 21:48:26', '2022-05-30 14:28:01'),
(12, 825, 'Tether', 'Tether', 'USDT', 'tether', '1.002', '2022-05-30 14:26:53', 'https://s2.coinmarketcap.com/static/img/coins/64x64/825.png', 'Active', '2022-03-08 21:48:26', '2022-05-30 14:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manage_coin_currency_history`
--

CREATE TABLE `tbl_manage_coin_currency_history` (
  `id` int(11) NOT NULL,
  `coin_id` int(11) DEFAULT NULL,
  `usd_rate` decimal(10,3) DEFAULT NULL,
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_manage_coin_currency_history`
--

INSERT INTO `tbl_manage_coin_currency_history` (`id`, `coin_id`, `usd_rate`, `entry_time`) VALUES
(112, 1, '0.000', '2022-07-25 13:56:03'),
(113, 1, '21926.000', '2022-07-25 14:46:31'),
(114, 3, '0.000', '2022-07-25 14:46:31'),
(115, 4, '0.000', '2022-07-25 14:46:31'),
(116, 5, '0.000', '2022-07-25 14:46:31'),
(117, 6, '0.000', '2022-07-25 14:46:31'),
(118, 7, '0.000', '2022-07-25 14:46:31'),
(119, 8, '0.000', '2022-07-25 14:46:31'),
(120, 10, '0.000', '2022-07-25 14:46:31'),
(121, 12, '0.000', '2022-07-25 14:46:31'),
(122, 1, '21926.000', '2022-07-25 14:49:57'),
(123, 3, '0.000', '2022-07-25 14:49:57'),
(124, 4, '0.000', '2022-07-25 14:49:57'),
(125, 5, '0.000', '2022-07-25 14:49:57'),
(126, 6, '0.000', '2022-07-25 14:49:57'),
(127, 7, '0.000', '2022-07-25 14:49:57'),
(128, 8, '0.000', '2022-07-25 14:49:57'),
(129, 10, '0.000', '2022-07-25 14:49:57'),
(130, 1, '22064.000', '2022-07-25 15:28:29'),
(131, 3, '1538.360', '2022-07-25 15:28:29'),
(132, 4, '24.730', '2022-07-25 15:28:29'),
(133, 5, '56.590', '2022-07-25 15:28:29'),
(134, 6, '1.000', '2022-07-25 15:28:29'),
(135, 7, '0.065', '2022-07-25 15:28:29'),
(136, 8, '0.065', '2022-07-25 15:28:29'),
(137, 10, '0.347', '2022-07-25 15:28:29'),
(138, 1, '22011.000', '2022-07-25 15:36:46'),
(139, 3, '1534.600', '2022-07-25 15:36:46'),
(140, 4, '24.600', '2022-07-25 15:36:46'),
(141, 5, '56.330', '2022-07-25 15:36:46'),
(142, 6, '0.999', '2022-07-25 15:36:46'),
(143, 7, '0.066', '2022-07-25 15:36:46'),
(144, 8, '0.065', '2022-07-25 15:36:46'),
(145, 10, '0.347', '2022-07-25 15:36:46'),
(146, 1, '22015.000', '2022-07-25 15:38:13'),
(147, 3, '1535.870', '2022-07-25 15:38:13'),
(148, 4, '24.580', '2022-07-25 15:38:13'),
(149, 5, '56.430', '2022-07-25 15:38:13'),
(150, 6, '1.000', '2022-07-25 15:38:13'),
(151, 7, '0.066', '2022-07-25 15:38:13'),
(152, 8, '0.065', '2022-07-25 15:38:13'),
(153, 10, '0.347', '2022-07-25 15:38:13'),
(154, 1, '22016.000', '2022-07-25 15:40:31'),
(155, 3, '1535.840', '2022-07-25 15:40:31'),
(156, 4, '24.580', '2022-07-25 15:40:31'),
(157, 5, '56.460', '2022-07-25 15:40:31'),
(158, 6, '1.001', '2022-07-25 15:40:31'),
(159, 7, '0.066', '2022-07-25 15:40:31'),
(160, 8, '0.065', '2022-07-25 15:40:31'),
(161, 10, '0.347', '2022-07-25 15:40:31'),
(162, 1, '22004.000', '2022-07-27 15:03:23'),
(163, 3, '1535.980', '2022-07-27 15:03:23'),
(164, 5, '56.420', '2022-07-27 15:03:23'),
(165, 6, '1.001', '2022-07-27 15:03:23'),
(166, 8, '0.065', '2022-07-27 15:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manual_pay`
--

CREATE TABLE `tbl_manual_pay` (
  `id` int(11) NOT NULL,
  `pay_type` varchar(100) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_manual_pay`
--

INSERT INTO `tbl_manual_pay` (`id`, `pay_type`, `mode`, `address`, `status`) VALUES
(1, 'BTC', 'btc', '1KWz7sd7rzmJka9dKJULwMg7PA9NEm6gou', 1),
(2, 'Perfect Money', 'pm', 'U22384420', 1),
(3, 'Paypal Address', 'pa', 'wozurwallet@gmail.com', 1),
(4, 'ETH', 'eth', '0xee1aaa2efbd41875a477e8cf41f719cedf069dc2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_master_password`
--

CREATE TABLE `tbl_master_password` (
  `id` int(11) NOT NULL,
  `password` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tran_password` text NOT NULL,
  `master_otp` varchar(200) DEFAULT '12345'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_master_password`
--

INSERT INTO `tbl_master_password` (`id`, `password`, `datetime`, `tran_password`, `master_otp`) VALUES
(1, 'e10adc3949ba59abbe56e057f20f883e', '2018-12-06 17:38:05', '123456\r\n', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matching_bonus_generate`
--

CREATE TABLE `tbl_matching_bonus_generate` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ach_perf_bonus_id` int(11) NOT NULL,
  `bonus_name` varchar(100) DEFAULT NULL,
  `amount` double NOT NULL,
  `game_wallet` double NOT NULL,
  `performance_wallet` double NOT NULL,
  `count_week` int(11) NOT NULL DEFAULT '0',
  `laps_amount` double DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_matching_bonus_generate`
--

INSERT INTO `tbl_matching_bonus_generate` (`id`, `user_id`, `ach_perf_bonus_id`, `bonus_name`, `amount`, `game_wallet`, `performance_wallet`, `count_week`, `laps_amount`, `remark`, `status`, `entry_time`) VALUES
(1, 2, 1, 'RANK 1', 0, 0, 0, 1, 16, 'Not having active topup', 'Active', '2021-11-22 00:00:00'),
(2, 2, 5, 'RANK 5', 315, 0, 315, 2, 0, '', 'Active', '2021-11-29 00:00:00'),
(3, 2, 5, 'RANK 5', 315, 0, 315, 3, 0, '', 'Active', '2021-12-06 00:00:00'),
(4, 2, 5, 'RANK 5', 315, 0, 315, 4, 0, '', 'Active', '2021-12-13 00:00:00'),
(5, 2, 5, 'RANK 5', 315, 0, 315, 5, 0, '', 'Active', '2021-12-20 00:00:00'),
(6, 2, 5, 'RANK 5', 315, 0, 315, 6, 0, '', 'Active', '2021-12-27 00:00:00'),
(7, 9, 1, 'RANK 1', 16, 0, 16, 1, 0, '', 'Active', '2022-03-18 00:00:00'),
(8, 2, 5, 'RANK 5', 315, 0, 315, 7, 0, '', 'Active', '2022-01-03 00:00:00'),
(9, 2, 5, 'RANK 5', 315, 0, 315, 8, 0, '', 'Active', '2022-01-10 00:00:00'),
(10, 2, 5, 'RANK 5', 315, 0, 315, 9, 0, '', 'Active', '2022-01-17 00:00:00'),
(11, 9, 1, 'RANK 1', 16, 0, 16, 2, 0, '', 'Active', '2022-03-25 00:00:00'),
(12, 2, 5, 'RANK 5', 315, 0, 315, 10, 0, '', 'Active', '2022-01-24 00:00:00'),
(13, 2, 5, 'RANK 5', 315, 0, 315, 11, 0, '', 'Active', '2022-01-31 00:00:00'),
(14, 2, 5, 'RANK 5', 315, 0, 315, 12, 0, '', 'Active', '2022-02-07 00:00:00'),
(15, 2, 5, 'RANK 5', 315, 0, 315, 13, 0, '', 'Active', '2022-02-14 00:00:00'),
(16, 10, 1, 'RANK 1', 16, 0, 16, 1, 0, '', 'Active', '2020-04-01 00:00:00'),
(17, 10, 1, 'RANK 1', 16, 0, 16, 2, 0, '', 'Active', '2020-04-08 00:00:00'),
(18, 10, 1, 'RANK 1', 16, 0, 16, 3, 0, '', 'Active', '2020-04-15 00:00:00'),
(19, 10, 1, 'RANK 1', 16, 0, 16, 4, 0, '', 'Active', '2020-04-22 00:00:00'),
(20, 10, 1, 'RANK 1', 16, 0, 16, 5, 0, '', 'Active', '2020-04-29 00:00:00'),
(21, 10, 2, 'RANK 2', 19, 0, 19, 6, 0, '', 'Active', '2020-05-06 00:00:00'),
(22, 10, 2, 'RANK 2', 19, 0, 19, 7, 0, '', 'Active', '2020-05-13 00:00:00'),
(23, 10, 2, 'RANK 2', 19, 0, 19, 8, 0, '', 'Active', '2020-05-20 00:00:00'),
(24, 10, 3, 'RANK 3', 50, 0, 50, 9, 0, '', 'Active', '2020-05-27 00:00:00'),
(25, 10, 3, 'RANK 3', 50, 0, 50, 10, 0, '', 'Active', '2020-06-03 00:00:00'),
(26, 10, 3, 'RANK 3', 50, 0, 50, 11, 0, '', 'Active', '2020-06-10 00:00:00'),
(27, 10, 3, 'RANK 3', 50, 0, 50, 12, 0, '', 'Active', '2020-06-17 00:00:00'),
(28, 10, 6, 'RANK 6', 710, 0, 710, 13, 0, '', 'Active', '2020-06-24 00:00:00'),
(29, 10, 6, 'RANK 6', 710, 0, 710, 14, 0, '', 'Active', '2020-07-01 00:00:00'),
(30, 10, 6, 'RANK 6', 710, 0, 710, 15, 0, '', 'Active', '2020-07-08 00:00:00'),
(31, 10, 6, 'RANK 6', 710, 0, 710, 16, 0, '', 'Active', '2020-07-15 00:00:00'),
(32, 10, 6, 'RANK 6', 710, 0, 710, 17, 0, '', 'Active', '2020-07-22 00:00:00'),
(33, 10, 6, 'RANK 6', 710, 0, 710, 18, 0, '', 'Active', '2020-07-29 00:00:00'),
(34, 10, 6, 'RANK 6', 710, 0, 710, 19, 0, '', 'Active', '2020-08-05 00:00:00'),
(35, 10, 6, 'RANK 6', 710, 0, 710, 20, 0, '', 'Active', '2020-08-12 00:00:00'),
(36, 10, 6, 'RANK 6', 710, 0, 710, 21, 0, '', 'Active', '2020-08-19 00:00:00'),
(37, 10, 6, 'RANK 6', 710, 0, 710, 22, 0, '', 'Active', '2020-08-26 00:00:00'),
(38, 10, 6, 'RANK 6', 710, 0, 710, 23, 0, '', 'Active', '2020-09-02 00:00:00'),
(39, 10, 6, 'RANK 6', 710, 0, 710, 24, 0, '', 'Active', '2020-09-09 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matching_bonus_income`
--

CREATE TABLE `tbl_matching_bonus_income` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'tbl_users(id)',
  `amount` double DEFAULT '0',
  `net_amount` double DEFAULT '0',
  `tax_amount` double DEFAULT '0',
  `reward_id` int(11) DEFAULT NULL,
  `roi` double DEFAULT '0',
  `duration` int(11) DEFAULT NULL COMMENT 'in hours',
  `amt_pin` double DEFAULT '0',
  `laps_amount` double DEFAULT '0',
  `capping_amount` double DEFAULT '0',
  `topup_wallet_amount` double DEFAULT '0',
  `working_wallet_amount` double DEFAULT '0',
  `left_bv` double DEFAULT NULL,
  `right_bv` double DEFAULT NULL,
  `laps_bv` double DEFAULT NULL,
  `match_bv` double DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  `status` enum('Paid','Unpaid') DEFAULT 'Unpaid' COMMENT 'Paid,Unpaid',
  `binary_status` int(11) DEFAULT '0',
  `pair_no` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT '0' COMMENT 'tbl_product(id)',
  `invoice_id` varchar(50) DEFAULT NULL,
  `withdraw_date` datetime DEFAULT NULL,
  `left_bv_carry` double DEFAULT NULL,
  `right_bv_carry` double DEFAULT NULL,
  `left_bv_before` double DEFAULT NULL,
  `right_bv_before` double DEFAULT NULL,
  `payout_no` int(11) DEFAULT '0',
  `total_binary_count` int(11) DEFAULT '0',
  `withdrawl_payout_no` int(11) DEFAULT NULL,
  `rank` varchar(200) DEFAULT NULL,
  `percentage` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_roi_entry_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matching_bonus_settings`
--

CREATE TABLE `tbl_matching_bonus_settings` (
  `id` int(11) NOT NULL,
  `original_matching` double NOT NULL DEFAULT '0',
  `bonus_name` varchar(150) NOT NULL,
  `left_bv` double NOT NULL DEFAULT '0',
  `right_bv` double NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `date_diff` int(11) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT '12',
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_matching_bonus_settings`
--

INSERT INTO `tbl_matching_bonus_settings` (`id`, `original_matching`, `bonus_name`, `left_bv`, `right_bv`, `amount`, `date_diff`, `duration`, `status`) VALUES
(1, 1000, 'RANK 1', 1000, 1000, 16, 7, 12, 'Active'),
(2, 2000, 'RANK 2', 3000, 3000, 19, 7, 12, 'Active'),
(3, 5000, 'RANK 3', 8000, 8000, 50, 7, 12, 'Active'),
(4, 10000, 'RANK 4', 18000, 18000, 110, 7, 12, 'Active'),
(5, 25000, 'RANK 5', 43000, 43000, 315, 7, 12, 'Active'),
(6, 50000, 'RANK 6', 93000, 93000, 710, 7, 12, 'Active'),
(7, 100000, 'RANK 7', 193000, 193000, 1500, 7, 12, 'Active'),
(8, 250000, 'RANK 8', 443000, 443000, 4000, 7, 12, 'Active'),
(9, 500000, 'RANK 9', 943000, 943000, 8400, 7, 12, 'Active'),
(10, 1000000, 'RANK 10', 1943000, 1943000, 21000, 7, 12, 'Active'),
(11, 10000000, 'RANK 11', 11943000, 11943000, 250000, 7, 12, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_meeting`
--

CREATE TABLE `tbl_meeting` (
  `id` int(11) NOT NULL,
  `ndate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sub` varchar(100) DEFAULT '',
  `text` text,
  `expdate` varchar(100) DEFAULT '',
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_message`
--

CREATE TABLE `tbl_message` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `email` varchar(100) DEFAULT '',
  `text` text,
  `attachment` text,
  `status` int(11) DEFAULT '0',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_metadata`
--

CREATE TABLE `tbl_metadata` (
  `sr_no` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_names`
--

CREATE TABLE `tbl_names` (
  `sr_no` int(11) NOT NULL,
  `subject` text,
  `text` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `entry_time` datetime DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_names`
--

INSERT INTO `tbl_names` (`sr_no`, `subject`, `text`, `status`, `entry_time`, `uname`) VALUES
(1, '3qhx4IneOQ==', 1, '1', '2021-12-20 19:47:18', NULL),
(2, 'iP59t9qOOikhc88uWbRrw9UUF+QwaZG3aoxdJAZlio2ZCEyJYmpnMQ==', 1, '1', '2022-02-10 14:25:15', NULL),
(3, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-10 16:08:03', NULL),
(4, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-10 16:10:22', NULL),
(5, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-10 16:35:20', NULL),
(6, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-10 16:36:15', NULL),
(7, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-10 16:36:49', NULL),
(8, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-10 16:37:24', NULL),
(9, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-11 15:33:04', NULL),
(10, '2ql354nc', 1, '1', '2022-02-11 15:35:33', NULL),
(11, '2q1x547ZPw==', 1, '1', '2022-02-11 15:39:27', NULL),
(12, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-18 20:27:43', NULL),
(13, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-18 20:32:12', NULL),
(14, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-18 20:32:52', NULL),
(15, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-18 20:33:26', NULL),
(16, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-25 15:47:03', NULL),
(17, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-25 15:47:44', NULL),
(18, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-25 15:48:37', NULL),
(19, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-25 15:49:21', NULL),
(20, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-25 15:49:57', NULL),
(21, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-25 15:50:32', NULL),
(22, '2ql354nc', 1, '1', '2022-02-25 15:52:14', NULL),
(23, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-25 20:08:58', NULL),
(24, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-25 20:39:21', NULL),
(25, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-02-25 21:33:42', NULL),
(26, '2ql354nc', 1, '1', '2022-02-25 21:48:53', NULL),
(27, '2ql354nc', 1, '1', '2022-02-25 21:52:44', NULL),
(28, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-01 20:06:10', NULL),
(29, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-04 22:19:58', NULL),
(30, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-04 22:20:30', NULL),
(31, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-04 22:21:05', NULL),
(32, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-04 22:21:37', NULL),
(33, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-04 22:22:16', NULL),
(34, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-04 22:22:49', NULL),
(35, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-04 22:24:00', NULL),
(36, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-04 22:24:27', NULL),
(37, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-04 22:46:14', NULL),
(38, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-04 23:30:15', NULL),
(39, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-04 23:31:59', NULL),
(40, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-08 18:35:59', NULL),
(41, '06Im4oXbPS57JcIpXuJrz9wdFOIxasexPtdddVprhorIChzTZj42Zw==', 1, '1', '2022-03-08 18:36:44', NULL),
(42, '3K1x5Irf', 1, '1', '2022-03-30 17:17:53', NULL),
(43, 'jP8j', 1, '1', '2022-03-30 17:21:23', NULL),
(44, '0v4llYXYOiorL8JYXbZrzYkVYOQyPJSwaoBacFdlhv7PCx2CMT1nY9QXsuaQSoYIgGEqYGKCE6CGJqWWXcV8xQ==', 1, '1', '2022-03-30 17:32:02', NULL),
(45, '0v4llYXYOiorL8JYXbZrzYkVYOQyPJSwaoBacFdlhv7PCx2CMT1nY9QXsuaQSoYIgGEqYGKCE6CGJqWWXcV8xQ==', 1, '1', '2022-03-31 22:32:11', NULL),
(46, '', 1, '1', '2022-05-06 13:24:07', NULL),
(47, '2ql354nc', 1, '1', '2022-05-09 16:40:07', NULL),
(48, '2ql354ncOg==', 1, '1', '2022-05-10 15:08:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_names_memo`
--

CREATE TABLE `tbl_names_memo` (
  `sr_no` int(11) NOT NULL,
  `subject` text,
  `text` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `entry_time` datetime DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `name_type` enum('C','N') DEFAULT 'C'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_names_memo`
--

INSERT INTO `tbl_names_memo` (`sr_no`, `subject`, `text`, `status`, `entry_time`, `uname`, `name_type`) VALUES
(1, '9eaF9267289F4166e1A6ac236507465D4572cf31020f028841e40b5142e8eF23', NULL, '1', NULL, NULL, 'C'),
(2, '89b19113b2977e640950b5a2bb729850346c4eb5', NULL, '1', NULL, NULL, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `ndate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sub` varchar(100) DEFAULT '',
  `text` text,
  `expdate` varchar(100) DEFAULT '',
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`id`, `ndate`, `sub`, `text`, `expdate`, `status`, `entry_time`) VALUES
(1, '2021-10-11 15:15:05', 'testing Newss', 'testing news', '', 'Active', '2021-10-12 00:15:05'),
(2, '2021-11-11 09:01:02', 'Xento-Corp', 'Welcome to Xento-Corp...!', '', 'Active', '2021-11-11 18:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pair_dtl`
--

CREATE TABLE `tbl_pair_dtl` (
  `SRNO` int(10) NOT NULL,
  `ID` int(11) DEFAULT NULL,
  `R_ID` int(11) DEFAULT NULL,
  `PLEFT` int(11) DEFAULT NULL,
  `PRIGHT` int(11) DEFAULT NULL,
  `ENTRY_TIME` timestamp NULL DEFAULT NULL,
  `AMOUNT` decimal(10,2) DEFAULT NULL,
  `LEVEL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payout_history`
--

CREATE TABLE `tbl_payout_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'tbl_users(id)',
  `amount` double DEFAULT '0',
  `net_amount` double DEFAULT '0',
  `tax_amount` double DEFAULT '0',
  `amt_pin` double DEFAULT '0',
  `laps_amount` double DEFAULT '0',
  `capping_amount` double DEFAULT '0',
  `left_bv` double DEFAULT NULL,
  `right_bv` double DEFAULT NULL,
  `laps_bv` double DEFAULT NULL,
  `match_bv` double DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  `status` enum('Paid','Unpaid') DEFAULT 'Unpaid' COMMENT 'Paid,Unpaid',
  `pair_no` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT '1' COMMENT 'tbl_product(id)',
  `withdraw_date` datetime DEFAULT NULL,
  `left_bv_carry` double DEFAULT NULL,
  `right_bv_carry` double DEFAULT NULL,
  `left_bv_before` double DEFAULT NULL,
  `right_bv_before` double DEFAULT NULL,
  `payout_no` int(11) DEFAULT '0',
  `withdrawl_payout_no` int(11) DEFAULT NULL,
  `rank` varchar(200) DEFAULT NULL,
  `percentage` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payout_history`
--

INSERT INTO `tbl_payout_history` (`id`, `user_id`, `amount`, `net_amount`, `tax_amount`, `amt_pin`, `laps_amount`, `capping_amount`, `left_bv`, `right_bv`, `laps_bv`, `match_bv`, `entry_time`, `remark`, `status`, `pair_no`, `product_id`, `withdraw_date`, `left_bv_carry`, `right_bv_carry`, `left_bv_before`, `right_bv_before`, `payout_no`, `withdrawl_payout_no`, `rank`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 0, 0, 0, 25, 25, 5000, 250, 0, 250, '2022-03-15 20:48:27', 'Income lapsed', 'Unpaid', NULL, 1, NULL, 4750, 0, 5000, 250, 1, NULL, NULL, 10, '2022-03-15 11:48:27', NULL),
(2, 2, 2000, 2000, 0, 0, 2975, 2000, 49750, 81000, 0, 49750, '2022-03-22 15:07:15', '', 'Unpaid', NULL, 1, NULL, 0, 31250, 49750, 81000, 2, NULL, NULL, 10, '2022-03-22 06:07:15', NULL),
(3, 2, 0, 0, 0, 0, 3000, 3000, 30000, 82249, 0, 30000, '2022-03-22 21:58:16', 'Income lapsed', 'Unpaid', NULL, 1, NULL, 0, 52249, 30000, 82249, 3, NULL, NULL, 10, '2022-03-22 12:58:16', NULL),
(4, 3, 2499.9, 2499.9, 0, 0, 0, 0, 24999, 26000, 0, 24999, '2022-03-22 21:58:16', '', 'Unpaid', NULL, 1, NULL, 0, 1001, 24999, 26000, 3, NULL, NULL, 10, '2022-03-22 12:58:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payout_history_for_pb`
--

CREATE TABLE `tbl_payout_history_for_pb` (
  `payout_id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `amount` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `amt_pin` varchar(10) DEFAULT '',
  `left_bv` decimal(10,2) DEFAULT '0.00',
  `right_bv` decimal(10,2) DEFAULT '0.00',
  `laps_bv` decimal(10,2) DEFAULT '0.00',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  `status` enum('Paid','Unpaid') DEFAULT 'Unpaid',
  `plan_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payout_history_for_royalty`
--

CREATE TABLE `tbl_payout_history_for_royalty` (
  `payout_id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `amount` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `amt_pin` varchar(10) DEFAULT '',
  `left_bv` decimal(10,2) DEFAULT '0.00',
  `right_bv` decimal(10,2) DEFAULT '0.00',
  `laps_bv` decimal(10,2) DEFAULT '0.00',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text,
  `status` enum('Paid','Unpaid') DEFAULT 'Unpaid',
  `plan_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pay_wallet`
--

CREATE TABLE `tbl_pay_wallet` (
  `pay_id` int(100) NOT NULL,
  `invoice_id` varchar(255) NOT NULL,
  `to_user_id` int(100) DEFAULT '0',
  `from_user_id` int(100) DEFAULT '0',
  `amount` double DEFAULT '0',
  `plan_id` int(11) DEFAULT '0',
  `entry_time` datetime NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Inactive',
  `top_up_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pdc_income`
--

CREATE TABLE `tbl_pdc_income` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '250.00',
  `tax_amount` decimal(10,2) NOT NULL,
  `amt_pin` decimal(10,2) NOT NULL,
  `level` int(11) NOT NULL,
  `toUserId` varchar(100) NOT NULL,
  `fromUserId` varchar(100) NOT NULL,
  `receive_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT '',
  `payment_status` enum('Unpaid','Paid') NOT NULL DEFAULT 'Unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perfectmoney_member`
--

CREATE TABLE `tbl_perfectmoney_member` (
  `memberID` int(11) NOT NULL,
  `member` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `passkey` varchar(255) NOT NULL,
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_perfectmoney_member`
--

INSERT INTO `tbl_perfectmoney_member` (`memberID`, `member`, `receiver`, `passkey`, `entry_time`) VALUES
(1, '4929911', 'U30291481', 'Coinpay@2021', '2021-09-14 15:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_phases`
--

CREATE TABLE `tbl_phases` (
  `srno` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `to_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `percentage` double DEFAULT NULL,
  `sold_percentage` double DEFAULT NULL,
  `total_supply` double DEFAULT NULL,
  `sold_supply` double DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `usd_rate` double DEFAULT NULL,
  `min_coin` int(11) DEFAULT NULL,
  `bonus_percentage` double DEFAULT NULL,
  `status` enum('Available','Notavailable','SoldOut','Expired') DEFAULT 'Available',
  `entry_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_phases`
--

INSERT INTO `tbl_phases` (`srno`, `name`, `from_date`, `to_date`, `percentage`, `sold_percentage`, `total_supply`, `sold_supply`, `days`, `usd_rate`, `min_coin`, `bonus_percentage`, `status`, `entry_time`, `created_at`, `updated_at`) VALUES
(1, 'Seed Sale', '2021-03-29 00:00:05', '2021-03-30 11:59:00', 0, 0, 100000000, 100000000, 5, 0.012, 100, 0, 'SoldOut', '2021-03-18 11:31:03', '2021-03-18 11:36:42', '2021-09-16 15:34:37'),
(2, 'Pvt Sale\n', '2021-03-30 12:00:05', '2021-03-30 12:30:05', 0, 0, 50000000, 50000000, 5, 0.024, 100, 0, 'SoldOut', '2021-03-18 11:31:03', '2021-03-18 11:36:49', '2021-09-16 15:34:37'),
(3, 'Pvt Sale Round 2\n', '2021-03-30 12:00:05', '2021-04-04 23:59:00', 0, 0, 50000000, 5069444.444444444, 5, 0.036, 100, 0, 'Available', '2021-03-18 11:31:03', '2021-03-18 11:36:52', '2021-09-16 15:34:37'),
(4, 'Presale ( package ) \n', '2021-04-05 00:00:05', '2021-04-03 23:59:00', 0, 0, 50000000, 0, 5, 0.048, 100, 0, 'Available', '2021-03-18 11:31:03', '2021-03-18 11:36:54', '2021-09-07 22:59:30'),
(5, 'IDO to staking round 1 ', '2021-04-10 00:00:05', '2021-04-20 23:59:00', 0, 0, 50000000, 0, 5, 0.12, 100, 0, 'Notavailable', '2021-03-18 11:31:03', '2021-03-18 11:36:58', '2021-03-30 13:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinhis`
--

CREATE TABLE `tbl_pinhis` (
  `id` int(11) NOT NULL,
  `toUserId` varchar(20) DEFAULT '',
  `fromUserId` varchar(20) DEFAULT '',
  `noofpin` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment` varchar(100) DEFAULT 'Cash',
  `remark` text,
  `po_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pinhis_r`
--

CREATE TABLE `tbl_pinhis_r` (
  `id` int(11) NOT NULL,
  `toUserId` varchar(20) DEFAULT NULL,
  `fromUserId` varchar(20) DEFAULT NULL,
  `noofpin` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `po_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pins`
--

CREATE TABLE `tbl_pins` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `product_id` varchar(100) DEFAULT '',
  `pin` varchar(100) DEFAULT '',
  `status` enum('Active','Inactive','Deleted') DEFAULT 'Active',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `used_by` int(11) DEFAULT '0',
  `tdate` datetime NOT NULL,
  `used_date` datetime NOT NULL,
  `variation_id` int(11) DEFAULT NULL,
  `pinhis_id` int(11) DEFAULT '0',
  `payment` varchar(100) DEFAULT '',
  `remark` text,
  `barcode` varchar(255) DEFAULT '',
  `po_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pins_old`
--

CREATE TABLE `tbl_pins_old` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `product_id` varchar(100) DEFAULT '',
  `pin` varchar(100) DEFAULT '',
  `status` enum('Active','Inactive','Deleted') DEFAULT 'Active',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tdate` datetime DEFAULT '0000-00-00 00:00:00',
  `used_by` int(11) DEFAULT '0',
  `used_date` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pins_r`
--

CREATE TABLE `tbl_pins_r` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `status` enum('Active','Inactive','Deleted') DEFAULT 'Active',
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tdate` datetime DEFAULT '0000-00-00 00:00:00',
  `used_by` int(11) DEFAULT '0',
  `used_date` datetime DEFAULT '0000-00-00 00:00:00',
  `from_id` int(11) DEFAULT '0',
  `stat` enum('0','1') DEFAULT '1',
  `pin_user` varchar(255) NOT NULL,
  `po_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pin_gen`
--

CREATE TABLE `tbl_pin_gen` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) DEFAULT '0',
  `noofpin` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `amount` double DEFAULT '0',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment` varchar(100) DEFAULT 'Cash',
  `remark` text,
  `po_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pin_request`
--

CREATE TABLE `tbl_pin_request` (
  `pin_request_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT '0',
  `product_price` int(11) DEFAULT '0',
  `request_quantity` int(11) DEFAULT '0',
  `total_price` int(20) DEFAULT '0',
  `amount_deposited` int(20) DEFAULT '0',
  `bank_name` varchar(255) DEFAULT '',
  `ref_no` varchar(255) DEFAULT '',
  `request_date` date DEFAULT '0000-00-00',
  `approve_quantity` int(11) DEFAULT '0',
  `approve_date` date DEFAULT '0000-00-00',
  `price_after_approve` int(20) DEFAULT '0',
  `entry_time` datetime DEFAULT '0000-00-00 00:00:00',
  `status` enum('Request','Approve','Reject') DEFAULT 'Request'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_plan`
--

CREATE TABLE `tbl_plan` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT '',
  `cost` decimal(10,2) DEFAULT '0.00',
  `bvalue` decimal(10,2) DEFAULT '0.00',
  `direct_income` decimal(10,2) DEFAULT '0.00',
  `percentage` decimal(10,2) DEFAULT '0.00',
  `duration` int(11) DEFAULT '0',
  `capping` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_point_value`
--

CREATE TABLE `tbl_point_value` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_point_value`
--

INSERT INTO `tbl_point_value` (`id`, `amount`) VALUES
(1, '1.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup`
--

CREATE TABLE `tbl_popup` (
  `srno` int(11) NOT NULL,
  `sub` varchar(100) DEFAULT '',
  `text` text,
  `attachment` varchar(1000) DEFAULT '0',
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `created_by` int(11) NOT NULL,
  `edited_by` int(11) NOT NULL,
  `entry_time` datetime DEFAULT NULL,
  `expdate` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_power`
--

CREATE TABLE `tbl_power` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `power_from_id` int(11) NOT NULL,
  `position` enum('1','2') NOT NULL,
  `l_bv` double(10,2) NOT NULL,
  `r_bv` double(10,2) NOT NULL,
  `power_lbv` double(10,2) NOT NULL,
  `power_rbv` double(10,2) NOT NULL,
  `status` enum('add','remove') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_power_bv`
--

CREATE TABLE `tbl_power_bv` (
  `srno` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `position` int(11) DEFAULT '0',
  `power_bv` int(11) DEFAULT NULL,
  `type` enum('1','2','3','4') DEFAULT '1' COMMENT '1-add power above Id,2 -add power upto admin,3-remove power above id,4-removepower upto admin',
  `before_lbv` double DEFAULT NULL,
  `before_rbv` double DEFAULT NULL,
  `after_lbv` double DEFAULT NULL,
  `after_rbv` double DEFAULT NULL,
  `before_curr_lbv` double DEFAULT NULL,
  `before_curr_rbv` double DEFAULT NULL,
  `after_curr_lbv` double DEFAULT NULL,
  `after_curr_rbv` double DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT NULL,
  `entry_status` enum('Add','Remove') DEFAULT 'Add',
  `cron_status` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT '',
  `package_type` varchar(100) DEFAULT NULL,
  `name_rupee` varchar(255) DEFAULT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `cost` double DEFAULT '0',
  `bvalue` double DEFAULT '0',
  `direct_income` double DEFAULT '0',
  `hash_rate` enum('KH','MH','GH','TH','PH') DEFAULT 'KH',
  `min_hash` double DEFAULT '0',
  `max_hash` double DEFAULT '0',
  `roi` double DEFAULT '0',
  `duration` int(11) DEFAULT '0' COMMENT 'In Days',
  `duration_month` int(100) DEFAULT '0',
  `capping` int(11) DEFAULT '0',
  `binary` double DEFAULT '0',
  `date_diff` int(11) DEFAULT '1' COMMENT '1-for daily,7-for weakly,30 monthly',
  `status` enum('Active','Inactive','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,Inactive,Deleted',
  `currency_code` varchar(50) DEFAULT NULL,
  `management_fee` double DEFAULT '0',
  `consumption_charge` double DEFAULT '0',
  `conversion_rate` double DEFAULT '0',
  `user_show_status` enum('Active','Inactive') DEFAULT 'Active',
  `ref_product_id` int(11) NOT NULL DEFAULT '0',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `roi_type` enum('Daily','One Time') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `package_type`, `name_rupee`, `package_name`, `cost`, `bvalue`, `direct_income`, `hash_rate`, `min_hash`, `max_hash`, `roi`, `duration`, `duration_month`, `capping`, `binary`, `date_diff`, `status`, `currency_code`, `management_fee`, `consumption_charge`, `conversion_rate`, `user_show_status`, `ref_product_id`, `entry_time`, `updated_at`, `roi_type`) VALUES
(1, '100$-500$', 'Mining', '', '100$-500$', 1, 0, 0, 'TH', 100, 100000, 5, 30, 0, 0, 0, 7, 'Active', 'BTC', 0, 0, 0, 'Active', 0, '2018-07-28 13:02:55', '2022-07-27 11:29:42', 'Daily'),
(2, '150$-700$', 'Mining', '', '150$-700$', 1, 0, 0, 'TH', 250, 200000, 125, 15, 0, 0, 0, 7, 'Active', 'BTC', 0, 0, 0, 'Active', 0, '2018-07-28 13:02:55', '2022-07-27 09:30:56', 'One Time'),
(3, '100$-500$', 'Trading', '', '100$-500$', 1, 0, 0, 'KH', 300, 120000, 8, 15, 0, 0, 0, 7, 'Active', NULL, 0, 0, 0, 'Active', 0, '2022-07-25 14:54:39', '2022-07-27 09:30:33', 'Daily'),
(4, '150$-700$', 'Trading', '', '150$-700$', 1, 0, 0, 'TH', 120, 90000, 145, 25, 0, 0, 0, 7, 'Active', 'BTC', 0, 0, 0, 'Active', 0, '2018-07-28 13:02:55', '2022-07-27 09:31:08', 'One Time'),
(5, '100$-500$', 'ICO', '', '100$-500$', 1, 0, 0, 'TH', 100, 150000, 16, 7, 0, 0, 0, 7, 'Active', 'BTC', 0, 0, 0, 'Active', 0, '2018-07-28 13:02:55', '2022-07-27 09:30:39', 'Daily'),
(6, '150$-700$', 'ICO', '', '150$-700$', 1, 0, 0, 'TH', 240, 150000, 170, 35, 0, 0, 0, 1, 'Active', 'BTC', 0, 0, 0, 'Active', 0, '2022-07-21 16:47:43', '2022-07-27 09:31:20', 'One Time');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product1`
--

CREATE TABLE `tbl_product1` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT '',
  `package_type` varchar(100) DEFAULT NULL,
  `name_rupee` varchar(255) DEFAULT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `cost` double DEFAULT '0',
  `bvalue` double DEFAULT '0',
  `direct_income` double DEFAULT '0',
  `hash_rate` enum('KH','MH','GH','TH','PH') DEFAULT 'KH',
  `min_hash` double DEFAULT '0',
  `max_hash` double DEFAULT '0',
  `roi` double DEFAULT '0',
  `duration` int(11) DEFAULT '0' COMMENT 'In Days',
  `duration_month` int(100) DEFAULT '0',
  `capping` int(11) DEFAULT '0',
  `binary` double DEFAULT '0',
  `date_diff` int(11) DEFAULT '1' COMMENT '1-for daily,7-for weakly,30 monthly',
  `status` enum('Active','Inactive','Deleted') NOT NULL DEFAULT 'Active' COMMENT 'Active,Inactive,Deleted',
  `currency_code` varchar(50) DEFAULT NULL,
  `management_fee` double DEFAULT '0',
  `consumption_charge` double DEFAULT '0',
  `conversion_rate` double DEFAULT '0',
  `user_show_status` enum('Active','Inactive') DEFAULT 'Active',
  `ref_product_id` int(11) NOT NULL DEFAULT '0',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product1`
--

INSERT INTO `tbl_product1` (`id`, `name`, `package_type`, `name_rupee`, `package_name`, `cost`, `bvalue`, `direct_income`, `hash_rate`, `min_hash`, `max_hash`, `roi`, `duration`, `duration_month`, `capping`, `binary`, `date_diff`, `status`, `currency_code`, `management_fee`, `consumption_charge`, `conversion_rate`, `user_show_status`, `ref_product_id`, `entry_time`, `updated_at`) VALUES
(1, '$1', 'Basic', '', 'Package 1', 1, 0, 10, 'TH', 1, 100000, 0, 0, 0, 2000, 10, 1, 'Active', 'BTC', 20, 12, 36, 'Active', 0, '2018-07-28 13:02:55', '2020-02-21 07:59:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_ecommerce`
--

CREATE TABLE `tbl_product_ecommerce` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `sub_category_id` int(11) NOT NULL DEFAULT '0',
  `submenu_variation` int(11) NOT NULL DEFAULT '0',
  `tag` text,
  `name` varchar(500) DEFAULT '',
  `cost` decimal(10,2) DEFAULT '0.00',
  `description` text,
  `country_id` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `brand_name` text,
  `manufacturer` varchar(255) DEFAULT NULL,
  `mpn` varchar(255) DEFAULT NULL,
  `variation` enum('No','Size','Color','Pattern') NOT NULL DEFAULT 'No',
  `status_product` enum('Active','Inactive') DEFAULT 'Active' COMMENT 'Active,Inactive',
  `admin_status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `admin_status_changed_remark` text,
  `admin_status_changed_date` timestamp NULL DEFAULT NULL,
  `seller_user_id` int(11) DEFAULT NULL,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bvalue` decimal(10,2) DEFAULT '0.00',
  `mrp` decimal(10,2) DEFAULT '0.00',
  `gst` decimal(10,2) DEFAULT '0.00',
  `purchase_cost` decimal(10,2) DEFAULT '0.00',
  `direct_income` decimal(10,2) DEFAULT '0.00',
  `percentage` decimal(10,2) DEFAULT '0.00',
  `roi` double DEFAULT NULL,
  `duration` int(11) DEFAULT '0',
  `date_diff` int(11) DEFAULT NULL,
  `capping` int(11) DEFAULT '0',
  `type` enum('Purchase','Repurchase','Registration','Ecommerce') DEFAULT 'Ecommerce',
  `order_by` int(11) DEFAULT '0',
  `hsn_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `qty` int(11) NOT NULL DEFAULT '0',
  `qty_minus` int(11) NOT NULL DEFAULT '0',
  `coupon` double(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_history`
--

CREATE TABLE `tbl_product_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT '0',
  `name` varchar(500) DEFAULT '',
  `cost` decimal(10,2) DEFAULT '0.00',
  `bvalue` decimal(10,2) DEFAULT '0.00',
  `direct_income` decimal(10,2) DEFAULT '0.00',
  `percentage` decimal(10,2) DEFAULT '0.00',
  `duration` int(11) DEFAULT '0',
  `capping` int(11) DEFAULT '0',
  `change_time` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_ico`
--

CREATE TABLE `tbl_product_ico` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT '',
  `cost` decimal(10,2) DEFAULT '0.00',
  `bvalue` decimal(10,2) DEFAULT '0.00',
  `direct_income` decimal(10,2) DEFAULT '0.00',
  `roi` double DEFAULT '0',
  `duration` int(11) DEFAULT '0',
  `capping` int(11) DEFAULT '0',
  `binary` decimal(10,2) DEFAULT '10.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_old`
--

CREATE TABLE `tbl_product_old` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT '',
  `cost` decimal(10,2) DEFAULT '0.00',
  `bvalue` decimal(10,2) DEFAULT '0.00',
  `direct_income` decimal(10,2) DEFAULT '0.00',
  `percentage` decimal(10,2) DEFAULT '0.00',
  `duration` int(11) DEFAULT '0',
  `capping` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_pdc`
--

CREATE TABLE `tbl_product_pdc` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT '',
  `cost` decimal(10,2) DEFAULT '0.00',
  `bvalue` decimal(10,2) DEFAULT '0.00',
  `direct_income` decimal(10,2) DEFAULT '0.00',
  `percentage` decimal(10,2) DEFAULT '0.00',
  `duration` int(11) DEFAULT '0',
  `capping` int(11) DEFAULT '0',
  `qty_package` bigint(20) NOT NULL,
  `gift_status` tinyint(5) NOT NULL DEFAULT '0',
  `transfer_status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_variation_details`
--

CREATE TABLE `tbl_product_variation_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variation` enum('Size','Color','Pattern') DEFAULT NULL,
  `variation_value` varchar(255) DEFAULT NULL,
  `variation_mrp_cost` double NOT NULL DEFAULT '0',
  `variation_price` double NOT NULL DEFAULT '0',
  `status` enum('Active','Inactive') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_settings`
--

CREATE TABLE `tbl_project_settings` (
  `id` int(11) NOT NULL,
  `project_name` varchar(49) NOT NULL,
  `coin_name` varchar(500) DEFAULT NULL,
  `coin_rate` int(11) NOT NULL DEFAULT '2',
  `email` varchar(49) NOT NULL,
  `domain_name` varchar(49) NOT NULL,
  `network_type` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `exchange_btc_transaction_fees` double DEFAULT '0.25',
  `exchange_coin_transaction_fees` double DEFAULT '0.25',
  `withdraw_min_usd` double DEFAULT '0',
  `withdraw_btc_transaction_fee` double DEFAULT '0',
  `withdraw_coin_transaction_fee` double DEFAULT '0',
  `max_supply` double DEFAULT '0',
  `no_of_confirmation` int(50) DEFAULT '0',
  `registation_plan` enum('level','binary') DEFAULT 'level',
  `level_plan` enum('on','off') DEFAULT 'off',
  `binary_plan` enum('on','off') DEFAULT 'on',
  `direct_plan` enum('on','off') DEFAULT 'off',
  `leadership_plan` enum('on','off') DEFAULT 'off',
  `extra` int(11) DEFAULT '0',
  `auto_withdrawal_status` enum('on','off') NOT NULL DEFAULT 'off' COMMENT 'on,off',
  `auto_withdrawal_limit` int(11) DEFAULT NULL,
  `USD-to-INR` decimal(10,0) DEFAULT '0',
  `matrix_value` varchar(255) DEFAULT '',
  `level_show` int(100) DEFAULT '0',
  `otp_status` enum('on','off') DEFAULT 'off',
  `sms_status` int(11) NOT NULL DEFAULT '0',
  `mail_status` enum('on','off') NOT NULL DEFAULT 'on',
  `confirm_transaction_status` int(11) NOT NULL DEFAULT '0',
  `copyright_at` int(10) NOT NULL,
  `app_link` varchar(250) DEFAULT NULL,
  `bulk_entry_cron_status` int(11) DEFAULT '0' COMMENT '0- not running, 1- running',
  `rank_assign_cron_status` int(11) NOT NULL DEFAULT '0' COMMENT '0- not running, 1- running',
  `transfer_cron_status` int(11) NOT NULL DEFAULT '0',
  `flight_api_token` text,
  `ico_status` enum('on','off') NOT NULL DEFAULT 'off' COMMENT 'Token on off status',
  `ico_admin_error_msg` varchar(200) DEFAULT NULL,
  `working_percentage` varchar(20) DEFAULT NULL,
  `purchase_percentage` varchar(20) DEFAULT NULL,
  `withdraw_status` enum('on','off') DEFAULT 'on' COMMENT 'on,off',
  `withdraw_method` enum('C','N') DEFAULT 'C' COMMENT 'C-Coinpay,N-Node',
  `withdraw_off_msg` varchar(250) DEFAULT NULL,
  `withdraw_day` varchar(20) DEFAULT NULL,
  `withdraw_start_time` int(11) DEFAULT NULL,
  `withdraw_stop_time` int(11) DEFAULT NULL,
  `admin_login_status_on_off` enum('on','off') DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_project_settings`
--

INSERT INTO `tbl_project_settings` (`id`, `project_name`, `coin_name`, `coin_rate`, `email`, `domain_name`, `network_type`, `status`, `exchange_btc_transaction_fees`, `exchange_coin_transaction_fees`, `withdraw_min_usd`, `withdraw_btc_transaction_fee`, `withdraw_coin_transaction_fee`, `max_supply`, `no_of_confirmation`, `registation_plan`, `level_plan`, `binary_plan`, `direct_plan`, `leadership_plan`, `extra`, `auto_withdrawal_status`, `auto_withdrawal_limit`, `USD-to-INR`, `matrix_value`, `level_show`, `otp_status`, `sms_status`, `mail_status`, `confirm_transaction_status`, `copyright_at`, `app_link`, `bulk_entry_cron_status`, `rank_assign_cron_status`, `transfer_cron_status`, `flight_api_token`, `ico_status`, `ico_admin_error_msg`, `working_percentage`, `purchase_percentage`, `withdraw_status`, `withdraw_method`, `withdraw_off_msg`, `withdraw_day`, `withdraw_start_time`, `withdraw_stop_time`, `admin_login_status_on_off`) VALUES
(1, 'Xento-Corp', 'USD', 2, 'no-reply@xento-corp.com', 'www.xento-corp.com', 'Direct,Level,Binary,Roi,Leadership', 1, 0.25, 0.25, 0, 0.25, 0.25, 29000000, 1, 'level', 'on', 'off', 'on', 'off', 0, 'on', 100, '75', '2:2', 2, 'off', 0, 'on', 0, 2022, '', 0, 0, 0, 'BZ7HvY7ZjMnnnwZwcmcQKrp82ONZ', 'on', 'end sale', '70', '30', 'on', 'C', NULL, 'Mon', 2, NULL, 'off');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotionals`
--

CREATE TABLE `tbl_promotionals` (
  `srno` int(11) NOT NULL,
  `id` int(11) NOT NULL DEFAULT '0',
  `promotional_type_id` int(11) NOT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `date` date NOT NULL,
  `link` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') NOT NULL DEFAULT 'pending' COMMENT 'pending,approved,rejected',
  `paid_status` enum('paid','unpaid') NOT NULL DEFAULT 'unpaid' COMMENT 'paid,unpaid',
  `show_status` enum('pending','approved','rejected') DEFAULT 'pending',
  `entry_time` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotional_income`
--

CREATE TABLE `tbl_promotional_income` (
  `id` int(11) NOT NULL,
  `pro_id` int(100) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `tax_amount` decimal(10,2) DEFAULT '0.00',
  `amt_pin` decimal(10,2) DEFAULT '0.00',
  `toUserId` varchar(100) DEFAULT '',
  `fromUserId` varchar(100) DEFAULT '',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Unpaid','Paid') DEFAULT 'Paid',
  `invoice_id` text,
  `remark` varchar(255) DEFAULT 'Promostion Income',
  `notification` int(11) DEFAULT '1',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotional_social_income`
--

CREATE TABLE `tbl_promotional_social_income` (
  `srno` int(11) NOT NULL,
  `id` int(11) NOT NULL COMMENT 'tbl_users',
  `promotional_type_id` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `entry_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotional_type`
--

CREATE TABLE `tbl_promotional_type` (
  `srno` int(11) NOT NULL,
  `promotional_name` varchar(255) NOT NULL,
  `promotional_cost` decimal(10,2) DEFAULT '0.00',
  `require_count` int(100) DEFAULT '0',
  `duration` int(100) DEFAULT '0' COMMENT 'In days',
  `entry_time` timestamp NULL DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active' COMMENT 'Active,Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_promotional_type`
--

INSERT INTO `tbl_promotional_type` (`srno`, `promotional_name`, `promotional_cost`, `require_count`, `duration`, `entry_time`, `status`) VALUES
(1, 'POST', '1.00', 30, 30, '2018-10-12 18:30:00', 'Active'),
(2, 'GROUP POST', '1.00', 3, 30, '2018-10-12 18:30:00', 'Active'),
(3, 'SHARE', '1.00', 30, 30, '2018-10-13 00:00:00', 'Active'),
(4, 'CREATE BLOG', '20.00', 1, 7, '2018-10-13 00:00:00', 'Active'),
(5, 'YOU TUBE VIDEO', '20.00', 1, 15, '2018-10-13 00:00:00', 'Active'),
(6, '5K LIKES YOU TUBE VIDEO', '50.00', 1, 365, '2018-10-13 00:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ps_admin_navigation`
--

CREATE TABLE `tbl_ps_admin_navigation` (
  `id` int(11) NOT NULL,
  `menu` varchar(255) DEFAULT '',
  `parent_id` int(11) DEFAULT '0',
  `path` varchar(255) DEFAULT '',
  `icon_class` varchar(255) DEFAULT '',
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `assign_status` enum('Active','Inactive') DEFAULT 'Active',
  `entry_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ps_admin_navigation`
--

INSERT INTO `tbl_ps_admin_navigation` (`id`, `menu`, `parent_id`, `path`, `icon_class`, `status`, `assign_status`, `entry_time`) VALUES
(1, 'Dashboard', 0, 'dashboard', ' fa fa-dashboard', 'Active', 'Active', NULL),
(3, 'Dashboard', 1, 'dashboard', ' fa fa-dashboard', 'Active', 'Active', NULL),
(4, 'Manage Package', 0, '', ' fa fa-shopping-cart', 'Inactive', 'Inactive', NULL),
(5, 'Package Report', 4, 'product/product-report', '', 'Inactive', 'Inactive', NULL),
(8, 'E-Pin', 0, '', 'fa fa-barcode', 'Inactive', 'Inactive', NULL),
(9, 'Manage E-Pin', 8, 'e-pin/manage-pin', '', 'Active', 'Active', NULL),
(10, 'Admin Transfer Pin Report', 8, 'e-pin/admin-transfer-pin-history', '', 'Active', 'Active', NULL),
(11, 'Used Pin Report', 8, 'e-pin/used-pin-history', '', 'Active', 'Active', NULL),
(13, 'Unused Pin Report', 8, 'e-pin/unused-pin-history', '', 'Active', 'Active', NULL),
(14, 'Delete Pin Report', 8, 'e-pin/delete-pin-history', '', 'Active', 'Active', NULL),
(15, 'Pending Pin Request', 8, 'e-pin/pending-pin-request', '', 'Active', 'Active', NULL),
(16, 'Approved Pin Request', 8, 'e-pin/approved-pin-request', '', 'Active', 'Active', NULL),
(17, 'Rejected Pin Request', 8, 'e-pin/rejected-pin-request', '', 'Active', 'Active', NULL),
(18, 'Income Report', 0, '', ' fa fa-money', 'Active', 'Active', NULL),
(19, 'Direct Income Report', 18, 'e-wallet/direct-income', '', 'Active', 'Active', NULL),
(20, 'Level Income Report', 18, 'e-wallet/level-income', '', 'Inactive', 'Inactive', NULL),
(21, 'Repurchase Binary Income Report', 18, 'e-wallet/repurchase-binary-income-report', '', 'Inactive', 'Inactive', NULL),
(22, 'Wallet Report', 26, 'admin/wallet-report', '', 'Active', 'Active', NULL),
(23, 'Manage Withdrawal', 0, '', 'fa fa-credit-card', 'Active', 'Active', NULL),
(24, 'Pending Withdrawal Request', 23, 'withdrawal/withdrawal-request', '', 'Active', 'Active', NULL),
(25, 'Withdrawal History', 23, 'withdrawal/withdrawal-history', '', 'Inactive', 'Active', NULL),
(26, 'Admin', 0, '', '  fa fa-user', 'Inactive', 'Active', NULL),
(27, 'Change Password', 26, 'admin/change-password', '', 'Active', 'Active', NULL),
(28, 'Manage User', 0, '', '  fa fa-users', 'Active', 'Active', NULL),
(29, 'Manage User Account', 28, 'user/manage-user-account', '', 'Active', 'Active', NULL),
(31, 'Tree View', 28, 'user/tree-view', '', 'Inactive', 'Active', NULL),
(32, 'Team View', 28, 'user/total-team-view', '', 'Inactive', 'Active', NULL),
(33, 'Binary Qualified User Report', 28, 'user/qualified-user-list', '', 'Inactive', 'Active', NULL),
(34, 'Support', 0, '', ' fa fa-support', 'Inactive', 'Active', NULL),
(35, 'Pending Tickets', 34, 'support/pending-tickets', '', 'Inactive', 'Active', NULL),
(36, 'Closed Tickets', 34, 'support/closed-tickets', '', 'Inactive', 'Active', NULL),
(37, 'Manage Theme', 0, '', ' fa fa-suitcase', 'Inactive', 'Inactive', NULL),
(38, 'News', 37, 'manage-theme/news', '', 'Active', 'Active', NULL),
(39, 'Meeting', 37, 'manage-theme/meeting', '', 'Inactive', 'Active', NULL),
(40, 'Whats New', 37, 'manage-theme/whats-new', '', 'Inactive', 'Active', NULL),
(41, 'Popup', 37, 'manage-theme/pop-up', '', 'Inactive', 'Active', NULL),
(42, 'Sub Admin', 0, '', ' fa fa-users', 'Active', 'Active', NULL),
(43, 'Create Sub Admin', 42, 'sub-admin/create-sub-admin', '', 'Active', 'Active', NULL),
(44, 'Assign Rights', 42, 'sub-admin/assign-right', '', 'Active', 'Active', NULL),
(45, 'Assign Rights Reports', 42, 'sub-admin/assign-rights-report', '', 'Active', 'Active', NULL),
(46, 'Achievers', 0, '', ' fa fa-diamond', 'Active', 'Active', NULL),
(47, 'Reward Achievers', 46, 'achievers/reward-achievers', '', 'Inactive', 'Active', NULL),
(48, 'Training', 37, 'manage-theme/training', '', 'Inactive', 'Inactive', NULL),
(49, 'E-Pin Report', 8, 'e-pin/total-pin-report', '', 'Active', 'Active', NULL),
(50, 'Sell Report', 4, 'product/total-sell-report', '', 'Inactive', 'Active', NULL),
(51, 'Change Transaction Password', 26, 'admin/change-transaction-password', '', 'Active', 'Active', NULL),
(52, 'Unused Transfer Pin Report', 8, 'e-pin/unused-transfer-pin-report', '', 'Active', 'Active', NULL),
(53, 'Used Transfer Pin Report', 8, 'e-pin/used-transfer-pin-report', '', 'Active', 'Active', NULL),
(54, 'Edit Profile Report', 28, 'user/edit-profile-report', '', 'Active', 'Active', NULL),
(55, 'User Designation Report', 28, 'user/user-designation-report', '', 'Inactive', 'Active', NULL),
(56, 'Unblock Users Report', 28, 'user/unblock-users-report', '', 'Inactive', 'Active', NULL),
(57, 'Block Users Report', 28, 'user/block-users-report', '', 'Active', 'Active', NULL),
(58, 'Seminars', 37, 'manage-theme/seminars', '', 'Inactive', 'Active', NULL),
(59, 'Videos', 37, 'manage-theme/videos', '', 'Inactive', 'Inactive', NULL),
(60, 'Gallery', 37, 'manage-theme/gallery', '', 'Inactive', 'Inactive', NULL),
(62, 'Banks Report', 28, 'user/banks-report', '', 'Inactive', 'Active', NULL),
(63, 'Banks Logs Report', 28, 'user/banks-logs-report', '', 'Inactive', 'Active', NULL),
(64, 'User Transfer Pin Report', 8, 'e-pin/user-transfer-pin-history', '', 'Inactive', 'Inactive', NULL),
(65, 'Product Wise Sell Report', 4, 'product/product-wise-sell-report', '', 'Inactive', 'Active', NULL),
(66, 'Product Wise Purchase Report', 4, 'product/product-wise-joining-report', '', 'Inactive', 'Active', NULL),
(67, 'Product Wise Repurchase Report', 4, 'product/product-wise-repurchase-report', '', 'Inactive', 'Active', NULL),
(68, 'KYC', 0, '', ' fa fa-dashboard', 'Inactive', 'Active', NULL),
(69, 'Pending Kyc', 68, 'kyc/pending-kyc', 'fa fa-dashboard', 'Active', 'Active', NULL),
(70, 'Approved Kyc', 68, 'kyc/approved-kyc', 'fa fa-dashboard', 'Active', 'Active', NULL),
(71, 'Rejected Kyc', 68, 'kyc/rejected-kyc', 'fa fa-dashboard', 'Active', 'Active', NULL),
(72, 'Downline Users Investment Report', 28, 'user/downline-users-report', '', 'Inactive', 'Active', NULL),
(73, 'Carry BV Report', 28, 'user/carry-bv-report', '', 'Inactive', 'Inactive', NULL),
(74, 'Repurchase Carry BV Report', 28, 'user/repurchase-carry-bv-report', '', 'Inactive', 'Inactive', NULL),
(75, 'Balance Sheet', 0, '', ' fa fa-money', 'Inactive', 'Active', NULL),
(76, 'Balance Sheet', 75, 'e-wallet/balance-sheet', '', 'Active', 'Active', NULL),
(77, 'Reward Achievers', 77, 'reward-achievers/reward-achievers-report', 'fa fa-dashboard', 'Inactive', 'Active', NULL),
(78, 'Reward Achievers Report', 77, 'reward-achievers/reward-achievers-report', 'fa fa-dashboard', 'Inactive', 'Active', NULL),
(79, 'ROI Income Report', 18, 'e-wallet/roi-income', '', 'Active', 'Active', NULL),
(80, 'Topup', 0, 'top-up', 'fa fa-money', 'Active', 'Inactive', NULL),
(81, 'Add Topup', 80, 'top-up/add-top-up', 'fa fa-money', 'Active', 'Active', NULL),
(82, 'Topup Report', 80, 'top-up/top-up-report', 'fa fa-money', 'Active', 'Active', NULL),
(83, 'Manage Genealogy', 0, 'manage-genealogy', 'fa fa-money', 'Inactive', 'Active', NULL),
(84, 'Level View', 83, 'manage-genealogy/level-view', 'fa fa-money', 'Inactive', 'Active', NULL),
(85, 'Pending Withdrawal Report', 23, 'withdrawal/pending-withdrawal-report', '', 'Inactive', 'Active', NULL),
(86, 'Confirm Withdrawal Report', 23, 'withdrawal/confirm-withdrawal-report', '', 'Active', 'Active', NULL),
(87, 'Fund', 0, 'transactions', 'fa fa-money', 'Active', 'Active', NULL),
(88, 'User Fund Report', 87, 'transactions/deposit-address-transaction', 'fa fa-money', 'Inactive', 'Active', NULL),
(89, 'Deposit Transactions Pending', 87, 'transactions/deposit-transactions-pending', 'fa fa-money', 'Inactive', 'Active', NULL),
(90, 'All Transactions', 87, 'transactions/all-transactions', 'fa fa-money', 'Inactive', 'Active', NULL),
(91, 'User BTC Address Report', 28, 'user/user-btc-address-report', '', 'Inactive', 'Active', NULL),
(92, 'Edit News', 37, 'manage-theme/edit-news', '', 'Active', 'Inactive', NULL),
(93, 'Add News', 37, 'manage-theme/add-news', '', 'Active', 'Inactive', NULL),
(94, 'Support Chat', 34, 'support/support-chat', '', 'Inactive', 'Active', NULL),
(95, 'Change Password', 28, 'user/change-password', '', 'Active', 'Active', NULL),
(96, 'Import Package', 4, 'product/import-product', '', 'Inactive', 'Inactive', NULL),
(97, 'Team ROI Income report', 18, 'e-wallet/level-roi-income', '', 'Inactive', 'Inactive', NULL),
(98, 'Upline Income report', 18, 'e-wallet/upline-income', '', 'Inactive', 'Active', NULL),
(99, 'Promotional', 0, 'promotional', 'fa fa-dashboard', 'Inactive', 'Active', NULL),
(100, 'Pending Promotional', 99, 'promotional/pending-promotional', 'fa fa-dashboard', 'Active', 'Active', NULL),
(101, 'Approved Promotional', 99, 'promotional/approved-promotional', 'fa fa-dashboard', 'Active', 'Active', NULL),
(102, 'Rejected Promotional', 99, 'promotional/rejected-promotional', 'fa fa-dashboard', 'Active', 'Active', NULL),
(103, 'Promotional Token Report', 99, 'promotional/promotional-income', 'fa fa-dashboard', 'Active', 'Active', NULL),
(104, 'TOP UP INR Request', 0, '', '', 'Active', 'Active', NULL),
(105, 'Pending TOP UP INR Request', 104, 'pending-fund-request', '', 'Inactive', 'Inactive', NULL),
(106, 'Approved TOP UP INR Request', 104, 'approved-fund-request', '', 'Inactive', 'Inactive', NULL),
(107, 'Rejected TOP UP INR Request', 104, 'rejected-fund-request', '', 'Inactive', 'Inactive', NULL),
(108, 'Old Topup Report', 80, 'top-up/old-top-up-report', '', 'Inactive', 'Inactive', NULL),
(109, 'Free Top Up', 80, 'top-up/free-top-up', 'fa fa-money', 'Inactive', 'Inactive', NULL),
(110, 'Change Withdraw Mode', 110, 'withdrawal-payment', 'fa fa-money', 'Inactive', 'Inactive', NULL),
(111, 'Binary Income Report', 18, 'e-wallet/binary-income', '', 'Inactive', 'Active', NULL),
(112, 'Power BV Report', 114, 'manage-power/power-report', '', 'Inactive', 'Active', NULL),
(113, 'Add Power', 114, 'manage-power/add-power', '', 'Inactive', 'Active', NULL),
(114, 'Manage Power BV', 0, '', '', 'Inactive', 'Active', NULL),
(115, 'Franchise User Report', 28, 'user/franchise-user-report', '', 'Inactive', 'Active', '2020-01-10 12:08:51'),
(116, 'Franchise Income Report', 18, 'e-wallet/franchise-income', '', 'Inactive', 'Active', '2020-01-10 12:51:52'),
(117, 'Purchase Wallet', 0, '', '', 'Active', 'Active', NULL),
(118, 'Purchase Wallet Report', 117, 'account-wallet', '', 'Active', 'Active', NULL),
(119, 'Admin Add Fund', 87, 'admin-add-fund', '', 'Inactive', 'Inactive', NULL),
(120, 'Admin Fund Report', 87, 'admin-add-fundreport', '', 'Inactive', 'Inactive', NULL),
(121, 'Enquiry', 0, 'enquiry', 'fa fa-envelope', 'Active', 'Active', NULL),
(122, 'Enquiry Reports', 121, 'enquiry-reports', 'fa fa-caret-right', 'Active', 'Active', NULL),
(123, 'Send Reply Reports', 121, 'send-reply-reports', 'fa fa-caret-right', 'Inactive', 'Inactive', NULL),
(124, 'Link Report', 0, 'link-report', 'fa fa-envelope', 'Inactive', 'Active', NULL),
(125, 'User Link Report', 124, 'user-link-report', 'fa fa-caret-right', 'Inactive', 'Active', NULL),
(126, 'Verified Withdrawal Report', 23, 'withdrawal/verified-withdrawal', '', 'Active', 'Active', NULL),
(127, 'Manage Deduction', 0, 'deduction', 'fa fa-envelope', 'Inactive', 'Active', NULL),
(128, 'Add Deduction', 127, 'deduction/add-deduction', '', 'Active', 'Active', NULL),
(129, 'Deduction Report', 127, 'admin-add-deduction-report', '', 'Active', 'Active', NULL),
(130, 'Manage Franchise', 0, 'franchise', 'fa fa-envelope', 'Inactive', 'Active', NULL),
(131, 'Franchise Report', 130, 'user-franchise-report', '', 'Active', 'Active', NULL),
(132, 'CoinPayment', 0, 'CoinPayment', 'fa fa-envelope', 'Active', 'Active', NULL),
(133, 'User Confirm Fund Report', 132, 'coinpayment/confirm-address-transaction', '', 'Active', 'Active', NULL),
(134, 'User PefectMoney Report', 87, 'user-perfectmoneyreport', '', 'Inactive', 'Active', NULL),
(135, 'Manual Fund Req', 0, '', 'fa fa-credit-card', 'Inactive', 'Active', NULL),
(136, 'Pending Fund Request', 135, 'top-up/pending-topup-request', 'fa fa-credit-card', 'Active', 'Active', NULL),
(137, 'Approve Fund Request', 135, 'top-up/approve-topup-request', 'fa fa-credit-card', 'Active', 'Active', NULL),
(138, 'Reject Fund Request', 135, 'top-up/reject-topup-request', 'fa fa-credit-card', 'Active', 'Active', NULL),
(139, 'Add Franchise ', 28, 'add-franchisee', '', 'Inactive', 'Active', '2020-01-10 17:38:51'),
(140, 'Supper Matching Bonus Report', 18, 'e-wallet/super-matching-income', '', 'Inactive', 'Active', NULL),
(141, 'Freedom Club Report', 18, 'e-wallet/freedom-club-report', '', 'Inactive', 'Active', NULL),
(142, 'Rank', 0, '', ' fa fa-money', 'Inactive', 'Inactive', NULL),
(143, 'Add Rank', 142, 'rank/add-rank', '', 'Active', 'Active', NULL),
(144, 'Assign Rank Report', 142, 'rank/add-rank-report', '', 'Active', 'Active', NULL),
(145, 'Structure Report', 28, 'user/structure-report', '', 'Inactive', 'Active', NULL),
(146, 'Daily Bussiness Report', 80, 'top-up/daily-bussiness-report', '', 'Inactive', 'Inactive', NULL),
(147, 'Setting Fund', 0, '', '', 'Inactive', 'Active', NULL),
(148, 'Setting add fund', 147, 'setting-add-fund', '', 'Active', 'Active', NULL),
(149, 'Setting add fund report ', 147, 'setting-add-fundreport', '', 'Active', 'Active', NULL),
(150, 'Qualify Rank Report', 142, 'rank/qualify-rank-report', '', 'Active', 'Active', NULL),
(151, 'Manage Bussiness', 0, '', '', 'Inactive', 'Active', '2021-05-03 06:07:14'),
(152, 'Add Bussiness', 151, 'add-bussiness', '', 'Active', 'Active', NULL),
(153, 'Add Bussiness Report', 151, 'add-bussiness-report', '', 'Active', 'Active', NULL),
(154, 'Admin Remove Fund', 87, 'admin-remove-fund', '', 'Inactive', 'Inactive', NULL),
(155, 'Admin Remove Fund Report', 87, 'admin-remove-fundreport', '', 'Inactive', 'Inactive', NULL),
(156, 'Setting-Remove-Fund', 147, 'setting-remove-fund', '', 'Active', 'Active', NULL),
(157, 'Setting-Remove-Fund-Report', 147, 'setting-remove-fund-report', '', 'Active', 'Active', NULL),
(158, 'Change Userid', 28, 'user/change-userid', '', 'Inactive', 'Active', '2021-05-07 04:27:00'),
(159, 'Changed Userid Report', 28, 'user/change-userid-report', '', 'Inactive', 'Active', '2021-05-07 04:27:36'),
(160, 'Fund Wallet Add/Remove Fund\n', 87, 'fund-wallet-add-remove', '', 'Active', 'Active', NULL),
(161, 'Dx Wallet', 0, '', '', 'Inactive', 'Inactive', NULL),
(162, 'Remove Dx Wallet Fund', 161, 'admin-remove-dx-wallet-fund', '', 'Active', 'Active', NULL),
(163, 'Remove Dx Wallet Fund Report', 161, 'admin-remove-dx-wallet-fund-report', '', 'Active', 'Active', NULL),
(164, 'Balance Transfer Request', 87, 'balance-transfer-request', '', 'Inactive', 'Inactive', NULL),
(165, 'Rejected Withdrawal Report', 23, 'withdrawal/rejected-withdrawal-report', '', 'Active', 'Active', NULL),
(166, 'Top Leader Summary', 28, 'top-leader-summary-report', '', 'Inactive', 'Active', '2021-05-07 14:27:21'),
(167, 'Business Setting', 0, '', '  fa fa-users', 'Inactive', 'Active', NULL),
(168, 'Business Setting', 167, 'downline-business-setting', '  fa fa-users', 'Active', 'Active', NULL),
(169, 'Business Report', 167, 'business-setting-report', '  fa fa-users', 'Active', 'Active', NULL),
(170, 'Categories', 0, 'categories', '', 'Inactive', 'Active', '2021-06-09 00:00:00'),
(171, 'Product', 0, 'product/product-reports', '', 'Inactive', 'Active', '2021-06-09 03:07:08'),
(172, 'Order', 0, '', '', 'Inactive', 'Active', '2021-06-09 04:07:07'),
(173, 'All Orders Report', 172, 'order/all', '', 'Inactive', 'Active', '2021-06-09 04:14:13'),
(174, 'Orders Pending', 172, 'order/pending', '', 'Inactive', 'Active', '2021-06-09 04:20:08'),
(175, 'Orders Delivered', 172, 'order/delivered', '', 'Inactive', 'Active', '2021-06-09 04:20:10'),
(176, 'Orders cancelled', 172, 'order/cancelled', '', 'Inactive', 'Active', '2021-06-09 06:03:05'),
(177, 'Add Rank Power', 142, 'rank/add_rank_power', '', 'Active', 'Active', NULL),
(178, 'Add Rank Power Report', 142, 'rank/add-rank-power-report', '', 'Active', 'Active', NULL),
(179, 'Rank By User', 142, 'rank/rank_by_user', '', 'Active', 'Active', NULL),
(180, 'Balance Sheet', 28, 'balance-sheet-report', '', 'Inactive', 'Active', NULL),
(181, 'Categories', 170, 'categories', '', 'Inactive', 'Active', '2021-06-09 00:00:00'),
(182, 'Product', 171, 'product/product-reports', '', 'Inactive', 'Active', '2021-06-09 03:07:08'),
(183, 'ICO (coin)', 0, '', 'fa fa-credit-card', 'Inactive', 'Active', NULL),
(184, 'Send Coin To User', 183, 'send-coin-to-user', 'fa fa-credit-card', 'Inactive', 'Active', NULL),
(185, 'Admin Send Coin Rep', 183, 'ico-admin-send-rep', 'fa fa-credit-card', 'Inactive', 'Active', NULL),
(186, 'User Buy Coins ', 183, 'ico-user-buy-rep', 'fa fa-credit-card', 'Inactive', 'Active', NULL),
(187, 'ICO Phases List', 183, 'ico-phases-list', 'fa fa-credit-card', 'Inactive', 'Active', NULL),
(188, 'Flight Booking', 0, '', '', 'Inactive', 'Active', '2021-06-25 00:00:00'),
(189, 'Manage Flight Logo', 188, 'manage-flight-logo', '', 'Inactive', 'Active', '2021-06-25 03:06:08'),
(190, 'User Bulk Update', 28, 'user/user-bulk-update', '', 'Inactive', 'Active', NULL),
(191, 'User Bulk Update Report', 28, 'user/bulk-user-update-report', '', 'Inactive', 'Active', NULL),
(192, 'Working To Purchase Report', 87, 'working-to-topup-report', 'fa fa-money', 'Inactive', 'Inactive', NULL),
(193, 'Working To Purchase Transfer Report', 87, 'working-to-purchase-transfer-report', '', 'Inactive', 'Inactive', NULL),
(194, 'Wallet Transaction Log', 87, 'wallet-transaction-log', '', 'Inactive', 'Inactive', NULL),
(195, 'Fund Transfer Report\n', 87, 'fund-transfer-report', '', 'Active', 'Active', NULL),
(196, 'ICO On Off Status', 183, 'ico-on-off', 'fa fa-credit-card', 'Inactive', 'Active', NULL),
(197, 'Buy Active Phase Coin', 183, 'buy-active-phase-coin', 'fa fa-credit-card', 'Inactive', 'Active', NULL),
(198, 'Admin Buy Coin Rep', 183, 'admin-buy-coin-rep', 'fa fa-credit-card', 'Inactive', 'Active', NULL),
(199, 'User to User Coin Send Rep', 183, 'user-to-user-send-rep', 'fa fa-credit-card', 'Inactive', 'Active', NULL),
(200, 'Settings', 200, '', '', 'Inactive', 'Inactive', NULL),
(201, 'Update Withdraw Setting', 200, 'settings/update-withdraw-setting', '', 'Active', 'Active', '2021-08-16 15:00:00'),
(202, 'Contest Achievement Report', 28, 'contest-achievement-report', '', 'Inactive', 'Active', NULL),
(203, 'Add Business Upline', 151, 'add-bussiness-upline', '', 'Active', 'Active', '2021-09-22 15:00:00'),
(204, 'Add Bussiness Upline Report', 151, 'add-bussiness-upline-report', '', 'Active', 'Active', '2021-09-22 15:00:00'),
(205, 'Add Rank Power Upline', 142, 'rank/add_rank_power_upline', '', 'Active', 'Active', NULL),
(206, 'Rank Power Upline Report', 142, 'rank/add-rank-power-upline-report', '', 'Active', 'Active', NULL),
(207, 'Perfectmoney Setting', 200, 'add-member-perfectmoney', '', 'Inactive', 'Inactive', '2021-10-11 00:00:00'),
(208, 'Xento Bonus Income Report', 18, 'e-wallet/matching-bonus-income', '', 'Active', 'Active', '2022-02-15 00:00:00'),
(209, 'Perfect Money', 0, '', '', 'Inactive', 'Inactive', '2022-02-26 00:00:00'),
(210, 'Add Member Perfect Money', 209, 'add-member-perfectmoney', '', 'Inactive', 'Active', '2022-02-26 00:00:00'),
(211, 'User Perfect Money Report', 209, 'user-perfectmoneyreport', '', 'Inactive', 'Active', '2022-02-26 00:00:00'),
(212, 'Pending Perfect Money Report', 209, 'pending-user-perfectmoneyreport', '', 'Inactive', 'Active', '2022-02-26 00:00:00'),
(213, 'Add Development Bonus Fund', 87, 'admin-setting-add-fund', '', 'Inactive', 'Active', '2022-03-03 00:00:00'),
(214, 'Add Development Bonus Report', 87, 'setting-add-fund-report', '', 'Inactive', 'Active', '2022-03-03 00:00:00'),
(215, 'Rank Report', 18, 'e-wallet/achieved-matching-bonus-income', '', 'Inactive', 'Active', '2022-03-24 15:00:00'),
(216, 'All Transations IP History', 0, 'all-transaction-ip-history', '', 'Inactive', 'Inactive', '2022-03-25 15:00:00'),
(217, 'All Transations IP History', 216, 'all-transaction-ip-history', '', 'Inactive', 'Inactive', '2022-03-25 15:00:00'),
(218, 'Manage Mac Address', 0, '', '', 'Inactive', 'Active', '2022-03-27 15:00:00'),
(219, 'Add Mac Address', 218, 'manage-mac/add-manage-mac', '', 'Active', 'Active', '2022-03-27 15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ps_admin_rights`
--

CREATE TABLE `tbl_ps_admin_rights` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `navigation_id` int(11) DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ps_admin_rights`
--

INSERT INTO `tbl_ps_admin_rights` (`id`, `user_id`, `parent_id`, `navigation_id`, `entry_time`) VALUES
(2, 1, 4, 5, '2018-06-06 06:41:21'),
(3, 1, 8, 9, '2018-06-06 06:41:21'),
(4, 1, 8, 10, '2018-06-06 06:41:21'),
(5, 1, 8, 11, '2018-06-06 06:41:21'),
(6, 1, 8, 12, '2018-06-06 06:41:21'),
(7, 1, 8, 13, '2018-06-06 06:41:21'),
(8, 1, 8, 14, '2018-06-06 06:41:21'),
(9, 1, 8, 15, '2018-06-06 06:41:21'),
(10, 1, 8, 16, '2018-06-06 06:41:21'),
(11, 1, 8, 17, '2018-06-06 06:41:21'),
(12, 1, 18, 19, '2018-06-06 06:41:21'),
(13, 1, 18, 20, '2018-06-06 06:41:21'),
(15, 1, 26, 22, '2018-06-07 14:13:26'),
(16, 1, 23, 24, '2018-06-06 06:41:21'),
(17, 1, 23, 25, '2018-06-06 06:41:21'),
(18, 1, 26, 27, '2018-06-06 06:41:21'),
(19, 1, 28, 29, '2018-06-06 06:41:21'),
(20, 1, 28, 31, '2018-06-06 06:41:21'),
(21, 1, 28, 32, '2018-06-06 06:41:21'),
(22, 1, 28, 33, '2018-06-06 06:41:21'),
(23, 1, 34, 35, '2018-06-06 06:41:21'),
(24, 1, 34, 36, '2018-06-06 06:41:21'),
(56, 1, 1, 1, '2018-09-04 05:59:31'),
(57, 60, 8, 9, '2018-06-07 11:01:18'),
(58, 60, 8, 15, '2018-06-07 11:01:18'),
(59, 60, 8, 16, '2018-06-07 11:01:18'),
(60, 60, 18, 19, '2018-06-07 11:01:18'),
(61, 60, 18, 20, '2018-06-07 11:01:18'),
(62, 60, 26, 22, '2018-06-07 11:01:18'),
(63, 60, 26, 27, '2018-06-07 11:01:18'),
(64, 60, 23, 24, '2018-06-07 11:01:18'),
(65, 60, 23, 25, '2018-06-07 11:01:18'),
(66, 60, 34, 35, '2018-06-07 11:01:18'),
(69, 67, 18, 19, '2018-06-07 12:20:54'),
(70, 67, 18, 20, '2018-06-07 12:20:54'),
(71, 67, 34, 35, '2018-06-07 12:20:54'),
(73, 68, 18, 19, '2018-06-07 13:51:15'),
(74, 68, 18, 20, '2018-06-07 13:51:15'),
(81, 81, 4, 5, '2018-06-08 05:28:29'),
(82, 81, 18, 19, '2018-06-08 05:28:29'),
(83, 81, 18, 20, '2018-06-08 05:28:29'),
(85, 81, 26, 22, '2018-06-08 05:28:29'),
(86, 81, 26, 27, '2018-06-08 05:28:29'),
(88, 1, 8, 49, '2018-06-06 06:41:21'),
(89, 1, 4, 50, '2018-06-06 06:41:21'),
(97, 1, 8, 52, '2018-06-06 06:41:21'),
(98, 1, 8, 53, '2018-06-06 06:41:21'),
(99, 93, 18, 19, '2018-06-12 13:51:04'),
(100, 93, 18, 20, '2018-06-12 13:51:04'),
(104, 1, 28, 62, '2018-06-06 06:41:21'),
(105, 1, 28, 63, '2018-06-06 06:41:21'),
(107, 1, 8, 64, '2018-06-06 06:41:21'),
(108, 1, 4, 65, '2018-06-06 06:41:21'),
(112, 108, 4, 5, '2018-06-14 08:30:09'),
(113, 108, 4, 50, '2018-06-14 08:30:09'),
(114, 108, 18, 19, '2018-06-14 08:30:09'),
(115, 108, 18, 20, '2018-06-14 08:30:09'),
(117, 108, 26, 22, '2018-06-14 08:30:09'),
(118, 108, 26, 27, '2018-06-14 08:30:09'),
(120, 108, 28, 29, '2018-06-14 08:30:09'),
(121, 108, 28, 32, '2018-06-14 08:30:09'),
(122, 108, 28, 62, '2018-06-14 08:30:09'),
(126, 1, 28, 72, '2018-06-23 04:54:12'),
(131, 91, 28, 29, '2018-06-28 12:17:44'),
(132, 91, 28, 54, '2018-06-28 12:17:44'),
(133, 91, 28, 55, '2018-06-28 12:17:44'),
(134, 91, 28, 56, '2018-06-28 12:17:44'),
(135, 91, 28, 57, '2018-06-28 12:17:44'),
(136, 1, 77, 77, '2018-08-07 10:26:35'),
(137, 1, 38, 79, '2018-08-11 10:59:26'),
(140, 1, 80, 81, '2018-08-13 05:12:51'),
(141, 1, 80, 82, '2018-08-13 05:12:51'),
(142, 1, 83, 84, '2018-08-23 10:27:51'),
(143, 1, 23, 85, '2018-06-07 11:01:18'),
(144, 1, 23, 86, '2018-08-23 12:42:51'),
(145, 1, 87, 88, '2018-08-24 12:42:51'),
(146, 1, 87, 89, '2018-08-24 12:42:51'),
(147, 1, 87, 90, '2018-08-24 12:42:51'),
(148, 1, 28, 57, '2018-06-28 12:17:44'),
(149, 1, 28, 54, '2018-06-28 12:17:44'),
(150, 1, 28, 91, '2018-06-28 12:17:44'),
(151, 1, 37, 38, '2018-08-24 12:40:50'),
(152, 1, 34, 94, '2018-08-24 12:40:50'),
(153, 1, 28, 95, '2018-08-24 12:40:50'),
(154, 1, 42, 43, '2018-08-24 12:40:50'),
(155, 1, 42, 44, '2018-08-24 12:40:50'),
(156, 1, 42, 45, '2018-08-24 12:40:50'),
(179, 256, 4, 5, '2018-08-30 05:02:19'),
(180, 256, 18, 19, '2018-08-30 05:02:19'),
(181, 256, 18, 20, '2018-08-30 05:02:19'),
(182, 256, 18, 79, '2018-08-30 05:02:19'),
(183, 1, 4, 96, '2018-08-30 05:02:19'),
(184, 257, 4, 5, '2018-09-12 12:14:06'),
(185, 257, 80, 81, '2018-09-12 12:14:06'),
(186, 257, 80, 82, '2018-09-12 12:14:06'),
(187, 257, 83, 84, '2018-09-12 12:14:06'),
(188, 257, 34, 94, '2018-09-12 12:14:06'),
(190, 248, 4, 5, '2018-09-25 10:24:56'),
(191, 248, 34, 94, '2018-09-25 10:24:56'),
(192, 1, 18, 97, '2018-09-25 10:24:56'),
(193, 1, 18, 98, '2018-09-25 10:24:56'),
(194, 1, 99, 100, '2018-06-06 06:41:21'),
(195, 1, 99, 101, '2018-10-13 07:16:54'),
(196, 1, 99, 102, '2018-10-13 07:16:54'),
(197, 1, 99, 103, '2018-06-06 06:41:21'),
(198, 1, 104, 105, '2019-02-22 09:18:24'),
(199, 1, 104, 106, '2018-06-06 12:11:21'),
(200, 1, 104, 107, '2019-02-22 09:18:29'),
(201, 1, 80, 108, '2018-06-06 06:41:21'),
(202, 1, 80, 109, '2018-06-06 06:41:21'),
(203, 1, 110, 110, '2018-09-04 05:59:31'),
(204, 1, 37, 60, '2018-08-24 12:40:50'),
(205, 1, 18, 111, '2019-04-01 13:28:49'),
(206, 1, 37, 59, '2019-07-31 06:33:40'),
(207, 1, 114, 113, '2019-08-02 11:04:10'),
(208, 1, 114, 112, '2019-08-02 11:04:17'),
(209, 1, 18, 115, '2020-01-10 11:03:45'),
(210, 1, 28, 116, '2020-01-10 12:08:45'),
(211, 1, 117, 118, '2020-01-22 04:04:12'),
(213, 1, 87, 119, '2020-01-22 04:04:45'),
(214, 1, 87, 120, '2020-01-22 04:28:39'),
(216, 1, 121, 123, '2020-01-24 13:44:20'),
(217, 1, 0, 124, '2020-01-24 13:45:21'),
(218, 1, 124, 125, '2020-01-24 13:45:21'),
(219, 1, 121, 122, '2020-01-27 10:02:02'),
(220, 1, 23, 126, '2020-01-27 11:04:00'),
(221, 1, 127, 128, '2020-03-04 13:32:15'),
(222, 1, 127, 129, '2020-03-04 13:31:33'),
(223, 1, 0, 130, '2020-03-04 13:32:05'),
(224, 1, 130, 131, '2020-03-04 13:32:05'),
(225, 1, 0, 127, '2020-03-04 13:32:15'),
(226, 1, 0, 132, '2020-08-12 13:31:26'),
(227, 1, 132, 133, '2020-08-12 13:31:26'),
(228, 1, 87, 134, '2020-09-04 13:02:47'),
(229, 1, 135, 136, '2018-06-07 11:01:18'),
(230, 1, 135, 137, '2018-06-07 11:01:18'),
(231, 1, 135, 138, '2018-06-07 11:01:18'),
(232, 395, 18, 19, '2021-01-23 13:09:34'),
(233, 395, 18, 79, '2021-01-23 13:09:34'),
(234, 395, 18, 111, '2021-01-23 13:09:34'),
(235, 1, 28, 139, '2018-06-07 16:31:18'),
(236, 408, 18, 19, '2021-02-08 13:18:04'),
(237, 408, 28, 29, '2021-02-08 13:18:04'),
(238, 408, 28, 31, '2021-02-08 13:18:04'),
(239, 408, 28, 32, '2021-02-08 13:18:04'),
(240, 408, 28, 54, '2021-02-08 13:18:04'),
(241, 408, 87, 88, '2021-02-08 13:18:04'),
(242, 408, 87, 119, '2021-02-08 13:18:04'),
(243, 408, 87, 120, '2021-02-08 13:18:04'),
(244, 408, 87, 134, '2021-02-08 13:18:04'),
(245, 408, 117, 118, '2021-02-08 13:18:04'),
(246, 408, 121, 122, '2021-02-08 13:18:04'),
(247, 408, 121, 123, '2021-02-08 13:18:04'),
(248, 408, 127, 128, '2021-02-08 13:18:04'),
(249, 408, 127, 129, '2021-02-08 13:18:04'),
(257, 1, 1, 3, '2018-06-07 16:31:18'),
(266, 412, 18, 19, '2021-02-16 09:06:09'),
(267, 412, 18, 79, '2021-02-16 09:06:09'),
(268, 412, 18, 111, '2021-02-16 09:06:09'),
(269, 412, 18, 116, '2021-02-16 09:06:09'),
(270, 412, 80, 81, '2021-02-16 09:06:09'),
(271, 412, 80, 82, '2021-02-16 09:06:09'),
(272, 412, 23, 85, '2021-02-16 09:06:09'),
(273, 412, 23, 86, '2021-02-16 09:06:09'),
(274, 412, 23, 126, '2021-02-16 09:06:09'),
(275, 1, 18, 140, '2021-03-17 08:57:30'),
(276, 1, 18, 141, '2021-03-17 08:57:30'),
(277, 1, 142, 143, '2021-03-22 10:11:09'),
(278, 1, 142, 144, '2021-03-22 10:11:10'),
(279, 1, 28, 145, '2021-03-31 11:36:34'),
(280, 1, 28, 146, '2021-03-31 11:36:34'),
(281, 1, 147, 148, '2021-04-30 10:45:37'),
(282, 1, 147, 149, '2021-04-30 10:45:37'),
(283, 1, 142, 150, '2021-04-30 14:34:59'),
(284, 1, 151, 152, '2021-05-03 09:55:50'),
(285, 1, 151, 153, '2021-05-03 09:55:50'),
(286, 1, 87, 154, '2021-05-05 13:38:40'),
(287, 1, 87, 155, '2021-05-05 13:38:40'),
(288, 1, 147, 156, '2021-05-05 13:39:11'),
(289, 1, 147, 157, '2021-05-05 13:39:11'),
(290, 1, 28, 158, '2021-05-07 04:28:52'),
(291, 1, 28, 159, '2021-05-07 04:28:52'),
(292, 1, 161, 162, '2021-05-07 11:04:24'),
(293, 1, 161, 163, '2021-05-07 11:04:24'),
(294, 1, 87, 160, '2021-05-05 13:38:40'),
(295, 1, 87, 164, '2021-05-05 13:38:40'),
(296, 1, 23, 165, '2021-05-06 10:51:57'),
(297, 1, 28, 166, '2021-05-06 10:51:57'),
(298, 1, 167, 168, '2021-02-16 09:06:09'),
(299, 1, 167, 169, '2021-02-16 09:06:09'),
(300, 1, 172, 173, '2021-06-14 09:39:46'),
(301, 1, 172, 174, '2021-06-14 09:39:46'),
(302, 1, 172, 175, '2021-06-14 09:39:46'),
(303, 1, 172, 176, '2021-06-14 09:39:46'),
(304, 1, 170, 170, '2021-06-14 09:39:46'),
(305, 1, 171, 171, '2021-06-14 10:30:48'),
(306, 7150, 80, 82, '2021-06-14 11:50:04'),
(307, 7150, 80, 146, '2021-06-14 11:50:04'),
(308, 7152, 28, 29, '2021-06-14 12:13:57'),
(309, 7152, 28, 31, '2021-06-14 12:13:57'),
(310, 7152, 28, 32, '2021-06-14 12:13:57'),
(311, 7152, 28, 33, '2021-06-14 12:13:57'),
(312, 7152, 28, 54, '2021-06-14 12:13:57'),
(313, 7152, 28, 57, '2021-06-14 12:13:57'),
(314, 7152, 28, 72, '2021-06-14 12:13:57'),
(315, 7152, 28, 91, '2021-06-14 12:13:57'),
(316, 7152, 28, 95, '2021-06-14 12:13:57'),
(317, 7152, 28, 145, '2021-06-14 12:13:57'),
(318, 7152, 28, 158, '2021-06-14 12:13:57'),
(319, 7152, 28, 159, '2021-06-14 12:13:57'),
(320, 1, 142, 177, '2021-03-22 10:11:10'),
(321, 1, 142, 178, '2021-04-30 14:34:59'),
(322, 1, 142, 179, '2021-04-30 14:34:59'),
(323, 1, 28, 180, '2021-06-16 13:33:12'),
(324, 1, 170, 181, '2021-02-16 09:06:09'),
(325, 1, 171, 182, '2021-02-16 09:06:09'),
(326, 1, 183, 184, '2021-06-14 09:39:46'),
(327, 1, 183, 185, '2021-06-14 09:39:46'),
(328, 1, 183, 186, '2021-06-14 09:39:46'),
(329, 1, 183, 187, '2021-06-14 09:39:46'),
(330, 1, 188, 189, '2021-06-25 10:46:35'),
(331, 1, 28, 190, '2018-06-06 12:11:21'),
(332, 1, 28, 191, '2018-06-06 12:11:21'),
(333, 1, 87, 192, '2021-05-06 10:51:57'),
(334, 1, 87, 193, '2021-06-14 12:13:57'),
(335, 1, 87, 194, '2021-06-14 12:13:57'),
(336, 1, 87, 195, '2021-07-15 12:37:59'),
(337, 1, 183, 196, '2021-06-14 12:13:57'),
(338, 1, 183, 197, '2021-07-23 03:55:05'),
(339, 1, 183, 198, '2021-07-23 03:55:05'),
(340, 1, 183, 199, '2021-07-23 05:13:38'),
(341, 1, 200, 200, '2021-07-23 05:13:38'),
(342, 1, 200, 201, '2021-07-23 03:55:05'),
(343, 1, 28, 202, '2021-06-14 12:13:57'),
(344, 1, 151, 204, '2021-09-23 12:37:26'),
(345, 1, 151, 203, '2021-09-23 12:37:23'),
(346, 1, 142, 205, '2021-09-23 12:50:41'),
(347, 1, 142, 206, '2021-09-23 12:50:41'),
(348, 7085, 1, 3, '2021-09-27 05:13:17'),
(349, 10002, 1, 3, '2021-09-27 05:34:36'),
(350, 10002, 42, 43, '2021-09-27 05:34:36'),
(351, 10002, 42, 44, '2021-09-27 05:34:36'),
(352, 10002, 42, 45, '2021-09-27 05:34:36'),
(353, 10002, 80, 82, '2021-09-27 05:34:36'),
(354, 10002, 117, 118, '2021-09-27 05:34:36'),
(355, 10002, 132, 133, '2021-09-27 05:34:36'),
(356, 10002, 142, 143, '2021-09-27 05:34:36'),
(357, 10002, 142, 150, '2021-09-27 05:34:36'),
(358, 10002, 142, 177, '2021-09-27 05:34:36'),
(359, 10002, 142, 178, '2021-09-27 05:34:36'),
(360, 10002, 142, 179, '2021-09-27 05:34:36'),
(361, 10002, 147, 148, '2021-09-27 05:34:36'),
(362, 10002, 147, 149, '2021-09-27 05:34:36'),
(363, 10002, 147, 156, '2021-09-27 05:34:36'),
(364, 10002, 147, 157, '2021-09-27 05:34:36'),
(365, 10002, 87, 160, '2021-09-27 05:34:36'),
(366, 10002, 87, 164, '2021-09-27 05:34:36'),
(367, 10002, 87, 192, '2021-09-27 05:34:36'),
(368, 10002, 87, 193, '2021-09-27 05:34:36'),
(369, 10002, 87, 194, '2021-09-27 05:34:36'),
(370, 10002, 171, 182, '2021-09-27 05:34:36'),
(371, 1, 200, 207, '2021-10-11 15:54:00'),
(372, 1, 18, 208, '2022-02-15 14:30:00'),
(373, 1, 209, 210, '2022-02-26 07:07:44'),
(374, 1, 209, 211, '2022-02-26 07:08:12'),
(375, 1, 209, 212, '2022-02-26 07:09:51'),
(376, 1, 87, 213, '2022-03-04 04:34:52'),
(377, 1, 87, 214, '2022-03-04 04:35:11'),
(378, 1, 18, 215, '2022-03-25 11:13:22'),
(379, 1, 216, 217, '2022-03-29 11:30:15'),
(380, 1, 218, 219, '2022-03-29 11:41:56'),
(381, 15, 1, 3, '2022-07-06 11:48:30'),
(382, 15, 18, 19, '2022-07-06 11:48:30'),
(383, 15, 18, 79, '2022-07-06 11:48:30'),
(384, 15, 18, 111, '2022-07-06 11:48:30'),
(385, 15, 18, 208, '2022-07-06 11:48:30'),
(386, 15, 132, 133, '2022-07-06 11:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_balance_transfer`
--

CREATE TABLE `tbl_purchase_balance_transfer` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `email` varchar(250) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-Pending,1-Approved,2-Rejected',
  `transferred_amount` double DEFAULT '0',
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_order`
--

CREATE TABLE `tbl_purchase_order` (
  `po_id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `total_qty` bigint(20) NOT NULL,
  `final_total` double NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `created_date` datetime NOT NULL,
  `approve_date` datetime NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `amount_deposited` double NOT NULL,
  `ref_no` varchar(255) NOT NULL,
  `bank_name` text NOT NULL,
  `slipImage` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `payment_status` tinyint(5) NOT NULL,
  `approve_qty` bigint(20) NOT NULL,
  `pdc_status` enum('Pending','Approved','Rejected','') NOT NULL DEFAULT 'Pending',
  `pin_status` tinyint(4) NOT NULL DEFAULT '0',
  `pin_transfered` bigint(20) NOT NULL,
  `is_confirm_qty` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase_order_line`
--

CREATE TABLE `tbl_purchase_order_line` (
  `id` int(5) NOT NULL,
  `po_id` int(5) NOT NULL,
  `u_id` int(5) NOT NULL,
  `p_id` int(5) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `price` double(8,3) NOT NULL,
  `total` double NOT NULL,
  `approve_qty` int(11) NOT NULL,
  `approve_product_price` double NOT NULL,
  `gift_qty` int(11) NOT NULL,
  `qty_remain_approve` int(11) NOT NULL,
  `status` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_push_notification`
--

CREATE TABLE `tbl_push_notification` (
  `sr_no` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0:Inactive,1:Active',
  `end_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qualified_user_list`
--

CREATE TABLE `tbl_qualified_user_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `level` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_qualified_user_list`
--

INSERT INTO `tbl_qualified_user_list` (`id`, `user_id`, `entry_time`, `level`) VALUES
(1, 2, '2022-02-18 06:16:25', 0),
(2, 8, '2022-02-22 12:11:53', 0),
(3, 10, '2022-02-22 12:11:53', 0),
(4, 11, '2022-02-22 12:11:53', 0),
(5, 12, '2022-02-25 06:07:48', 0),
(6, 19, '2022-02-25 11:09:21', 0),
(7, 2, '2022-03-15 11:48:00', 0),
(8, 3, '2022-03-22 12:57:58', 0),
(9, 4, '2022-03-22 12:57:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE `tbl_questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_questions`
--

INSERT INTO `tbl_questions` (`id`, `question`) VALUES
(1, 'What is your first car brand ?'),
(2, 'What is your father name?'),
(3, 'Which is your favourite game?'),
(4, 'Which is your favourite pet?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rank`
--

CREATE TABLE `tbl_rank` (
  `id` int(11) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `max_amount` int(11) NOT NULL,
  `income_percentage` int(11) NOT NULL,
  `capping` int(11) NOT NULL,
  `duration` int(11) DEFAULT '0',
  `bonus_percentage` decimal(10,2) NOT NULL DEFAULT '0.00',
  `date_diff` int(11) NOT NULL DEFAULT '1',
  `left_ace_req` int(11) DEFAULT '0',
  `right_ace_req` int(11) DEFAULT '0',
  `left_users_tbl_col` varchar(100) DEFAULT NULL COMMENT 'this column name to update rank count to upline left ids',
  `right_users_tbl_col` varchar(100) DEFAULT NULL COMMENT 'this column name to update rank count to upline right ids'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rank`
--

INSERT INTO `tbl_rank` (`id`, `rank`, `max_amount`, `income_percentage`, `capping`, `duration`, `bonus_percentage`, `date_diff`, `left_ace_req`, `right_ace_req`, `left_users_tbl_col`, `right_users_tbl_col`) VALUES
(1, 'Ace', 10, 8, 1000, 52, '4.00', 7, 0, 0, 'l_ace', 'r_ace'),
(2, 'Herald', 50, 8, 1000, 52, '6.00', 7, 3, 3, 'l_herald', 'r_herald'),
(3, 'Guardian', 100, 9, 1000, 52, '10.00', 7, 7, 7, 'l_guardian', 'r_guardian'),
(4, 'Crusader', 200, 9, 1000, 52, '16.00', 7, 15, 15, 'l_crusader', 'r_crusader'),
(5, 'Commander', 500, 10, 2000, 52, '31.00', 7, 31, 31, 'l_commander', 'r_commander'),
(6, 'Valorant', 1000, 10, 2000, 52, '50.00', 7, 100, 100, 'l_valorant', 'r_valorant'),
(7, 'Legend', 2000, 11, 2000, 52, '125.00', 7, 250, 250, 'l_legend', 'r_legend'),
(8, 'Relic', 5000, 12, 3000, 52, '250.00', 7, 500, 500, 'l_relic', 'r_relic'),
(9, 'Almighty', 10000, 13, 3000, 52, '500.00', 7, 1000, 1000, 'l_almighty', 'r_almighty'),
(10, 'Conqueror', 20000, 14, 5000, 52, '1000.00', 7, 2500, 2500, 'l_conqueror', 'r_conqueror'),
(11, 'Titan', 50000, 15, 7000, 52, '2500.00', 7, 5000, 5000, 'l_titan', 'r_titan'),
(12, 'Immortal', 100000, 20, 10000, 52, '10000.00', 7, 10000, 10000, 'l_lmmortal', 'r_immortal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rank_list`
--

CREATE TABLE `tbl_rank_list` (
  `id` int(11) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rank_list`
--

INSERT INTO `tbl_rank_list` (`id`, `rank`, `entry_time`) VALUES
(1, 'Ace', '2021-03-20 01:27:59'),
(2, 'Herald', '2021-03-20 01:27:59'),
(3, 'Guardian', '2021-03-20 01:30:05'),
(4, 'Crusader', '2021-03-20 01:30:05'),
(5, 'Commander', '2021-03-20 01:30:05'),
(6, 'Valorant', '2021-03-20 01:30:05'),
(7, 'Legend', '2021-03-20 01:30:05'),
(8, 'Relic', '2021-03-20 01:30:05'),
(9, 'Almighty', '2021-03-20 01:30:05'),
(10, 'Conqueror', '2021-03-20 01:30:05'),
(11, 'Titan', '2021-03-20 01:30:05'),
(12, 'Immortal', '2021-03-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_remove_fund`
--

CREATE TABLE `tbl_remove_fund` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `amount` double DEFAULT NULL,
  `invoice_id` varchar(50) DEFAULT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `trn_ref_no` int(11) DEFAULT NULL,
  `holder_name` varchar(50) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `deposit_date` datetime DEFAULT NULL,
  `pay_slip` varchar(255) DEFAULT NULL,
  `admin_remark` varchar(255) DEFAULT NULL,
  `status` enum('Pending','Approve','Reject') NOT NULL DEFAULT 'Pending',
  `fund_status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0-admin fund,1-setting fund',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approve_date` datetime DEFAULT NULL,
  `reject_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reply_enquiry_reports`
--

CREATE TABLE `tbl_reply_enquiry_reports` (
  `srno` int(11) NOT NULL,
  `from_mail` varchar(255) NOT NULL,
  `to_mail` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_representative`
--

CREATE TABLE `tbl_representative` (
  `id` int(100) NOT NULL,
  `user_name` varchar(255) DEFAULT '',
  `mobile` varchar(50) DEFAULT '',
  `name` varchar(100) DEFAULT '',
  `email` varchar(100) DEFAULT '',
  `country` varchar(100) DEFAULT '',
  `language` varchar(255) DEFAULT '',
  `facebook_id` varchar(255) DEFAULT '',
  `sky_d` varchar(255) DEFAULT '',
  `twitter_id` varchar(255) DEFAULT '',
  `telegram_id` text,
  `instagram_id` text,
  `admin_status` enum('Pending','Approved') DEFAULT 'Pending',
  `entry_time` datetime DEFAULT '0000-00-00 00:00:00',
  `approved_time` datetime DEFAULT '0000-00-00 00:00:00',
  `status` enum('0','1') DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_codes`
--

CREATE TABLE `tbl_reset_codes` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `reset_code` varchar(12) DEFAULT '',
  `request_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roi_percentage`
--

CREATE TABLE `tbl_roi_percentage` (
  `srno` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `percentage` double DEFAULT '0',
  `updated_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_by` varchar(500) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_secret_que_ans`
--

CREATE TABLE `tbl_secret_que_ans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `secret_que` int(11) DEFAULT NULL,
  `secret_ans` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping_address`
--

CREATE TABLE `tbl_shipping_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `special_request` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms`
--

CREATE TABLE `tbl_sms` (
  `id` int(11) NOT NULL,
  `user_id` varchar(45) DEFAULT '',
  `mobile` varchar(45) DEFAULT '',
  `message` text,
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_types`
--

CREATE TABLE `tbl_social_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social_types`
--

INSERT INTO `tbl_social_types` (`id`, `name`) VALUES
(1, 'Youtube Link'),
(2, 'Adsense Corporate'),
(3, 'Promotion Link Promote');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `StateID` int(11) NOT NULL,
  `CountryID` int(11) DEFAULT '0',
  `StateName` varchar(50) DEFAULT '',
  `Notes` longtext,
  `ChangedBy` varchar(50) DEFAULT NULL,
  `ChangeDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`StateID`, `CountryID`, `StateName`, `Notes`, `ChangedBy`, `ChangeDate`) VALUES
(1, 1, 'ANDHRA PRADESH', NULL, 'Nieanjan', '2014-10-01 13:07:56'),
(2, 1, 'ASSAM', NULL, 'Nieanjan', '2014-10-01 13:07:56'),
(3, 1, 'ARUNACHAL PRADESH', NULL, 'Nieanjan', '2014-10-01 13:07:56'),
(4, 1, 'GUJRAT', NULL, 'Nieanjan', '2014-10-01 13:07:56'),
(5, 1, 'BIHAR', NULL, 'Nieanjan', '2014-10-01 13:07:56'),
(6, 1, 'HARYANA', NULL, 'Nieanjan', '2014-10-01 13:07:56'),
(7, 1, 'HIMACHAL PRADESH', NULL, 'Nieanjan', '2014-10-01 13:07:56'),
(8, 1, 'JAMMU & KASHMIR', NULL, 'Nieanjan', '2014-10-01 13:07:56'),
(9, 1, 'KARNATAKA', NULL, 'Nieanjan', '2014-10-01 13:07:56'),
(10, 1, 'KERALA', NULL, 'Nieanjan', '2014-10-01 13:07:56'),
(11, 1, 'MADHYA PRADESH', NULL, 'Nieanjan', '2014-10-01 13:07:56'),
(12, 1, 'MAHARASHTRA', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(13, 1, 'MANIPUR', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(14, 1, 'MEGHALAYA', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(15, 1, 'MIZORAM', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(16, 1, 'NAGALAND', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(17, 1, 'ORISSA', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(18, 1, 'PUNJAB', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(19, 1, 'RAJASTHAN', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(20, 1, 'SIKKIM', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(21, 1, 'TAMIL NADU', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(22, 1, 'TRIPURA', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(23, 1, 'UTTAR PRADESH', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(24, 1, 'WEST BENGAL', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(25, 1, 'DELHI', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(26, 1, 'GOA', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(27, 1, 'PONDICHERY', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(28, 1, 'LAKSHDWEEP', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(29, 1, 'DAMAN & DIU', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(30, 1, 'DADRA & NAGAR', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(31, 1, 'CHANDIGARH', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(32, 1, 'ANDAMAN & NICOBAR', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(33, 1, 'UTTARANCHAL', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(34, 1, 'JHARKHAND', NULL, 'Nieanjan', '2014-10-01 13:07:57'),
(35, 1, 'CHATTISGARH', NULL, 'Nieanjan', '2014-10-01 13:07:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_statistics_settings`
--

CREATE TABLE `tbl_statistics_settings` (
  `id` int(11) NOT NULL,
  `start_from_date` datetime DEFAULT NULL,
  `accounts_multiplier` int(11) NOT NULL DEFAULT '0',
  `deposit_multiplier` double NOT NULL DEFAULT '0',
  `withdraw_multiplier` double NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_statistics_settings`
--

INSERT INTO `tbl_statistics_settings` (`id`, `start_from_date`, `accounts_multiplier`, `deposit_multiplier`, `withdraw_multiplier`, `status`, `entry_time`) VALUES
(1, '2021-04-28 00:26:15', 5, 11, 8, 1, '2021-05-10 00:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_submenu_veriation`
--

CREATE TABLE `tbl_submenu_veriation` (
  `id` int(11) NOT NULL,
  `s_cat_id` int(11) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_categories`
--

CREATE TABLE `tbl_sub_categories` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_super_matching`
--

CREATE TABLE `tbl_super_matching` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rank` varchar(200) NOT NULL,
  `pin` varchar(200) NOT NULL,
  `maching_income_status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` int(11) DEFAULT NULL,
  `freedom_club_capping_status` int(11) DEFAULT '0' COMMENT '0-not acheived capping,1- capping achived',
  `user_status` enum('Active','Inactive') DEFAULT 'Active' COMMENT 'this tbl_users status',
  `rank_upline_pass_status` int(11) DEFAULT '0' COMMENT '0 - rank not pass to upline, 1- rank pass to upline',
  `contest_rank_upline_pass_status` int(11) DEFAULT '0' COMMENT '0 - rank not pass to upline, 1- rank pass to upline'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supper_matching_bonus_income`
--

CREATE TABLE `tbl_supper_matching_bonus_income` (
  `sr_no` int(11) NOT NULL,
  `amount` float DEFAULT '0',
  `pin` varchar(255) DEFAULT '',
  `tax_amount` double DEFAULT '0',
  `id` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Unpaid','Paid') DEFAULT 'Paid',
  `rank` varchar(200) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `software_perentage` double DEFAULT '0',
  `daily_percentage` double DEFAULT '0',
  `software_amount` double DEFAULT '0',
  `daily_amount` double DEFAULT '0',
  `notification` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_support`
--

CREATE TABLE `tbl_support` (
  `id` int(11) NOT NULL,
  `ticket_no` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `subject` text,
  `complain_type` text,
  `department` text,
  `status` enum('Open','Close') NOT NULL,
  `entry_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_support_comments`
--

CREATE TABLE `tbl_support_comments` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `comments` text NOT NULL,
  `commented_by` varchar(100) DEFAULT '',
  `attachment` text NOT NULL,
  `status` enum('Read','Unread') NOT NULL DEFAULT 'Unread',
  `entry_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tax`
--

CREATE TABLE `tbl_tax` (
  `id` int(11) NOT NULL,
  `tax_amount` varchar(15) DEFAULT '',
  `tax_type` varchar(500) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_today_details`
--

CREATE TABLE `tbl_today_details` (
  `today_id` int(11) NOT NULL,
  `to_user_id` int(11) DEFAULT '0',
  `from_user_id` int(11) DEFAULT '0',
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `position` int(11) DEFAULT '0',
  `level` int(11) DEFAULT '0',
  `notification` int(11) DEFAULT '1',
  `from_user_id_l_c_count` int(11) DEFAULT '0',
  `from_user_id_r_c_count` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_today_details`
--

INSERT INTO `tbl_today_details` (`today_id`, `to_user_id`, `from_user_id`, `entry_time`, `position`, `level`, `notification`, `from_user_id_l_c_count`, `from_user_id_r_c_count`) VALUES
(1, 1, 2, '2022-03-04 14:03:33', 1, 1, 1, 0, 0),
(2, 2, 3, '2022-03-04 17:15:53', 2, 1, 1, 0, 0),
(3, 1, 3, '2022-03-04 17:15:53', 1, 2, 1, 0, 0),
(4, 2, 4, '2022-03-12 17:55:46', 1, 1, 1, 0, 0),
(5, 1, 4, '2022-03-12 17:55:46', 1, 2, 1, 0, 0),
(6, 4, 5, '2022-03-22 21:41:51', 1, 1, 1, 0, 0),
(7, 2, 5, '2022-03-22 21:41:51', 1, 2, 1, 0, 0),
(8, 1, 5, '2022-03-22 21:41:51', 1, 3, 1, 0, 0),
(9, 5, 6, '2022-03-22 21:42:29', 1, 1, 1, 0, 0),
(10, 4, 6, '2022-03-22 21:42:29', 1, 2, 1, 0, 0),
(11, 2, 6, '2022-03-22 21:42:29', 1, 3, 1, 0, 0),
(12, 1, 6, '2022-03-22 21:42:29', 1, 4, 1, 0, 0),
(13, 3, 7, '2022-03-22 21:48:45', 1, 1, 1, 0, 0),
(14, 2, 7, '2022-03-22 21:48:45', 2, 2, 1, 0, 0),
(15, 1, 7, '2022-03-22 21:48:45', 1, 3, 1, 0, 0),
(16, 7, 8, '2022-03-22 21:50:17', 1, 1, 1, 0, 0),
(17, 3, 8, '2022-03-22 21:50:17', 1, 2, 1, 0, 0),
(18, 2, 8, '2022-03-22 21:50:17', 2, 3, 1, 0, 0),
(19, 1, 8, '2022-03-22 21:50:17', 1, 4, 1, 0, 0),
(20, 3, 9, '2022-03-22 21:51:00', 2, 1, 1, 0, 0),
(21, 2, 9, '2022-03-22 21:51:00', 2, 2, 1, 0, 0),
(22, 1, 9, '2022-03-22 21:51:00', 1, 3, 1, 0, 0),
(23, 9, 10, '2022-03-23 14:09:43', 2, 1, 1, 0, 0),
(24, 3, 10, '2022-03-23 14:09:43', 2, 2, 1, 0, 0),
(25, 2, 10, '2022-03-23 14:09:43', 2, 3, 1, 0, 0),
(26, 1, 10, '2022-03-23 14:09:43', 1, 4, 1, 0, 0),
(27, 10, 11, '2022-03-23 14:10:47', 2, 1, 1, 0, 0),
(28, 9, 11, '2022-03-23 14:10:47', 2, 2, 1, 0, 0),
(29, 3, 11, '2022-03-23 14:10:47', 2, 3, 1, 0, 0),
(30, 2, 11, '2022-03-23 14:10:47', 2, 4, 1, 0, 0),
(31, 1, 11, '2022-03-23 14:10:47', 1, 5, 1, 0, 0),
(32, 9, 12, '2022-03-25 18:32:38', 1, 1, 1, 0, 0),
(33, 3, 12, '2022-03-25 18:32:38', 2, 2, 1, 0, 0),
(34, 2, 12, '2022-03-25 18:32:38', 2, 3, 1, 0, 0),
(35, 1, 12, '2022-03-25 18:32:38', 1, 4, 1, 0, 0),
(36, 10, 13, '2022-03-25 19:57:34', 1, 1, 1, 0, 0),
(37, 9, 13, '2022-03-25 19:57:34', 2, 2, 1, 0, 0),
(38, 3, 13, '2022-03-25 19:57:34', 2, 3, 1, 0, 0),
(39, 2, 13, '2022-03-25 19:57:34', 2, 4, 1, 0, 0),
(40, 1, 13, '2022-03-25 19:57:34', 1, 5, 1, 0, 0),
(41, 13, 14, '2022-03-30 15:58:28', 1, 1, 1, 0, 0),
(42, 10, 14, '2022-03-30 15:58:28', 1, 2, 1, 0, 0),
(43, 9, 14, '2022-03-30 15:58:28', 2, 3, 1, 0, 0),
(44, 3, 14, '2022-03-30 15:58:28', 2, 4, 1, 0, 0),
(45, 2, 14, '2022-03-30 15:58:28', 2, 5, 1, 0, 0),
(46, 1, 14, '2022-03-30 15:58:28', 1, 6, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_today_phase_summary`
--

CREATE TABLE `tbl_today_phase_summary` (
  `srno` int(9) NOT NULL,
  `date` date DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `today_supply` double DEFAULT NULL,
  `today_sold` double DEFAULT NULL,
  `today_available` double DEFAULT NULL,
  `coin_wallet` double DEFAULT NULL,
  `BTC_wallet` double DEFAULT NULL,
  `USD_wallet` double DEFAULT NULL,
  `phase_id` int(9) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_todo`
--

CREATE TABLE `tbl_todo` (
  `sr_no` int(11) NOT NULL,
  `id` int(11) DEFAULT '0',
  `itemname` text,
  `status` enum('Active','Inactive') DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topup`
--

CREATE TABLE `tbl_topup` (
  `srno` int(11) NOT NULL,
  `id` int(11) DEFAULT '0',
  `pin` varchar(100) DEFAULT '',
  `amount` double DEFAULT '0',
  `product_name` varchar(255) DEFAULT NULL,
  `device` varchar(100) DEFAULT NULL,
  `topupfrom` varchar(100) DEFAULT NULL,
  `amount_roi` double DEFAULT '0',
  `direct_roi` double DEFAULT '0',
  `percentage` decimal(10,2) DEFAULT '0.00',
  `binary_percentage` double DEFAULT '0',
  `binary_capping` float NOT NULL DEFAULT '0',
  `total_income` float DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` int(11) DEFAULT NULL,
  `top_up_by` varchar(100) DEFAULT 'user',
  `ip_address` varchar(100) DEFAULT NULL,
  `franchise_id` int(11) DEFAULT NULL,
  `master_franchise_id` int(11) NOT NULL DEFAULT '0',
  `roi_status` enum('Active','Inactive') DEFAULT 'Active',
  `roi_stop_status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-Active, 0-Inactive',
  `top_up_type` int(11) DEFAULT '0' COMMENT '0-direct top up,1-free top up,2-admin top up,3-self topup',
  `payment_type` enum('INR','BTC') NOT NULL DEFAULT 'BTC',
  `usd_rate` double NOT NULL DEFAULT '0',
  `binary_pass_status` int(11) DEFAULT '0' COMMENT '1-binary pass , 0- binary not pass',
  `level_pass_status` int(11) DEFAULT '0',
  `direct_pass_status` int(11) DEFAULT '0',
  `binary_pass_time` datetime DEFAULT NULL,
  `withdraw` double DEFAULT '0',
  `old_status` enum('0','1') DEFAULT '0',
  `old_withdrawal` double DEFAULT '0',
  `check_hack` int(11) NOT NULL DEFAULT '0',
  `cross_verify_status` tinyint(4) DEFAULT '0' COMMENT '1-Checked,0-Not checked',
  `total_usd` varchar(20) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_status` enum('Active','Inactive') DEFAULT 'Active' COMMENT 'this tbl_users status',
  `last_roi_entry_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `total_roi_count` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_topup`
--

INSERT INTO `tbl_topup` (`srno`, `id`, `pin`, `amount`, `product_name`, `device`, `topupfrom`, `amount_roi`, `direct_roi`, `percentage`, `binary_percentage`, `binary_capping`, `total_income`, `type`, `entry_time`, `duration`, `top_up_by`, `ip_address`, `franchise_id`, `master_franchise_id`, `roi_status`, `roi_stop_status`, `top_up_type`, `payment_type`, `usd_rate`, `binary_pass_status`, `level_pass_status`, `direct_pass_status`, `binary_pass_time`, `withdraw`, `old_status`, `old_withdrawal`, `check_hack`, `cross_verify_status`, `total_usd`, `update_time`, `user_status`, `last_roi_entry_time`, `total_roi_count`) VALUES
(1, 2, '324648685363413', 50, 'Elegant $50-$4999', NULL, 'Admin Topup', 7.5, 5, '15.00', 10, 2000, 90, 1, '2021-12-15 20:35:15', 12, '1', NULL, NULL, 0, 'Inactive', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-05 20:35:15', 'Active', '2022-03-09 00:00:00', 12),
(3, 3, '193503274478723', 150, 'Elegant $50-$4999', 'web', 'Fund wallet (max 50%) + Setting Wallet', 22.5, 15, '15.00', 10, 2000, 270, 1, '2022-03-07 18:24:11', 12, '2', NULL, NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-07 09:24:11', 'Active', '2022-03-21 00:00:00', 2),
(5, 3, '714604276276689', 50, 'Elegant $50-$4999', 'web', 'Fund Wallet', 7.5, 5, '15.00', 10, 2000, 90, 1, '2022-03-11 18:54:13', 12, '3', NULL, NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-11 09:54:13', 'Active', '2022-03-18 00:00:00', 1),
(6, 3, '121378790080820', 50, 'Elegant $50-$4999', NULL, 'Admin Topup', 7.5, 5, '15.00', 10, 2000, 90, 1, '2021-11-15 19:15:59', 12, '1', NULL, NULL, 0, 'Inactive', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-11 10:15:59', 'Active', '2022-02-07 00:00:00', 12),
(7, 4, '209956259450906', 5000, 'Pro $5000-$24999', 'web', 'Fund Wallet', 800, 500, '16.00', 10, 4000, 9600, 2, '2022-03-15 20:45:36', 12, '2', NULL, NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-15 11:45:36', 'Active', '2022-03-22 00:00:00', 1),
(8, 3, '609326286891891', 1000, 'Elegant $50-$4999', 'web', 'Fund Wallet', 150, 100, '15.00', 10, 2000, 1800, 1, '2022-03-15 21:01:59', 12, '2', NULL, NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-15 12:01:59', 'Active', '2022-03-22 00:00:00', 1),
(9, 2, '140285396671521', 3000, 'Elegant $50-$4999', 'web', 'Fund Wallet', 450, 300, '15.00', 10, 2000, 5400, 1, '2021-12-22 14:35:38', 12, '2', NULL, NULL, 0, 'Inactive', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-22 05:35:38', 'Active', '2022-03-16 00:00:00', 12),
(10, 4, '292157477496169', 45000, 'Premium $25000-$79999', NULL, 'Admin Topup', 7650, 4500, '17.00', 10, 8000, 91800, 3, '2022-03-22 15:05:52', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-22 06:05:52', 'Active', '2022-03-22 15:05:52', 0),
(11, 3, '115901253129918', 80000, 'Ultra $80000-$149999', NULL, 'Admin Topup', 14400, 8000, '18.00', 10, 10000, 172800, 4, '2022-03-22 15:06:17', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-22 06:06:17', 'Active', '2022-03-22 15:06:17', 0),
(12, 5, '152091954677645', 5000, 'Pro $5000-$24999', NULL, 'Admin Topup', 800, 500, '16.00', 10, 4000, 9600, 2, '2022-03-22 21:43:53', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-22 12:43:53', 'Active', '2022-03-22 21:43:53', 0),
(13, 6, '189992355356019', 25000, 'Premium $25000-$79999', NULL, 'Admin Topup', 4250, 2500, '17.00', 10, 8000, 51000, 3, '2022-03-22 21:44:40', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-22 12:44:40', 'Active', '2022-03-22 21:44:40', 0),
(14, 7, '119873877359600', 4999, 'Elegant $50-$4999', NULL, 'Admin Topup', 749.85, 499.9, '15.00', 10, 2000, 8998.2, 1, '2022-03-22 21:52:03', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-22 12:52:03', 'Active', '2022-03-22 21:52:03', 0),
(15, 8, '250183943204438', 20000, 'Pro $5000-$24999', NULL, 'Admin Topup', 3200, 2000, '16.00', 10, 4000, 38400, 2, '2022-03-22 21:52:23', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-22 12:52:23', 'Active', '2022-03-22 21:52:23', 0),
(16, 9, '224596370306070', 26000, 'Premium $25000-$79999', NULL, 'Admin Topup', 4420, 2600, '17.00', 10, 8000, 53040, 3, '2022-03-22 21:52:50', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-22 12:52:50', 'Active', '2022-03-22 21:52:50', 0),
(17, 3, '320789271422391', 100, 'Elegant $50-$4999', 'web', 'Fund wallet (max 50%) + Setting Wallet', 15, 10, '15.00', 10, 2000, 180, 1, '2022-03-22 22:50:44', 12, '2', NULL, NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-22 13:50:44', 'Active', '2022-03-22 22:50:44', 0),
(18, 2, '309403816291603', 300, 'Elegant $50-$4999', 'web', 'Fund wallet (max 50%) + Setting Wallet', 45, 30, '15.00', 10, 2000, 540, 1, '2022-03-22 22:51:17', 12, '2', NULL, NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-22 13:51:17', 'Active', '2022-03-22 22:51:17', 0),
(19, 12, '346396051022534', 1000, 'Elegant $50-$4999', NULL, 'Admin Topup', 150, 100, '15.00', 10, 2000, 1800, 1, '2022-03-25 09:33:13', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 09:33:13', 'Active', '2022-03-25 18:33:13', 0),
(20, 10, '345390914494828', 1500, 'Elegant $50-$4999', NULL, 'Admin Topup', 225, 150, '15.00', 10, 2000, 2700, 1, '2022-03-25 09:33:30', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 09:33:30', 'Active', '2022-03-25 18:33:30', 0),
(21, 12, '306003158472291', 2500, 'Elegant $50-$4999', NULL, 'Admin Topup', 375, 250, '15.00', 10, 2000, 4500, 1, '2022-03-25 09:36:34', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 09:36:34', 'Active', '2022-03-25 18:36:34', 0),
(22, 10, '270182945518531', 2000, 'Elegant $50-$4999', NULL, 'Admin Topup', 300, 200, '15.00', 10, 2000, 3600, 1, '2022-03-25 09:37:01', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 09:37:01', 'Active', '2022-03-25 18:37:01', 0),
(23, 13, '308143735503425', 1000, 'Elegant $50-$4999', NULL, 'Admin Topup', 150, 100, '15.00', 10, 2000, 1800, 1, '2022-03-25 10:58:23', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 10:58:23', 'Active', '2022-03-25 19:58:23', 0),
(24, 11, '224034885623819', 1500, 'Elegant $50-$4999', NULL, 'Admin Topup', 225, 150, '15.00', 10, 2000, 2700, 1, '2022-03-25 10:58:49', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 10:58:49', 'Active', '2022-03-25 19:58:49', 0),
(25, 13, '819329313645018', 5000, 'Pro $5000-$24999', NULL, 'Admin Topup', 800, 500, '16.00', 10, 4000, 9600, 2, '2022-03-25 11:48:50', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 11:48:50', 'Active', '2022-03-25 20:48:50', 0),
(26, 11, '233086430598294', 3000, 'Elegant $50-$4999', NULL, 'Admin Topup', 450, 300, '15.00', 10, 2000, 5400, 1, '2022-03-25 11:49:17', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 11:49:17', 'Active', '2022-03-25 20:49:17', 0),
(27, 13, '151480026941455', 4999, 'Elegant $50-$4999', NULL, 'Admin Topup', 749.85, 499.9, '15.00', 10, 2000, 8998.2, 1, '2022-03-25 11:57:56', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 11:57:56', 'Active', '2022-03-25 20:57:56', 0),
(28, 11, '285571233628893', 6000, 'Pro $5000-$24999', NULL, 'Admin Topup', 960, 600, '16.00', 10, 4000, 11520, 2, '2022-03-25 11:58:19', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 11:58:19', 'Active', '2022-03-25 20:58:19', 0),
(29, 13, '989447525798791', 25000, 'Premium $25000-$79999', NULL, 'Admin Topup', 4250, 2500, '17.00', 10, 8000, 51000, 3, '2022-03-25 12:00:28', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 12:00:28', 'Active', '2022-03-25 21:00:28', 0),
(30, 11, '140352549557042', 35000, 'Premium $25000-$79999', NULL, 'Admin Topup', 5950, 3500, '17.00', 10, 8000, 71400, 3, '2022-03-25 12:00:46', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 12:00:46', 'Active', '2022-03-25 21:00:46', 0),
(31, 13, '229965270381482', 80000, 'Ultra $80000-$149999', NULL, 'Admin Topup', 14400, 8000, '18.00', 10, 10000, 172800, 4, '2022-03-25 12:03:17', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 12:03:17', 'Active', '2022-03-25 21:03:17', 0),
(32, 11, '920718189253663', 90000, 'Ultra $80000-$149999', NULL, 'Admin Topup', 16200, 9000, '18.00', 10, 10000, 194400, 4, '2022-03-25 12:03:36', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 12:03:36', 'Active', '2022-03-25 21:03:36', 0),
(33, 13, '310881283166009', 1000000, 'Ace $150000-$1000000', NULL, 'Admin Topup', 200000, 100000, '20.00', 10, 15000, 2400000, 5, '2022-03-25 12:10:23', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 12:10:23', 'Active', '2022-03-25 21:10:23', 0),
(34, 11, '550489673671412', 1000000, 'Ace $150000-$1000000', NULL, 'Admin Topup', 200000, 100000, '20.00', 10, 15000, 2400000, 5, '2022-03-25 12:10:44', 12, '1', NULL, NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-25 12:10:44', 'Active', '2022-03-25 21:10:44', 0),
(35, 3, '283368716643704', 100, 'Elegant $50-$4999', 'web', 'Fund wallet (max 80 %) + Development Bonus (min 20 %)', 15, 10, '15.00', 10, 2000, 180, 1, '2022-03-28 13:08:16', 12, '3', NULL, NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-28 13:08:16', 'Active', '2022-03-28 22:08:16', 0),
(36, 13, '213854182267882', 650, 'Elegant $50-$4999', 'web', 'Fund wallet (max 40 %) + Development Bonus (min 60 %)', 97.5, 65, '15.00', 10, 2000, 1170, 1, '2022-03-30 12:45:32', 12, '13', '108.162.241.68', NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-30 12:45:32', 'Active', '2022-03-30 21:45:32', 0),
(37, 2, '770087029508076', 50, 'Elegant $50-$4999', '-', 'Fund Wallet', 7.5, 5, '15.00', 10, 2000, 90, 1, '2022-03-30 12:48:24', 12, '2', '108.162.241.14', NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-30 12:48:24', 'Active', '2022-03-30 21:48:24', 0),
(38, 2, '329556335994960', 50, 'Elegant $50-$4999', '-', 'Fund wallet (max 70 %) + Development Bonus (min 30 %)', 7.5, 5, '15.00', 10, 2000, 90, 1, '2022-03-30 13:10:35', 12, '2', '108.162.241.22', NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-30 13:10:35', 'Active', '2022-03-30 22:10:35', 0),
(39, 2, '218109550252264', 51, 'Elegant $50-$4999', '-', 'Fund wallet (max 70 %) + Development Bonus (min 30 %)', 7.65, 5.1, '15.00', 10, 2000, 91.8, 1, '2022-03-30 13:14:08', 12, '2', '108.162.241.22', NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-30 13:14:08', 'Active', '2022-03-30 22:14:08', 0),
(40, 2, '315252605281813', 52, 'Elegant $50-$4999', '-', 'Fund wallet (max 70 %) + Development Bonus (min 30 %)', 7.8, 5.2, '15.00', 10, 2000, 93.6, 1, '2022-03-30 13:31:33', 12, '2', '108.162.242.11', NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-30 13:31:33', 'Active', '2022-03-30 22:31:33', 0),
(41, 2, '194472763757819', 100, 'Elegant $50-$4999', '-', 'Fund wallet (max 70 %) + Development Bonus (min 30 %)', 15, 10, '15.00', 10, 2000, 180, 1, '2022-03-31 05:22:10', 12, '2', '108.162.241.68', NULL, 0, 'Active', 1, 3, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-31 05:22:10', 'Active', '2022-03-31 14:22:10', 0),
(42, 14, '191173285684060', 250, 'Elegant $50-$4999', NULL, 'Admin Topup', 37.5, 25, '15.00', 10, 2000, 450, 1, '2022-03-31 07:48:17', 12, '1', '108.162.241.68', NULL, 0, 'Active', 1, 2, 'BTC', 0, 1, 0, 0, NULL, 0, '0', 0, 0, 0, '0.001', '2022-03-31 07:48:17', 'Active', '2022-03-31 16:48:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topup_booking_product`
--

CREATE TABLE `tbl_topup_booking_product` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) DEFAULT '',
  `pin` varchar(100) DEFAULT '',
  `amount` decimal(10,2) DEFAULT '0.00',
  `percentage` decimal(10,2) DEFAULT '0.00',
  `type` int(11) DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topup_ico`
--

CREATE TABLE `tbl_topup_ico` (
  `srno` int(11) NOT NULL,
  `id` varchar(50) DEFAULT '',
  `pin` varchar(100) DEFAULT '',
  `amount` decimal(10,2) DEFAULT '0.00',
  `percentage` decimal(10,2) DEFAULT '0.00',
  `type` int(11) DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `top_up_by` varchar(100) DEFAULT 'user',
  `roi_status` enum('Active','Inactive') DEFAULT 'Active',
  `top_up_type` int(11) DEFAULT '0' COMMENT '0-direct top up,1-free top up,2-admin top up',
  `usd_rate` double NOT NULL,
  `binary_pass_status` int(11) DEFAULT '1' COMMENT '1-binary pass , 0- binary not pass',
  `binary_pass_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topup_old`
--

CREATE TABLE `tbl_topup_old` (
  `srno` int(11) NOT NULL,
  `id` varchar(50) DEFAULT '',
  `pin` varchar(100) DEFAULT '',
  `amount` double DEFAULT '0',
  `percentage` decimal(10,2) DEFAULT '0.00',
  `type` int(11) DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `top_up_by` varchar(100) DEFAULT 'user',
  `roi_status` enum('Active','Inactive') DEFAULT 'Active',
  `top_up_type` int(11) DEFAULT '0' COMMENT '0-direct top up,1-free top up,2-admin top up,3-self topup',
  `usd_rate` double NOT NULL DEFAULT '0',
  `binary_pass_status` int(11) DEFAULT '0' COMMENT '1-binary pass , 0- binary not pass',
  `level_pass_status` int(11) DEFAULT '0',
  `direct_pass_status` int(11) DEFAULT '0',
  `binary_pass_time` datetime DEFAULT NULL,
  `withdraw` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topup_request`
--

CREATE TABLE `tbl_topup_request` (
  `srno` int(11) NOT NULL,
  `id` varchar(50) DEFAULT '',
  `pin` varchar(100) DEFAULT '',
  `amount` double DEFAULT '0',
  `amount_roi` double DEFAULT '0',
  `percentage` decimal(10,2) DEFAULT '0.00',
  `type` int(11) DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `top_up_by` varchar(100) DEFAULT 'user',
  `franchise_id` int(11) DEFAULT NULL,
  `roi_status` enum('Active','Inactive') DEFAULT 'Active',
  `admin_status` enum('pending','approve','reject') NOT NULL DEFAULT 'pending',
  `top_up_type` int(11) DEFAULT '0' COMMENT '0-direct top up,1-free top up,2-admin top up,3-self topup',
  `attachment` varchar(1000) NOT NULL,
  `approve_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reject_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_type` enum('INR','BTC') NOT NULL DEFAULT 'BTC',
  `usd_rate` double NOT NULL DEFAULT '0',
  `binary_pass_status` int(11) DEFAULT '0' COMMENT '1-binary pass , 0- binary not pass',
  `level_pass_status` int(11) DEFAULT '0',
  `direct_pass_status` int(11) DEFAULT '0',
  `binary_pass_time` datetime DEFAULT NULL,
  `withdraw` double DEFAULT '0',
  `old_status` enum('0','1') DEFAULT '0',
  `old_withdrawal` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topup_roi_status_logs`
--

CREATE TABLE `tbl_topup_roi_status_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pin` varchar(100) DEFAULT NULL,
  `roi_last_status` tinyint(4) DEFAULT NULL COMMENT '1-Active, 0-Inactive	',
  `roi_current_status` tinyint(4) DEFAULT NULL COMMENT '1-Active, 0-Inactive	',
  `entry_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_topup_roi_status_logs`
--

INSERT INTO `tbl_topup_roi_status_logs` (`id`, `user_id`, `pin`, `roi_last_status`, `roi_current_status`, `entry_time`) VALUES
(1, 2, '140285396671521', 1, 0, '2022-03-22 14:56:11'),
(2, 2, '140285396671521', 0, 1, '2022-03-22 15:01:53'),
(3, 2, '140285396671521', 1, 0, '2022-03-22 15:07:05'),
(4, 2, '140285396671521', 0, 1, '2022-03-22 18:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topup_wallet`
--

CREATE TABLE `tbl_topup_wallet` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `from_user_id` varchar(20) DEFAULT '',
  `amount` decimal(10,2) DEFAULT '0.00',
  `status` enum('Paid','Unpaid') DEFAULT 'Unpaid',
  `entry_time` datetime DEFAULT '0000-00-00 00:00:00',
  `type` int(11) DEFAULT '0',
  `remark` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `id` int(11) NOT NULL,
  `ndate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sub` varchar(100) DEFAULT '',
  `text` text,
  `expdate` varchar(100) DEFAULT '',
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction_invoices`
--

CREATE TABLE `tbl_transaction_invoices` (
  `srno` int(11) NOT NULL,
  `invoice_id` varchar(50) NOT NULL DEFAULT '0',
  `id` int(11) DEFAULT '0',
  `hash_rate` varchar(50) DEFAULT NULL,
  `hash_unit` double DEFAULT NULL,
  `price_unit` double DEFAULT NULL,
  `price_in_usd` double DEFAULT '0',
  `currency_price` double NOT NULL DEFAULT '0',
  `payment_mode` varchar(20) DEFAULT 'BTC',
  `product_url` text,
  `status_url` text,
  `refund_status` tinyint(4) DEFAULT '0' COMMENT '1-Claimed,0-Pending',
  `address` varchar(100) DEFAULT '',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(100) DEFAULT NULL,
  `plan_id` int(11) DEFAULT '0',
  `in_status` int(11) DEFAULT '0' COMMENT '0:Pending,1:Auto Confirmed,2:Expired',
  `remark` text,
  `trans_hash` text,
  `trans_id` text,
  `rec_amt` double DEFAULT '0',
  `top_up_status` int(11) DEFAULT '0' COMMENT '0-not top up , 1- top up done',
  `top_up_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transaction_invoices`
--

INSERT INTO `tbl_transaction_invoices` (`srno`, `invoice_id`, `id`, `hash_rate`, `hash_unit`, `price_unit`, `price_in_usd`, `currency_price`, `payment_mode`, `product_url`, `status_url`, `refund_status`, `address`, `entry_time`, `ip_address`, `plan_id`, `in_status`, `remark`, `trans_hash`, `trans_id`, `rec_amt`, `top_up_status`, `top_up_date`) VALUES
(1, '193547476224199', 2, 'TH', 50, 1, 50, 0.00121, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC2X69GXFEUWP4ZDJAZBH6KG&key=67fc7aa3781452a646da9c0a2e350199', 0, '3DnamShTPM3gdqphESg6rHZbGe2Zurd8wy', '2022-03-04 15:48:33', NULL, NULL, 2, NULL, NULL, 'CPGC2X69GXFEUWP4ZDJAZBH6KG', 0, 0, NULL),
(2, '154334649362704', 2, 'TH', 100, 1, 100, 0.00242, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC1IBF4BOAR60YCC1CUQRQX3&key=91bd4550bcbfeffef98bc51cb9ee7d82', 0, '35CE9Pf9gwsMc6vDxRuRDFzfpKYKqKVHv3', '2022-03-04 15:59:48', NULL, NULL, 2, NULL, NULL, 'CPGC1IBF4BOAR60YCC1CUQRQX3', 0, 0, NULL),
(3, '106631095386370', 2, 'TH', 10, 1, 10, 0.00024, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC26JAFY3ZLDT4M8QYLS9I9I&key=7764d7a5909d43e99e59eef482ae89c1', 0, '3Efpyt9JRnoGtJLPMVjdptBMAA7GiYs7GN', '2022-03-04 17:24:13', NULL, NULL, 2, NULL, NULL, 'CPGC26JAFY3ZLDT4M8QYLS9I9I', 0, 0, NULL),
(4, '156829637991270', 2, 'TH', 100, 1, 100, 0.25308, 'BNB.BSC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC0HQTLYMDI6DJVMICJBSEZ7&key=6718ca75434d48c2e1830ca04b6a6c1f', 0, '0xe73b062eb14618dfdbd451ca8c200b1321b9677c', '2022-03-04 22:02:46', NULL, NULL, 2, NULL, NULL, 'CPGC0HQTLYMDI6DJVMICJBSEZ7', 0, 0, NULL),
(5, '111305027091748', 2, 'TH', 20, 1, 20, 19.98692, 'USDT.TRC20', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC6ZRA3WJIPGUOATXDNOQVKV&key=fadf3a7abbab2bc13feba37473f3efd0', 0, 'TCpujZv4RvhSD8mWpewMZFZPNmhLpNYiNn', '2022-03-08 18:37:09', NULL, NULL, 2, NULL, NULL, 'CPGC6ZRA3WJIPGUOATXDNOQVKV', 0, 0, NULL),
(6, '264483671900517', 14, 'TH', 100, 1, 100, 1432.11976, 'TRX', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC3YSINOCFBWP94UTAHBIN8H&key=25b4eec06818183348b2678dbfc8e682', 0, 'TRJdsPUVDnJ9ghwEZjCA2Jea1DCBUu8dsM', '2022-03-30 07:00:19', NULL, NULL, 0, NULL, NULL, 'CPGC3YSINOCFBWP94UTAHBIN8H', 0, 0, NULL),
(7, '165325984293392', 14, 'TH', 5, 1, 5, 71.60599, 'TRX', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC1M7K9DCIHHZL5M761VB1AU&key=931d6ed2577b61191b4706ba38ce3318', 0, 'TK5NLZvQ2SApRECX848niUtN6s4rBkkwqd', '2022-03-30 07:05:24', NULL, NULL, 1, NULL, NULL, 'CPGC1M7K9DCIHHZL5M761VB1AU', 0, 1, '2022-03-30 16:24:05'),
(8, '459554455006875', 14, 'TH', 5, 1, 5, 71.61569, 'TRX', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC20S60NSBCXBI6C5UPCB2VH&key=cb0223c033b7b8dcf9c0e92712b5b2ec', 0, 'TJcT5qVwVW81MNPS7MDMTxJWesn6Dc5YRR', '2022-03-30 08:29:54', NULL, NULL, 0, NULL, NULL, 'CPGC20S60NSBCXBI6C5UPCB2VH', 0, 0, NULL),
(9, '784409321320521', 2, 'TH', 5, 1, 5, 0.00011, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC0IE11B8GPHAYNK01EEKZKK&key=1052f74f72e251f21b1fcffd12ceaf16', 0, '32fdy18h4mNhcw4yKhJVVTxwYpe1uuPZMA', '2022-03-30 12:38:37', '108.162.241.76', NULL, 0, NULL, NULL, 'CPGC0IE11B8GPHAYNK01EEKZKK', 0, 0, NULL),
(10, '284602683717290', 13, 'TH', 50000, 1, 50000, 377.64502, 'LTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC1RJDQMOYWHBLREZXBAWZJQ&key=857c98b1b901870cb448eaaacd2b5934', 0, 'MV1ZBmfNmxfamDcep4ZsoUXCSkYB2buCeu', '2022-03-30 13:05:02', '108.162.241.68', NULL, 0, NULL, NULL, 'CPGC1RJDQMOYWHBLREZXBAWZJQ', 0, 0, NULL),
(11, '285853291530196', 2, 'TH', 6, 1, 6, 0.00013, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC2JZMTIZSHSJET0RVBSDAU5&key=e22c41f1d06b44a67ca11bbe02805372', 0, '39usyphxN5SXvsQzbpC3Aycw35gnpV3jT6', '2022-03-30 13:17:28', '108.162.241.22', NULL, 0, NULL, NULL, 'CPGC2JZMTIZSHSJET0RVBSDAU5', 0, 0, NULL),
(12, '280623104291020', 2, 'TH', 7, 1, 7, 0.00015, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC5KUJGHJVTONJT6U9IM4LUM&key=b2ad5b5a2d12d80c6c723defcc61cb33', 0, '3LLCpNnJ82t2Brs8nvMtuRU6AdyBFAyb7E', '2022-03-30 13:17:38', '108.162.241.22', NULL, 0, NULL, NULL, 'CPGC5KUJGHJVTONJT6U9IM4LUM', 0, 0, NULL),
(13, '300902688989381', 2, 'TH', 8, 1, 8, 0.00017, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC3KAK0AGF92RH7NX1P3BKSS&key=0feb3adc3914d3a3582c31c568e67c32', 0, '3HNvGpqtms8gH4u2XU75bHMRHuAhLrhfe4', '2022-03-30 13:17:51', '108.162.241.22', NULL, 0, NULL, NULL, 'CPGC3KAK0AGF92RH7NX1P3BKSS', 0, 0, NULL),
(14, '223960431171037', 2, 'TH', 10, 1, 10, 0.00021, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC6F4IJKFUODFQEV1QM3NTQB&key=b492724e030b9264f85745ce548337ba', 0, '3K3L23c8bgvhf9S756vTTVxgfMDajhFUEt', '2022-03-31 05:09:49', '108.162.241.68', NULL, 0, NULL, NULL, 'CPGC6F4IJKFUODFQEV1QM3NTQB', 0, 0, NULL),
(15, '132817131019569', 2, 'TH', 29, 1, 29, 0.22424, 'LTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC0I5EHA5IMONTIZZJK3S96A&key=03a5822602ec6a250511b1178d25a06d', 0, 'MNipYiGZP1MBN9oUxFwckLAihLjtte4zn2', '2022-03-31 05:12:26', '108.162.241.68', NULL, 0, NULL, NULL, 'CPGC0I5EHA5IMONTIZZJK3S96A', 0, 0, NULL),
(16, '157194843487053', 14, 'TH', 100, 1, 100, 0.00212, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC4VKTRIVLSWVJJBKQK4HARP&key=7dc521231de461cd4db89bebacdb5712', 0, '3PuwjHhr97ys8PRUtqFf1S1SZ3zJ6xVsNg', '2022-03-31 06:38:49', '108.162.241.22', NULL, 0, NULL, NULL, 'CPGC4VKTRIVLSWVJJBKQK4HARP', 0, 0, NULL),
(17, '930273523937800', 14, 'TH', 333, 1, 333, 4441.16216, 'TRX', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGC1W4UQKCU6ZXCDCQUI2PDUQ&key=0ba6c4bef346db8fc11e6c1ee369bbe4', 0, 'TEBUdHMMchNQedhWA4MdGSBcdRhV5wvvii', '2022-03-31 06:39:27', '108.162.241.22', NULL, 0, NULL, NULL, 'CPGC1W4UQKCU6ZXCDCQUI2PDUQ', 0, 0, NULL),
(18, '105978353293638', 2, 'TH', 100, 1, 100, 1465.25812, 'DOGE', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGG1TPSAPCMKQMCUXHGICJLDX&key=e0aff67cdd9e24ce65fde2838324f045', 0, 'DBTgvxuuMDAf3pzL3UdEghfWWhxb6WL6vy', '2022-07-21 15:36:23', '::1', NULL, 0, NULL, NULL, 'CPGG1TPSAPCMKQMCUXHGICJLDX', 0, 0, NULL),
(19, '188925348752014', 2, 'TH', 1000, 1, 1000, 0.04742, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGG3D4PEVUTBRL25C51EP28XB&key=bc758cc7af24e94ee412232d6ca99ad9', 0, '35PetustroqtemkYgqGRqLhKkK5rj6WZnX', '2022-07-26 16:14:03', '::1', NULL, 0, NULL, NULL, 'CPGG3D4PEVUTBRL25C51EP28XB', 0, 0, NULL),
(20, '215798161859571', 2, 'TH', 1000, 1, 1000, 0.04742, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGG1URFHTGOXXUIBYUN5QLNAP&key=c25ba7c59bb74efa72223f82d768b7fe', 0, '31qS51bSDUNKpnXRjR14AcP8qBBHBf9qy7', '2022-07-26 16:14:06', '::1', NULL, 0, NULL, NULL, 'CPGG1URFHTGOXXUIBYUN5QLNAP', 0, 0, NULL),
(21, '175847211975914', 3, 'TH', 100, 1, 100, 0.00435, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGG18YJD8CE0ZK1C1QKMRHEYG&key=4a741956e735a0cade7c5eabc5019e36', 0, '37UXrseE9h5sC5RPST5o74QK4QLFkD6o5y', '2022-07-28 13:48:13', '::1', NULL, 0, NULL, NULL, 'CPGG18YJD8CE0ZK1C1QKMRHEYG', 0, 0, NULL),
(22, '305265311225465', 3, 'TH', 100, 1, 100, 0.00435, 'BTC', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGG3IKLSRAPAUOQWAABHBPRAA&key=8292d5f19047abb323d89fb55b15a1d2', 0, '3KDD1SpKGNwjWajsMGebik8FUVBL8cDF6L', '2022-07-28 13:48:14', '::1', NULL, 0, NULL, NULL, 'CPGG3IKLSRAPAUOQWAABHBPRAA', 0, 0, NULL),
(23, '220107661519760', 3, 'TH', 100, 1, 100, 1458.91895, 'TRX', 'coinpayment', 'https://www.coinpayments.net/index.php?cmd=checkout&id=CPGG4XUDLIYYFAMEJTYVFPFLQX&key=b53c62e267ef7f7ce2b699488ebbc891', 0, 'TEkWhDitQSGrdEhwXUNBWLKTaBDkHzopri', '2022-07-28 13:51:45', '::1', NULL, 0, NULL, NULL, 'CPGG4XUDLIYYFAMEJTYVFPFLQX', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upline`
--

CREATE TABLE `tbl_upline` (
  `id` int(11) NOT NULL,
  `level_id` int(11) DEFAULT '0',
  `percentage` decimal(10,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_upline_income`
--

CREATE TABLE `tbl_upline_income` (
  `id` int(11) NOT NULL,
  `amount` decimal(10,4) DEFAULT '250.0000',
  `tax_amount` decimal(10,4) DEFAULT '0.0000',
  `amt_pin` decimal(10,2) DEFAULT '0.00',
  `level` int(11) DEFAULT '0',
  `toUserId` varchar(100) DEFAULT '',
  `fromUserId` varchar(100) DEFAULT '',
  `type` int(11) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uploadslip`
--

CREATE TABLE `tbl_uploadslip` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `message` text,
  `attachment` text,
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usd_total`
--

CREATE TABLE `tbl_usd_total` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `USD` double NOT NULL,
  `total` varchar(200) NOT NULL,
  `hourly_status` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `ref_user_id` varchar(100) DEFAULT '',
  `fullname` varchar(100) DEFAULT '',
  `nominee_name` varchar(100) DEFAULT '',
  `relation` varchar(100) DEFAULT '',
  `pin_number` varchar(50) DEFAULT '',
  `amount` decimal(10,2) DEFAULT '0.00',
  `city` varchar(100) DEFAULT '',
  `state` varchar(100) DEFAULT '',
  `mobile` varchar(30) DEFAULT '',
  `email` varchar(100) DEFAULT '',
  `wallet_address` varchar(255) DEFAULT NULL,
  `gender` varchar(100) DEFAULT '',
  `account_no` varchar(100) DEFAULT '',
  `holder_name` varchar(200) DEFAULT '',
  `bank_name` varchar(100) DEFAULT '',
  `branch_name` varchar(100) DEFAULT '',
  `pan_no` varchar(50) DEFAULT '',
  `ifsc_code` varchar(50) DEFAULT '',
  `btc_address` text,
  `paypal_address` varchar(200) DEFAULT NULL,
  `perfect_money_address` text,
  `trn_address` varchar(200) DEFAULT NULL,
  `bnb_address` varchar(200) DEFAULT NULL,
  `password` text,
  `tr_passwd` varchar(50) DEFAULT '',
  `bcrypt_password` varchar(100) DEFAULT NULL,
  `position` tinyint(1) DEFAULT '0',
  `l_c_count` int(11) DEFAULT '0',
  `r_c_count` int(11) DEFAULT '0',
  `l_bv` double DEFAULT '0',
  `r_bv` double DEFAULT '0',
  `curr_l_bv` double DEFAULT '0' COMMENT 'left binary current balance',
  `curr_r_bv` double DEFAULT '0' COMMENT 'right binary current balance',
  `l_ace` int(11) DEFAULT '0',
  `r_ace` int(11) DEFAULT '0',
  `l_herald` int(11) DEFAULT '0',
  `r_herald` int(11) DEFAULT '0',
  `l_crusader` int(11) DEFAULT '0',
  `r_crusader` int(11) DEFAULT '0',
  `l_guardian` int(11) DEFAULT '0',
  `r_guardian` int(11) DEFAULT '0',
  `l_commander` int(11) DEFAULT '0',
  `r_commander` int(11) DEFAULT '0',
  `l_valorant` int(11) DEFAULT '0',
  `r_valorant` int(11) DEFAULT '0',
  `l_legend` int(11) DEFAULT '0',
  `r_legend` int(11) DEFAULT '0',
  `l_relic` int(11) DEFAULT '0',
  `r_relic` int(11) DEFAULT '0',
  `l_almighty` int(11) DEFAULT '0',
  `r_almighty` int(11) DEFAULT '0',
  `l_conqueror` int(11) DEFAULT '0',
  `r_conqueror` int(11) DEFAULT '0',
  `l_titan` int(11) DEFAULT '0',
  `r_titan` int(11) DEFAULT '0',
  `l_lmmortal` int(11) DEFAULT '0',
  `r_immortal` int(11) DEFAULT '0',
  `l_ace_check_status` int(11) DEFAULT '0',
  `r_ace_check_status` int(11) DEFAULT '0',
  `power_l_bv` double DEFAULT '0' COMMENT 'used for left direct business',
  `power_r_bv` double DEFAULT '0' COMMENT 'used for right direct business',
  `contest_lbv` int(11) DEFAULT '0',
  `contest_rbv` int(11) DEFAULT '0',
  `binary_qualified_status` int(5) NOT NULL DEFAULT '0',
  `vl_bv` decimal(10,2) DEFAULT '0.00',
  `vr_bv` decimal(10,2) DEFAULT '0.00',
  `business_l_bv` double NOT NULL DEFAULT '0',
  `business_r_bv` double NOT NULL DEFAULT '0',
  `confirmed_users` int(11) DEFAULT '0',
  `virtual_parent_id` int(11) DEFAULT '0',
  `withdraw_status` tinyint(4) DEFAULT '1' COMMENT '1-ON,0-OFF',
  `auto_withdraw_status` tinyint(4) DEFAULT '1' COMMENT '1-ON,0-OFF',
  `status` enum('Active','Inactive') DEFAULT 'Inactive',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(100) DEFAULT '',
  `roi_stop` int(11) DEFAULT '1',
  `address` varchar(255) DEFAULT '',
  `address1` varchar(255) DEFAULT '',
  `country` varchar(100) DEFAULT NULL,
  `ethereum` text,
  `doge_address` varchar(200) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT '',
  `pincode1` varchar(20) DEFAULT '',
  `state1` varchar(100) DEFAULT '',
  `city1` varchar(100) DEFAULT '',
  `delivery_status` enum('Pending','Delivered','Cancel') DEFAULT 'Pending',
  `delivery_note` varchar(1200) DEFAULT '',
  `designation` varchar(255) DEFAULT '',
  `old_status` int(11) DEFAULT '0',
  `delivery_mode` varchar(100) DEFAULT '',
  `pdc_id` bigint(20) DEFAULT '0',
  `verifyaccountstatus` int(11) DEFAULT '0',
  `verifytoken` varchar(100) DEFAULT NULL,
  `mobileverify_status` int(11) DEFAULT '0',
  `mobile_otp` varchar(400) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `tempf` varchar(10) DEFAULT NULL,
  `topup_status` enum('0','1') DEFAULT '0',
  `notification` int(11) DEFAULT '1',
  `stop_roi_time` timestamp NULL DEFAULT NULL,
  `pindate` timestamp NULL DEFAULT NULL,
  `confirm_date` timestamp NULL DEFAULT NULL,
  `google2fa_secret` text,
  `google2fa_status` enum('enable','disable') DEFAULT 'disable',
  `service_date3` timestamp NULL DEFAULT NULL,
  `dispatch_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `remember_token` varchar(200) NOT NULL,
  `bch_address` varchar(255) DEFAULT NULL,
  `ltc_address` varchar(255) DEFAULT NULL,
  `usdt_trc20_address` varchar(200) DEFAULT NULL,
  `unique_user_id` varchar(255) DEFAULT NULL,
  `is_franchise` enum('0','1') NOT NULL DEFAULT '0',
  `income_per` int(11) NOT NULL DEFAULT '3',
  `facebook_link` varchar(100) NOT NULL,
  `twitter_link` varchar(100) NOT NULL,
  `linkedin_link` varchar(100) NOT NULL,
  `instagram_link` varchar(100) NOT NULL,
  `topup_status_check` int(11) NOT NULL DEFAULT '0',
  `blockby_cron` int(11) NOT NULL DEFAULT '0',
  `rank` varchar(10) DEFAULT NULL,
  `structure_id` int(11) NOT NULL,
  `temp_pass` varchar(250) DEFAULT NULL,
  `reg_mail_status` int(11) DEFAULT '0',
  `invalid_login_attempt` int(11) NOT NULL DEFAULT '0',
  `ip_address` varchar(50) DEFAULT NULL,
  `user_token` text,
  `ublock_ip_address_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `user_id`, `ref_user_id`, `fullname`, `nominee_name`, `relation`, `pin_number`, `amount`, `city`, `state`, `mobile`, `email`, `wallet_address`, `gender`, `account_no`, `holder_name`, `bank_name`, `branch_name`, `pan_no`, `ifsc_code`, `btc_address`, `paypal_address`, `perfect_money_address`, `trn_address`, `bnb_address`, `password`, `tr_passwd`, `bcrypt_password`, `position`, `l_c_count`, `r_c_count`, `l_bv`, `r_bv`, `curr_l_bv`, `curr_r_bv`, `l_ace`, `r_ace`, `l_herald`, `r_herald`, `l_crusader`, `r_crusader`, `l_guardian`, `r_guardian`, `l_commander`, `r_commander`, `l_valorant`, `r_valorant`, `l_legend`, `r_legend`, `l_relic`, `r_relic`, `l_almighty`, `r_almighty`, `l_conqueror`, `r_conqueror`, `l_titan`, `r_titan`, `l_lmmortal`, `r_immortal`, `l_ace_check_status`, `r_ace_check_status`, `power_l_bv`, `power_r_bv`, `contest_lbv`, `contest_rbv`, `binary_qualified_status`, `vl_bv`, `vr_bv`, `business_l_bv`, `business_r_bv`, `confirmed_users`, `virtual_parent_id`, `withdraw_status`, `auto_withdraw_status`, `status`, `entry_time`, `type`, `roi_stop`, `address`, `address1`, `country`, `ethereum`, `doge_address`, `pincode`, `pincode1`, `state1`, `city1`, `delivery_status`, `delivery_note`, `designation`, `old_status`, `delivery_mode`, `pdc_id`, `verifyaccountstatus`, `verifytoken`, `mobileverify_status`, `mobile_otp`, `flag`, `tempf`, `topup_status`, `notification`, `stop_roi_time`, `pindate`, `confirm_date`, `google2fa_secret`, `google2fa_status`, `service_date3`, `dispatch_date`, `delivery_date`, `dob`, `remember_token`, `bch_address`, `ltc_address`, `usdt_trc20_address`, `unique_user_id`, `is_franchise`, `income_per`, `facebook_link`, `twitter_link`, `linkedin_link`, `instagram_link`, `topup_status_check`, `blockby_cron`, `rank`, `structure_id`, `temp_pass`, `reg_mail_status`, `invalid_login_attempt`, `ip_address`, `user_token`, `ublock_ip_address_time`) VALUES
(1, 'admin', '0', 'Administrator', '', '', '', '0.00', '', '', '9049049005', 'albertpeter1122@gmail.com', NULL, '', '', '', '', '', '', '', '12345', NULL, NULL, NULL, NULL, 'eyJpdiI6IkVNRkNvTEJOc2lQNitFRDVlMU5vcFE9PSIsInZhbHVlIjoiMHNlOHBXZ1p6XC83K25hdVVJdW83Z3c9PSIsIm1hYyI6IjJjZDRlMDgzMjlmMjEzZWExMjEwYzRmNzcwZmI3NGM0ZGRkMTdlZjRjNDk1NDJjNzAzY2M5ZmVlZmVhZjU2NWYifQ==', '', '$2y$10$h2a3qu8jH8tcJziZLEr1O.Dwxv.2dShrhnjYi6brCkuSFpGBw2sde', 0, 13, 0, 2476451, 0, 2476451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4603, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 1, 1, 'Active', '2018-12-06 05:12:50', 'Admin', 1, '', '', '', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '6935083765', '0', 3, '', '', '', '', 0, 0, 'Relic', 0, '1', 1, 1, '::1', NULL, NULL),
(2, 'ED567890', '1', 'Martin S dsdsdf', '', '', '', '4603.00', '', '', '+43 5465 45434', 'rahul.yadav.551832@gmail.com', NULL, '', '', '', '', '', '', '', 'egfvsegbrtgbsrgbtrbtrfgbvrtgb', NULL, NULL, NULL, NULL, 'eyJpdiI6IlMxUEhYUlpUc3d4K01YRnFWeVJ1THc9PSIsInZhbHVlIjoiRlhidWZ0em9QOUNxOUQyb2dIXC9Qb3c9PSIsIm1hYyI6IjE0MzFkN2FlYzE4Yzg5ZjQzYjY2YTU2MGM2OTQyMjNhZmJkZDQyZjdlM2I5ZmQwYzU2NDgxMjFkMWJlOTMwODMifQ==', '$2y$10$ATDPyW3BXVtaRfNa0hXF9Ow1CHVN0u5P83WzlQUIZmS', '$2y$10$xoH11SUBcGg1kRbbtseMEuRzS7TrG2fsSReX/lKSzbr9DPjz70a5a', 1, 3, 9, 80000, 2391848, 0, 2311848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50000, 107450, 0, 0, 1, '0.00', '0.00', 0, 0, 0, 1, 1, 1, 'Active', '2022-03-04 14:03:33', '', 1, '', '', 'VG', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, 'a16d727b9822d32e5f103c66c8859c8c', NULL, NULL, NULL, 'X9692326', '0', 3, '', '', '', '', 0, 0, NULL, 0, '1', 1, 0, '::1', '6f145139120322f04a0d888eed905a81', NULL),
(3, 'X7496974', '2', 'q123123weasdasd', '', '', '', '81450.00', '', '', 'q123123weasdasd', 'greecemartin3@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6ImFFZVwvSmN2eDBqdUoyVFhtOVZZODlnPT0iLCJ2YWx1ZSI6Im9zNU1JVVJjZ3JZa255S2tFUHdLb0dwTHhPM2ZKT3BUdXVFNFNNVkRPTkU9IiwibWFjIjoiZjk2MGM0ZjdiNWQzZDQ3Yjk3ZWI1MGEyZDBiMzg4ZDcxZDVhNTQzZDMxMTA4MzExMzM3NmQyMTcwNmQ3ZDI4MiJ9', '$2y$10$AyyCZY4dWmtW/34w3wBX8OEFWZeXUZ291df26o.yzxj', '$2y$10$kj.yeu5uFcHPHIWPan7LseEt0wQsWMaJE8.bDi6MgR6u0oZbgA8m.', 2, 2, 6, 24999, 2285399, 0, 2260400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24999, 1139000, 0, 0, 1, '0.00', '0.00', 0, 0, 0, 2, 1, 1, 'Active', '2022-03-04 17:15:53', '', 1, '', '', 'VG', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '714b24bbea6bc862930d0d6431074f0e', NULL, NULL, NULL, 'X7496974', '0', 3, '', '', '', '', 0, 0, NULL, 0, '1', 1, 0, '::1', '5a3a661ea4f5ee1b79b30e1fef75f3e4', NULL),
(4, 'X5029651', '2', 'hvfvhf fjhnfjfn', '', '', '', '50000.00', '', '', '1234567898', 'greecemartin3@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IlZmdTRrKzhqUjQ4MVhPZFNJVDFRUHc9PSIsInZhbHVlIjoiTFpjaXVEbkZCOFB0Qndod0tmdTlKWXA0c091NnlPQkxlMU9JY3R0a1RLTT0iLCJtYWMiOiJiYWRlOTc0NGI4ZGU0NDVjNzMxZTdlNjA3OGJjYjU2MDEwNjZkOGI4ZmQ0NWYxNTAxZmQyNWRkYWFlYWRhOGU2In0=', '$2y$10$EmD5WKK.YRf/2nip5R86E.ZC4ISP3Nyp.uxLhyT.5DC', '$2y$10$ZcaLth3fSQq8FFR2l3OZPe/RJx53F5ktzALs3QwyzT78gIXLMd/.q', 1, 2, 0, 30000, 0, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 0, 0, 0, 1, '0.00', '0.00', 0, 0, 0, 2, 1, 1, 'Active', '2022-03-12 17:55:46', '', 1, '', '', 'VG', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '436a705b1cfec79ec919a427ddc86382', NULL, NULL, NULL, 'X5029651', '0', 3, '', '', '', '', 0, 0, NULL, 0, '1', 1, 0, NULL, NULL, NULL),
(5, 'X2995153', '4', 'Greece Martin', '', '', '', '5000.00', '', '', '74987654535', 'greecemartin3@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IkdjWTd6cjVCZnNOTzVOZWdkNUhyeFE9PSIsInZhbHVlIjoiMzkzOU0zNEVjc25aWURuc0NsT2duQT09IiwibWFjIjoiMjYxM2QwZDM0ZDVkY2RlYTc0MTY2ZmY1ODE1MWFlMTBlNDc1YWYxNmU5ZGQ2MjNjODgxZWM1MmMyZjIwOTE5YSJ9', '$2y$10$3rHZfYlWLAb95RUyfG6nNeV7e.wtRITRudBLtFxMMCC', '$2y$10$rrh6yTfsqIUHowb3MQuvQeyzNbFGBJO9Arsi4V/qlNPrIEzvOL612', 1, 1, 0, 25000, 0, 25000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 4, 1, 1, 'Active', '2022-03-22 21:41:51', '', 1, '', '', 'VG', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '2a65c6da739b33add538986bf9659812', NULL, NULL, NULL, 'X2995153', '0', 3, '', '', '', '', 0, 0, NULL, 0, 'Test@123', 0, 0, NULL, NULL, NULL),
(6, 'X4189024', '4', 'Greece Martin', '', '', '', '25000.00', '', '', '5647987984532', 'greecemartin3@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6InV4OFhxZDhCM0JlZG1oSE9BVFBjVkE9PSIsInZhbHVlIjoiTFFFaHJwZkFsOTNBb1pNcHUxS3A2dz09IiwibWFjIjoiODNiMzM0NGVlZmM1YzU5ZmU3YWM2MzJiMzYxODc1YjQyNDJkYjRhY2U3YWNhMDg5NDVlODUxYTk2ZjVlNjNiMSJ9', '$2y$10$RgOlpbvMvc9erXBkTaPCd.ds6y47CcfFTzEAKZbVVn5', '$2y$10$YGlUj6P3gkqpVz2IYXlb/OQDbb4dH8BToiAn/3yNlRbKj8yP/mZXG', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 5, 1, 1, 'Active', '2022-03-22 21:42:29', '', 1, '', '', 'VG', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '1fb7f63fdcb1bf81e102e788ee35ce8e', NULL, NULL, NULL, 'X4189024', '0', 3, '', '', '', '', 0, 0, NULL, 0, 'Test@123', 0, 0, NULL, NULL, NULL),
(7, 'X6035136', '3', 'Greece Martin fv', '', '', '', '4999.00', '', '', '6549876534545365', 'greecemartin3@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6Inh6aHNzbmFhYVNUSXdVdXEwT1IrWUE9PSIsInZhbHVlIjoicGFST3I2MEl0UXVsSHlwQUxwaFZRQT09IiwibWFjIjoiMmUyNDgwZjIxZDU1YzM2NmE1NjhiYThiMjUwMDA2Y2ExMjU0ZDg1ZGIwOTI2ZmUwZDU5YjIyNWU0ODhhMzAwNCJ9', '$2y$10$O/o8J/I30.qi41y4SDgk8ugGNyu075uItu2LrL1wtYs', '$2y$10$wA8WgsrQ5PSgRgwESRQJne11lmEGp7lkYUOYce8NoVuWaiFlYIHDK', 1, 1, 0, 20000, 0, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 3, 1, 1, 'Active', '2022-03-22 21:48:45', '', 1, '', '', 'VG', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, 'b8735dd1f385c9ace6e039acf37574aa', NULL, NULL, NULL, 'X6035136', '0', 3, '', '', '', '', 0, 0, NULL, 0, 'Test@123', 0, 0, '103.163.90.178', 'cf4d8df256284e9b52559bbc90d9971e', NULL),
(8, 'X3697380', '3', 'Greece Martin', '', '', '', '20000.00', '', '', '57498767456', 'greecemartin3@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6Ik5NZ0NvUlBMSnBTU3JHSEpXNEhJVEE9PSIsInZhbHVlIjoiSjAxT3Zub0ZpYm14SVFIa3NMV1lxQT09IiwibWFjIjoiY2NlZjk1OTRhMTVjOWRhNzYzNTdlZDBkMzAyOTU2MmMwM2I5NjNmYWI4NTM2NzM1OGRlYTA2OThmOWIwMTRjZSJ9', '$2y$10$lXeTxvwjgYh2UJKT94mPYebRapp2Cpt4tF/d.SljdZN', '$2y$10$mB4EituLVMwAVNKQCtejp.hslSpBQIc4uWcdH4BiYD97Mwb8VwoxS', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 7, 1, 1, 'Active', '2022-03-22 21:50:17', '', 1, '', '', 'VG', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '22cb26a2f0a4f796a3a72dd6e230fd9e', NULL, NULL, NULL, 'X3697380', '0', 3, '', '', '', '', 0, 0, NULL, 0, 'Test@123', 0, 0, '103.163.90.178', 'c24a6f3553efa4564140ae0524b9592f', NULL),
(9, 'X2322218', '2', 'Greece Martin', '', '', '', '26000.00', '', '', '3546874564', 'greecemartin3@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IlpIclwvMGt5elg4ZEM5YWlBaFBpMklRPT0iLCJ2YWx1ZSI6IkhMckpqbzJyaEw2WE5KNW5MQjVwQ2c9PSIsIm1hYyI6IjA2YWUyZDNiOWU0ZWZiNGY5NDBkNjkyMmU3ZGY2NWM0MGIwNmRlODk4OTc1ZDU3ZjQxNjVkNjVlODM2MDc4YmYifQ==', '$2y$10$4NPOqGEKG9.krpmBDrRE7evJ.FnOXrAa/lWwT73oxA0', '$2y$10$V/7jTAKVFhfplWeazxRJX.mBrztuf1nq1hXd7zd592XHg6HcD5m2W', 2, 1, 4, 3500, 2255899, 3500, 2255899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3500, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 3, 1, 0, 'Active', '2022-03-22 21:51:00', '', 1, '', '', 'VG', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '84a466b68b07f6a1007e2146733c2600', NULL, NULL, NULL, 'X2322218', '0', 3, '', '', '', '', 0, 0, NULL, 0, 'Test@123', 0, 0, '103.163.90.178', '4861edac37a171d33d828e2d8effe1b4', NULL),
(10, 'X5446781', '3', 'greece martin', '', '', '', '3500.00', '', '', '3588634556768', 'greecemartin3@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6Im9HRlA4NXY5a24xM2IxWDlhT3VnV1E9PSIsInZhbHVlIjoiOGFxbEp4OFNmZU1iejdHVmFIR093UT09IiwibWFjIjoiYTcyNmRkZTM1OTIzOWY2YjNkODlhNmFkMDRmN2ZkNWIxZjZhYjM0YThlMzhkM2RlN2E3NTk4MDZhNzIwMDAwMyJ9', '$2y$10$EElYNlRq3xlwmkI66K0Jau.Iif4iHEBH0AInr9hljaC', '$2y$10$kFYRGc1PgQdKj4Ssf2f37eWnSdzeVdtS9qjmt5KfMns7ehzuso.N6', 2, 2, 1, 1116899, 1135500, 1116899, 1135500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1116899, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 9, 1, 0, 'Active', '2022-03-23 14:09:43', '', 1, '', '', 'CM', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '5502ce2e506b3d97c05ba124159dd8e8', NULL, NULL, NULL, 'X5446781', '0', 3, '', '', '', '', 0, 0, NULL, 0, 'Test@123', 0, 0, NULL, NULL, NULL),
(11, 'X1725028', '3', 'Greece Martin', '', '', '', '1135500.00', '', '', '+1 567 988 764646', 'greecemartin3@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IkNSakEyUzBpK0FRSkd4dmMrckd6WGc9PSIsInZhbHVlIjoiRG41WkJEa0VEZWJkWDBCUEhTUDFcL0E9PSIsIm1hYyI6IjY5ZTRjY2ViNmI1ZGVmOWZhYWRiYWEwZmE1N2Y5M2VhZDk5YjBlZjRlMzk1Y2NmODIwYWFlOTQ0M2M0ODdiNTkifQ==', '$2y$10$4D8Vm.eZ50wJjhQ7Gzicfub5aVGSh64K.UHL2cqQ7gM', '$2y$10$ydejHXzrTt6GykP3lQUGDu4tx5ZlIfRgShttbekOlgtFhVfEEnYFK', 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 10, 1, 1, 'Active', '2022-03-23 14:10:47', '', 1, '', '', 'US', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '1713599fd52dc0f10bb04c3f005b603f', NULL, NULL, NULL, 'X1725028', '0', 3, '', '', '', '', 0, 0, NULL, 0, 'Test@123', 0, 0, NULL, NULL, NULL),
(12, 'X4002044', '9', 'Greece Martin', '', '', '', '3500.00', '', '', '54786765454', 'greecemartin3@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6InFJQjRLTUdjc25rVVg5TExYSmo0blE9PSIsInZhbHVlIjoiUWpBdjNON1JMYklZVU5NbXQwSlRjZz09IiwibWFjIjoiYWJmNjllMGU5MDU4M2NlMmE1YzRmZjFkOWIyZDIwNzgzZTBkOGI1YjM3ZmU1NGE4ODY1MDY2Njc2NzExOWZlMSJ9', '$2y$10$jMy.dfJbNWFI.RVQBQlRhuezteexeULOfEgjOtjffN4', '$2y$10$awzBjPdPDzawzJmyn5I35.9QPR05C3ME9CCuXUSQgaOU9Ka.uSQjO', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 9, 1, 1, 'Active', '2022-03-25 09:32:38', '', 1, '', '', 'VG', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '4ed3424fc08cbd03d9f4ec6aaa601495', NULL, NULL, NULL, 'X4002044', '0', 3, '', '', '', '', 0, 0, NULL, 0, 'Test@123', 0, 0, '103.163.90.178', '26e589999a0b58a4ab003382b90868c5', NULL),
(13, 'X3683911', '10', 'Greece Martin dhfherh', '', '', '', '1116649.00', '', '', '+358 5 4987676', 'greecemartin3@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IjhYVlVSaWNsdG5ROThCcEFLR3hFOHc9PSIsInZhbHVlIjoiTTMxdDNvUXQ3ZnJyM3M5WER3aGlRUT09IiwibWFjIjoiMGYzODViZWJiMTM0OGVkMjkwYjcyN2VhYzVkMGI5ZDU2MWU5N2E3ODVkNzZhODY3NmJmMDBlOWNkOGYzMTE3MyJ9', '$2y$10$XLTXzEDS9.QegA.f74wihuhpNlPhMJgsgZL8FXYoYoL', '$2y$10$yJ4PgfNLYn.yHmFoPuY4b.oiH0hUufJ93YyIolpfNz7TfZOY3miAW', 1, 1, 0, 250, 0, 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 10, 1, 1, 'Active', '2022-03-25 10:57:34', '', 1, '', '', 'FI', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '08b02bddbbb0741229b88c43fca6f13f', NULL, NULL, NULL, 'X3683911', '0', 3, '', '', '', '', 0, 0, NULL, 0, 'Test@123', 0, 0, '103.163.90.178', '606631d6b9b642b4ed9c9943ee769c2e', NULL),
(14, 'X8852879', '10', 'joseph', '', '', '', '250.00', '', '', '54546465464', 'albertpeter1122@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IitEYXV4cElcL2E3cXNsMW5QXC8rNHJXUT09IiwidmFsdWUiOiJUMllrVUVlNmtqYUhTb3BsZ3N2XC9HbXdDWldcL0xcL0FncWNiVkhZN2l4d0FnPSIsIm1hYyI6ImVmMGM5ZTNkMDdlNzQxOGZmYWNkNDgwYjVjNzdiODNkZThhOGYwN2NmMjI5YzJiYzY4MjEzNTE5NmFmMWMwYTIifQ==', '$2y$10$8f.kHzuSf7zZf7mTxtT7J.zLlBzEef1/Mfv0YUDypV7', '$2y$10$hgIMwn4tqgmo0faDppnen.UYioweNURiMVAwuz2dc1pZjNsXzu5eW', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 13, 1, 1, 'Active', '2022-03-30 06:58:28', '', 1, '', '', 'VG', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '1', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '1759408001bfa4b181d3d9bcec68f938', NULL, NULL, NULL, 'X8852879', '0', 3, '', '', '', '', 0, 0, NULL, 0, 'Tronking@123', 0, 1, '::1', '21be9264646fdc2fdef4c8932716aab2', NULL),
(15, 'SAND1234', '', 'SANDY', '', '', '', '0.00', '', '', '1234567890', 'spiderman982404@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IkVYRDRIZUFyN3BabW9EblVNaStxYWc9PSIsInZhbHVlIjoicm0wcjZZVnhkRTd3eXlwWWNxKzRjTW43RW9RWVFjbnNFYzhRZldJSEp1Zz0iLCJtYWMiOiI5YTI2ZTEyZmMwMmU4YTM3YzNhZjNlNWJhYmMxZjY4NTVhNzY5NDkxMGQ5NzU3NTBiYmJhZDIwMGZmYmJhZWRhIn0=', '', '$2y$10$RFIUVWxY5G4/EL0aX8Ti.epUpWOiZcivJeeRzKGgKNXcWqMiJpgmW', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 1, 1, 'Active', '2022-07-06 15:16:12', 'admin', 1, '', '', NULL, NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '7d1e7ac6fa93c85f2dd3e47dd9b0bb42', NULL, NULL, NULL, NULL, '0', 3, '', '', '', '', 0, 0, NULL, 0, NULL, 0, 0, '::1', NULL, NULL),
(16, 'X2172987', '2', 'logan', '', '', '', '0.00', '', '', '+1 989 898 9888', 'loganI@gmail.com', NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IlZjTnk4YlhUNVRjanNxek5ZQ09rVWc9PSIsInZhbHVlIjoiTFAxenVUY2p1dm9rWGo3THA1ZWRuWUU4bzJ0b1NOdWpkYnpmRTQwSnlHND0iLCJtYWMiOiJlMzkyYjU0MzE0NGNmYzk1NWU1NmFmZGMxNjUwMmFkMjA1OTUzZjUxN2ZlMjM1NmQ4Y2YwMGI3NDZlNjBjNGE3In0=', '', '$2y$10$6dvQfd.ImytZyJQeq6VFbu0ExgAweRJ6VR5ULJMnEmhMYjoetOV4S', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 1, 1, 'Active', '2022-07-22 14:02:26', '', 1, '', '', 'US', NULL, NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, '1720520baf28da46dea8ee89196e06a9', NULL, NULL, NULL, NULL, '0', 3, '', '', '', '', 0, 0, NULL, 0, NULL, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usersc`
--

CREATE TABLE `tbl_usersc` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `user_id` varchar(50) DEFAULT '',
  `cuser_id` varchar(50) DEFAULT '',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_change_data`
--

CREATE TABLE `tbl_users_change_data` (
  `sr_no` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `ref_user_id` varchar(100) DEFAULT '',
  `fullname` varchar(100) DEFAULT '',
  `nominee_name` varchar(100) DEFAULT '',
  `relation` varchar(100) DEFAULT '',
  `pin_number` varchar(50) DEFAULT '',
  `amount` decimal(10,2) DEFAULT '0.00',
  `city` varchar(100) DEFAULT '',
  `state` varchar(100) DEFAULT '',
  `mobile` varchar(30) DEFAULT '',
  `email` varchar(100) DEFAULT '',
  `gender` varchar(100) DEFAULT '',
  `account_no` varchar(100) DEFAULT '',
  `holder_name` varchar(200) DEFAULT '',
  `bank_name` varchar(100) DEFAULT '',
  `branch_name` varchar(100) DEFAULT '',
  `pan_no` varchar(50) DEFAULT '',
  `ifsc_code` varchar(50) DEFAULT '',
  `btc_address` varchar(255) DEFAULT '',
  `paypal_address` varchar(200) DEFAULT NULL,
  `perfect_money_address` text,
  `trn_address` varchar(200) DEFAULT NULL,
  `bnb_address` varchar(200) DEFAULT NULL,
  `usdt_trc20_address` varchar(200) DEFAULT NULL,
  `password` varchar(50) DEFAULT '12345',
  `bcrypt_password` varchar(255) DEFAULT NULL,
  `tr_passwd` varchar(50) DEFAULT '',
  `position` tinyint(1) DEFAULT '0',
  `l_c_count` int(11) DEFAULT '0',
  `r_c_count` int(11) DEFAULT '0',
  `l_ace` int(11) NOT NULL,
  `r_ace` int(11) NOT NULL,
  `l_herald` int(11) DEFAULT '0',
  `r_herald` int(11) DEFAULT '0',
  `l_crusader` int(11) DEFAULT '0',
  `r_crusader` int(11) DEFAULT '0',
  `l_guardian` int(11) DEFAULT '0',
  `r_guardian` int(11) DEFAULT '0',
  `l_commander` int(11) DEFAULT '0',
  `r_commander` int(11) DEFAULT '0',
  `l_valorant` int(11) DEFAULT '0',
  `r_valorant` int(11) DEFAULT '0',
  `l_legend` int(11) DEFAULT '0',
  `r_legend` int(11) DEFAULT '0',
  `l_relic` int(11) DEFAULT '0',
  `r_relic` int(11) DEFAULT '0',
  `l_almighty` int(11) DEFAULT '0',
  `r_almighty` int(11) DEFAULT '0',
  `l_conqueror` int(11) DEFAULT '0',
  `r_conqueror` int(11) DEFAULT '0',
  `l_titan` int(11) DEFAULT '0',
  `r_titan` int(11) DEFAULT '0',
  `l_lmmortal` int(11) DEFAULT '0',
  `r_immortal` int(11) DEFAULT '0',
  `l_ace_check_status` int(11) NOT NULL,
  `r_ace_check_status` int(11) NOT NULL,
  `l_bv` decimal(10,2) DEFAULT '0.00',
  `r_bv` decimal(10,2) DEFAULT '0.00',
  `power_l_bv` double DEFAULT '0',
  `power_r_bv` double DEFAULT '0',
  `contest_lbv` int(11) DEFAULT '0',
  `contest_rbv` int(11) DEFAULT '0',
  `binary_qualified_status` int(5) NOT NULL DEFAULT '0',
  `vl_bv` decimal(10,2) DEFAULT '0.00',
  `vr_bv` decimal(10,2) DEFAULT '0.00',
  `confirmed_users` int(11) DEFAULT '0',
  `virtual_parent_id` int(11) DEFAULT '0',
  `status` enum('Active','Inactive') DEFAULT 'Inactive',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(100) DEFAULT '',
  `roi_stop` int(11) DEFAULT '1',
  `address` varchar(255) DEFAULT '',
  `address1` varchar(255) DEFAULT '',
  `country` varchar(100) DEFAULT '',
  `ethereum` text,
  `pincode` varchar(20) DEFAULT '',
  `pincode1` varchar(20) DEFAULT '',
  `state1` varchar(100) DEFAULT '',
  `city1` varchar(100) DEFAULT '',
  `delivery_status` enum('Pending','Delivered','Cancel') DEFAULT 'Pending',
  `delivery_note` varchar(1200) DEFAULT '',
  `designation` varchar(255) DEFAULT '',
  `old_status` int(11) DEFAULT '0',
  `delivery_mode` varchar(100) DEFAULT '',
  `pdc_id` bigint(20) DEFAULT '0',
  `verifyaccountstatus` int(11) DEFAULT '0',
  `verifytoken` varchar(100) DEFAULT NULL,
  `mobileverify_status` int(11) DEFAULT '0',
  `mobile_otp` varchar(400) DEFAULT NULL,
  `flag` varchar(10) DEFAULT NULL,
  `tempf` varchar(10) DEFAULT NULL,
  `topup_status` enum('0','1') DEFAULT '0',
  `notification` int(11) DEFAULT '1',
  `stop_roi_time` timestamp NULL DEFAULT NULL,
  `pindate` timestamp NULL DEFAULT NULL,
  `confirm_date` timestamp NULL DEFAULT NULL,
  `google2fa_secret` text,
  `google2fa_status` enum('enable','disable') DEFAULT 'disable',
  `service_date3` timestamp NULL DEFAULT NULL,
  `dispatch_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `rank` varchar(200) DEFAULT NULL,
  `business_l_bv` int(11) DEFAULT NULL,
  `business_r_bv` int(11) DEFAULT NULL,
  `remember_token` varchar(200) NOT NULL,
  `bch_address` varchar(255) DEFAULT NULL,
  `ltc_address` varchar(255) DEFAULT NULL,
  `doge_address` varchar(200) DEFAULT NULL,
  `shib_address` varchar(200) DEFAULT NULL,
  `pm_address` varchar(200) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `unique_user_id` varchar(255) DEFAULT NULL,
  `is_franchise` enum('0','1') NOT NULL DEFAULT '0',
  `facebook_link` varchar(100) NOT NULL DEFAULT '',
  `twitter_link` varchar(100) NOT NULL DEFAULT '',
  `linkedin_link` varchar(100) NOT NULL DEFAULT '',
  `instagram_link` varchar(100) NOT NULL DEFAULT '',
  `topup_status_check` varchar(100) DEFAULT NULL,
  `income_per` varchar(200) DEFAULT NULL,
  `structure_id` int(11) NOT NULL,
  `temp_pass` varchar(250) DEFAULT NULL,
  `reg_mail_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_users_change_data`
--

INSERT INTO `tbl_users_change_data` (`sr_no`, `id`, `user_id`, `ref_user_id`, `fullname`, `nominee_name`, `relation`, `pin_number`, `amount`, `city`, `state`, `mobile`, `email`, `gender`, `account_no`, `holder_name`, `bank_name`, `branch_name`, `pan_no`, `ifsc_code`, `btc_address`, `paypal_address`, `perfect_money_address`, `trn_address`, `bnb_address`, `usdt_trc20_address`, `password`, `bcrypt_password`, `tr_passwd`, `position`, `l_c_count`, `r_c_count`, `l_ace`, `r_ace`, `l_herald`, `r_herald`, `l_crusader`, `r_crusader`, `l_guardian`, `r_guardian`, `l_commander`, `r_commander`, `l_valorant`, `r_valorant`, `l_legend`, `r_legend`, `l_relic`, `r_relic`, `l_almighty`, `r_almighty`, `l_conqueror`, `r_conqueror`, `l_titan`, `r_titan`, `l_lmmortal`, `r_immortal`, `l_ace_check_status`, `r_ace_check_status`, `l_bv`, `r_bv`, `power_l_bv`, `power_r_bv`, `contest_lbv`, `contest_rbv`, `binary_qualified_status`, `vl_bv`, `vr_bv`, `confirmed_users`, `virtual_parent_id`, `status`, `entry_time`, `type`, `roi_stop`, `address`, `address1`, `country`, `ethereum`, `pincode`, `pincode1`, `state1`, `city1`, `delivery_status`, `delivery_note`, `designation`, `old_status`, `delivery_mode`, `pdc_id`, `verifyaccountstatus`, `verifytoken`, `mobileverify_status`, `mobile_otp`, `flag`, `tempf`, `topup_status`, `notification`, `stop_roi_time`, `pindate`, `confirm_date`, `google2fa_secret`, `google2fa_status`, `service_date3`, `dispatch_date`, `delivery_date`, `dob`, `rank`, `business_l_bv`, `business_r_bv`, `remember_token`, `bch_address`, `ltc_address`, `doge_address`, `shib_address`, `pm_address`, `updated_by`, `ip`, `created_at`, `unique_user_id`, `is_franchise`, `facebook_link`, `twitter_link`, `linkedin_link`, `instagram_link`, `topup_status_check`, `income_per`, `structure_id`, `temp_pass`, `reg_mail_status`) VALUES
(1, 0, 'X1113349', '', '', '', '', '', '0.00', '', '', '+1 284 365 4664', 'greecemartin3@gmail.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-02-21 07:49:48', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2', '108.162.241.60', '2022-02-21 07:49:48', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(2, 8, 'X4631445', '', 'Testing', '', '', '', '0.00', '', '', '+91 98765 43210', 'soanli.raut551832@gmail.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-02-21 21:55:38', '', 1, '', '', 'IN', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.122', '2022-02-21 12:55:38', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(3, 0, 'X4670141', '', '', '', '', '', '0.00', '', '', '574575757', 'greecemartin3@gmail.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-02-25 12:38:49', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '12', '108.162.242.5', '2022-02-25 12:38:49', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(4, 3, 'X7496974', '', 'q123123weasdasd', '', '', '', '0.00', '', '', 'q123123weasdasd', 'asdasda@asd.asd', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-08 18:29:54', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.150', '2022-03-08 09:29:54', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(5, 3, 'X7496974', '', 'q123123weasdasd', '', '', '', '0.00', '', '', 'q123123weasdasd', 'asdasda@asd.asd', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-08 18:30:41', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.150', '2022-03-08 09:30:41', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(6, 3, 'X7496974', '', 'q123123weasdasd', '', '', '', '0.00', '', '', 'q123123weasdasd', 'asdasda@asd.asd', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-08 18:30:50', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.150', '2022-03-08 09:30:50', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(7, 3, 'X7496974', '', 'q123123weasdasd', '', '', '', '0.00', '', '', 'q123123weasdasd', 'asdasda@asd.asd', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-08 18:30:59', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.150', '2022-03-08 09:30:59', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(8, 3, 'X7496974', '', 'q123123weasdasd', '', '', '', '0.00', '', '', 'q123123weasdasd', 'asdasda@asd.asd', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-08 18:31:07', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.150', '2022-03-08 09:31:07', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(9, 3, 'X7496974', '', 'q123123weasdasd', '', '', '', '0.00', '', '', 'q123123weasdasd', 'asdasda@asd.asd', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-08 18:31:29', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.150', '2022-03-08 09:31:29', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(10, 3, 'X7496974', '', 'q123123weasdasd', '', '', '', '0.00', '', '', 'q123123weasdasd', 'asdasda@asd.asd', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-08 18:31:39', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.150', '2022-03-08 09:31:39', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(11, 3, 'X7496974', '', 'q123123weasdasd', '', '', '', '0.00', '', '', 'q123123weasdasd', 'asdasda@asd.asd', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-08 18:31:45', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.150', '2022-03-08 09:31:45', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(12, 2, 'X9692326', '', 'Martin S', '', '', '', '0.00', '', '', '1234567898', 'test123@gmail.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-14 21:59:24', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.76', '2022-03-14 12:59:24', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(13, 0, 'X9692326', '', '', '', '', '', '0.00', '', '', '1234567898', 'greecemartin3@gmail.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-14 13:00:49', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2', '108.162.241.76', '2022-03-14 13:00:49', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(14, 3, 'X7496974', '', 'q123123weasdasd', '', '', '', '0.00', '', '', 'q123123weasdasd', 'asdasda@asd.asd', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-28 13:15:38', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.68', '2022-03-28 13:15:38', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(15, 0, 'X6035136', '', '', '', '', '', '0.00', '', '', '654987653465', 'greecemartin3@gmail.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-30 10:40:28', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '7', '108.162.241.76', '2022-03-30 10:40:28', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(16, 0, 'X6035136', '', '', '', '', '', '0.00', '', '', '654987653465', 'greecemartin3@gmail.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-30 10:49:17', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '7', '108.162.241.76', '2022-03-30 10:49:17', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(17, 0, 'X6035136', '', '', '', '', '', '0.00', '', '', '65498765345453', 'greecemartin3@gmail.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-30 11:02:03', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '7', '108.162.241.76', '2022-03-30 11:02:03', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(18, 0, 'X6035136', '', '', '', '', '', '0.00', '', '', '65498765345453', 'greecemartin3@gmail.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-30 11:07:57', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '7', '108.162.241.76', '2022-03-30 11:07:57', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(19, 13, 'X3683911', '', 'Greece Martin', '', '', '', '0.00', '', '', '+358 5 4987676', 'greecemartin3@gmail.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-30 12:21:58', '', 1, '', '', 'FI', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '1', '108.162.241.14', '2022-03-30 12:21:58', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(20, 0, 'X3683911', '', '', '', '', '', '0.00', '', '', '+358 5 4987676', 'greecemartin3@gmail.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-03-31 04:53:27', '', 1, '', '', 'FI', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '13', '108.162.241.14', '2022-03-31 04:53:27', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(21, 0, 'X9692326', '', '', '', '', '', '0.00', '', '', '+43 5465 45434', 'sandip.daphal.551832@gmail.com', '', '', '', '', '', '', '', 'egfvsegbrtgbsrgbtrbtrfgbvrtgb', NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-04-01 04:50:40', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2', '::1', '2022-04-01 04:50:40', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0),
(22, 0, 'X9692326', '', '', '', '', '', '0.00', '', '', '+43 5465 45434112345678', 'sandip.daphal.551832@gmail.com', '', '', '', '', '', '', '', 'egfvsegbrtgbsrgbtrbtrfgbvrtgb', NULL, NULL, NULL, NULL, NULL, '12345', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 0, 0, 0, '0.00', '0.00', 0, 0, 'Inactive', '2022-04-01 05:29:30', '', 1, '', '', 'VG', NULL, '', '', '', '', 'Pending', '', '', 0, '', 0, 0, NULL, 0, NULL, NULL, NULL, '0', 1, NULL, NULL, NULL, NULL, 'disable', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2', '::1', '2022-04-01 05:29:30', NULL, '0', '', '', '', '', NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_change_data_old`
--

CREATE TABLE `tbl_users_change_data_old` (
  `sr_no` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `user_id` varchar(100) DEFAULT '',
  `ref_user_id` varchar(100) DEFAULT '',
  `fullname` varchar(100) DEFAULT '',
  `nominee_name` varchar(100) DEFAULT '',
  `relation` varchar(100) DEFAULT '',
  `pin_number` varchar(50) DEFAULT '',
  `amount` double DEFAULT '0',
  `city` varchar(100) DEFAULT '',
  `state` varchar(100) DEFAULT '',
  `mobile` varchar(30) DEFAULT '',
  `email` varchar(100) DEFAULT '',
  `gender` varchar(100) DEFAULT '',
  `account_no` varchar(100) DEFAULT '',
  `holder_name` varchar(200) DEFAULT '',
  `bank_name` varchar(100) DEFAULT '',
  `branch_name` varchar(100) DEFAULT '',
  `pan_no` varchar(50) DEFAULT '',
  `ifsc_code` varchar(50) DEFAULT '',
  `btc_address` varchar(255) DEFAULT '',
  `password` varchar(50) DEFAULT '12345',
  `tr_passwd` varchar(20) DEFAULT '',
  `position` tinyint(1) DEFAULT '0',
  `l_c_count` int(11) DEFAULT '0',
  `r_c_count` int(11) DEFAULT '0',
  `l_bv` decimal(10,2) DEFAULT '0.00',
  `r_bv` decimal(10,2) DEFAULT '0.00',
  `vl_bv` decimal(10,2) DEFAULT '0.00',
  `vr_bv` decimal(10,2) DEFAULT '0.00',
  `confirmed_users` int(11) DEFAULT '0',
  `virtual_parent_id` int(11) DEFAULT '0',
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(100) DEFAULT '',
  `roi_stop` int(11) DEFAULT '1',
  `stop_roi_time` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `pindate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `address` varchar(255) DEFAULT '',
  `litecoin` text,
  `country` varchar(100) DEFAULT '',
  `ethereum` text,
  `pincode` varchar(20) DEFAULT '',
  `payment_mode` text,
  `state1` varchar(100) DEFAULT '',
  `city1` varchar(100) DEFAULT '',
  `dob` date DEFAULT '0000-00-00',
  `dispatch_date` date DEFAULT '0000-00-00',
  `delivery_date` date DEFAULT '0000-00-00',
  `confirm_date` datetime DEFAULT '0000-00-00 00:00:00',
  `delivery_status` enum('Pending','Delivered','Cancel') DEFAULT 'Pending',
  `delivery_note` varchar(1200) DEFAULT '',
  `designation` varchar(255) DEFAULT '',
  `old_status` int(11) DEFAULT '0',
  `delivery_mode` varchar(100) DEFAULT '',
  `pdc_id` bigint(20) DEFAULT '0',
  `ip` text,
  `change_by` text,
  `change_remark` text,
  `service_date1` datetime DEFAULT '0000-00-00 00:00:00',
  `service_date2` datetime DEFAULT '0000-00-00 00:00:00',
  `service_date3` datetime DEFAULT '0000-00-00 00:00:00',
  `auth_type` bigint(20) DEFAULT '0',
  `flag` varchar(10) DEFAULT NULL,
  `tempf` varchar(10) DEFAULT NULL,
  `topup_status` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_count_data`
--

CREATE TABLE `tbl_users_count_data` (
  `srno` int(11) NOT NULL,
  `id` int(11) DEFAULT '0',
  `l_c_count` int(11) DEFAULT '0',
  `r_c_count` int(11) DEFAULT '0',
  `l_bv` int(11) NOT NULL,
  `r_bv` int(11) NOT NULL,
  `l_c_count_diff` int(11) NOT NULL,
  `r_c_count_diff` int(11) NOT NULL,
  `l_bv_diff` int(11) NOT NULL,
  `r_bv_diff` int(11) NOT NULL,
  `entry_time` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_new`
--

CREATE TABLE `tbl_users_new` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_reg`
--

CREATE TABLE `tbl_users_reg` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `ref_user_id` varchar(100) DEFAULT '',
  `fullname` varchar(100) DEFAULT '',
  `nominee_name` varchar(100) DEFAULT '',
  `relation` varchar(100) DEFAULT '',
  `pin_number` varchar(50) DEFAULT '',
  `amount` decimal(10,2) DEFAULT '0.00',
  `city` varchar(100) DEFAULT '',
  `state` varchar(100) DEFAULT '',
  `mobile` varchar(30) DEFAULT '',
  `email` varchar(100) DEFAULT '',
  `gender` varchar(100) DEFAULT '',
  `account_no` varchar(100) DEFAULT '',
  `holder_name` varchar(200) DEFAULT '',
  `bank_name` varchar(100) DEFAULT '',
  `branch_name` varchar(100) DEFAULT '',
  `pan_no` varchar(50) DEFAULT '',
  `ifsc_code` varchar(50) DEFAULT '',
  `password` varchar(50) DEFAULT '12345',
  `tr_passwd` varchar(20) DEFAULT '',
  `position` tinyint(1) DEFAULT '0',
  `l_c_count` int(11) DEFAULT '0',
  `r_c_count` int(11) DEFAULT '0',
  `l_bv` decimal(10,2) DEFAULT '0.00',
  `r_bv` decimal(10,2) DEFAULT '0.00',
  `vl_bv` decimal(10,2) DEFAULT '0.00',
  `vr_bv` decimal(10,2) DEFAULT '0.00',
  `confirmed_users` int(11) DEFAULT '0',
  `virtual_parent_id` int(11) DEFAULT '0',
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(100) DEFAULT '',
  `roi_stop` int(11) DEFAULT '1',
  `stop_roi_time` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `pindate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `address` varchar(255) DEFAULT '',
  `address1` varchar(255) DEFAULT '',
  `country` varchar(100) DEFAULT '',
  `country1` varchar(100) DEFAULT '',
  `pincode` varchar(20) DEFAULT '',
  `pincode1` varchar(20) DEFAULT '',
  `state1` varchar(100) DEFAULT '',
  `city1` varchar(100) DEFAULT '',
  `dob` date DEFAULT '0000-00-00',
  `dispatch_date` date DEFAULT '0000-00-00',
  `delivery_date` date DEFAULT '0000-00-00',
  `confirm_date` datetime DEFAULT '0000-00-00 00:00:00',
  `delivery_status` enum('Pending','Delivered','Cancel') DEFAULT 'Pending',
  `delivery_note` varchar(1200) DEFAULT '',
  `designation` varchar(255) DEFAULT '',
  `old_status` int(11) DEFAULT '0',
  `delivery_mode` varchar(100) DEFAULT '',
  `pdc_id` bigint(20) DEFAULT '0',
  `service_1` tinyint(4) DEFAULT '0',
  `service_2` tinyint(4) DEFAULT '0',
  `service_3` tinyint(4) DEFAULT '0',
  `service_date1` datetime DEFAULT '0000-00-00 00:00:00',
  `service_date2` datetime DEFAULT '0000-00-00 00:00:00',
  `service_date3` datetime DEFAULT '0000-00-00 00:00:00',
  `auth_type` bigint(20) DEFAULT '0',
  `flag` varchar(10) DEFAULT NULL,
  `tempf` varchar(10) DEFAULT NULL,
  `pay_status` enum('0','1') DEFAULT '0',
  `pay_by` int(100) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_api_hit_details`
--

CREATE TABLE `tbl_user_api_hit_details` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ip_add` varchar(200) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1= topup,2=withdraw,3=transfer',
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_api_hit_details`
--

INSERT INTO `tbl_user_api_hit_details` (`id`, `uid`, `ip_add`, `type`, `status`, `entry_time`) VALUES
(1, 9, '103.163.90.178', 2, 'Active', '2022-03-30 21:03:25'),
(2, 9, '103.163.90.178', 2, 'Active', '2022-03-30 21:03:53'),
(3, 9, '103.163.90.178', 2, 'Active', '2022-03-30 21:08:48'),
(4, 13, '103.163.90.178', 2, 'Active', '2022-03-30 21:17:35'),
(5, 13, '103.163.90.178', 1, 'Active', '2022-03-30 21:45:32'),
(18, 2, '103.163.90.178', 1, 'Active', '2022-03-31 14:22:28'),
(19, 2, '103.163.90.178', 1, 'Active', '2022-03-31 14:22:29'),
(20, 2, '103.163.90.178', 1, 'Active', '2022-03-31 14:22:31'),
(21, 2, '103.163.90.178', 1, 'Active', '2022-03-31 14:22:38'),
(22, 2, '103.163.90.178', 1, 'Active', '2022-03-31 14:35:38'),
(23, 2, '103.163.90.178', 2, 'Active', '2022-03-31 14:40:15'),
(24, 2, '103.163.90.178', 2, 'Active', '2022-03-31 14:41:13'),
(25, 2, '103.163.90.178', 2, 'Active', '2022-03-31 15:19:31'),
(26, 2, '103.163.90.178', 2, 'Active', '2022-03-31 15:19:47'),
(27, 2, '103.163.90.178', 2, 'Active', '2022-03-31 15:20:35'),
(28, 14, '103.163.90.178', 2, 'Active', '2022-03-31 15:35:49'),
(29, 14, '103.163.90.178', 2, 'Active', '2022-03-31 16:06:37'),
(30, 14, '103.163.90.178', 1, 'Active', '2022-03-31 16:07:06'),
(31, 14, '2401:4900:54fa:5e46:fd9a:4139:ecb2:791d', 2, 'Active', '2022-03-31 16:51:11'),
(32, 14, '2401:4900:54fa:5e46:fd9a:4139:ecb2:791d', 2, 'Active', '2022-03-31 16:51:29'),
(33, 14, '2401:4900:54fa:5e46:fd9a:4139:ecb2:791d', 2, 'Active', '2022-03-31 16:55:22'),
(34, 2, '::1', 2, 'Active', '2022-03-31 22:32:10'),
(35, 2, '::1', 2, 'Active', '2022-03-31 22:43:39'),
(36, 2, '::1', 2, 'Active', '2022-03-31 23:07:39'),
(37, 2, '::1', 2, 'Active', '2022-03-31 23:08:47'),
(38, 14, '::1', 2, 'Active', '2022-04-01 13:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_bulk_update`
--

CREATE TABLE `tbl_user_bulk_update` (
  `id` int(11) NOT NULL,
  `user_ids` text NOT NULL,
  `updated_by` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` bigint(15) DEFAULT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_bv`
--

CREATE TABLE `tbl_user_bv` (
  `cron_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `left_bv` varchar(100) DEFAULT NULL,
  `right_bv` decimal(10,2) DEFAULT '0.00',
  `vleft_bv` decimal(10,2) DEFAULT '0.00',
  `vright_bv` decimal(10,2) DEFAULT '0.00',
  `level` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_cart_order`
--

CREATE TABLE `tbl_user_cart_order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'tbl_users(id)',
  `total_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `total_usd` double NOT NULL DEFAULT '0',
  `total_coin` double NOT NULL DEFAULT '0',
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `total_price` double(10,2) DEFAULT '0.00',
  `payment_mode` enum('juspay','cod','coin_wallet','purchase_wallet','dexd_wallet') NOT NULL DEFAULT 'purchase_wallet',
  `status` enum('Pending','Delivered','Packed','Cancelled','Out for delivery') DEFAULT 'Pending' COMMENT 'Pending, Packed, Out for delivery, Delivered, Cancel',
  `coupon_amount` varchar(50) NOT NULL DEFAULT '0',
  `coupon_code` text,
  `billing_id` int(11) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `transaction_status_code` enum('NEW','CREATED','PENDING_VBV','CHARGED','AUTHENTICATION_FAILED','AUTHORIZATION_FAILED','JUSPAY_DECLINED','AUTHORIZING') DEFAULT NULL,
  `payment_status` enum('Pending','Failed','Success','Refund') NOT NULL DEFAULT 'Pending',
  `payment_method` varchar(100) NOT NULL DEFAULT 'COD' COMMENT 'Actual payment method selected by user to perform transaction',
  `payment_method_type` enum('CARD','NB','WALLET','UPI','COD','dexd_wallet','purchase_wallet') NOT NULL DEFAULT 'COD',
  `remark` text,
  `txnid` varchar(255) DEFAULT NULL,
  `delivery_status` enum('Pending','Delivered','Cancel') DEFAULT 'Pending',
  `change_by` int(11) DEFAULT NULL,
  `user_cart_product_ids` text,
  `fullname` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_cart_product`
--

CREATE TABLE `tbl_user_cart_product` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL COMMENT 'tbl_users(id)',
  `product_id` int(11) DEFAULT NULL COMMENT 'tbl_product(id)',
  `variation_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `price` double(10,2) DEFAULT NULL,
  `total_price` double(10,2) DEFAULT '0.00',
  `total_usd` decimal(10,2) DEFAULT '0.00',
  `sub_total_usd` double NOT NULL DEFAULT '0',
  `sub_total_coin` double NOT NULL DEFAULT '0',
  `total_coin` double NOT NULL DEFAULT '0',
  `pin` varchar(255) DEFAULT NULL,
  `status` enum('Pending','Confirm','Deleted') DEFAULT 'Pending' COMMENT 'Active,Inactive,Deleted',
  `payment` varchar(100) DEFAULT '',
  `remark` text,
  `delivery_status` enum('Pending','Delivered','Cancel') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_id` int(11) DEFAULT '0',
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `billing_id` int(11) DEFAULT NULL,
  `shipping_id` int(11) DEFAULT NULL,
  `is_same_address` enum('1','0') NOT NULL DEFAULT '1',
  `coupon_code` text,
  `coupon_amount` varchar(11) NOT NULL DEFAULT '0',
  `mobile` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_contest_achievment`
--

CREATE TABLE `tbl_user_contest_achievment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `contest_id` int(11) DEFAULT NULL,
  `claim_status` int(11) NOT NULL DEFAULT '0' COMMENT '0-not claimed,1-claimed,2-rejected,3-Claimed other',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_curr_addr_history`
--

CREATE TABLE `tbl_user_curr_addr_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `currency_address` varchar(255) DEFAULT NULL,
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_curr_addr_history`
--

INSERT INTO `tbl_user_curr_addr_history` (`id`, `user_id`, `currency`, `currency_address`, `entry_time`) VALUES
(1, 9, 'BTC', 'btyretsvbtw3e46464yerhgdhdxcbx', '2022-03-30 21:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_failed_logins`
--

CREATE TABLE `tbl_user_failed_logins` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `ip_address` varchar(30) DEFAULT NULL,
  `attempted_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_otp_magic`
--

CREATE TABLE `tbl_user_otp_magic` (
  `otp_id` int(11) NOT NULL,
  `id` varchar(100) DEFAULT '' COMMENT 'User table id',
  `mac_address` varchar(100) DEFAULT '',
  `mobile_no` int(50) DEFAULT '0',
  `otp` varchar(100) DEFAULT NULL,
  `otpexpire` datetime DEFAULT NULL,
  `verificationId` int(100) DEFAULT '0',
  `responseCode` int(100) DEFAULT '0',
  `smsCLI` varchar(100) DEFAULT '',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `otp_status` int(100) DEFAULT '0',
  `out_time` datetime DEFAULT NULL,
  `type` enum('email','mobile','google') NOT NULL COMMENT 'type of otp',
  `otp_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=otp,1=Topup,2=verify withdrawal,3=approve withdrawal, 4=reject withdrawal, 5=add fund,6=add power,7=Add Bussiness,8=Add Setting Fund,9=Edit Profile,10=change password',
  `ip_address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_otp_magic`
--

INSERT INTO `tbl_user_otp_magic` (`otp_id`, `id`, `mac_address`, `mobile_no`, `otp`, `otpexpire`, `verificationId`, `responseCode`, `smsCLI`, `entry_time`, `otp_status`, `out_time`, `type`, `otp_type`, `ip_address`) VALUES
(1, '2', '', 0, '0eea917e0e7fdbc2197496c6ae684b5b', NULL, 0, 0, '', '2022-03-04 06:24:14', 1, NULL, 'email', 0, '162.158.74.209'),
(2, '2', '', 0, '654ae4ef9a1044e8330ae4a366c8308b', NULL, 0, 0, '', '2022-03-04 06:26:33', 1, NULL, 'email', 0, '162.158.74.209'),
(3, '2', '', 0, '53983617db2ac36b8208b436be9ecb6f', NULL, 0, 0, '', '2022-03-04 13:03:20', 1, '2022-03-04 22:03:41', 'email', 0, '108.162.241.64'),
(4, '2', '', 0, '6b6a9d1319accc0e5f15970034c6460f', NULL, 0, 0, '', '2022-03-04 13:06:17', 1, '2022-03-04 22:06:39', 'email', 0, '108.162.241.64'),
(5, '2', '', 0, '269479acf1c5a7757c6c7efd02b2c916', NULL, 0, 0, '', '2022-03-04 13:07:34', 1, '2022-03-04 22:08:22', 'email', 0, '108.162.241.64'),
(6, '2', '', 0, '5731c676dd38a3155a9755fcc9c7aaa9', NULL, 0, 0, '', '2022-03-04 13:09:01', 1, '2022-03-04 22:09:17', 'email', 0, '108.162.241.64'),
(7, '2', '', 0, '36b4d255404aa09fea04df7c9735f494', NULL, 0, 0, '', '2022-03-04 13:11:33', 1, '2022-03-04 22:12:42', 'email', 0, '108.162.241.64'),
(8, '2', '', 0, 'f20ab22556260c502ea6f24761474baf', NULL, 0, 0, '', '2022-03-04 13:14:21', 1, NULL, 'email', 0, '108.162.241.64'),
(9, '2', '', 0, 'adeb4c1ee7cd2643f74faaa82d85dd0d', NULL, 0, 0, '', '2022-03-04 13:14:36', 1, NULL, 'email', 0, '108.162.241.64'),
(10, '2', '', 0, 'f59a5f6a0cfd70441511e50618573753', NULL, 0, 0, '', '2022-03-04 13:15:25', 1, NULL, 'email', 0, '108.162.241.64'),
(11, '2', '', 0, 'adcafef962a8fc2f0a14d26215225b9c', NULL, 0, 0, '', '2022-03-04 13:16:07', 1, '2022-03-04 22:16:26', 'email', 0, '108.162.241.64'),
(12, '2', '', 0, 'aae5fabca358179cb53e264c80f89796', NULL, 0, 0, '', '2022-03-04 13:19:20', 1, '2022-03-04 22:19:58', 'email', 0, '108.162.241.64'),
(13, '2', '', 0, '185c1942ba95086d0ed9c329eed72aaa', NULL, 0, 0, '', '2022-03-04 13:20:11', 1, '2022-03-04 22:20:30', 'email', 0, '108.162.241.64'),
(14, '2', '', 0, '1661feae3316dbb12dbc529f18229cd7', NULL, 0, 0, '', '2022-03-04 13:20:49', 1, '2022-03-04 22:21:05', 'email', 0, '108.162.241.64'),
(15, '2', '', 0, '6f69487ac62e464af9966d82e0bd21d7', NULL, 0, 0, '', '2022-03-04 13:21:20', 1, '2022-03-04 22:21:37', 'email', 0, '108.162.241.64'),
(16, '2', '', 0, '1edd4aaf77f7a3bd06d93e227b3da8d4', NULL, 0, 0, '', '2022-03-04 13:21:55', 1, NULL, 'email', 0, '108.162.241.64'),
(17, '2', '', 0, 'a6d1eef2b5d94b5ae07164341fc98c03', NULL, 0, 0, '', '2022-03-04 13:22:32', 1, NULL, 'email', 0, '108.162.241.64'),
(18, '2', '', 0, '9b01f696009b2d1179778433d588d6fd', NULL, 0, 0, '', '2022-03-04 13:23:04', 1, NULL, 'email', 0, '108.162.241.64'),
(19, '2', '', 0, 'edf3493e4fc7611e70f9902ebda0e249', NULL, 0, 0, '', '2022-03-04 13:24:11', 1, NULL, 'email', 0, '108.162.241.64'),
(20, '2', '', 0, '39e5cddf9d6fe5c39d348b5e2d45c07d', NULL, 0, 0, '', '2022-03-04 13:42:09', 1, '2022-03-04 22:42:28', 'email', 0, '108.162.241.16'),
(21, '2', '', 0, '3c1e847688728a0073f9d48c82bd06aa', NULL, 0, 0, '', '2022-03-04 13:43:11', 1, '2022-03-04 22:43:45', 'email', 0, '108.162.241.16'),
(22, '2', '', 0, '54c595203404050d21e97b5c4328ccf8', NULL, 0, 0, '', '2022-03-04 13:45:01', 1, '2022-03-04 22:45:19', 'email', 0, '108.162.241.16'),
(23, '2', '', 0, '16ba01c2eaf182952e50cfba0ace18de', NULL, 0, 0, '', '2022-03-04 13:45:59', 1, '2022-03-04 22:46:14', 'email', 0, '108.162.241.16'),
(24, '2', '', 0, 'df76beefa8de17ad13c09ee2103ca0d2', NULL, 0, 0, '', '2022-03-04 14:28:24', 1, '2022-03-04 23:29:06', 'email', 0, '108.162.241.150'),
(25, '2', '', 0, '998d05747eb4a89e6934f991d6a8fb1d', NULL, 0, 0, '', '2022-03-04 14:29:36', 1, '2022-03-04 23:30:15', 'email', 0, '108.162.241.16'),
(26, '2', '', 0, '7e904aefb47c625577aff82a79bbec75', NULL, 0, 0, '', '2022-03-04 14:31:30', 1, '2022-03-04 23:31:59', 'email', 0, '108.162.241.16'),
(27, '2', '', 0, 'f8a64323c4091e3ba3b7fc12f7d17471', NULL, 0, 0, '', '2022-03-08 09:33:50', 1, '2022-03-08 18:34:14', 'email', 0, '108.162.241.150'),
(28, '2', '', 0, '34b57b81952750a77efa0552148bafd1', NULL, 0, 0, '', '2022-03-08 09:34:46', 1, '2022-03-08 18:35:04', 'email', 0, '108.162.241.150'),
(29, '2', '', 0, 'a3071befc7867e050f410a0dd3b07fb9', NULL, 0, 0, '', '2022-03-08 09:35:45', 1, '2022-03-08 18:35:59', 'email', 0, '108.162.241.150'),
(30, '2', '', 0, 'a9f1991ea3f1cfb626e02cb9e229c882', NULL, 0, 0, '', '2022-03-08 09:36:13', 1, NULL, 'email', 0, '108.162.241.150'),
(31, '2', '', 0, '3194740fe003a1eda378295d18251794', NULL, 0, 0, '', '2022-03-12 07:19:47', 1, NULL, 'email', 0, '108.162.241.138'),
(32, '2', '', 0, 'bd8740c8d19dc716631d9302e56ca122', NULL, 0, 0, '', '2022-03-14 12:58:59', 1, NULL, 'email', 0, '108.162.241.76'),
(33, '2', '', 0, '9360e39b7ae39b2609f1ffb68743cad5', NULL, 0, 0, '', '2022-03-14 13:00:03', 1, '2022-03-14 22:00:49', 'email', 0, '108.162.241.76'),
(34, '2', '', 0, '6382267307531510ebe90d2dcd114cba', NULL, 0, 0, '', '2022-03-15 11:51:40', 1, NULL, 'email', 0, '108.162.241.22'),
(35, '2', '', 0, '45be7d1c6ec89bb5fdde99eac7796a03', NULL, 0, 0, '', '2022-03-15 11:52:32', 1, NULL, 'email', 0, '108.162.241.22'),
(36, '2', '', 0, 'e25d3c432687c4a4e48309a134f1c797', NULL, 0, 0, '', '2022-03-22 06:18:18', 1, NULL, 'email', 0, '108.162.241.22'),
(37, '2', '', 0, 'f2beb0cce3e80e40b445265fffbaafbf', NULL, 0, 0, '', '2022-03-22 06:19:07', 1, NULL, 'email', 0, '108.162.241.22'),
(38, '3', '', 0, 'c9b6a9314d7ec3bc9cddf795945257f4', NULL, 0, 0, '', '2022-03-28 13:15:15', 1, NULL, 'email', 0, '108.162.241.68'),
(39, '3', '', 0, 'd3583536357d480cc5722868af19053e', NULL, 0, 0, '', '2022-03-28 13:15:43', 1, '2022-03-28 22:16:09', 'email', 0, '108.162.241.68'),
(40, '4', '', 0, '9c0f9471f32a63f2d89aa78bac9e4f15', NULL, 0, 0, '', '2022-03-28 13:17:01', 1, '2022-03-28 22:17:16', 'email', 0, '108.162.241.68'),
(41, '4', '', 0, '9545e642e378a1c34ed4c29274981fea', NULL, 0, 0, '', '2022-03-28 13:17:42', 1, '2022-03-28 22:17:56', 'email', 0, '108.162.241.68'),
(42, '4', '', 0, 'f1d16109d80069d4341081c46b213976', NULL, 0, 0, '', '2022-03-28 13:18:03', 1, '2022-03-28 22:18:15', 'email', 0, '108.162.241.68'),
(43, '4', '', 0, '03783dab0f06573d0e7d1b06a4686abc', NULL, 0, 0, '', '2022-03-28 13:18:37', 1, '2022-03-28 22:18:49', 'email', 0, '108.162.241.68'),
(44, '10', '', 0, '9411c8e01cf97280846822ab3246b1d3', NULL, 0, 0, '', '2022-03-28 13:20:24', 1, '2022-03-28 22:20:40', 'email', 0, '108.162.241.68'),
(45, '10', '', 0, '35b9e358da8682d063c97f04660da1ba', NULL, 0, 0, '', '2022-03-28 13:20:54', 1, '2022-03-28 22:21:20', 'email', 0, '108.162.241.68'),
(46, '1', '', 0, '338bbf3c84bdee1c062cda4232ceddf6', '2022-03-30 15:55:09', 0, 0, '', '2022-03-30 06:55:09', 1, NULL, 'email', 0, '108.162.241.36'),
(47, '10', '', 0, '934513b3fdee66055e5bf9041168306c', NULL, 0, 0, '', '2022-03-30 08:13:45', 1, NULL, 'email', 0, '108.162.241.68'),
(48, '10', '', 0, '0acb985ff4b9866f3be71ee9dac04e10', NULL, 0, 0, '', '2022-03-30 08:15:16', 1, '2022-03-30 17:16:23', 'email', 0, '108.162.241.68'),
(49, '10', '', 0, '9182dba9bae1cae0d138cd228a78b181', NULL, 0, 0, '', '2022-03-30 08:16:42', 1, '2022-03-30 17:17:02', 'email', 0, '108.162.241.68'),
(50, '10', '', 0, 'fb61e03c5a441df1da7d32542901f4d5', NULL, 0, 0, '', '2022-03-30 08:17:19', 1, '2022-03-30 17:17:32', 'email', 0, '108.162.241.68'),
(51, '10', '', 0, '961f84587c65b3fd00d1fe4db82c8617', NULL, 0, 0, '', '2022-03-30 08:23:38', 1, '2022-03-30 17:23:56', 'email', 0, '108.162.241.68'),
(52, '9', '', 0, '169aef7a549c7aeaa9bda189a286b718', NULL, 0, 0, '', '2022-03-30 08:26:11', 1, '2022-03-30 17:26:26', 'email', 0, '108.162.241.68'),
(53, '9', '', 0, '721fb57d2318544c4d5eb54d736b94c4', NULL, 0, 0, '', '2022-03-30 08:26:56', 1, '2022-03-30 17:27:49', 'email', 0, '108.162.241.68'),
(54, '3', '', 0, '147cac8a79c06aa29a725f7cd063b5a8', NULL, 0, 0, '', '2022-03-30 08:30:00', 1, NULL, 'email', 0, '108.162.241.68'),
(55, '3', '', 0, 'e660957de27392b0c1b374e37444af0d', NULL, 0, 0, '', '2022-03-30 08:31:16', 1, '2022-03-30 17:32:02', 'email', 0, '108.162.241.14'),
(56, '7', '', 0, 'ad9fb2419bfbdc2c1319a8b6fb247954', NULL, 0, 0, '', '2022-03-30 10:37:28', 1, '2022-03-30 19:40:28', 'email', 0, '108.162.241.76'),
(57, '7', '', 0, '8ee9541315c908e876d1af34678586c9', NULL, 0, 0, '', '2022-03-30 10:44:19', 1, '2022-03-30 19:49:17', 'email', 0, '108.162.241.76'),
(58, '7', '', 0, '93638afdef394e853a4a5c1febcb339c', NULL, 0, 0, '', '2022-03-30 10:57:44', 1, '2022-03-30 20:02:03', 'email', 0, '108.162.241.76'),
(59, '7', '', 0, '812e41b38e8258d00448800b14e09dbf', NULL, 0, 0, '', '2022-03-30 11:03:37', 1, '2022-03-30 20:07:57', 'email', 0, '108.162.241.76'),
(60, '9', '', 0, 'de0fe6ab0890810b215dc9c044a22d98', NULL, 0, 0, '', '2022-03-30 12:02:21', 1, '2022-03-30 21:02:40', 'email', 0, '108.162.241.14'),
(61, '9', '', 0, '540fd2666e0b46a6caf5482c9d2e831d', NULL, 0, 0, '', '2022-03-30 12:03:08', 1, '2022-03-30 21:03:25', 'email', 0, '108.162.241.14'),
(62, '9', '', 0, '9a260d9069604623a38ec2711ef396ac', NULL, 0, 0, '', '2022-03-30 12:03:34', 1, '2022-03-30 21:03:53', 'email', 0, '108.162.241.14'),
(63, '9', '', 0, '169435c64f327077c5f5a355b6b4e169', NULL, 0, 0, '', '2022-03-30 12:05:26', 1, '2022-03-30 21:05:46', 'email', 0, '108.162.241.14'),
(64, '9', '', 0, 'e05bcbf60ccd1356f8c35a40952ddb6a', NULL, 0, 0, '', '2022-03-30 12:06:34', 1, '2022-03-30 21:06:50', 'email', 0, '108.162.241.14'),
(65, '9', '', 0, '8cc2d4fe96644441de5031511be2f78c', NULL, 0, 0, '', '2022-03-30 12:07:43', 1, '2022-03-30 21:08:48', 'email', 0, '108.162.241.14'),
(66, '13', '', 0, '245537cc09b228d85d9a6a4014ee5430', NULL, 0, 0, '', '2022-03-30 12:15:53', 1, '2022-03-30 21:16:43', 'email', 0, '108.162.241.14'),
(67, '13', '', 0, '533c71979aa313d5852e5bbdd8afa519', NULL, 0, 0, '', '2022-03-30 12:17:08', 1, '2022-03-30 21:17:35', 'email', 0, '108.162.241.14'),
(68, '13', '', 0, '9bcec8ab1733d8bcb085826854a70c35', NULL, 0, 0, '', '2022-03-31 04:47:59', 1, '2022-03-31 13:53:27', 'email', 0, '108.162.241.14'),
(69, '13', '', 0, '7cc077f509708ba32b81580aca04b285', NULL, 0, 0, '', '2022-03-31 04:53:41', 1, '2022-03-31 13:54:11', 'email', 0, '108.162.241.14'),
(70, '13', '', 0, '2af990276d1e559e92d71559c183d044', NULL, 0, 0, '', '2022-03-31 04:55:52', 1, '2022-03-31 13:56:09', 'email', 0, '108.162.241.14'),
(71, '2', '', 0, 'ff25111081ee502c3426c5688347d9a1', NULL, 0, 0, '', '2022-03-31 06:15:22', 1, NULL, 'email', 0, '108.162.242.55'),
(72, '2', '', 0, 'f301d285992868763f232f2db65af52c', NULL, 0, 0, '', '2022-03-31 06:17:52', 1, '2022-03-31 15:19:31', 'email', 0, '108.162.241.68'),
(73, '14', '', 0, 'ca19b1b823b60a02eeb8db837fd866db', NULL, 0, 0, '', '2022-03-31 06:19:23', 1, NULL, 'email', 0, '108.162.241.68'),
(74, '2', '', 0, '942d95445413ddffd517841ce134c9dc', NULL, 0, 0, '', '2022-03-31 06:20:09', 1, '2022-03-31 15:20:35', 'email', 0, '108.162.241.68'),
(75, '2', '', 0, 'c846d6c8ed5f50349943f2b7398f3a5a', NULL, 0, 0, '', '2022-03-31 06:26:14', 1, NULL, 'email', 0, '108.162.241.68'),
(76, '14', '', 0, 'd296a77701fb18ed5ab8bbea0dce36ee', NULL, 0, 0, '', '2022-03-31 06:35:04', 1, NULL, 'email', 0, '108.162.241.22'),
(77, '14', '', 0, '0682bdacb62dd172f1ef3a76e1aa1e14', NULL, 0, 0, '', '2022-03-31 06:35:31', 1, NULL, 'email', 0, '108.162.241.22'),
(78, '14', '', 0, 'a2d6fbc16416a91eae202d775129bbfd', NULL, 0, 0, '', '2022-03-31 07:04:17', 1, NULL, 'email', 0, '108.162.241.22'),
(79, '1', '', 0, '37a3cda8666fe57ea4e3741ba093794e', NULL, 0, 0, '', '2022-03-31 07:45:21', 1, NULL, 'email', 0, '108.162.241.14'),
(80, '1', '', 0, '71e6685aae34dd78b637b9a24cd20243', NULL, 0, 0, '', '2022-03-31 07:47:33', 1, '2022-03-31 16:48:17', 'email', 0, '108.162.241.68'),
(81, '14', '', 0, '73fe2c4478c02db008d8e511c899c48e', NULL, 0, 0, '', '2022-03-31 07:50:37', 1, '2022-03-31 16:51:11', 'email', 0, '108.162.241.22'),
(82, '14', '', 0, 'ef61ae3ec83379cea1ad9cc29ab6f363', NULL, 0, 0, '', '2022-03-31 07:54:20', 1, '2022-03-31 16:54:47', 'email', 0, '108.162.241.22'),
(83, '14', '', 0, '672c82baba2de8153592c163c2fb27f8', NULL, 0, 0, '', '2022-03-31 07:55:03', 1, '2022-03-31 16:55:22', 'email', 0, '108.162.241.22'),
(84, '14', '', 0, 'b8b544f5e8e9333da7f8cbad837238c8', '2022-03-31 18:19:46', 0, 0, '', '2022-03-31 09:16:46', 1, NULL, 'email', 0, '108.162.241.150'),
(85, '14', '', 0, 'baf1041ce6b4b3e61fbdc64c88773c03', '2022-03-31 18:20:12', 0, 0, '', '2022-03-31 09:17:12', 1, NULL, 'email', 0, '108.162.241.150'),
(86, '14', '', 0, 'be0262d6bed1eb2f303d56b00b1f196c', '2022-03-31 18:21:00', 0, 0, '', '2022-03-31 09:18:00', 1, NULL, 'email', 0, '108.162.241.150'),
(87, '14', '', 0, 'f568c4f0bfc85e9c98ca350c0043f976', '2022-03-31 18:21:31', 0, 0, '', '2022-03-31 09:18:31', 1, NULL, 'email', 0, '108.162.241.150'),
(88, '2', '', 0, '6326f7f59b9e3a25423c1563e041808c', '2022-03-31 19:26:35', 0, 0, '', '2022-03-31 10:23:35', 1, '2022-03-31 19:23:58', 'email', 0, '108.162.241.32'),
(89, '2', '', 0, 'c2f381f1b9721ef4932db2e66d2c4d95', '2022-03-31 19:27:41', 0, 0, '', '2022-03-31 10:24:41', 1, '2022-03-31 19:24:59', 'email', 0, '108.162.241.32'),
(90, '2', '', 0, '543c7bc985f9e3d0a9f1b87837ba3ebc', '2022-03-31 20:10:25', 0, 0, '', '2022-03-31 14:40:25', 1, NULL, 'email', 0, '::1'),
(91, '2', '', 0, 'cf3e6bdfd137b04feb7463332839d63f', '2022-03-31 20:11:06', 0, 0, '', '2022-03-31 14:41:06', 1, NULL, 'email', 0, '::1'),
(92, '2', '', 0, 'edda967941c89c57d11cd1638dce2007', '2022-03-31 20:11:50', 0, 0, '', '2022-03-31 14:41:50', 1, NULL, 'email', 0, '::1'),
(93, '2', '', 0, 'a29dd563c75c8516cc31a8bf21206c21', '2022-03-31 20:27:16', 0, 0, '', '2022-03-31 14:57:16', 1, NULL, 'email', 0, '::1'),
(94, '2', '', 0, 'dd02907daf43fa13d01a41e7fed3566c', '2022-03-31 20:30:01', 0, 0, '', '2022-03-31 15:00:01', 1, NULL, 'email', 0, '::1'),
(95, '2', '', 0, '390ab6cb609ff2970bfbf864d82c0317', '2022-03-31 22:16:51', 0, 0, '', '2022-03-31 16:43:51', 1, '2022-03-31 22:14:10', 'email', 0, '::1'),
(96, '2', '', 0, '1cc7579f7829c7025f1ac33acb082bbe', '2022-03-31 22:30:42', 0, 0, '', '2022-03-31 16:57:42', 1, '2022-03-31 22:27:56', 'email', 0, '::1'),
(97, '2', '', 0, 'd3798f3ed38a179db67c2a2cfb11b7bf', '2022-03-31 22:31:22', 0, 0, '', '2022-03-31 16:58:22', 1, '2022-03-31 22:28:37', 'email', 0, '::1'),
(98, '2', '', 0, '1c0318dbf51f5c7bf9c39ff805ed97cc', '2022-03-31 22:33:27', 0, 0, '', '2022-03-31 17:00:27', 1, '2022-03-31 22:30:47', 'email', 0, '::1'),
(99, '2', '', 0, '5d836bf3b7f04cfe83a6e38127ffee2f', '2022-03-31 22:34:52', 0, 0, '', '2022-03-31 17:01:52', 1, '2022-03-31 22:32:11', 'email', 0, '::1'),
(100, '2', '', 0, '7b0a14fea9b04b1799d1608761bc6f29', '2022-03-31 22:41:41', 0, 0, '', '2022-03-31 17:08:41', 1, NULL, 'email', 0, '::1'),
(101, '2', '', 0, 'e3b82805c6fa21c1d13b1d38d79e8b78', '2022-03-31 22:44:56', 0, 0, '', '2022-03-31 17:11:56', 1, '2022-03-31 22:42:43', 'email', 0, '::1'),
(102, '2', '', 0, '1fc321aa3397c39d0564349e8151055b', '2022-03-31 22:46:27', 0, 0, '', '2022-03-31 17:13:27', 1, '2022-03-31 22:43:39', 'email', 0, '::1'),
(103, '2', '', 0, 'e8b7a896af44dc4f788d54d7d5f1a320', '2022-03-31 23:08:53', 0, 0, '', '2022-03-31 17:35:53', 1, '2022-03-31 23:06:10', 'email', 0, '::1'),
(104, '2', '', 0, '2fec4e41db636a2fdf4e3cea1b14461f', '2022-03-31 23:09:35', 0, 0, '', '2022-03-31 17:36:35', 1, '2022-03-31 23:06:49', 'email', 0, '::1'),
(105, '2', '', 0, 'cab059a85afc4899c0300784f2702783', '2022-03-31 23:10:24', 0, 0, '', '2022-03-31 17:37:24', 1, '2022-03-31 23:07:39', 'email', 0, '::1'),
(106, '2', '', 0, '8ceed77eddc94a02a4c63ebdd713b463', '2022-03-31 23:11:33', 0, 0, '', '2022-03-31 17:38:33', 1, '2022-03-31 23:08:47', 'email', 0, '::1'),
(107, '2', '', 0, 'b8f0f54c253d9c85a79a70eeeb29a116', '2022-03-31 23:15:33', 0, 0, '', '2022-03-31 17:42:33', 1, '2022-03-31 23:12:53', 'email', 0, '::1'),
(108, '2', '', 0, 'ee7b730bc57659e8af3ed8578f9f5ea2', '2022-03-31 23:42:05', 0, 0, '', '2022-03-31 18:09:05', 1, NULL, 'email', 0, '::1'),
(109, '2', '', 0, 'a143a7f84a5bc4c294802cd042514bd2', '2022-03-31 23:44:29', 0, 0, '', '2022-03-31 18:11:29', 1, NULL, 'email', 0, '::1'),
(110, '2', '', 0, '3cd9ce39f6ca441865b19954bc6f05d0', '2022-03-31 23:54:04', 0, 0, '', '2022-03-31 18:21:04', 1, '2022-03-31 23:51:19', 'email', 0, '::1'),
(111, '2', '', 0, '99651c9e5e0209f4ba7f3f8e7d8d9dd4', '2022-03-31 23:55:50', 0, 0, '', '2022-03-31 18:22:50', 1, '2022-03-31 23:53:04', 'email', 0, '::1'),
(112, '2', '', 0, 'ff16a40476c38d186314b0b4532e2dea', '2022-03-31 23:56:51', 0, 0, '', '2022-03-31 18:23:51', 1, '2022-03-31 23:54:07', 'email', 0, '::1'),
(113, '2', '', 0, 'bfd8435bb410a836c333dc5f1e6ab191', '2022-04-01 00:15:24', 0, 0, '', '2022-03-31 18:42:24', 1, '2022-04-01 00:12:41', 'email', 0, '::1'),
(114, '2', '', 0, '765fbc18bc54866e29b3cf1ec8a4b5a3', '2022-04-01 00:16:00', 0, 0, '', '2022-03-31 18:43:00', 1, '2022-04-01 00:13:19', 'email', 0, '::1'),
(115, '14', '', 0, 'a4325abc0f3f00eb4a2a66e0e01a1821', '2022-04-01 00:28:57', 0, 0, '', '2022-03-31 18:55:57', 1, NULL, 'email', 0, '::1'),
(116, '14', '', 0, '996a051d19c24da7fce71a42a3efea30', '2022-04-01 00:32:27', 0, 0, '', '2022-03-31 18:59:27', 1, '2022-04-01 00:29:42', 'email', 0, '::1'),
(117, '14', '', 0, '2606432fe7caa6249ad1dac878c47956', '2022-04-01 01:07:37', 0, 0, '', '2022-03-31 19:34:37', 1, '2022-04-01 01:04:57', 'email', 0, '::1'),
(118, '14', '', 0, '42eb6bdfe3f251afa4d7a21578e96f21', '2022-04-01 01:08:39', 0, 0, '', '2022-03-31 19:35:39', 1, '2022-04-01 01:05:54', 'email', 0, '::1'),
(119, '14', '', 0, 'a5a0e45b6c564d1477c1662a4d8185cb', '2022-04-01 01:10:46', 0, 0, '', '2022-03-31 19:37:46', 1, '2022-04-01 01:07:57', 'email', 0, '::1'),
(120, '14', '', 0, '6da51295e8e528ab43aac24293d09c90', '2022-04-01 01:14:50', 0, 0, '', '2022-03-31 19:41:50', 1, '2022-04-01 01:12:03', 'email', 0, '::1'),
(121, '14', '', 0, 'e78acbd017c71bdf4d0869daca4a1624', '2022-04-01 01:15:39', 0, 0, '', '2022-03-31 19:42:39', 1, NULL, 'email', 0, '::1'),
(122, '14', '', 0, '2c1bb588af1e6f7a9daabedd8e31330d', '2022-04-01 01:48:12', 0, 0, '', '2022-03-31 20:15:12', 1, '2022-04-01 01:46:07', 'email', 0, '::1'),
(123, '14', '', 0, 'c796503305e2c4b45c52655a6c4d206c', '2022-04-01 12:53:30', 0, 0, '', '2022-04-01 07:20:30', 1, '2022-04-01 12:50:48', 'email', 0, '::1'),
(124, '14', '', 0, '94b5b19d8688850858788de3a8d549e1', '2022-04-01 12:56:23', 0, 0, '', '2022-04-01 07:23:23', 1, NULL, 'email', 0, '::1'),
(125, '14', '', 0, '8b24a38995b86242aa963660db59ef84', '2022-04-01 12:57:41', 0, 0, '', '2022-04-01 07:24:41', 1, NULL, 'email', 0, '::1'),
(126, '14', '', 0, '4f8e45727991615f1ee00d3decbeb9df', '2022-04-01 12:58:38', 0, 0, '', '2022-04-01 07:25:38', 1, '2022-04-01 12:55:50', 'email', 0, '::1'),
(127, '14', '', 0, 'bf060b62c47dff728a99ee21249c5c96', '2022-04-01 13:06:05', 0, 0, '', '2022-04-01 07:33:05', 1, '2022-04-01 13:03:20', 'email', 0, '::1'),
(128, '14', '', 0, '2ee8d451185283602c80a12ee9de4deb', '2022-04-01 13:14:57', 0, 0, '', '2022-04-01 07:41:57', 1, '2022-04-01 13:12:10', 'email', 0, '::1'),
(129, '14', '', 0, '1144258a2e4524a71f1943e8113a0e97', '2022-04-01 13:16:02', 0, 0, '', '2022-04-01 07:43:02', 1, '2022-04-01 13:13:21', 'email', 0, '::1'),
(130, '14', '', 0, 'dd87a7f5235b42a494ac42081919e4ae', '2022-04-01 13:17:15', 0, 0, '', '2022-04-01 07:44:15', 1, '2022-04-01 13:14:27', 'email', 0, '::1'),
(131, '14', '', 0, 'd65fdfda8855ea28f06ba97b78b82c27', '2022-04-01 13:17:54', 0, 0, '', '2022-04-01 07:44:54', 1, '2022-04-01 13:15:10', 'email', 0, '::1'),
(132, '14', '', 0, '470841aad50552478cda040b2b59cb67', '2022-04-01 13:25:34', 0, 0, '', '2022-04-01 07:52:34', 1, '2022-04-01 13:22:53', 'email', 0, '::1'),
(133, '14', '', 0, '93410ed1fdab2bd18b7807a8d74e2e10', '2022-04-01 13:26:52', 0, 0, '', '2022-04-01 07:53:52', 1, '2022-04-01 13:24:08', 'email', 0, '::1'),
(134, '2', '', 0, '15e8964f119144bd173175e85632c6bc', '2022-04-01 13:53:22', 0, 0, '', '2022-04-01 08:20:22', 1, '2022-04-01 13:50:40', 'email', 0, '::1'),
(135, '2', '', 0, '7f75e25f2488659898496c76c3bf8117', '2022-04-01 14:29:16', 0, 0, '', '2022-04-01 08:56:16', 1, NULL, 'email', 0, '::1'),
(136, '2', '', 0, '79950065823d17ae38655b7db7a34fd6', '2022-04-01 14:30:19', 0, 0, '', '2022-04-01 08:57:19', 1, NULL, 'email', 0, '::1'),
(137, '2', '', 0, 'abb7ff3af2fe7a6a4c22e5571e29506a', '2022-04-01 14:31:43', 0, 0, '', '2022-04-01 08:58:43', 1, '2022-04-01 14:29:30', 'email', 0, '::1'),
(138, '2', '', 0, '899edd6690e94042573f4300c9df9fa2', '2022-04-01 14:46:46', 0, 0, '', '2022-04-01 09:13:46', 1, '2022-04-01 14:44:04', 'email', 0, '::1'),
(139, '2', '', 0, 'd439036cd19901bc18310b0eda3fa261', '2022-04-01 15:32:07', 0, 0, '', '2022-04-01 09:59:07', 1, '2022-04-01 15:29:27', 'email', 0, '::1'),
(140, '2', '', 0, '2087fa0706beb4d1ce59203f806bc69a', '2022-04-01 15:47:21', 0, 0, '', '2022-04-01 10:14:21', 1, '2022-04-01 15:44:54', 'email', 0, '::1'),
(141, '2', '', 0, '09fc0caedf623ef71876333bd2f70878', '2022-04-01 15:48:17', 0, 0, '', '2022-04-01 10:15:17', 1, '2022-04-01 15:45:30', 'email', 0, '::1'),
(142, '2', '', 0, '078ae904bfbeb89916d4107864e18362', '2022-04-01 15:49:32', 0, 0, '', '2022-04-01 10:16:32', 1, '2022-04-01 15:46:52', 'email', 0, '::1'),
(143, '2', '', 0, '7ced05c3b48b371f8b532e21bbd0c78c', '2022-04-01 15:50:24', 0, 0, '', '2022-04-01 10:17:24', 1, '2022-04-01 15:47:36', 'email', 0, '::1'),
(144, '2', '', 0, 'd6a1771c02dd2e78edc77713639fdc8a', '2022-04-01 15:51:45', 0, 0, '', '2022-04-01 10:18:45', 1, '2022-04-01 15:49:03', 'email', 0, '::1'),
(145, '2', '', 0, '878a203064e2cb3f731e0acface9951d', '2022-04-01 16:16:32', 0, 0, '', '2022-04-01 10:43:32', 1, '2022-04-01 16:13:46', 'email', 0, '::1'),
(146, '2', '', 0, '1bdc419b6e9907adf26d59eb6fcd8b66', '2022-04-01 17:16:45', 0, 0, '', '2022-04-01 11:43:45', 1, '2022-04-01 17:14:04', 'email', 0, '::1'),
(147, '2', '', 0, 'f1714df9310c1457ddf687c0525f15d4', '2022-04-01 17:17:19', 0, 0, '', '2022-04-01 11:44:19', 1, '2022-04-01 17:14:41', 'email', 0, '::1'),
(148, '2', '', 0, '77f14fdbe947ddd5d16cc3e56f21469f', '2022-04-01 17:21:53', 0, 0, '', '2022-04-01 11:48:53', 1, '2022-04-01 17:19:11', 'email', 0, '::1'),
(149, '2', '', 0, '0ce9d45712c14fada3a62036b3c7612c', '2022-04-01 17:22:34', 0, 0, '', '2022-04-01 11:49:34', 1, NULL, 'email', 0, '::1'),
(150, '2', '', 0, '9c4ae369f7e12e04c9263911befbdeca', '2022-04-01 17:28:59', 0, 0, '', '2022-04-01 11:55:59', 1, '2022-04-01 17:26:19', 'email', 0, '::1'),
(151, '2', '', 0, 'e27029e8b752f6f3e6d007d5082c6354', '2022-04-01 19:24:21', 0, 0, '', '2022-04-01 13:51:21', 1, '2022-04-01 19:21:42', 'email', 0, '::1'),
(152, '1', '', 0, 'd0d5ce072c37717a530a93df77d6b5e3', '2022-04-28 20:33:29', 0, 0, '', '2022-04-28 15:00:29', 0, NULL, 'email', 0, '::1'),
(153, '1', '', 0, '01166cf3f7a48783f85e1ce0578c14fd', '2022-05-06 13:11:05', 0, 0, '', '2022-05-06 07:38:05', 0, NULL, 'email', 2, '::1'),
(154, '1', '', 0, '26e4e0325aef0af2caf86b40dc23e097', '2022-05-06 13:26:26', 0, 0, '', '2022-05-06 07:53:26', 1, '2022-05-06 13:24:07', 'email', 2, '::1'),
(155, '1', '', 0, '12b640eaa40f6886364c700e92a820dd', '2022-05-06 13:27:11', 0, 0, '', '2022-05-06 07:54:11', 0, NULL, 'email', 3, '::1'),
(156, '1', '', 0, '937e248ca16cae29c19bdbed99f69c61', '2022-05-09 16:42:23', 0, 0, '', '2022-05-09 11:09:23', 1, '2022-05-09 16:40:07', 'email', 2, '::1'),
(157, '1', '', 0, 'e9fae401442d84cb69fc1bdd310b6af4', '2022-05-10 15:09:40', 0, 0, '', '2022-05-10 09:36:40', 1, '2022-05-10 15:08:07', 'email', 2, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_reset_password`
--

CREATE TABLE `tbl_user_reset_password` (
  `otp_id` int(11) NOT NULL,
  `id` varchar(100) DEFAULT '',
  `request_ip_address` varchar(100) DEFAULT '',
  `reset_password_token` varchar(500) DEFAULT '',
  `verificationId` int(100) DEFAULT '0',
  `responseCode` int(100) DEFAULT '0',
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `otp_status` int(100) DEFAULT '0',
  `out_time` datetime DEFAULT NULL,
  `old_email` varchar(100) DEFAULT '',
  `new_email` varchar(100) DEFAULT '',
  `ip_address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_reset_password`
--

INSERT INTO `tbl_user_reset_password` (`otp_id`, `id`, `request_ip_address`, `reset_password_token`, `verificationId`, `responseCode`, `entry_time`, `otp_status`, `out_time`, `old_email`, `new_email`, `ip_address`) VALUES
(1, '4', '103.134.162.101', '7250352f8dd85973d7dc86273070d817', 0, 0, '2021-10-05 08:59:28', 1, '2021-10-05 17:59:44', '', '', '103.134.162.101'),
(2, '24', '59.88.168.107', '10e40fc9df6ad71049135ed0f3d98dcb', 0, 0, '2021-10-29 03:55:54', 1, '2021-10-29 12:56:19', '', '', '59.88.168.107'),
(3, '4', '::1', 'fe42263712cce0f3a0d82873cb91696a', 0, 0, '2022-02-02 09:52:30', 1, '2022-02-02 13:22:49', '', '', '::1'),
(4, '7', '::1', '479fc35d07dc93ed2d00faa81f4220cd', 0, 0, '2022-02-02 22:55:55', 1, '2022-02-03 02:26:16', '', '', '::1'),
(5, '11', '108.162.241.125', 'a8524baa127e8320683a0afe583120e6', 0, 0, '2022-02-08 09:08:26', 1, '2022-02-08 18:09:24', '', '', '108.162.241.124'),
(6, '8', '108.162.241.9', 'b08db76edef2f2451ed3ca9cdeec6c8f', 0, 0, '2022-02-08 10:31:16', 0, NULL, '', '', NULL),
(7, '14', '108.162.241.92', 'dddba9f51049eb3b69e7a68fb02de024', 0, 0, '2022-02-22 12:53:58', 1, '2022-02-22 21:54:25', '', '', '108.162.241.92'),
(8, '11', '108.162.241.124', '7e60e4ab8918f82f273953a7e9727a1b', 0, 0, '2022-02-22 12:56:44', 1, '2022-02-22 21:56:59', '', '', '108.162.241.124'),
(9, '10', '108.162.241.122', 'cc1176583e093b61ac4b5dc2b3aa3109', 0, 0, '2022-02-23 09:35:40', 1, '2022-02-23 18:36:14', '', '', '108.162.241.122'),
(10, '12', '108.162.241.122', 'ff6ef22d938f7eddcdea90f30f876e52', 0, 0, '2022-02-25 05:25:26', 1, '2022-02-25 14:26:01', '', '', '108.162.241.122'),
(11, '12', '108.162.241.22', 'a785e7bf87e82150a6d46dea54b1fdba', 0, 0, '2022-02-25 10:50:05', 1, '2022-02-25 19:50:19', '', '', '108.162.241.22'),
(12, '19', '108.162.241.44', 'fecbaade77af1e9bbb5fb5442264708c', 0, 0, '2022-02-25 10:53:28', 1, '2022-02-25 19:54:15', '', '', '108.162.241.92'),
(13, '2', '108.162.241.44', 'a95f28a94f97f3177c1a9a5694d2ecef', 0, 0, '2022-02-26 07:40:22', 0, NULL, '', '', NULL),
(14, '2', '162.158.74.209', '4665f40c7e3b701fb7180a6ef595d635', 0, 0, '2022-03-04 06:25:15', 1, '2022-03-04 15:25:40', '', '', '162.158.74.209'),
(15, '2', '162.158.74.209', '314677d116c3884b9b4d15afb927f65e', 0, 0, '2022-03-04 06:27:09', 1, '2022-03-04 15:27:28', '', '', '162.158.74.209'),
(16, '2', '::1', '2dec382942ec2aa8736404e2896391d7', 0, 0, '2022-04-01 15:51:42', 0, NULL, '', '', NULL),
(17, '2', '127.0.0.1', '9201519f76fe29f5f1664ad454beee4e', 0, 0, '2022-07-25 10:20:16', 0, NULL, '', '', NULL),
(18, '2', '127.0.0.1', 'aaf1d071be380dfb78db656db5006d13', 0, 0, '2022-07-25 10:37:18', 0, NULL, '', '', NULL),
(19, '2', '127.0.0.1', 'fd7277b1abbcd31782c764036f987b6b', 0, 0, '2022-07-25 10:39:08', 0, NULL, '', '', NULL),
(20, '2', '127.0.0.1', '1716e8eefdc0af49bc4ed21f1c1b5ca1', 0, 0, '2022-07-25 10:40:25', 0, NULL, '', '', NULL),
(21, '2', '127.0.0.1', '6bee51ba10cbcba58085dd7e93302f49', 0, 0, '2022-07-25 12:41:35', 0, NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_secure`
--

CREATE TABLE `tbl_user_secure` (
  `otp_id` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT '',
  `mac_address` varchar(100) DEFAULT '',
  `mobile_no` int(50) DEFAULT '0',
  `otp` int(100) DEFAULT '0',
  `verificationId` int(100) DEFAULT '0',
  `responseCode` int(100) DEFAULT '0',
  `smsCLI` varchar(100) DEFAULT '',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `otp_status` int(100) DEFAULT '0',
  `out_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `query` varchar(1000) DEFAULT '',
  `pass` varchar(200) NOT NULL,
  `ip_address` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_setting_fund`
--

CREATE TABLE `tbl_user_setting_fund` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` float DEFAULT '0',
  `topup_percentage` float DEFAULT '0',
  `before_balance` float DEFAULT '0',
  `after_balance` float DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `remark` tinytext,
  `ip_address` varchar(100) DEFAULT NULL,
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_setting_fund`
--

INSERT INTO `tbl_user_setting_fund` (`id`, `user_id`, `amount`, `topup_percentage`, `before_balance`, `after_balance`, `status`, `remark`, `ip_address`, `entry_time`) VALUES
(1, 2, 100, 20, 0, 100, 1, NULL, NULL, '2022-03-07 14:49:34'),
(2, 2, 1000, 30, 0, 1000, 1, 'testing', NULL, '2022-03-22 22:44:41'),
(3, 3, 100, 20, 0, 100, 1, NULL, NULL, '2022-03-28 22:07:47'),
(4, 13, 50000, 60, 0, 50000, 1, NULL, '108.162.241.68', '2022-03-30 21:44:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_structure`
--

CREATE TABLE `tbl_user_structure` (
  `id` int(11) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `no_structure` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `bcrypt_password` varchar(200) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `amount_topup` int(11) NOT NULL,
  `transaction_type` int(11) NOT NULL DEFAULT '0' COMMENT '1-50%-50%,2-Purchase wallet',
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(10) DEFAULT NULL COMMENT '0-Pending,1-Complete,2-Some errors',
  `temp_pass` varchar(250) DEFAULT NULL,
  `reg_mail_status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_update`
--

CREATE TABLE `tbl_user_update` (
  `srno` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `old_user_id` varchar(50) NOT NULL,
  `new_user_id` varchar(50) NOT NULL,
  `entry_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_video`
--

CREATE TABLE `tbl_user_video` (
  `id` int(100) NOT NULL,
  `user_id` int(100) DEFAULT '0',
  `url_link` varchar(500) DEFAULT '',
  `entry_time` datetime DEFAULT '0000-00-00 00:00:00',
  `status` enum('0','1','2','3') DEFAULT '0' COMMENT '0=Pending,1=Approve,2=Rejected,3=Hide',
  `youtube_link` varchar(500) DEFAULT '',
  `remark` varchar(500) DEFAULT '',
  `admin_date` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_withdrawal_setting`
--

CREATE TABLE `tbl_user_withdrawal_setting` (
  `srno` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `currency_address` varchar(200) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `ip_address` varchar(100) DEFAULT NULL,
  `block_user_date_time` datetime DEFAULT NULL COMMENT 'stop user when addr update - 24hr',
  `token` text,
  `token_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 is Inactive, 0 is Active',
  `entry_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_withdrawal_setting`
--

INSERT INTO `tbl_user_withdrawal_setting` (`srno`, `id`, `currency`, `currency_address`, `status`, `ip_address`, `block_user_date_time`, `token`, `token_status`, `entry_time`, `update_time`, `updated_by`) VALUES
(1, 3, 'BTC', 'rgvfgverbgdrftbtrhbhfgbhtrhtrhtrhrt', 1, NULL, NULL, NULL, 0, '2022-03-08 09:29:54', '2022-03-08 09:29:54', 1),
(2, 3, 'BNB-BSC', 'fgeersgetbstrbhtrsbhsryhryhryshty', 1, NULL, NULL, NULL, 0, '2022-03-08 09:30:41', '2022-03-08 09:30:41', 1),
(3, 3, 'USDT-TRC20', 'gfrgerghrsegtrghtrhgtrhtrhrh', 1, NULL, NULL, NULL, 0, '2022-03-08 09:30:50', '2022-03-08 09:30:50', 1),
(4, 3, 'LTC', 'wegwrgaregsretgbtrhbtrhtr', 1, NULL, NULL, NULL, 0, '2022-03-08 09:30:59', '2022-03-08 09:30:59', 1),
(5, 3, 'DOGE', 'thrtbdrgthgtrdghtrhgtrhtrdh', 1, NULL, NULL, NULL, 0, '2022-03-08 09:31:07', '2022-03-08 09:31:07', 1),
(6, 3, 'TRX', 'tgrvergergtrghtrgtggthrthr', 1, NULL, NULL, NULL, 0, '2022-03-08 09:31:45', '2022-03-08 09:31:45', 1),
(13, 4, 'TRX', 'tduifyeuwitrwfhwg8r7q56r873687rwgwjhwf', 1, NULL, NULL, NULL, 0, '2022-03-28 22:18:15', '2022-03-28 22:18:15', 4),
(14, 4, 'BNB-BSC', 'dsgrtyewrt646rgdfgdhdfhfhdf', 1, NULL, NULL, NULL, 0, '2022-03-28 22:18:15', '2022-03-28 22:18:15', 4),
(15, 10, 'BTC', 'bafetyt35r274573fgshfawuytfwjasfdsfwett', 1, NULL, NULL, NULL, 0, '2022-03-28 22:20:40', '2022-03-28 22:20:40', 10),
(16, 10, 'LTC', 'lyutgfdtre65477rtgde576tr7fghdf65r76tfhg', 1, NULL, NULL, NULL, 0, '2022-03-30 17:17:02', '2022-03-30 17:17:02', 10),
(17, 9, 'TRX', 'tere2354tdvdvzstqw353tesgsetsdg', 1, NULL, '2022-03-31 21:06:50', '3c289c390a63f74fe561a1a70be7866c', 0, '2022-03-30 17:26:26', '2022-03-30 17:26:26', 9),
(19, 9, 'BNB-BSC', 'gsdbcxxfhery4w64y4e7eryhfhdfhf', 1, NULL, NULL, NULL, 0, '2022-03-30 17:26:26', '2022-03-30 17:26:26', 9),
(20, 9, 'USDT-TRC20', 'usxxgxtew5w4y4erydfdgsdgdgdgd', 1, NULL, NULL, NULL, 0, '2022-03-30 17:26:26', '2022-03-30 17:26:26', 9),
(21, 9, 'LTC', 'vsdgtet353twgfhdyuer46464wye', 1, NULL, NULL, NULL, 0, '2022-03-30 17:26:26', '2022-03-30 17:26:26', 9),
(22, 9, 'DOGE', 'dbr6eyeryurutrjffbndfjrtureyetyewt46464', 1, NULL, NULL, NULL, 0, '2022-03-30 17:26:26', '2022-03-30 17:26:26', 9),
(23, NULL, 'BTC', 'btt54t4t4y4ydvxvcve4654645gfbfdge5465645', 1, '108.162.241.14', '2022-03-31 21:05:46', 'df466f8def02850dd66f0f61a4ce9ef4', 0, '2022-03-30 21:05:46', '2022-03-30 21:05:46', NULL),
(24, NULL, 'BTC', 'btt54t4t4y4ydvxvcve4654645gfbfdge5465645', 1, '108.162.241.14', '2022-03-31 21:06:50', '3c289c390a63f74fe561a1a70be7866c', 0, '2022-03-30 21:06:50', '2022-03-30 21:06:50', NULL),
(25, NULL, 'BTC', 'b26uydghf67365yudtghscsv73t73wdgh', 1, '108.162.241.14', '2022-03-31 21:16:43', '7e6f9256fd4d1bf5f9fc582b2c99922e', 0, '2022-03-30 21:16:43', '2022-03-30 21:16:43', NULL),
(26, 13, 'LTC', 'lty7783474dcjddjdvcdhd7846387fegh', 1, NULL, NULL, NULL, 0, '2022-03-30 21:21:58', '2022-03-30 21:21:58', 1),
(27, 13, 'BTC', 'btv4t3454dsvdvdwt5etetedsvdvewtwet45', 1, '108.162.241.14', '2022-04-01 13:54:11', '72a8db7e701993f4a5906b281845f55d', 0, '2022-03-31 13:54:11', '2022-03-31 13:54:11', 13),
(28, 13, 'BNB-BSC', 'bxffbdcbey45y5745hdfhdfhfdh5y745745yerhre', 1, '108.162.241.14', '2022-04-01 13:56:09', '1a5f05fa6043b72d6a1faf11bcd7dfc7', 0, '2022-03-31 13:56:09', '2022-03-31 13:56:09', 13),
(29, 14, 'TRX', 'THGkuQPBQYDqphTxTazGxJkMHNC1rvJjvH', 1, '108.162.241.22', '2022-04-02 01:46:07', '16b0406dff13f13cba0b5d3b407c82e5', 0, '2022-03-31 16:54:47', '2022-03-31 16:54:47', 14),
(30, 14, 'BTC', 'bsjdhsjhdfhsgjhdfgsjhdgfdjhgfdsds', 1, '::1', '2022-04-02 13:12:10', '89d0643da039a2ad8d58de233605ec0a', 0, '2022-03-31 21:34:59', '2022-03-31 21:34:59', 14),
(31, 14, 'DOGE', 'jshdbhsvdfhhfgvdhfgvshsadsd', 1, '::1', '2022-04-02 13:24:08', 'aca4d3a5494f65b3fa69021b8a603990', 0, '2022-03-31 21:38:04', '2022-03-31 21:38:04', 14),
(32, 14, 'LTC', 'LITECOINashdgahsdhahsgdgwsjdassa', 1, '::1', '2022-04-02 13:15:10', '26ab0e49cbd5054af5a963acb964f9bd', 0, '2022-03-31 22:16:10', '2022-03-31 22:16:10', 14),
(33, 14, 'BNB-BSC', 'ashdvghasdhvashvdghvsgdgsdgshd', 1, '::1', '2022-04-02 13:13:21', '1424b4bc444ba2c36fc1841871499bd9', 0, '2022-04-01 09:43:21', '2022-04-01 09:43:21', 14),
(34, 2, 'USDT-TRC20', 'tfgbsgbgfsbfgbfgbfsagasdadasdb', 1, '::1', '2022-04-02 15:45:30', '44fc38f9a33d3cef8c1765d8a82fb105', 0, '2022-04-01 11:14:04', '2022-04-01 11:14:04', 2),
(35, 2, 'LTC', '3asdasdsadasasdasdasdasdasdsd', 1, '::1', '2022-04-02 17:14:41', 'f2429beea5faf304d444851d379a5ffb', 0, '2022-04-01 13:44:41', '2022-04-01 13:44:41', 2),
(36, 2, 'TRX', 'tasdshbdjsbdjhbsdsdasdasdsa', 1, '::1', '2022-04-02 17:19:11', '15d52cc7ea8c4a475a18f07c2d1845d0', 0, '2022-04-01 13:49:11', '2022-04-01 13:49:11', 2),
(37, 2, 'BTC', 'bkskdfkfsjdksjdasjdnsjdsdjdsd', 1, '::1', '2022-04-02 17:26:19', '312ed6069f90f95df100bb12288c4fc6', 0, '2022-04-01 13:56:19', '2022-04-01 13:56:19', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `social_type_id` int(11) DEFAULT NULL,
  `text` text,
  `link` text,
  `per_click_income` varchar(255) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_voucher_transaction`
--

CREATE TABLE `tbl_voucher_transaction` (
  `srno` int(11) NOT NULL,
  `id` int(11) DEFAULT '0',
  `network_type` varchar(500) DEFAULT NULL,
  `credit` double DEFAULT '0',
  `debit` double DEFAULT '0',
  `credit_coin` decimal(10,0) NOT NULL,
  `debit_coin` double NOT NULL DEFAULT '0',
  `coin` int(11) NOT NULL DEFAULT '0',
  `phases_id` int(11) NOT NULL DEFAULT '0',
  `prev_balance` decimal(10,0) NOT NULL DEFAULT '0',
  `final_balance` decimal(10,0) NOT NULL DEFAULT '0',
  `balance` double DEFAULT '0',
  `refference` varchar(50) DEFAULT '0' COMMENT 'tbl_add_fund(srno)',
  `transaction_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `remarks` varchar(500) DEFAULT NULL,
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet`
--

CREATE TABLE `tbl_wallet` (
  `srno` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `setting_name` varchar(500) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet_transaction_log`
--

CREATE TABLE `tbl_wallet_transaction_log` (
  `sr_no` int(11) NOT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `wallet_type` int(11) DEFAULT NULL COMMENT '1-Working Wallet,2-Topup Wallet,3-Fund Wallet',
  `transaction_type` int(11) DEFAULT '2' COMMENT '1-Add,2-Deduct',
  `remark` varchar(200) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wallet_transaction_log`
--

INSERT INTO `tbl_wallet_transaction_log` (`sr_no`, `from_user_id`, `to_user_id`, `amount`, `wallet_type`, `transaction_type`, `remark`, `ip_address`, `entry_time`) VALUES
(1, 1, 2, 100, 3, 1, 'Admin added fund in new fund wallet', NULL, '2022-03-04 20:44:04'),
(2, 2, 2, 80, 3, 2, 'Topup from Fund Wallet (min 80%)', NULL, '2022-03-07 14:50:22'),
(3, 2, 2, 20, 4, 2, 'Topup from setting wallet (max 20%)', NULL, '2022-03-07 14:50:22'),
(4, 2, 3, 120, 3, 2, 'Topup from Fund Wallet (min 80%)', NULL, '2022-03-07 18:24:11'),
(5, 2, 3, 30, 4, 2, 'Topup from setting wallet (max 20%)', NULL, '2022-03-07 18:24:11'),
(6, 2, 2, 800, 3, 2, 'Topup from Fund Wallet (min 80%)', NULL, '2022-03-07 18:35:32'),
(7, 2, 2, 50, 4, 2, 'Topup from setting wallet (max 20%)', NULL, '2022-03-07 18:35:32'),
(8, 3, 3, 50, 3, 2, 'Topup from new fund wallet', NULL, '2022-03-11 18:54:13'),
(9, 2, 4, 5000, 3, 2, 'Topup from new fund wallet', NULL, '2022-03-15 20:45:36'),
(10, 2, 3, 1000, 3, 2, 'Topup from new fund wallet', NULL, '2022-03-15 21:01:59'),
(11, 2, 2, 3000, 3, 2, 'Topup from new fund wallet', NULL, '2022-03-22 14:35:38'),
(12, 2, 3, 70, 3, 2, 'Topup from Fund Wallet (min 70%)', NULL, '2022-03-22 22:50:44'),
(13, 2, 3, 30, 4, 2, 'Topup from setting wallet (max 30%)', NULL, '2022-03-22 22:50:44'),
(14, 2, 2, 210, 3, 2, 'Topup from Fund Wallet (min 70%)', NULL, '2022-03-22 22:51:17'),
(15, 2, 2, 90, 4, 2, 'Topup from setting wallet (max 30%)', NULL, '2022-03-22 22:51:17'),
(16, 3, 3, 80, 3, 2, 'Topup from Fund Wallet (min 80%)', NULL, '2022-03-28 22:08:16'),
(17, 3, 3, 20, 4, 2, 'Topup from Development Bonus (max 20%)', NULL, '2022-03-28 22:08:16'),
(18, 1, 13, 50000, 3, 1, 'Admin added fund in new fund wallet', '108.162.241.68', '2022-03-30 21:44:46'),
(19, 13, 13, 260, 3, 2, 'Topup from Fund Wallet (min 40%)', NULL, '2022-03-30 21:45:32'),
(20, 13, 13, 390, 4, 2, 'Topup from Development Bonus (max 60%)', NULL, '2022-03-30 21:45:32'),
(21, 2, 2, 50, 3, 2, 'Topup from new fund wallet', NULL, '2022-03-30 21:48:24'),
(22, 2, 2, 35, 3, 2, 'Topup from Fund Wallet (min 70%)', NULL, '2022-03-30 22:10:35'),
(23, 2, 2, 15, 4, 2, 'Topup from Development Bonus (max 30%)', NULL, '2022-03-30 22:10:35'),
(24, 2, 2, 35.7, 3, 2, 'Topup from Fund Wallet (min 70%)', NULL, '2022-03-30 22:14:08'),
(25, 2, 2, 15.3, 4, 2, 'Topup from Development Bonus (max 30%)', NULL, '2022-03-30 22:14:08'),
(26, 2, 2, 36.4, 3, 2, 'Topup from Fund Wallet (min 70%)', NULL, '2022-03-30 22:31:33'),
(27, 2, 2, 15.6, 4, 2, 'Topup from Development Bonus (max 30%)', NULL, '2022-03-30 22:31:33'),
(28, 2, 2, 70, 3, 2, 'Topup from Fund Wallet (min 70%)', NULL, '2022-03-31 14:22:10'),
(29, 2, 2, 30, 4, 2, 'Topup from Development Bonus (max 30%)', NULL, '2022-03-31 14:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_whatnew`
--

CREATE TABLE `tbl_whatnew` (
  `id` int(11) NOT NULL,
  `ndate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sub` varchar(100) DEFAULT '',
  `text` text,
  `expdate` varchar(100) DEFAULT '',
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_white_list_ip_address`
--

CREATE TABLE `tbl_white_list_ip_address` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `ip_add` varchar(200) DEFAULT NULL,
  `topup_status` tinyint(4) DEFAULT '0',
  `topup_expire` datetime DEFAULT NULL,
  `withdraw_status` tinyint(4) DEFAULT '0',
  `withdraw_expire` datetime DEFAULT NULL,
  `transfer_status` tinyint(4) DEFAULT '0',
  `transfer_expire` datetime DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `entry_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_white_list_ip_address`
--

INSERT INTO `tbl_white_list_ip_address` (`id`, `uid`, `ip_add`, `topup_status`, `topup_expire`, `withdraw_status`, `withdraw_expire`, `transfer_status`, `transfer_expire`, `remark`, `entry_time`) VALUES
(1, 2, '103.163.90.178', 1, '2022-03-31 15:22:38', 0, NULL, 0, NULL, 'working fine', '2022-03-30 22:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrawal_amt`
--

CREATE TABLE `tbl_withdrawal_amt` (
  `id` int(11) NOT NULL,
  `toUserId` int(11) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `to_address` varchar(255) DEFAULT '',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrawal_amt_for_pb`
--

CREATE TABLE `tbl_withdrawal_amt_for_pb` (
  `id` int(11) NOT NULL,
  `toUserId` int(11) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrawal_amt_for_royalty`
--

CREATE TABLE `tbl_withdrawal_amt_for_royalty` (
  `id` int(11) NOT NULL,
  `toUserId` int(11) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrawal_history_pdc`
--

CREATE TABLE `tbl_withdrawal_history_pdc` (
  `id` int(11) NOT NULL,
  `toUserId` int(11) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` varchar(200) DEFAULT '',
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdraw_settings`
--

CREATE TABLE `tbl_withdraw_settings` (
  `srno` int(11) NOT NULL,
  `income` varchar(500) DEFAULT NULL,
  `deduction` double DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_withdraw_settings`
--

INSERT INTO `tbl_withdraw_settings` (`srno`, `income`, `deduction`, `status`) VALUES
(1, 'level_income_balance', 0, 'Active'),
(2, 'direct_income_balance', 0, 'Active'),
(3, 'roi_balance', 0, 'Active'),
(4, 'binary_income_balance', 0, 'Active'),
(5, 'topup_wallet', 0, 'Active'),
(6, 'transfer_wallet', 0, 'Active'),
(7, 'working_wallet', 20, 'Active'),
(8, 'wallet_wallet', 2, 'Active'),
(9, 'wallet_withdrawal', 10, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrwal_confirmed`
--

CREATE TABLE `tbl_withdrwal_confirmed` (
  `sr_no` int(11) NOT NULL,
  `transaction_hash` varchar(255) DEFAULT '',
  `id` int(11) DEFAULT '0',
  `wp_ref_id` int(11) DEFAULT '0',
  `amount` double DEFAULT '0',
  `transaction_fee` double DEFAULT '0',
  `deduction` double DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `from_address` text,
  `to_address` text,
  `remark` text,
  `status` int(11) DEFAULT '0' COMMENT '0-pending,1-confirmed',
  `withdraw_type` int(11) DEFAULT NULL COMMENT '2-working,3-roi,4-self working,5-self roi',
  `withdraw_method` enum('C','N') DEFAULT 'C' COMMENT 'C-CoinPay,N-NodeApi',
  `paid_date` datetime DEFAULT NULL,
  `notification` int(11) DEFAULT '1',
  `network_type` varchar(500) NOT NULL,
  `api_ref_id` varchar(255) DEFAULT NULL,
  `json_data` text NOT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `pan_no` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_withdrwal_confirmed`
--

INSERT INTO `tbl_withdrwal_confirmed` (`sr_no`, `transaction_hash`, `id`, `wp_ref_id`, `amount`, `transaction_fee`, `deduction`, `entry_time`, `from_address`, `to_address`, `remark`, `status`, `withdraw_type`, `withdraw_method`, `paid_date`, `notification`, `network_type`, `api_ref_id`, `json_data`, `account_no`, `holder_name`, `bank_name`, `branch_name`, `pan_no`, `ifsc_code`) VALUES
(0, '', 9, 8, 48.6, 0, 5.4, '2022-02-11 15:35:46', NULL, 'f65467789698tfdghjnbvnb', 'test', 1, NULL, 'C', NULL, 1, 'USDT.TRC20', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(0, '', 9, 5, 13.5, 0, 1.5, '2022-02-11 15:39:39', NULL, 'r675fghfyuytdghdfd786567yuf', 'test', 1, NULL, 'C', NULL, 1, 'TRX', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL),
(0, '', 12, 10, 30, 0, 0, '2022-02-25 15:55:03', NULL, 'trtewgfbfw46575yerdfhhddvvd', 'test', 1, NULL, 'C', NULL, 1, 'TRX', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrwal_history`
--

CREATE TABLE `tbl_withdrwal_history` (
  `id` int(11) NOT NULL,
  `transaction_hash` varchar(255) DEFAULT '',
  `toUserId` int(11) DEFAULT '0',
  `amount` decimal(20,4) DEFAULT '0.0000',
  `amount_in_btc` double DEFAULT '0',
  `deduction` decimal(20,4) DEFAULT '0.0000',
  `total_amount` double DEFAULT '0',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `from_address` varchar(255) DEFAULT '',
  `to_address` varchar(255) DEFAULT '',
  `remark` varchar(200) DEFAULT '',
  `status` int(11) DEFAULT '0',
  `w_status` enum('0','1','2') DEFAULT '0',
  `type` text,
  `payment_mode_amt` double DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `coinpayment_w_id` varchar(50) DEFAULT NULL,
  `notification` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrwal_history_for_pb`
--

CREATE TABLE `tbl_withdrwal_history_for_pb` (
  `id` int(11) NOT NULL,
  `toUserId` int(11) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` varchar(200) DEFAULT '',
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrwal_history_for_royalty`
--

CREATE TABLE `tbl_withdrwal_history_for_royalty` (
  `id` int(11) NOT NULL,
  `toUserId` int(11) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` varchar(200) DEFAULT '',
  `status` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrwal_mode`
--

CREATE TABLE `tbl_withdrwal_mode` (
  `srno` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `network_type` varchar(100) NOT NULL DEFAULT 'BTC',
  `entry_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrwal_pdc`
--

CREATE TABLE `tbl_withdrwal_pdc` (
  `id` int(11) NOT NULL,
  `toUserId` int(11) DEFAULT '0',
  `amount` decimal(10,2) DEFAULT '0.00',
  `rec_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrwal_pending`
--

CREATE TABLE `tbl_withdrwal_pending` (
  `sr_no` int(11) NOT NULL,
  `transaction_hash` varchar(255) DEFAULT '',
  `id` int(11) DEFAULT '0',
  `amount` double DEFAULT '0',
  `transaction_fee` double DEFAULT '0',
  `deduction` double DEFAULT '0',
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `from_address` text,
  `to_address` text,
  `remark` text,
  `status` int(11) DEFAULT '0' COMMENT '0-pending,1-confirmed',
  `withdraw_type` int(11) NOT NULL COMMENT '2-working,3-roi,4-self working,5-self roi,6-Transfer',
  `withdraw_method` enum('C','N') DEFAULT 'C' COMMENT 'C-CoinPay,N-NodeApi',
  `paid_date` datetime DEFAULT NULL,
  `notification` int(11) DEFAULT '1',
  `network_type` varchar(500) NOT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `json_data` text NOT NULL,
  `api_ref_id` varchar(255) DEFAULT NULL,
  `verify` int(11) NOT NULL DEFAULT '0',
  `verify_time` datetime DEFAULT NULL,
  `api_sr_no` int(11) DEFAULT NULL,
  `api_call_count` int(11) NOT NULL DEFAULT '0',
  `topupfrom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_withdrwal_pending`
--

INSERT INTO `tbl_withdrwal_pending` (`sr_no`, `transaction_hash`, `id`, `amount`, `transaction_fee`, `deduction`, `entry_time`, `from_address`, `to_address`, `remark`, `status`, `withdraw_type`, `withdraw_method`, `paid_date`, `notification`, `network_type`, `ip_address`, `json_data`, `api_ref_id`, `verify`, `verify_time`, `api_sr_no`, `api_call_count`, `topupfrom`) VALUES
(1, '', 2, 45, 0, 5, '2022-03-04 22:19:58', '', 'hbtrhtrhrthrthgtrgrtggrggggtgr', '4534gf', 2, 2, 'N', NULL, 1, 'BTC', NULL, '', NULL, 1, '2022-03-30 17:21:23', 43, 0, NULL),
(2, '', 2, 45, 0, 5, '2022-03-04 22:20:30', '', 'fhcfcvnbfy4567457457u5trghjgfjhfghdfg', 'sdge4', 2, 2, 'N', NULL, 1, 'LTC', NULL, '', NULL, 1, '2022-03-30 17:21:23', 43, 0, NULL),
(3, '', 2, 90, 0, 10, '2022-03-04 22:21:05', '', 'hdfhdfh547645745urthfdghdfhsdfhdfh', '5645', 2, 2, 'N', NULL, 1, 'DOGE', NULL, '', NULL, 1, '2022-03-30 17:21:23', 43, 0, NULL),
(4, '', 2, 135, 0, 15, '2022-03-04 22:21:37', '', 'tdnmbvdjh38756879325jhgfakjsfkja', 'dher5y', 2, 2, 'N', NULL, 1, 'TRX', NULL, '', NULL, 1, '2022-03-30 17:21:23', 43, 0, NULL),
(5, '', 2, 100, 0, 0, '2022-03-04 22:22:16', '', 'hbtrhtrhrthrthgtrgrtggrggggtgr', '4565yt', 2, 3, 'N', NULL, 1, 'BTC', NULL, '', NULL, 1, '2022-03-30 17:21:23', 43, 0, NULL),
(6, '', 2, 150, 0, 0, '2022-03-04 22:22:49', '', 'fhcfcvnbfy4567457457u5trghjgfjhfghdfg', '436trf', 2, 3, 'N', NULL, 1, 'LTC', NULL, '', NULL, 1, '2022-03-30 17:21:23', 43, 0, NULL),
(7, '', 2, 200, 0, 0, '2022-03-04 22:24:00', '', 'hdfhdfh547645745urthfdghdfhsdfhdfh', 'sfddd', 2, 3, 'N', NULL, 1, 'DOGE', NULL, '', NULL, 1, '2022-03-30 17:17:53', 42, 0, NULL),
(8, '', 2, 50, 0, 0, '2022-03-04 22:24:27', '', 'tdnmbvdjh38756879325jhgfakjsfkja', 'dsgre', 2, 3, 'N', NULL, 1, 'TRX', NULL, '', NULL, 1, '2022-03-30 17:17:53', 42, 0, NULL),
(9, '', 2, 45, 0, 5, '2022-03-04 22:46:14', '', 'bejhfgweu528376287ejfedgf287528526387', 'gdsgr', 2, 2, 'N', NULL, 1, 'BNB.BSC', NULL, '', NULL, 1, '2022-03-30 17:17:53', 42, 0, NULL),
(10, '', 2, 45, 0, 5, '2022-03-04 23:30:15', '', 'Btui578vdtjhf46899jfssrugguijji9oihh', 'dgsd', 2, 2, 'N', NULL, 1, 'USDT-TRC20', NULL, '', NULL, 1, '2022-03-30 17:17:53', 42, 0, NULL),
(11, '', 2, 45, 0, 5, '2022-03-04 23:31:59', '', 'Bxhtt68vde68gder78oohfsr6iohdzg', 'w4534', 2, 2, 'N', NULL, 1, 'BNB-BSC', NULL, '', NULL, 1, '2022-03-30 17:17:53', 42, 0, NULL),
(12, '', 2, 18, 0, 2, '2022-03-08 18:35:59', '', 'dfgbsgbgfsbfgbfgbfgb', 'ytr5647', 2, 2, 'N', NULL, 1, 'USDT.TRC20', NULL, '', NULL, 1, '2022-03-30 17:17:53', 42, 0, NULL),
(13, '', 2, 30, 0, 0, '2022-03-08 18:36:44', '', 'fdbsfbdfsbsgfbgfbgbfg', '76576yt', 2, 3, 'N', NULL, 1, 'DOGE', NULL, '', NULL, 1, '2022-03-30 17:17:53', 42, 0, NULL),
(14, '', 3, 360, 0, 40, '2022-03-28 13:16:09', '', 'rgvfgverbgdrftbtrhbhfgbhtrhtrhtrhrt', '5467rf', 2, 2, 'N', NULL, 1, 'BTC', NULL, '', NULL, 1, '2022-03-30 17:17:53', 42, 0, NULL),
(15, '', 4, 250, 0, 0, '2022-03-28 13:18:49', '', 'dsgrtyewrt646rgdfgdhdfhfhdf', 'hgfhgj', 2, 3, NULL, NULL, 1, 'BNB.BSC', NULL, '', NULL, 1, '2022-03-30 17:17:53', 42, 0, NULL),
(16, '', 10, 180, 0, 20, '2022-03-28 13:21:20', '', 'bafetyt35r274573fgshfawuytfwjasfdsfwett', 'test', 2, 2, 'N', NULL, 1, 'BTC', NULL, '', NULL, 1, '2022-03-30 17:17:53', 42, 0, NULL),
(17, '', 10, 54, 0, 6, '2022-03-30 08:17:32', '', 'bafetyt35r274573fgshfawuytfwjasfdsfwett', 'fdg', 2, 2, 'C', NULL, 1, 'BTC', NULL, '', NULL, 1, '2022-03-30 17:21:23', 43, 0, NULL),
(18, '', 10, 54, 0, 6, '2022-03-30 08:23:56', '', 'bafetyt35r274573fgshfawuytfwjasfdsfwett', NULL, 0, 2, 'C', NULL, 1, 'BTC', NULL, '', NULL, 0, NULL, 0, 0, NULL),
(19, '', 9, 27, 0, 3, '2022-03-30 08:27:49', '', 'vsdgtet353twgfhdyuer46464wye', NULL, 0, 2, 'C', NULL, 1, 'LTC', NULL, '', NULL, 0, NULL, 0, 0, NULL),
(20, '', 3, 135, 0, 15, '2022-03-30 08:32:02', '', 'thrtbdrgthgtrdghtrhgtrhtrdh', NULL, 0, 2, 'C', NULL, 1, 'DOGE', NULL, '', NULL, 0, NULL, 44, 0, NULL),
(21, '', 9, 54, 0, 6, '2022-03-30 12:03:53', '', 'vsdgtet353twgfhdyuer46464wye', NULL, 0, 2, 'C', NULL, 1, 'LTC', '108.162.241.14', '', NULL, 1, '2022-05-10 15:08:07', 48, 0, NULL),
(22, '', 2, 54, 0, 6, '2022-03-31 06:20:35', '', 'egfvsegbrtgbsrgbtrbtrfgbvrtgb', NULL, 0, 2, 'C', NULL, 1, 'BTC', '108.162.241.68', '', NULL, 1, '2022-05-09 16:40:07', 47, 0, NULL),
(23, '', 2, 109.8, 0, 12.2, '2022-03-31 17:02:10', '', 'bgfvsegbrtgbsrgbtrbtrfgbvrtgd', NULL, 0, 2, 'C', NULL, 1, 'BTC', '::1', '', NULL, 1, '2022-05-06 13:24:07', 46, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_working_to_purchase_transfer`
--

CREATE TABLE `tbl_working_to_purchase_transfer` (
  `sr_no` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `roi_income` double NOT NULL DEFAULT '0',
  `direct_income` double NOT NULL DEFAULT '0',
  `binary_income` double NOT NULL DEFAULT '0',
  `freedom_club_income` double NOT NULL DEFAULT '0',
  `supper_maching_income` double NOT NULL DEFAULT '0',
  `old_total_income_without_roi` double NOT NULL DEFAULT '0',
  `total_income_without_roi` double NOT NULL DEFAULT '0',
  `balance` double NOT NULL DEFAULT '0',
  `purchase_wallet_amount` double NOT NULL DEFAULT '0',
  `working_wallet_amount` double NOT NULL DEFAULT '0',
  `purchase_percentage` double NOT NULL DEFAULT '0',
  `working_percentage` double NOT NULL DEFAULT '0',
  `entry_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_xpub`
--

CREATE TABLE `tbl_xpub` (
  `id` int(100) NOT NULL,
  `xpub` varchar(255) DEFAULT '',
  `user_id` varchar(100) DEFAULT '',
  `status` enum('Inactive','Active') DEFAULT 'Inactive',
  `active_date` datetime DEFAULT NULL,
  `deactive_date` datetime DEFAULT NULL,
  `entry_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airports`
--
ALTER TABLE `airports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `cityName` (`cityName`),
  ADD KEY `cityCode` (`cityCode`);

--
-- Indexes for table `country_wize_currency`
--
ALTER TABLE `country_wize_currency`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `product_img_ecommerce`
--
ALTER TABLE `product_img_ecommerce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_achieved_user_matching_bonus`
--
ALTER TABLE `tbl_achieved_user_matching_bonus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `perform_id` (`perform_id`),
  ADD KEY `bonus_name` (`bonus_name`),
  ADD KEY `entry_time` (`entry_time`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `perform_id_2` (`perform_id`),
  ADD KEY `bonus_name_2` (`bonus_name`),
  ADD KEY `entry_time_2` (`entry_time`);

--
-- Indexes for table `tbl_activity_notification`
--
ALTER TABLE `tbl_activity_notification`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_address_external`
--
ALTER TABLE `tbl_address_external`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_address_reserved`
--
ALTER TABLE `tbl_address_reserved`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `address` (`address`),
  ADD KEY `srno` (`srno`);

--
-- Indexes for table `tbl_address_reserved_05`
--
ALTER TABLE `tbl_address_reserved_05`
  ADD PRIMARY KEY (`srno`),
  ADD KEY `srno` (`srno`);

--
-- Indexes for table `tbl_address_reserved_old`
--
ALTER TABLE `tbl_address_reserved_old`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `address` (`address`),
  ADD KEY `srno` (`srno`);

--
-- Indexes for table `tbl_add_funds`
--
ALTER TABLE `tbl_add_funds`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_add_remove_business`
--
ALTER TABLE `tbl_add_remove_business`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_add_remove_business_upline`
--
ALTER TABLE `tbl_add_remove_business_upline`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_add_remove_rank_business`
--
ALTER TABLE `tbl_add_remove_rank_business`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_add_remove_rank_business_upline`
--
ALTER TABLE `tbl_add_remove_rank_business_upline`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_admin_mac_address`
--
ALTER TABLE `tbl_admin_mac_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_all_transaction`
--
ALTER TABLE `tbl_all_transaction`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_all_transactions_ip_history`
--
ALTER TABLE `tbl_all_transactions_ip_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_app_version`
--
ALTER TABLE `tbl_app_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tav_version_code` (`version_code`),
  ADD KEY `tav_version_name` (`version_name`),
  ADD KEY `tav_device_type` (`device_type`),
  ADD KEY `tav_update_type` (`update_type`),
  ADD KEY `version_device_update` (`version_code`,`device_type`,`update_type`);

--
-- Indexes for table `tbl_app_versions_logs`
--
ALTER TABLE `tbl_app_versions_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tavl_version_code` (`version_code`),
  ADD KEY `tavl_version_name` (`version_name`),
  ADD KEY `tavl_device_type` (`device_type`),
  ADD KEY `tavl_update_type` (`update_type`),
  ADD KEY `version_device_update` (`version_code`,`device_type`,`update_type`);

--
-- Indexes for table `tbl_awards_list`
--
ALTER TABLE `tbl_awards_list`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `tbl_awards_list_bonanza`
--
ALTER TABLE `tbl_awards_list_bonanza`
  ADD PRIMARY KEY (`award_id`);

--
-- Indexes for table `tbl_award_winner`
--
ALTER TABLE `tbl_award_winner`
  ADD PRIMARY KEY (`winner_id`);

--
-- Indexes for table `tbl_award_winner_bonanza`
--
ALTER TABLE `tbl_award_winner_bonanza`
  ADD PRIMARY KEY (`winner_id`);

--
-- Indexes for table `tbl_balance_transfer`
--
ALTER TABLE `tbl_balance_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_billing_info`
--
ALTER TABLE `tbl_billing_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `tbl_binary_settings`
--
ALTER TABLE `tbl_binary_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_binrprt`
--
ALTER TABLE `tbl_binrprt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_bulk_emails`
--
ALTER TABLE `tbl_bulk_emails`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_business_setting`
--
ALTER TABLE `tbl_business_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_buy_report`
--
ALTER TABLE `tbl_buy_report`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_carry_bv`
--
ALTER TABLE `tbl_carry_bv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coin`
--
ALTER TABLE `tbl_coin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_coin_transaction_log`
--
ALTER TABLE `tbl_coin_transaction_log`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `tbl_contest_setttings`
--
ALTER TABLE `tbl_contest_setttings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country_new`
--
ALTER TABLE `tbl_country_new`
  ADD PRIMARY KEY (`country_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `tbl_cryptocurrency_buy_sell_live_market`
--
ALTER TABLE `tbl_cryptocurrency_buy_sell_live_market`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_cryptocurrency_live_market`
--
ALTER TABLE `tbl_cryptocurrency_live_market`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrwal_status` (`withdrwal_status`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_currency_rate`
--
ALTER TABLE `tbl_currency_rate`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_curr_amt_bv`
--
ALTER TABLE `tbl_curr_amt_bv`
  ADD PRIMARY KEY (`cron_id`);

--
-- Indexes for table `tbl_curr_amt_details`
--
ALTER TABLE `tbl_curr_amt_details`
  ADD UNIQUE KEY `cron_id` (`cron_id`,`user_id`);

--
-- Indexes for table `tbl_dailybonus`
--
ALTER TABLE `tbl_dailybonus`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `pin` (`pin`),
  ADD KEY `entry_time` (`entry_time`),
  ADD KEY `entry_time_2` (`entry_time`),
  ADD KEY `pin_2` (`pin`),
  ADD KEY `sr_no` (`sr_no`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `tbl_daily_business`
--
ALTER TABLE `tbl_daily_business`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_daily_summary`
--
ALTER TABLE `tbl_daily_summary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`coinpayment_funds`,`direct_income`,`roi_income`,`binary_income`,`supermatching_income`,`freedom_club_income`,`credit_fund`,`debit_fund`);

--
-- Indexes for table `tbl_dashboard`
--
ALTER TABLE `tbl_dashboard`
  ADD PRIMARY KEY (`srno`),
  ADD KEY `srno` (`srno`),
  ADD KEY `srno_2` (`srno`),
  ADD KEY `working_wallet` (`working_wallet`),
  ADD KEY `entry_time` (`entry_time`),
  ADD KEY `working_wallet_2` (`working_wallet`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `total_investment` (`total_investment`),
  ADD KEY `working_wallet_withdraw` (`working_wallet_withdraw`),
  ADD KEY `fund_wallet` (`fund_wallet`),
  ADD KEY `fund_wallet_withdraw` (`fund_wallet_withdraw`);

--
-- Indexes for table `tbl_dashboard_old`
--
ALTER TABLE `tbl_dashboard_old`
  ADD PRIMARY KEY (`srno`),
  ADD KEY `srno` (`srno`),
  ADD KEY `srno_2` (`srno`);

--
-- Indexes for table `tbl_deduction_stat`
--
ALTER TABLE `tbl_deduction_stat`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_deposit_address`
--
ALTER TABLE `tbl_deposit_address`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_deposit_address_transaction`
--
ALTER TABLE `tbl_deposit_address_transaction`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_deposit_address_transaction_pending`
--
ALTER TABLE `tbl_deposit_address_transaction_pending`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_dex_to_passive_transfer`
--
ALTER TABLE `tbl_dex_to_passive_transfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_user_id` (`to_user_id`),
  ADD KEY `wallet_type` (`from_wallet_type`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_wallet_type` (`to_wallet_type`);

--
-- Indexes for table `tbl_dex_to_purchase_transfer`
--
ALTER TABLE `tbl_dex_to_purchase_transfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_user_id` (`to_user_id`),
  ADD KEY `wallet_type` (`from_wallet_type`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_wallet_type` (`to_wallet_type`);

--
-- Indexes for table `tbl_directincome`
--
ALTER TABLE `tbl_directincome`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toUserId` (`toUserId`),
  ADD KEY `entry_time` (`entry_time`),
  ADD KEY `id` (`id`),
  ADD KEY `toUserId_2` (`toUserId`),
  ADD KEY `entry_time_2` (`entry_time`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `tbl_directincome_referral`
--
ALTER TABLE `tbl_directincome_referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_directincome_registration`
--
ALTER TABLE `tbl_directincome_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_direct_binary`
--
ALTER TABLE `tbl_direct_binary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dlevel_income`
--
ALTER TABLE `tbl_dlevel_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dmit_scan`
--
ALTER TABLE `tbl_dmit_scan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dxwallet_remove_fund`
--
ALTER TABLE `tbl_dxwallet_remove_fund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_email`
--
ALTER TABLE `tbl_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_error_message`
--
ALTER TABLE `tbl_error_message`
  ADD PRIMARY KEY (`err_id`);

--
-- Indexes for table `tbl_exchange_order`
--
ALTER TABLE `tbl_exchange_order`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_exchange_rate_report`
--
ALTER TABLE `tbl_exchange_rate_report`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_exchange_report`
--
ALTER TABLE `tbl_exchange_report`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_fees_record`
--
ALTER TABLE `tbl_fees_record`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_flight_booking`
--
ALTER TABLE `tbl_flight_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_flight_city_keyword`
--
ALTER TABLE `tbl_flight_city_keyword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_flight_name`
--
ALTER TABLE `tbl_flight_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_flight_temp_book_info`
--
ALTER TABLE `tbl_flight_temp_book_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `tbl_franchise_income`
--
ALTER TABLE `tbl_franchise_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_freedom_club_income`
--
ALTER TABLE `tbl_freedom_club_income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_fund_request`
--
ALTER TABLE `tbl_fund_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_fund_transfer`
--
ALTER TABLE `tbl_fund_transfer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to_user_id` (`to_user_id`),
  ADD KEY `wallet_type` (`wallet_type`),
  ADD KEY `from_user_id` (`from_user_id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallerya`
--
ALTER TABLE `tbl_gallerya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_goa_tour_winner_list`
--
ALTER TABLE `tbl_goa_tour_winner_list`
  ADD PRIMARY KEY (`winner_id`);

--
-- Indexes for table `tbl_ico_coin_bonus`
--
ALTER TABLE `tbl_ico_coin_bonus`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_income`
--
ALTER TABLE `tbl_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_inventory_temp`
--
ALTER TABLE `tbl_inventory_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_invoices`
--
ALTER TABLE `tbl_invoices`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `invoice_id` (`invoice_id`),
  ADD KEY `id` (`id`),
  ADD KEY `in_status` (`in_status`);

--
-- Indexes for table `tbl_invoices_reg`
--
ALTER TABLE `tbl_invoices_reg`
  ADD PRIMARY KEY (`invoice_id`),
  ADD UNIQUE KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `tbl_invoice_generation`
--
ALTER TABLE `tbl_invoice_generation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_invoice_payments`
--
ALTER TABLE `tbl_invoice_payments`
  ADD PRIMARY KEY (`transaction_hash`),
  ADD UNIQUE KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `tbl_invoice_refund`
--
ALTER TABLE `tbl_invoice_refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ip_tack`
--
ALTER TABLE `tbl_ip_tack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_kyc`
--
ALTER TABLE `tbl_kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_leadership_income`
--
ALTER TABLE `tbl_leadership_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_leadership_plan`
--
ALTER TABLE `tbl_leadership_plan`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_level_ico`
--
ALTER TABLE `tbl_level_ico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_level_income`
--
ALTER TABLE `tbl_level_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_level_income_ico`
--
ALTER TABLE `tbl_level_income_ico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_level_income_roi`
--
ALTER TABLE `tbl_level_income_roi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_level_roi`
--
ALTER TABLE `tbl_level_roi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_level_view`
--
ALTER TABLE `tbl_level_view`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_magic_bv`
--
ALTER TABLE `tbl_magic_bv`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_manage_coin_currency`
--
ALTER TABLE `tbl_manage_coin_currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `coin_name` (`coin_name`),
  ADD KEY `status` (`status`),
  ADD KEY `entry_date` (`entry_date`),
  ADD KEY `coin_id` (`coin_id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `coin_name_2` (`coin_name`),
  ADD KEY `status_2` (`status`),
  ADD KEY `entry_date_2` (`entry_date`),
  ADD KEY `coin_id_2` (`coin_id`);

--
-- Indexes for table `tbl_manage_coin_currency_history`
--
ALTER TABLE `tbl_manage_coin_currency_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coin_id` (`coin_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_manual_pay`
--
ALTER TABLE `tbl_manual_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_master_password`
--
ALTER TABLE `tbl_master_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_matching_bonus_generate`
--
ALTER TABLE `tbl_matching_bonus_generate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `entry_time` (`entry_time`),
  ADD KEY `ach_perf_bonus_id` (`ach_perf_bonus_id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `entry_time_2` (`entry_time`),
  ADD KEY `ach_perf_bonus_id_2` (`ach_perf_bonus_id`),
  ADD KEY `bonus_name` (`bonus_name`);

--
-- Indexes for table `tbl_matching_bonus_income`
--
ALTER TABLE `tbl_matching_bonus_income`
  ADD PRIMARY KEY (`id`),
  ADD KEY `total_binary_count` (`total_binary_count`),
  ADD KEY `last_roi_entry_time` (`last_roi_entry_time`),
  ADD KEY `binary_status` (`binary_status`);

--
-- Indexes for table `tbl_matching_bonus_settings`
--
ALTER TABLE `tbl_matching_bonus_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `bonus_name` (`bonus_name`),
  ADD KEY `id` (`id`),
  ADD KEY `bonus_name_2` (`bonus_name`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `tbl_meeting`
--
ALTER TABLE `tbl_meeting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_metadata`
--
ALTER TABLE `tbl_metadata`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `tbl_names`
--
ALTER TABLE `tbl_names`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `tbl_names_memo`
--
ALTER TABLE `tbl_names_memo`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pair_dtl`
--
ALTER TABLE `tbl_pair_dtl`
  ADD PRIMARY KEY (`SRNO`);

--
-- Indexes for table `tbl_payout_history`
--
ALTER TABLE `tbl_payout_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payout_no` (`payout_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `entry_time` (`entry_time`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `entry_time_2` (`entry_time`);

--
-- Indexes for table `tbl_payout_history_for_pb`
--
ALTER TABLE `tbl_payout_history_for_pb`
  ADD PRIMARY KEY (`payout_id`);

--
-- Indexes for table `tbl_payout_history_for_royalty`
--
ALTER TABLE `tbl_payout_history_for_royalty`
  ADD PRIMARY KEY (`payout_id`);

--
-- Indexes for table `tbl_pay_wallet`
--
ALTER TABLE `tbl_pay_wallet`
  ADD PRIMARY KEY (`pay_id`),
  ADD UNIQUE KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `tbl_pdc_income`
--
ALTER TABLE `tbl_pdc_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_perfectmoney_member`
--
ALTER TABLE `tbl_perfectmoney_member`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `tbl_phases`
--
ALTER TABLE `tbl_phases`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_pinhis`
--
ALTER TABLE `tbl_pinhis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pinhis_r`
--
ALTER TABLE `tbl_pinhis_r`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pins`
--
ALTER TABLE `tbl_pins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pin` (`pin`);

--
-- Indexes for table `tbl_pins_old`
--
ALTER TABLE `tbl_pins_old`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pin` (`pin`);

--
-- Indexes for table `tbl_pins_r`
--
ALTER TABLE `tbl_pins_r`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pin_gen`
--
ALTER TABLE `tbl_pin_gen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pin_request`
--
ALTER TABLE `tbl_pin_request`
  ADD PRIMARY KEY (`pin_request_id`);

--
-- Indexes for table `tbl_plan`
--
ALTER TABLE `tbl_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_point_value`
--
ALTER TABLE `tbl_point_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_power`
--
ALTER TABLE `tbl_power`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_power_bv`
--
ALTER TABLE `tbl_power_bv`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_diff` (`date_diff`),
  ADD KEY `date_diff_2` (`date_diff`),
  ADD KEY `status` (`status`),
  ADD KEY `user_show_status` (`user_show_status`);

--
-- Indexes for table `tbl_product1`
--
ALTER TABLE `tbl_product1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_ecommerce`
--
ALTER TABLE `tbl_product_ecommerce`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `tbl_product_ecommerce` ADD FULLTEXT KEY `tag` (`tag`);

--
-- Indexes for table `tbl_product_history`
--
ALTER TABLE `tbl_product_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_ico`
--
ALTER TABLE `tbl_product_ico`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_old`
--
ALTER TABLE `tbl_product_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_pdc`
--
ALTER TABLE `tbl_product_pdc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_variation_details`
--
ALTER TABLE `tbl_product_variation_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_project_settings`
--
ALTER TABLE `tbl_project_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_promotionals`
--
ALTER TABLE `tbl_promotionals`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_promotional_income`
--
ALTER TABLE `tbl_promotional_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_promotional_social_income`
--
ALTER TABLE `tbl_promotional_social_income`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_promotional_type`
--
ALTER TABLE `tbl_promotional_type`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_ps_admin_navigation`
--
ALTER TABLE `tbl_ps_admin_navigation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_ps_admin_rights`
--
ALTER TABLE `tbl_ps_admin_rights`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `navigation_id` (`navigation_id`);

--
-- Indexes for table `tbl_purchase_balance_transfer`
--
ALTER TABLE `tbl_purchase_balance_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase_order`
--
ALTER TABLE `tbl_purchase_order`
  ADD PRIMARY KEY (`po_id`),
  ADD KEY `po_id` (`po_id`);

--
-- Indexes for table `tbl_purchase_order_line`
--
ALTER TABLE `tbl_purchase_order_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `po_id` (`po_id`);

--
-- Indexes for table `tbl_push_notification`
--
ALTER TABLE `tbl_push_notification`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `tbl_qualified_user_list`
--
ALTER TABLE `tbl_qualified_user_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_time` (`entry_time`);

--
-- Indexes for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rank`
--
ALTER TABLE `tbl_rank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rank` (`rank`);

--
-- Indexes for table `tbl_rank_list`
--
ALTER TABLE `tbl_rank_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_remove_fund`
--
ALTER TABLE `tbl_remove_fund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reply_enquiry_reports`
--
ALTER TABLE `tbl_reply_enquiry_reports`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_representative`
--
ALTER TABLE `tbl_representative`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_codes`
--
ALTER TABLE `tbl_reset_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roi_percentage`
--
ALTER TABLE `tbl_roi_percentage`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `date` (`date`);

--
-- Indexes for table `tbl_secret_que_ans`
--
ALTER TABLE `tbl_secret_que_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipping_address`
--
ALTER TABLE `tbl_shipping_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_types`
--
ALTER TABLE `tbl_social_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`StateID`);

--
-- Indexes for table `tbl_statistics_settings`
--
ALTER TABLE `tbl_statistics_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_submenu_veriation`
--
ALTER TABLE `tbl_submenu_veriation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_categories`
--
ALTER TABLE `tbl_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_super_matching`
--
ALTER TABLE `tbl_super_matching`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rank` (`rank`),
  ADD KEY `freedom_club_capping_status` (`freedom_club_capping_status`),
  ADD KEY `rank_upline_pass_status` (`rank_upline_pass_status`);

--
-- Indexes for table `tbl_supper_matching_bonus_income`
--
ALTER TABLE `tbl_supper_matching_bonus_income`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `id` (`id`),
  ADD KEY `entry_time` (`entry_time`);

--
-- Indexes for table `tbl_support`
--
ALTER TABLE `tbl_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_support_comments`
--
ALTER TABLE `tbl_support_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_today_details`
--
ALTER TABLE `tbl_today_details`
  ADD PRIMARY KEY (`today_id`),
  ADD KEY `to_user_id` (`to_user_id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `entry_time` (`entry_time`),
  ADD KEY `position` (`position`),
  ADD KEY `level` (`level`),
  ADD KEY `from_user_id_l_c_count` (`from_user_id_l_c_count`),
  ADD KEY `from_user_id_r_c_count` (`from_user_id_r_c_count`),
  ADD KEY `today_id` (`today_id`),
  ADD KEY `today_id_2` (`today_id`);

--
-- Indexes for table `tbl_today_phase_summary`
--
ALTER TABLE `tbl_today_phase_summary`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_todo`
--
ALTER TABLE `tbl_todo`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `tbl_topup`
--
ALTER TABLE `tbl_topup`
  ADD PRIMARY KEY (`srno`),
  ADD KEY `amount` (`amount`),
  ADD KEY `pin` (`pin`),
  ADD KEY `user_status` (`user_status`),
  ADD KEY `last_roi_entry_time` (`last_roi_entry_time`),
  ADD KEY `total_roi_count` (`total_roi_count`),
  ADD KEY `srno` (`srno`),
  ADD KEY `id` (`id`),
  ADD KEY `roi_status` (`roi_status`),
  ADD KEY `duration` (`duration`),
  ADD KEY `roi_status_2` (`roi_status`),
  ADD KEY `duration_2` (`duration`),
  ADD KEY `top_up_by` (`top_up_by`),
  ADD KEY `top_up_type` (`top_up_type`);

--
-- Indexes for table `tbl_topup_booking_product`
--
ALTER TABLE `tbl_topup_booking_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_topup_ico`
--
ALTER TABLE `tbl_topup_ico`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_topup_old`
--
ALTER TABLE `tbl_topup_old`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_topup_request`
--
ALTER TABLE `tbl_topup_request`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_topup_roi_status_logs`
--
ALTER TABLE `tbl_topup_roi_status_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_topup_wallet`
--
ALTER TABLE `tbl_topup_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaction_invoices`
--
ALTER TABLE `tbl_transaction_invoices`
  ADD PRIMARY KEY (`srno`),
  ADD UNIQUE KEY `invoice_id` (`invoice_id`),
  ADD KEY `id` (`id`),
  ADD KEY `in_status` (`in_status`),
  ADD KEY `id_2` (`id`),
  ADD KEY `in_status_2` (`in_status`);

--
-- Indexes for table `tbl_upline`
--
ALTER TABLE `tbl_upline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_upline_income`
--
ALTER TABLE `tbl_upline_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_uploadslip`
--
ALTER TABLE `tbl_uploadslip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_usd_total`
--
ALTER TABLE `tbl_usd_total`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remember_token` (`remember_token`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `unique_user_id` (`unique_user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `reg_mail_status` (`reg_mail_status`),
  ADD KEY `status` (`status`),
  ADD KEY `type` (`type`),
  ADD KEY `id` (`id`),
  ADD KEY `curr_l_bv` (`curr_l_bv`),
  ADD KEY `curr_r_bv` (`curr_r_bv`),
  ADD KEY `virtual_parent_id` (`virtual_parent_id`),
  ADD KEY `position` (`position`),
  ADD KEY `l_bv` (`l_bv`),
  ADD KEY `r_bv` (`r_bv`),
  ADD KEY `topup_status` (`topup_status`),
  ADD KEY `entry_time` (`entry_time`),
  ADD KEY `binary_qualified_status` (`binary_qualified_status`),
  ADD KEY `power_l_bv` (`power_l_bv`),
  ADD KEY `power_r_bv` (`power_r_bv`),
  ADD KEY `ref_user_id` (`ref_user_id`),
  ADD KEY `amount` (`amount`),
  ADD KEY `entry_time_2` (`entry_time`),
  ADD KEY `binary_qualified_status_2` (`binary_qualified_status`),
  ADD KEY `power_l_bv_2` (`power_l_bv`),
  ADD KEY `power_r_bv_2` (`power_r_bv`),
  ADD KEY `ref_user_id_2` (`ref_user_id`),
  ADD KEY `amount_2` (`amount`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `tbl_usersc`
--
ALTER TABLE `tbl_usersc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users_change_data`
--
ALTER TABLE `tbl_users_change_data`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `tbl_users_change_data_old`
--
ALTER TABLE `tbl_users_change_data_old`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `tbl_users_count_data`
--
ALTER TABLE `tbl_users_count_data`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_users_reg`
--
ALTER TABLE `tbl_users_reg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_user_api_hit_details`
--
ALTER TABLE `tbl_user_api_hit_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`,`ip_add`,`type`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_user_bulk_update`
--
ALTER TABLE `tbl_user_bulk_update`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_cart_order`
--
ALTER TABLE `tbl_user_cart_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_id` (`billing_id`),
  ADD KEY `shipping_id` (`shipping_id`);

--
-- Indexes for table `tbl_user_cart_product`
--
ALTER TABLE `tbl_user_cart_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `billing_id` (`billing_id`),
  ADD KEY `shipping_id` (`shipping_id`);

--
-- Indexes for table `tbl_user_contest_achievment`
--
ALTER TABLE `tbl_user_contest_achievment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_curr_addr_history`
--
ALTER TABLE `tbl_user_curr_addr_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id` (`id`),
  ADD KEY `entry_time` (`entry_time`);

--
-- Indexes for table `tbl_user_failed_logins`
--
ALTER TABLE `tbl_user_failed_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `attempted_at` (`attempted_at`),
  ADD KEY `ip_address` (`ip_address`);

--
-- Indexes for table `tbl_user_otp_magic`
--
ALTER TABLE `tbl_user_otp_magic`
  ADD PRIMARY KEY (`otp_id`),
  ADD KEY `id` (`id`),
  ADD KEY `otp` (`otp`),
  ADD KEY `otp_id` (`otp_id`);

--
-- Indexes for table `tbl_user_reset_password`
--
ALTER TABLE `tbl_user_reset_password`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `tbl_user_secure`
--
ALTER TABLE `tbl_user_secure`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `tbl_user_setting_fund`
--
ALTER TABLE `tbl_user_setting_fund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_user_structure`
--
ALTER TABLE `tbl_user_structure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `reg_mail_status` (`reg_mail_status`);

--
-- Indexes for table `tbl_user_update`
--
ALTER TABLE `tbl_user_update`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_user_video`
--
ALTER TABLE `tbl_user_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_withdrawal_setting`
--
ALTER TABLE `tbl_user_withdrawal_setting`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_voucher_transaction`
--
ALTER TABLE `tbl_voucher_transaction`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  ADD PRIMARY KEY (`srno`),
  ADD KEY `status` (`status`),
  ADD KEY `status_2` (`status`);

--
-- Indexes for table `tbl_wallet_transaction_log`
--
ALTER TABLE `tbl_wallet_transaction_log`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `tbl_white_list_ip_address`
--
ALTER TABLE `tbl_white_list_ip_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`,`ip_add`),
  ADD KEY `topup_status` (`topup_status`),
  ADD KEY `withdraw_status` (`withdraw_status`),
  ADD KEY `transfer_status` (`transfer_status`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_withdrawal_amt`
--
ALTER TABLE `tbl_withdrawal_amt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrawal_amt_for_pb`
--
ALTER TABLE `tbl_withdrawal_amt_for_pb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrawal_amt_for_royalty`
--
ALTER TABLE `tbl_withdrawal_amt_for_royalty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrawal_history_pdc`
--
ALTER TABLE `tbl_withdrawal_history_pdc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdraw_settings`
--
ALTER TABLE `tbl_withdraw_settings`
  ADD PRIMARY KEY (`srno`),
  ADD KEY `income` (`income`);

--
-- Indexes for table `tbl_withdrwal_confirmed`
--
ALTER TABLE `tbl_withdrwal_confirmed`
  ADD KEY `id` (`id`),
  ADD KEY `entry_time` (`entry_time`);

--
-- Indexes for table `tbl_withdrwal_history`
--
ALTER TABLE `tbl_withdrwal_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrwal_history_for_pb`
--
ALTER TABLE `tbl_withdrwal_history_for_pb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrwal_history_for_royalty`
--
ALTER TABLE `tbl_withdrwal_history_for_royalty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrwal_mode`
--
ALTER TABLE `tbl_withdrwal_mode`
  ADD PRIMARY KEY (`srno`),
  ADD KEY `id` (`srno`),
  ADD KEY `id_2` (`srno`),
  ADD KEY `id_3` (`id`);

--
-- Indexes for table `tbl_withdrwal_pdc`
--
ALTER TABLE `tbl_withdrwal_pdc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrwal_pending`
--
ALTER TABLE `tbl_withdrwal_pending`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `withdraw_type` (`withdraw_type`),
  ADD KEY `entry_time` (`entry_time`),
  ADD KEY `withdraw_type_2` (`withdraw_type`),
  ADD KEY `entry_time_2` (`entry_time`),
  ADD KEY `id` (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `verify` (`verify`);

--
-- Indexes for table `tbl_working_to_purchase_transfer`
--
ALTER TABLE `tbl_working_to_purchase_transfer`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `tbl_xpub`
--
ALTER TABLE `tbl_xpub`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airports`
--
ALTER TABLE `airports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `country_wize_currency`
--
ALTER TABLE `country_wize_currency`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product_img_ecommerce`
--
ALTER TABLE `product_img_ecommerce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_achieved_user_matching_bonus`
--
ALTER TABLE `tbl_achieved_user_matching_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbl_activity_notification`
--
ALTER TABLE `tbl_activity_notification`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `tbl_address_external`
--
ALTER TABLE `tbl_address_external`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_address_reserved`
--
ALTER TABLE `tbl_address_reserved`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_address_reserved_05`
--
ALTER TABLE `tbl_address_reserved_05`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_address_reserved_old`
--
ALTER TABLE `tbl_address_reserved_old`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_add_funds`
--
ALTER TABLE `tbl_add_funds`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_add_remove_business`
--
ALTER TABLE `tbl_add_remove_business`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_add_remove_business_upline`
--
ALTER TABLE `tbl_add_remove_business_upline`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_add_remove_rank_business`
--
ALTER TABLE `tbl_add_remove_rank_business`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_add_remove_rank_business_upline`
--
ALTER TABLE `tbl_add_remove_rank_business_upline`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_admin_mac_address`
--
ALTER TABLE `tbl_admin_mac_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_all_transaction`
--
ALTER TABLE `tbl_all_transaction`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_all_transactions_ip_history`
--
ALTER TABLE `tbl_all_transactions_ip_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_app_version`
--
ALTER TABLE `tbl_app_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_app_versions_logs`
--
ALTER TABLE `tbl_app_versions_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_awards_list`
--
ALTER TABLE `tbl_awards_list`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_awards_list_bonanza`
--
ALTER TABLE `tbl_awards_list_bonanza`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_award_winner`
--
ALTER TABLE `tbl_award_winner`
  MODIFY `winner_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_award_winner_bonanza`
--
ALTER TABLE `tbl_award_winner_bonanza`
  MODIFY `winner_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_balance_transfer`
--
ALTER TABLE `tbl_balance_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_billing_info`
--
ALTER TABLE `tbl_billing_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_binary_settings`
--
ALTER TABLE `tbl_binary_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_binrprt`
--
ALTER TABLE `tbl_binrprt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_bulk_emails`
--
ALTER TABLE `tbl_bulk_emails`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_business_setting`
--
ALTER TABLE `tbl_business_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_buy_report`
--
ALTER TABLE `tbl_buy_report`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_carry_bv`
--
ALTER TABLE `tbl_carry_bv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_chat`
--
ALTER TABLE `tbl_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_coin`
--
ALTER TABLE `tbl_coin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_coin_transaction_log`
--
ALTER TABLE `tbl_coin_transaction_log`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_contest_setttings`
--
ALTER TABLE `tbl_contest_setttings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_country_new`
--
ALTER TABLE `tbl_country_new`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT for table `tbl_cryptocurrency_buy_sell_live_market`
--
ALTER TABLE `tbl_cryptocurrency_buy_sell_live_market`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_cryptocurrency_live_market`
--
ALTER TABLE `tbl_cryptocurrency_live_market`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_currency_rate`
--
ALTER TABLE `tbl_currency_rate`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'table id', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_curr_amt_details`
--
ALTER TABLE `tbl_curr_amt_details`
  MODIFY `cron_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_dailybonus`
--
ALTER TABLE `tbl_dailybonus`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tbl_daily_business`
--
ALTER TABLE `tbl_daily_business`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_daily_summary`
--
ALTER TABLE `tbl_daily_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_dashboard`
--
ALTER TABLE `tbl_dashboard`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_dashboard_old`
--
ALTER TABLE `tbl_dashboard_old`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_deduction_stat`
--
ALTER TABLE `tbl_deduction_stat`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_deposit_address`
--
ALTER TABLE `tbl_deposit_address`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Auto increment unique id';
--
-- AUTO_INCREMENT for table `tbl_deposit_address_transaction`
--
ALTER TABLE `tbl_deposit_address_transaction`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_deposit_address_transaction_pending`
--
ALTER TABLE `tbl_deposit_address_transaction_pending`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_dex_to_passive_transfer`
--
ALTER TABLE `tbl_dex_to_passive_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_dex_to_purchase_transfer`
--
ALTER TABLE `tbl_dex_to_purchase_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_directincome`
--
ALTER TABLE `tbl_directincome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `tbl_directincome_referral`
--
ALTER TABLE `tbl_directincome_referral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_directincome_registration`
--
ALTER TABLE `tbl_directincome_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_direct_binary`
--
ALTER TABLE `tbl_direct_binary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_dlevel_income`
--
ALTER TABLE `tbl_dlevel_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_dmit_scan`
--
ALTER TABLE `tbl_dmit_scan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_dxwallet_remove_fund`
--
ALTER TABLE `tbl_dxwallet_remove_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_email`
--
ALTER TABLE `tbl_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_enquiry`
--
ALTER TABLE `tbl_enquiry`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_error_message`
--
ALTER TABLE `tbl_error_message`
  MODIFY `err_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_exchange_order`
--
ALTER TABLE `tbl_exchange_order`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_exchange_rate_report`
--
ALTER TABLE `tbl_exchange_rate_report`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_exchange_report`
--
ALTER TABLE `tbl_exchange_report`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_fees_record`
--
ALTER TABLE `tbl_fees_record`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_flight_booking`
--
ALTER TABLE `tbl_flight_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_flight_city_keyword`
--
ALTER TABLE `tbl_flight_city_keyword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_flight_name`
--
ALTER TABLE `tbl_flight_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;
--
-- AUTO_INCREMENT for table `tbl_flight_temp_book_info`
--
ALTER TABLE `tbl_flight_temp_book_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_franchise_income`
--
ALTER TABLE `tbl_franchise_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_freedom_club_income`
--
ALTER TABLE `tbl_freedom_club_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_fund_request`
--
ALTER TABLE `tbl_fund_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_fund_transfer`
--
ALTER TABLE `tbl_fund_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_gallerya`
--
ALTER TABLE `tbl_gallerya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_goa_tour_winner_list`
--
ALTER TABLE `tbl_goa_tour_winner_list`
  MODIFY `winner_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_ico_coin_bonus`
--
ALTER TABLE `tbl_ico_coin_bonus`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_income`
--
ALTER TABLE `tbl_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_inventory_temp`
--
ALTER TABLE `tbl_inventory_temp`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_invoices`
--
ALTER TABLE `tbl_invoices`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_invoice_generation`
--
ALTER TABLE `tbl_invoice_generation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_invoice_refund`
--
ALTER TABLE `tbl_invoice_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_ip_tack`
--
ALTER TABLE `tbl_ip_tack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_kyc`
--
ALTER TABLE `tbl_kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_leadership_income`
--
ALTER TABLE `tbl_leadership_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_leadership_plan`
--
ALTER TABLE `tbl_leadership_plan`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_level_ico`
--
ALTER TABLE `tbl_level_ico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_level_income`
--
ALTER TABLE `tbl_level_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_level_income_ico`
--
ALTER TABLE `tbl_level_income_ico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_level_income_roi`
--
ALTER TABLE `tbl_level_income_roi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_level_roi`
--
ALTER TABLE `tbl_level_roi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_level_view`
--
ALTER TABLE `tbl_level_view`
  MODIFY `srno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_magic_bv`
--
ALTER TABLE `tbl_magic_bv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_manage_coin_currency`
--
ALTER TABLE `tbl_manage_coin_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_manage_coin_currency_history`
--
ALTER TABLE `tbl_manage_coin_currency_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `tbl_manual_pay`
--
ALTER TABLE `tbl_manual_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_master_password`
--
ALTER TABLE `tbl_master_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_matching_bonus_generate`
--
ALTER TABLE `tbl_matching_bonus_generate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tbl_matching_bonus_income`
--
ALTER TABLE `tbl_matching_bonus_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_matching_bonus_settings`
--
ALTER TABLE `tbl_matching_bonus_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_meeting`
--
ALTER TABLE `tbl_meeting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_metadata`
--
ALTER TABLE `tbl_metadata`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_names`
--
ALTER TABLE `tbl_names`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tbl_names_memo`
--
ALTER TABLE `tbl_names_memo`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_pair_dtl`
--
ALTER TABLE `tbl_pair_dtl`
  MODIFY `SRNO` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_payout_history`
--
ALTER TABLE `tbl_payout_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_payout_history_for_pb`
--
ALTER TABLE `tbl_payout_history_for_pb`
  MODIFY `payout_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_payout_history_for_royalty`
--
ALTER TABLE `tbl_payout_history_for_royalty`
  MODIFY `payout_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pay_wallet`
--
ALTER TABLE `tbl_pay_wallet`
  MODIFY `pay_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pdc_income`
--
ALTER TABLE `tbl_pdc_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_phases`
--
ALTER TABLE `tbl_phases`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_pinhis`
--
ALTER TABLE `tbl_pinhis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pinhis_r`
--
ALTER TABLE `tbl_pinhis_r`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pins`
--
ALTER TABLE `tbl_pins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pins_old`
--
ALTER TABLE `tbl_pins_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pins_r`
--
ALTER TABLE `tbl_pins_r`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pin_gen`
--
ALTER TABLE `tbl_pin_gen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pin_request`
--
ALTER TABLE `tbl_pin_request`
  MODIFY `pin_request_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_plan`
--
ALTER TABLE `tbl_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_point_value`
--
ALTER TABLE `tbl_point_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_power`
--
ALTER TABLE `tbl_power`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_power_bv`
--
ALTER TABLE `tbl_power_bv`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_product1`
--
ALTER TABLE `tbl_product1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_product_ecommerce`
--
ALTER TABLE `tbl_product_ecommerce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product_history`
--
ALTER TABLE `tbl_product_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product_ico`
--
ALTER TABLE `tbl_product_ico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product_old`
--
ALTER TABLE `tbl_product_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product_pdc`
--
ALTER TABLE `tbl_product_pdc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_product_variation_details`
--
ALTER TABLE `tbl_product_variation_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_project_settings`
--
ALTER TABLE `tbl_project_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_promotionals`
--
ALTER TABLE `tbl_promotionals`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_promotional_income`
--
ALTER TABLE `tbl_promotional_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_promotional_social_income`
--
ALTER TABLE `tbl_promotional_social_income`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_promotional_type`
--
ALTER TABLE `tbl_promotional_type`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_ps_admin_navigation`
--
ALTER TABLE `tbl_ps_admin_navigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;
--
-- AUTO_INCREMENT for table `tbl_ps_admin_rights`
--
ALTER TABLE `tbl_ps_admin_rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387;
--
-- AUTO_INCREMENT for table `tbl_purchase_balance_transfer`
--
ALTER TABLE `tbl_purchase_balance_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_purchase_order`
--
ALTER TABLE `tbl_purchase_order`
  MODIFY `po_id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_purchase_order_line`
--
ALTER TABLE `tbl_purchase_order_line`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_push_notification`
--
ALTER TABLE `tbl_push_notification`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_qualified_user_list`
--
ALTER TABLE `tbl_qualified_user_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_questions`
--
ALTER TABLE `tbl_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_rank`
--
ALTER TABLE `tbl_rank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_rank_list`
--
ALTER TABLE `tbl_rank_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_remove_fund`
--
ALTER TABLE `tbl_remove_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_reply_enquiry_reports`
--
ALTER TABLE `tbl_reply_enquiry_reports`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_representative`
--
ALTER TABLE `tbl_representative`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_reset_codes`
--
ALTER TABLE `tbl_reset_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_roi_percentage`
--
ALTER TABLE `tbl_roi_percentage`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_secret_que_ans`
--
ALTER TABLE `tbl_secret_que_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_shipping_address`
--
ALTER TABLE `tbl_shipping_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_social_types`
--
ALTER TABLE `tbl_social_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `StateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_statistics_settings`
--
ALTER TABLE `tbl_statistics_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_submenu_veriation`
--
ALTER TABLE `tbl_submenu_veriation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_sub_categories`
--
ALTER TABLE `tbl_sub_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_super_matching`
--
ALTER TABLE `tbl_super_matching`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_supper_matching_bonus_income`
--
ALTER TABLE `tbl_supper_matching_bonus_income`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_support`
--
ALTER TABLE `tbl_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_support_comments`
--
ALTER TABLE `tbl_support_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_tax`
--
ALTER TABLE `tbl_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_today_details`
--
ALTER TABLE `tbl_today_details`
  MODIFY `today_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `tbl_today_phase_summary`
--
ALTER TABLE `tbl_today_phase_summary`
  MODIFY `srno` int(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_todo`
--
ALTER TABLE `tbl_todo`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_topup`
--
ALTER TABLE `tbl_topup`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tbl_topup_booking_product`
--
ALTER TABLE `tbl_topup_booking_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_topup_ico`
--
ALTER TABLE `tbl_topup_ico`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_topup_old`
--
ALTER TABLE `tbl_topup_old`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_topup_request`
--
ALTER TABLE `tbl_topup_request`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_topup_roi_status_logs`
--
ALTER TABLE `tbl_topup_roi_status_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_topup_wallet`
--
ALTER TABLE `tbl_topup_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_transaction_invoices`
--
ALTER TABLE `tbl_transaction_invoices`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_upline`
--
ALTER TABLE `tbl_upline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_upline_income`
--
ALTER TABLE `tbl_upline_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_uploadslip`
--
ALTER TABLE `tbl_uploadslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_usd_total`
--
ALTER TABLE `tbl_usd_total`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_usersc`
--
ALTER TABLE `tbl_usersc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_users_change_data`
--
ALTER TABLE `tbl_users_change_data`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_users_change_data_old`
--
ALTER TABLE `tbl_users_change_data_old`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_users_count_data`
--
ALTER TABLE `tbl_users_count_data`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_users_reg`
--
ALTER TABLE `tbl_users_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_api_hit_details`
--
ALTER TABLE `tbl_user_api_hit_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tbl_user_bulk_update`
--
ALTER TABLE `tbl_user_bulk_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_cart_order`
--
ALTER TABLE `tbl_user_cart_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_cart_product`
--
ALTER TABLE `tbl_user_cart_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_contest_achievment`
--
ALTER TABLE `tbl_user_contest_achievment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_curr_addr_history`
--
ALTER TABLE `tbl_user_curr_addr_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user_failed_logins`
--
ALTER TABLE `tbl_user_failed_logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_otp_magic`
--
ALTER TABLE `tbl_user_otp_magic`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `tbl_user_reset_password`
--
ALTER TABLE `tbl_user_reset_password`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_user_secure`
--
ALTER TABLE `tbl_user_secure`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_setting_fund`
--
ALTER TABLE `tbl_user_setting_fund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_user_structure`
--
ALTER TABLE `tbl_user_structure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_update`
--
ALTER TABLE `tbl_user_update`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_video`
--
ALTER TABLE `tbl_user_video`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user_withdrawal_setting`
--
ALTER TABLE `tbl_user_withdrawal_setting`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_voucher_transaction`
--
ALTER TABLE `tbl_voucher_transaction`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_wallet_transaction_log`
--
ALTER TABLE `tbl_wallet_transaction_log`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tbl_white_list_ip_address`
--
ALTER TABLE `tbl_white_list_ip_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_withdrawal_amt`
--
ALTER TABLE `tbl_withdrawal_amt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_withdrawal_amt_for_pb`
--
ALTER TABLE `tbl_withdrawal_amt_for_pb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_withdrawal_amt_for_royalty`
--
ALTER TABLE `tbl_withdrawal_amt_for_royalty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_withdrawal_history_pdc`
--
ALTER TABLE `tbl_withdrawal_history_pdc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_withdraw_settings`
--
ALTER TABLE `tbl_withdraw_settings`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_withdrwal_history`
--
ALTER TABLE `tbl_withdrwal_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_withdrwal_history_for_pb`
--
ALTER TABLE `tbl_withdrwal_history_for_pb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_withdrwal_history_for_royalty`
--
ALTER TABLE `tbl_withdrwal_history_for_royalty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_withdrwal_mode`
--
ALTER TABLE `tbl_withdrwal_mode`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_withdrwal_pdc`
--
ALTER TABLE `tbl_withdrwal_pdc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_withdrwal_pending`
--
ALTER TABLE `tbl_withdrwal_pending`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_working_to_purchase_transfer`
--
ALTER TABLE `tbl_working_to_purchase_transfer`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_xpub`
--
ALTER TABLE `tbl_xpub`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
