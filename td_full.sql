-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2019 at 07:48 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `td`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add group', 2, 'add_group'),
(6, 'Can change group', 2, 'change_group'),
(7, 'Can delete group', 2, 'delete_group'),
(8, 'Can view group', 2, 'view_group'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$ZzKNfCjepMOz$L5JdT9ETVo3uOQfFzXJeaw1W4cWunwm4TM/v9oSYbnc=', '2019-02-06 05:11:37.899511', 1, 'td_s_admin', '', '', 'sudiptabarma007@gmail.com', 1, 1, '2019-02-06 05:10:01.029601');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directory_district`
--

CREATE TABLE `directory_district` (
  `id` int(11) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `name_bn` varchar(100) CHARACTER SET utf8 NOT NULL,
  `division_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directory_district`
--

INSERT INTO `directory_district` (`id`, `name_en`, `name_bn`, `division_id`) VALUES
(1, 'Narsingdi', 'নরসিংদী', 0),
(2, 'Gazipur', 'গাজীপুর', 0),
(3, 'Shariatpur', 'শরীয়তপুর', 0),
(4, 'Narayanganj', 'নারায়ণগঞ্জ', 0),
(5, 'Tangail', 'টাঙ্গাইল', 0),
(6, 'Kishoreganj', 'কিশোরগঞ্জ', 0),
(7, 'Manikganj', 'মানিকগঞ্জ', 0),
(8, 'Dhaka', 'ঢাকা', 0),
(9, 'Munshiganj', 'মুন্সিগঞ্জ', 0),
(10, 'Rajbari', 'রাজবাড়ী', 0),
(11, 'Madaripur', 'মাদারীপুর', 0),
(12, 'Gopalganj', 'গোপালগঞ্জ', 0),
(13, 'Faridpur', 'ফরিদপুর', 0),
(14, 'Comilla', 'কুমিল্লা', 1),
(15, 'Feni', 'ফেনী', 1),
(16, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 1),
(17, 'Rangamati', 'রাঙ্গামাটি', 1),
(18, 'Noakhali', 'নোয়াখালী', 1),
(19, 'Chandpur', 'চাঁদপুর', 1),
(20, 'Lakshmipur', 'লক্ষ্মীপুর', 1),
(21, 'Chittagong', 'চট্টগ্রাম', 1),
(22, 'Coxsbazar', 'কক্সবাজার', 1),
(23, 'Khagrachhari', 'খাগড়াছড়ি', 1),
(24, 'Bandarban', 'বান্দরবান', 1),
(25, 'Sirajganj', 'সিরাজগঞ্জ', 2),
(26, 'Pabna', 'পাবনা', 2),
(27, 'Bogra', 'বগুড়া', 2),
(28, 'Rajshahi', 'রাজশাহী', 2),
(29, 'Natore', 'নাটোর', 2),
(30, 'Joypurhat', 'জয়পুরহাট', 2),
(31, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', 2),
(32, 'Naogaon', 'নওগাঁ', 2),
(33, 'Jessore', 'যশোর', 3),
(34, 'Satkhira', 'সাতক্ষীরা', 3),
(35, 'Meherpur', 'মেহেরপুর', 3),
(36, 'Narail', 'নড়াইল', 3),
(37, 'Chuadanga', 'চুয়াডাঙ্গা', 3),
(38, 'Kushtia', 'কুষ্টিয়া', 3),
(39, 'Magura', 'মাগুরা', 3),
(40, 'Khulna', 'খুলনা', 3),
(41, 'Bagerhat', 'বাগেরহাট', 3),
(42, 'Jhenaidah', 'ঝিনাইদহ', 3),
(43, 'Jhalakathi', 'ঝালকাঠি', 4),
(44, 'Patuakhali', 'পটুয়াখালী', 4),
(45, 'Pirojpur', 'পিরোজপুর', 4),
(46, 'Barisal', 'বরিশাল', 4),
(47, 'Bhola', 'ভোলা', 4),
(48, 'Barguna', 'বরগুনা', 4),
(49, 'Sylhet', 'সিলেট', 5),
(50, 'Moulvibazar', 'মৌলভীবাজার', 5),
(51, 'Habiganj', 'হবিগঞ্জ', 5),
(52, 'Sunamganj', 'সুনামগঞ্জ', 5),
(53, 'Panchagarh', 'পঞ্চগড়', 6),
(54, 'Dinajpur', 'দিনাজপুর', 6),
(55, 'Lalmonirhat', 'লালমনিরহাট', 6),
(56, 'Nilphamari', 'নীলফামারী', 6),
(57, 'Gaibandha', 'গাইবান্ধা', 6),
(58, 'Thakurgaon', 'ঠাকুরগাঁও', 6),
(59, 'Rangpur', 'রংপুর', 6),
(60, 'Kurigram', 'কুড়িগ্রাম', 6),
(61, 'Sherpur', 'শেরপুর', 7),
(62, 'Mymensingh', 'ময়মনসিংহ', 7),
(63, 'Jamalpur', 'জামালপুর', 7),
(64, 'Netrokona', 'নেত্রকোণা', 7);

-- --------------------------------------------------------

--
-- Table structure for table `directory_division`
--

CREATE TABLE `directory_division` (
  `id` int(11) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `name_bn` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directory_division`
--

INSERT INTO `directory_division` (`id`, `name_en`, `name_bn`) VALUES
(0, 'Dhaka', 'ঢাকা'),
(1, 'Chittagong', 'চট্টগ্রাম'),
(2, 'Rajshahi', 'রাজশাহী'),
(3, 'Khulna', 'খুলনা'),
(4, 'Barisal', 'বরিশাল'),
(5, 'Sylhet', 'সিলেট'),
(6, 'Rangpur', 'রংপুর'),
(7, 'Mymensingh', 'ময়মনসিংহ');

-- --------------------------------------------------------

--
-- Table structure for table `directory_mobile`
--

CREATE TABLE `directory_mobile` (
  `id` int(11) NOT NULL,
  `number` varchar(14) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directory_person`
--

CREATE TABLE `directory_person` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `profession` varchar(100) CHARACTER SET utf8 NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `thana_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directory_telephone`
--

CREATE TABLE `directory_telephone` (
  `id` int(11) NOT NULL,
  `number` varchar(20) NOT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `directory_thana`
--

CREATE TABLE `directory_thana` (
  `id` int(11) NOT NULL,
  `name_en` varchar(100) NOT NULL,
  `name_bn` varchar(100) CHARACTER SET utf8 NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `directory_thana`
--

INSERT INTO `directory_thana` (`id`, `name_en`, `name_bn`, `district_id`) VALUES
(1, 'Savar', 'সাভার', 8),
(2, 'Dhamrai', 'ধামরাই', 8),
(3, 'Keraniganj', 'কেরাণীগঞ্জ', 8),
(4, 'Nawabganj', 'নবাবগঞ্জ', 8),
(5, 'Dohar', 'দোহার', 8),
(6, 'Sadar', 'সদর', 8),
(7, 'Sadar', 'সদর', 13),
(8, 'Alfadanga', 'আলফাডাঙ্গা', 13),
(9, 'Boalmari', 'বোয়ালমারী', 13),
(10, 'Sadarpur', 'সদরপুর', 13),
(11, 'Nagarkanda', 'নগরকান্দা', 13),
(12, 'Bhanga', 'ভাঙ্গা', 13),
(13, 'Charbhadrasan', 'চরভদ্রাসন', 13),
(14, 'Madhukhali', 'মধুখালী', 13),
(15, 'Saltha', 'সালথা', 13),
(16, 'Kaliganj', 'কালীগঞ্জ', 2),
(17, 'Kaliakair', 'কালিয়াকৈর', 2),
(18, 'Kapasia', 'কাপাসিয়া', 2),
(19, 'Sadar', 'সদর', 2),
(20, 'Sreepur', 'শ্রীপুর', 2),
(21, 'Sadar', 'সদর', 12),
(22, 'Kashiani', 'কাশিয়ানী', 12),
(23, 'Tungipara', 'টুংগীপাড়া', 12),
(24, 'Kotalipara', 'কোটালীপাড়া', 12),
(25, 'Muksudpur', 'মুকসুদপুর', 12),
(26, 'Itna', 'ইটনা', 6),
(27, 'Katiadi', 'কটিয়াদী', 6),
(28, 'Bhairab', 'ভৈরব', 6),
(29, 'Tarail', 'তাড়াইল', 6),
(30, 'Hossainpur', 'হোসেনপুর', 6),
(31, 'Pakundia', 'পাকুন্দিয়া', 6),
(32, 'Kuliarchar', 'কুলিয়ারচর', 6),
(33, 'Sadar', 'সদর', 6),
(34, 'Karimgonj', 'করিমগঞ্জ', 6),
(35, 'Bajitpur', 'বাজিতপুর', 6),
(36, 'Austagram', 'অষ্টগ্রাম', 6),
(37, 'Mithamoin', 'মিঠামইন', 6),
(38, 'Nikli', 'নিকলী', 6),
(39, 'Sadar', 'সদর', 11),
(40, 'Shibchar', 'শিবচর', 11),
(41, 'Kalkini', 'কালকিনি', 11),
(42, 'Rajoir', 'রাজৈর', 11),
(43, 'Harirampur', 'হরিরামপুর', 7),
(44, 'Saturia', 'সাটুরিয়া', 7),
(45, 'Sadar', 'সদর', 7),
(46, 'Gior', 'ঘিওর', 7),
(47, 'Shibaloy', 'শিবালয়', 7),
(48, 'Doulatpur', 'দৌলতপুর', 7),
(49, 'Singiar', 'সিংগাইর', 7),
(50, 'Sadar', 'সদর', 9),
(51, 'Sreenagar', 'শ্রীনগর', 9),
(52, 'Sirajdikhan', 'সিরাজদিখান', 9),
(53, 'Louhajanj', 'লৌহজং', 9),
(54, 'Gajaria', 'গজারিয়া', 9),
(55, 'Tongibari', 'টংগীবাড়ি', 9),
(56, 'Araihazar', 'আড়াইহাজার', 4),
(57, 'Sadar', 'সদর', 4),
(58, 'Rupganj', 'রূপগঞ্জ', 4),
(59, 'Sonargaon', 'সোনারগাঁ', 4),
(60, 'Bandar', 'বন্দর', 4),
(61, 'Belabo', 'বেলাবো', 1),
(62, 'Monohardi', 'মনোহরদী', 1),
(63, 'Sadar', 'সদর', 1),
(64, 'Palash', 'পলাশ', 1),
(65, 'Raipura', 'রায়পুরা', 1),
(66, 'Shibpur', 'শিবপুর', 1),
(67, 'Sadar', 'সদর', 10),
(68, 'Goalanda', 'গোয়ালন্দ', 10),
(69, 'Pangsa', 'পাংশা', 10),
(70, 'Baliakandi', 'বালিয়াকান্দি', 10),
(71, 'Kalukhali', 'কালুখালী', 10),
(72, 'Sadar', 'সদর', 3),
(73, 'Naria', 'নড়িয়া', 3),
(74, 'Zajira', 'জাজিরা', 3),
(75, 'Gosairhat', 'গোসাইরহাট', 3),
(76, 'Bhedarganj', 'ভেদরগঞ্জ', 3),
(77, 'Damudya', 'ডামুড্যা', 3),
(78, 'Basail', 'বাসাইল', 5),
(79, 'Bhuapur', 'ভুয়াপুর', 5),
(80, 'Delduar', 'দেলদুয়ার', 5),
(81, 'Ghatail', 'ঘাটাইল', 5),
(82, 'Gopalpur', 'গোপালপুর', 5),
(83, 'Madhupur', 'মধুপুর', 5),
(84, 'Mirzapur', 'মির্জাপুর', 5),
(85, 'Nagarpur', 'নাগরপুর', 5),
(86, 'Sakhipur', 'সখিপুর', 5),
(87, 'Sadar', 'সদর', 5),
(88, 'Kalihati', 'কালিহাতী', 5),
(89, 'Dhanbari', 'ধনবাড়ী', 5),
(90, 'Sadar', 'সদর', 24),
(91, 'Alikadam', 'আলীকদম', 24),
(92, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 24),
(93, 'Rowangchhari', 'রোয়াংছড়ি', 24),
(94, 'Lama', 'লামা', 24),
(95, 'Ruma', 'রুমা', 24),
(96, 'Thanchi', 'থানচি', 24),
(97, 'Sadar', 'সদর', 16),
(98, 'Kasba', 'কসবা', 16),
(99, 'Nasirnagar', 'নাসিরনগর', 16),
(100, 'Sarail', 'সরাইল', 16),
(101, 'Ashuganj', 'আশুগঞ্জ', 16),
(102, 'Akhaura', 'আখাউড়া', 16),
(103, 'Nabinagar', 'নবীনগর', 16),
(104, 'Bancharampur', 'বাঞ্ছারামপুর', 16),
(105, 'Bijoynagar', 'বিজয়নগর', 16),
(106, 'Haimchar', 'হাইমচর', 19),
(107, 'Kachua', 'কচুয়া', 19),
(108, 'Shahrasti', 'শাহরাস্তি', 19),
(109, 'Sadar', 'সদর', 19),
(110, 'Matlabsouth', 'মতলব', 19),
(111, 'Hajiganj', 'হাজীগঞ্জ', 19),
(112, 'Matlabnorth', 'মতলব', 19),
(113, 'Faridgonj', 'ফরিদগঞ্জ', 19),
(114, 'Rangunia', 'রাঙ্গুনিয়া', 21),
(115, 'Sitakunda', 'সীতাকুন্ড', 21),
(116, 'Mirsharai', 'মীরসরাই', 21),
(117, 'Patiya', 'পটিয়া', 21),
(118, 'Sandwip', 'সন্দ্বীপ', 21),
(119, 'Banshkhali', 'বাঁশখালী', 21),
(120, 'Boalkhali', 'বোয়ালখালী', 21),
(121, 'Anwara', 'আনোয়ারা', 21),
(122, 'Chandanaish', 'চন্দনাইশ', 21),
(123, 'Satkania', 'সাতকানিয়া', 21),
(124, 'Lohagara', 'লোহাগাড়া', 21),
(125, 'Hathazari', 'হাটহাজারী', 21),
(126, 'Fatikchhari', 'ফটিকছড়ি', 21),
(127, 'Raozan', 'রাউজান', 21),
(128, 'Karnafuli', 'কর্ণফুলী', 21),
(129, 'Sadar', 'সদর', 21),
(130, 'Debidwar', 'দেবিদ্বার', 14),
(131, 'Barura', 'বরুড়া', 14),
(132, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 14),
(133, 'Chandina', 'চান্দিনা', 14),
(134, 'Chauddagram', 'চৌদ্দগ্রাম', 14),
(135, 'Daudkandi', 'দাউদকান্দি', 14),
(136, 'Homna', 'হোমনা', 14),
(137, 'Laksam', 'লাকসাম', 14),
(138, 'Muradnagar', 'মুরাদনগর', 14),
(139, 'Nangalkot', 'নাঙ্গলকোট', 14),
(140, 'Sadar', 'সদর', 14),
(141, 'Meghna', 'মেঘনা', 14),
(142, 'Monohargonj', 'মনোহরগঞ্জ', 14),
(143, 'Sadar South', 'সদর দক্ষিণ', 14),
(144, 'Titas', 'তিতাস', 14),
(145, 'Burichang', 'বুড়িচং', 14),
(146, 'Sadar', 'সদর', 22),
(147, 'Chakaria', 'চকরিয়া', 22),
(148, 'Kutubdia', 'কুতুবদিয়া', 22),
(149, 'Ukhiya', 'উখিয়া', 22),
(150, 'Moheshkhali', 'মহেশখালী', 22),
(151, 'Pekua', 'পেকুয়া', 22),
(152, 'Ramu', 'রামু', 22),
(153, 'Teknaf', 'টেকনাফ', 22),
(154, 'Chhagalnaiya', 'ছাগলনাইয়া', 15),
(155, 'Sadar', 'সদর', 15),
(156, 'Sonagazi', 'সোনাগাজী', 15),
(157, 'Fulgazi', 'ফুলগাজী', 15),
(158, 'Parshuram', 'পরশুরাম', 15),
(159, 'Daganbhuiyan', 'দাগনভূঞা', 15),
(160, 'Sadar', 'সদর', 23),
(161, 'Dighinala', 'দিঘীনালা', 23),
(162, 'Panchari', 'পানছড়ি', 23),
(163, 'Laxmichhari', 'লক্ষীছড়ি', 23),
(164, 'Mohalchari', 'মহালছড়ি', 23),
(165, 'Manikchari', 'মানিকছড়ি', 23),
(166, 'Ramgarh', 'রামগড়', 23),
(167, 'Matiranga', 'মাটিরাঙ্গা', 23),
(168, 'Guimara', 'গুইমারা', 23),
(169, 'Sadar', 'সদর', 20),
(170, 'Kamalnagar', 'কমলনগর', 20),
(171, 'Raipur', 'রায়পুর', 20),
(172, 'Ramgati', 'রামগতি', 20),
(173, 'Ramganj', 'রামগঞ্জ', 20),
(174, 'Sadar', 'সদর', 18),
(175, 'Companiganj', 'কোম্পানীগঞ্জ', 18),
(176, 'Begumganj', 'বেগমগঞ্জ', 18),
(177, 'Hatia', 'হাতিয়া', 18),
(178, 'Subarnachar', 'সুবর্ণচর', 18),
(179, 'Kabirhat', 'কবিরহাট', 18),
(180, 'Senbug', 'সেনবাগ', 18),
(181, 'Chatkhil', 'চাটখিল', 18),
(182, 'Sonaimori', 'সোনাইমুড়ী', 18),
(183, 'Sadar', 'সদর', 17),
(184, 'Kaptai', 'কাপ্তাই', 17),
(185, 'Kawkhali', 'কাউখালী', 17),
(186, 'Baghaichari', 'বাঘাইছড়ি', 17),
(187, 'Barkal', 'বরকল', 17),
(188, 'Langadu', 'লংগদু', 17),
(189, 'Rajasthali', 'রাজস্থলী', 17),
(190, 'Belaichari', 'বিলাইছড়ি', 17),
(191, 'Juraichari', 'জুরাছড়ি', 17),
(192, 'Naniarchar', 'নানিয়ারচর', 17),
(193, 'Kahaloo', 'কাহালু', 27),
(194, 'Sadar', 'সদর', 27),
(195, 'Shariakandi', 'সারিয়াকান্দি', 27),
(196, 'Shajahanpur', 'শাজাহানপুর', 27),
(197, 'Dupchanchia', 'দুপচাচিঁয়া', 27),
(198, 'Adamdighi', 'আদমদিঘি', 27),
(199, 'Nondigram', 'নন্দিগ্রাম', 27),
(200, 'Sonatala', 'সোনাতলা', 27),
(201, 'Dhunot', 'ধুনট', 27),
(202, 'Gabtali', 'গাবতলী', 27),
(203, 'Sherpur', 'শেরপুর', 27),
(204, 'Shibganj', 'শিবগঞ্জ', 27),
(205, 'Sadar', 'সদর', 31),
(206, 'Gomostapur', 'গোমস্তাপুর', 31),
(207, 'Nachol', 'নাচোল', 31),
(208, 'Bholahat', 'ভোলাহাট', 31),
(209, 'Shibganj', 'শিবগঞ্জ', 31),
(210, 'Akkelpur', 'আক্কেলপুর', 30),
(211, 'Kalai', 'কালাই', 30),
(212, 'Khetlal', 'ক্ষেতলাল', 30),
(213, 'Panchbibi', 'পাঁচবিবি', 30),
(214, 'Sadar', 'সদর', 30),
(215, 'Mohadevpur', 'মহাদেবপুর', 32),
(216, 'Badalgachi', 'বদলগাছী', 32),
(217, 'Patnitala', 'পত্নিতলা', 32),
(218, 'Dhamoirhat', 'ধামইরহাট', 32),
(219, 'Niamatpur', 'নিয়ামতপুর', 32),
(220, 'Manda', 'মান্দা', 32),
(221, 'Atrai', 'আত্রাই', 32),
(222, 'Raninagar', 'রাণীনগর', 32),
(223, 'Sadar', 'সদর', 32),
(224, 'Porsha', 'পোরশা', 32),
(225, 'Sapahar', 'সাপাহার', 32),
(226, 'Sadar', 'সদর', 29),
(227, 'Singra', 'সিংড়া', 29),
(228, 'Baraigram', 'বড়াইগ্রাম', 29),
(229, 'Bagatipara', 'বাগাতিপাড়া', 29),
(230, 'Lalpur', 'লালপুর', 29),
(231, 'Gurudaspur', 'গুরুদাসপুর', 29),
(232, 'Naldanga', 'নলডাঙ্গা', 29),
(233, 'Sujanagar', 'সুজানগর', 26),
(234, 'Ishurdi', 'ঈশ্বরদী', 26),
(235, 'Bhangura', 'ভাঙ্গুড়া', 26),
(236, 'Sadar', 'সদর', 26),
(237, 'Bera', 'বেড়া', 26),
(238, 'Atghoria', 'আটঘরিয়া', 26),
(239, 'Chatmohar', 'চাটমোহর', 26),
(240, 'Santhia', 'সাঁথিয়া', 26),
(241, 'Faridpur', 'ফরিদপুর', 26),
(242, 'Paba', 'পবা', 28),
(243, 'Durgapur', 'দুর্গাপুর', 28),
(244, 'Mohonpur', 'মোহনপুর', 28),
(245, 'Charghat', 'চারঘাট', 28),
(246, 'Puthia', 'পুঠিয়া', 28),
(247, 'Bagha', 'বাঘা', 28),
(248, 'Godagari', 'গোদাগাড়ী', 28),
(249, 'Tanore', 'তানোর', 28),
(250, 'Bagmara', 'বাগমারা', 28),
(251, 'Sadar', 'সদর', 28),
(252, 'Belkuchi', 'বেলকুচি', 25),
(253, 'Chauhali', 'চৌহালি', 25),
(254, 'Kamarkhand', 'কামারখন্দ', 25),
(255, 'Kazipur', 'কাজীপুর', 25),
(256, 'Raigonj', 'রায়গঞ্জ', 25),
(257, 'Shahjadpur', 'শাহজাদপুর', 25),
(258, 'Sadar', 'সদর', 25),
(259, 'Tarash', 'তাড়াশ', 25),
(260, 'Ullapara', 'উল্লাপাড়া', 25),
(261, 'Fakirhat', 'ফকিরহাট', 41),
(262, 'Sadar', 'সদর', 41),
(263, 'Mollahat', 'মোল্লাহাট', 41),
(264, 'Sarankhola', 'শরণখোলা', 41),
(265, 'Rampal', 'রামপাল', 41),
(266, 'Morrelganj', 'মোড়েলগঞ্জ', 41),
(267, 'Kachua', 'কচুয়া', 41),
(268, 'Mongla', 'মোংলা', 41),
(269, 'Chitalmari', 'চিতলমারী', 41),
(270, 'Sadar', 'সদর', 37),
(271, 'Alamdanga', 'আলমডাঙ্গা', 37),
(272, 'Damurhuda', 'দামুড়হুদা', 37),
(273, 'Jibannagar', 'জীবননগর', 37),
(274, 'Manirampur', 'মণিরামপুর', 33),
(275, 'Abhaynagar', 'অভয়নগর', 33),
(276, 'Bagherpara', 'বাঘারপাড়া', 33),
(277, 'Chougachha', 'চৌগাছা', 33),
(278, 'Jhikargacha', 'ঝিকরগাছা', 33),
(279, 'Keshabpur', 'কেশবপুর', 33),
(280, 'Sadar', 'সদর', 33),
(281, 'Sharsha', 'শার্শা', 33),
(282, 'Sadar', 'সদর', 42),
(283, 'Shailkupa', 'শৈলকুপা', 42),
(284, 'Harinakundu', 'হরিণাকুন্ডু', 42),
(285, 'Kaliganj', 'কালীগঞ্জ', 42),
(286, 'Kotchandpur', 'কোটচাঁদপুর', 42),
(287, 'Moheshpur', 'মহেশপুর', 42),
(288, 'Paikgasa', 'পাইকগাছা', 40),
(289, 'Fultola', 'ফুলতলা', 40),
(290, 'Digholia', 'দিঘলিয়া', 40),
(291, 'Rupsha', 'রূপসা', 40),
(292, 'Terokhada', 'তেরখাদা', 40),
(293, 'Dumuria', 'ডুমুরিয়া', 40),
(294, 'Botiaghata', 'বটিয়াঘাটা', 40),
(295, 'Dakop', 'দাকোপ', 40),
(296, 'Koyra', 'কয়রা', 40),
(297, 'Sadar', 'সদর', 40),
(298, 'Sadar', 'সদর', 38),
(299, 'Kumarkhali', 'কুমারখালী', 38),
(300, 'Khoksa', 'খোকসা', 38),
(301, 'Mirpurkushtia', 'মিরপুর', 38),
(302, 'Daulatpur', 'দৌলতপুর', 38),
(303, 'Bheramara', 'ভেড়ামারা', 38),
(304, 'Shalikha', 'শালিখা', 39),
(305, 'Sreepur', 'শ্রীপুর', 39),
(306, 'Sadar', 'সদর', 39),
(307, 'Mohammadpur', 'মহম্মদপুর', 39),
(308, 'Mujibnagar', 'মুজিবনগর', 35),
(309, 'Sadar', 'সদর', 35),
(310, 'Gangni', 'গাংনী', 35),
(311, 'Sadar', 'সদর', 36),
(312, 'Lohagara', 'লোহাগড়া', 36),
(313, 'Kalia', 'কালিয়া', 36),
(314, 'Assasuni', 'আশাশুনি', 34),
(315, 'Debhata', 'দেবহাটা', 34),
(316, 'Kalaroa', 'কলারোয়া', 34),
(317, 'Sadar', 'সদর', 34),
(318, 'Shyamnagar', 'শ্যামনগর', 34),
(319, 'Tala', 'তালা', 34),
(320, 'Kaliganj', 'কালিগঞ্জ', 34),
(321, 'Amtali', 'আমতলী', 48),
(322, 'Sadar', 'সদর', 48),
(323, 'Betagi', 'বেতাগী', 48),
(324, 'Bamna', 'বামনা', 48),
(325, 'Pathorghata', 'পাথরঘাটা', 48),
(326, 'Taltali', 'তালতলি', 48),
(327, 'Agailjhara', 'আগৈলঝাড়া', 46),
(328, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 46),
(329, 'Muladi', 'মুলাদী', 46),
(330, 'Sadar', 'সদর', 46),
(331, 'Bakerganj', 'বাকেরগঞ্জ', 46),
(332, 'Babuganj', 'বাবুগঞ্জ', 46),
(333, 'Wazirpur', 'উজিরপুর', 46),
(334, 'Hizla', 'হিজলা', 46),
(335, 'Banaripara', 'বানারীপাড়া', 46),
(336, 'Gournadi', 'গৌরনদী', 46),
(337, 'Sadar', 'সদর', 47),
(338, 'Borhanuddin', 'বোরহান উদ্দিন', 47),
(339, 'Doulatkhan', 'দৌলতখান', 47),
(340, 'Monpura', 'মনপুরা', 47),
(341, 'Tazumuddin', 'তজুমদ্দিন', 47),
(342, 'Lalmohan', 'লালমোহন', 47),
(343, 'Charfesson', 'চরফ্যাশন', 47),
(344, 'Sadar', 'সদর', 43),
(345, 'Kathalia', 'কাঠালিয়া', 43),
(346, 'Nalchity', 'নলছিটি', 43),
(347, 'Rajapur', 'রাজাপুর', 43),
(348, 'Bauphal', 'বাউফল', 44),
(349, 'Sadar', 'সদর', 44),
(350, 'Dumki', 'দুমকি', 44),
(351, 'Dashmina', 'দশমিনা', 44),
(352, 'Kalapara', 'কলাপাড়া', 44),
(353, 'Mirzaganj', 'মির্জাগঞ্জ', 44),
(354, 'Galachipa', 'গলাচিপা', 44),
(355, 'Rangabali', 'রাঙ্গাবালী', 44),
(356, 'Sadar', 'সদর', 45),
(357, 'Nazirpur', 'নাজিরপুর', 45),
(358, 'Kawkhali', 'কাউখালী', 45),
(359, 'Zianagar', 'জিয়ানগর', 45),
(360, 'Bhandaria', 'ভান্ডারিয়া', 45),
(361, 'Mathbaria', 'মঠবাড়ীয়া', 45),
(362, 'Nesarabad', 'নেছারাবাদ', 45),
(363, 'Nabiganj', 'নবীগঞ্জ', 51),
(364, 'Bahubal', 'বাহুবল', 51),
(365, 'Ajmiriganj', 'আজমিরীগঞ্জ', 51),
(366, 'Baniachong', 'বানিয়াচং', 51),
(367, 'Lakhai', 'লাখাই', 51),
(368, 'Chunarughat', 'চুনারুঘাট', 51),
(369, 'Sadar', 'সদর', 51),
(370, 'Madhabpur', 'মাধবপুর', 51),
(371, 'Barlekha', 'বড়লেখা', 50),
(372, 'Kamolganj', 'কমলগঞ্জ', 50),
(373, 'Kulaura', 'কুলাউড়া', 50),
(374, 'Sadar', 'সদর', 50),
(375, 'Rajnagar', 'রাজনগর', 50),
(376, 'Sreemangal', 'শ্রীমঙ্গল', 50),
(377, 'Juri', 'জুড়ী', 50),
(378, 'Sadar', 'সদর', 52),
(379, 'South Sunamganj', 'দক্ষিণ সুনামগঞ্জ', 52),
(380, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 52),
(381, 'Chhatak', 'ছাতক', 52),
(382, 'Jagannathpur', 'জগন্নাথপুর', 52),
(383, 'Dowarabazar', 'দোয়ারাবাজার', 52),
(384, 'Tahirpur', 'তাহিরপুর', 52),
(385, 'Dharmapasha', 'ধর্মপাশা', 52),
(386, 'Jamalganj', 'জামালগঞ্জ', 52),
(387, 'Shalla', 'শাল্লা', 52),
(388, 'Derai', 'দিরাই', 52),
(389, 'Balaganj', 'বালাগঞ্জ', 49),
(390, 'Beanibazar', 'বিয়ানীবাজার', 49),
(391, 'Bishwanath', 'বিশ্বনাথ', 49),
(392, 'Companiganj', 'কোম্পানীগঞ্জ', 49),
(393, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 49),
(394, 'Golapganj', 'গোলাপগঞ্জ', 49),
(395, 'Gowainghat', 'গোয়াইনঘাট', 49),
(396, 'Jaintiapur', 'জৈন্তাপুর', 49),
(397, 'Kanaighat', 'কানাইঘাট', 49),
(398, 'Sadar', 'সদর', 49),
(399, 'Zakiganj', 'জকিগঞ্জ', 49),
(400, 'Dakshinsurma', 'দক্ষিণ সুরমা', 49),
(401, 'Osmani Nagar', 'ওসমানী নগর', 49),
(402, 'Nawabganj', 'নবাবগঞ্জ', 54),
(403, 'Birganj', 'বীরগঞ্জ', 54),
(404, 'Ghoraghat', 'ঘোড়াঘাট', 54),
(405, 'Birampur', 'বিরামপুর', 54),
(406, 'Parbatipur', 'পার্বতীপুর', 54),
(407, 'Bochaganj', 'বোচাগঞ্জ', 54),
(408, 'Kaharol', 'কাহারোল', 54),
(409, 'Fulbari', 'ফুলবাড়ী', 54),
(410, 'Sadar', 'সদর', 54),
(411, 'Hakimpur', 'হাকিমপুর', 54),
(412, 'Khansama', 'খানসামা', 54),
(413, 'Birol', 'বিরল', 54),
(414, 'Chirirbandar', 'চিরিরবন্দর', 54),
(415, 'Sadullapur', 'সাদুল্লাপুর', 57),
(416, 'Sadar', 'সদর', 57),
(417, 'Palashbari', 'পলাশবাড়ী', 57),
(418, 'Saghata', 'সাঘাটা', 57),
(419, 'Gobindaganj', 'গোবিন্দগঞ্জ', 57),
(420, 'Sundarganj', 'সুন্দরগঞ্জ', 57),
(421, 'Phulchari', 'ফুলছড়ি', 57),
(422, 'Sadar', 'সদর', 60),
(423, 'Nageshwari', 'নাগেশ্বরী', 60),
(424, 'Bhurungamari', 'ভুরুঙ্গামারী', 60),
(425, 'Phulbari', 'ফুলবাড়ী', 60),
(426, 'Rajarhat', 'রাজারহাট', 60),
(427, 'Ulipur', 'উলিপুর', 60),
(428, 'Chilmari', 'চিলমারী', 60),
(429, 'Rowmari', 'রৌমারী', 60),
(430, 'Charrajibpur', 'চর রাজিবপুর', 60),
(431, 'Sadar', 'সদর', 55),
(432, 'Kaliganj', 'কালীগঞ্জ', 55),
(433, 'Hatibandha', 'হাতীবান্ধা', 55),
(434, 'Patgram', 'পাটগ্রাম', 55),
(435, 'Aditmari', 'আদিতমারী', 55),
(436, 'Syedpur', 'সৈয়দপুর', 56),
(437, 'Domar', 'ডোমার', 56),
(438, 'Dimla', 'ডিমলা', 56),
(439, 'Jaldhaka', 'জলঢাকা', 56),
(440, 'Kishorganj', 'কিশোরগঞ্জ', 56),
(441, 'Sadar', 'সদর', 56),
(442, 'Sadar', 'সদর', 53),
(443, 'Debiganj', 'দেবীগঞ্জ', 53),
(444, 'Boda', 'বোদা', 53),
(445, 'Atwari', 'আটোয়ারী', 53),
(446, 'Tetulia', 'তেতুলিয়া', 53),
(447, 'Sadar', 'সদর', 59),
(448, 'Gangachara', 'গংগাচড়া', 59),
(449, 'Taragonj', 'তারাগঞ্জ', 59),
(450, 'Badargonj', 'বদরগঞ্জ', 59),
(451, 'Mithapukur', 'মিঠাপুকুর', 59),
(452, 'Pirgonj', 'পীরগঞ্জ', 59),
(453, 'Kaunia', 'কাউনিয়া', 59),
(454, 'Pirgacha', 'পীরগাছা', 59),
(455, 'Sadar', 'সদর', 58),
(456, 'Pirganj', 'পীরগঞ্জ', 58),
(457, 'Ranisankail', 'রাণীশংকৈল', 58),
(458, 'Haripur', 'হরিপুর', 58),
(459, 'Baliadangi', 'বালিয়াডাঙ্গী', 58),
(460, 'Sadar', 'সদর', 63),
(461, 'Melandah', 'মেলান্দহ', 63),
(462, 'Islampur', 'ইসলামপুর', 63),
(463, 'Dewangonj', 'দেওয়ানগঞ্জ', 63),
(464, 'Sarishabari', 'সরিষাবাড়ী', 63),
(465, 'Madarganj', 'মাদারগঞ্জ', 63),
(466, 'Bokshiganj', 'বকশীগঞ্জ', 63),
(467, 'Fulbaria', 'ফুলবাড়ীয়া', 62),
(468, 'Trishal', 'ত্রিশাল', 62),
(469, 'Bhaluka', 'ভালুকা', 62),
(470, 'Muktagacha', 'মুক্তাগাছা', 62),
(471, 'Sadar', 'সদর', 62),
(472, 'Dhobaura', 'ধোবাউড়া', 62),
(473, 'Phulpur', 'ফুলপুর', 62),
(474, 'Haluaghat', 'হালুয়াঘাট', 62),
(475, 'Gouripur', 'গৌরীপুর', 62),
(476, 'Gafargaon', 'গফরগাঁও', 62),
(477, 'Iswarganj', 'ঈশ্বরগঞ্জ', 62),
(478, 'Nandail', 'নান্দাইল', 62),
(479, 'Tarakanda', 'তারাকান্দা', 62),
(480, 'Barhatta', 'বারহাট্টা', 64),
(481, 'Durgapur', 'দুর্গাপুর', 64),
(482, 'Kendua', 'কেন্দুয়া', 64),
(483, 'Atpara', 'আটপাড়া', 64),
(484, 'Madan', 'মদন', 64),
(485, 'Khaliajuri', 'খালিয়াজুরী', 64),
(486, 'Kalmakanda', 'কলমাকান্দা', 64),
(487, 'Mohongonj', 'মোহনগঞ্জ', 64),
(488, 'Sadar', 'সদর', 64),
(489, 'Purbadhala', 'পূর্বধলা', 64),
(490, 'Sadar', 'সদর', 61),
(491, 'Nalitabari', 'নালিতাবাড়ী', 61),
(492, 'Sreebordi', 'শ্রীবরদী', 61),
(493, 'Nokla', 'নকলা', 61),
(494, 'Jhenaigati', 'ঝিনাইগাতী', 61);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-02-06 05:04:15.298733'),
(2, 'auth', '0001_initial', '2019-02-06 05:04:32.016990'),
(3, 'admin', '0001_initial', '2019-02-06 05:04:36.107067'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-02-06 05:04:36.180622'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-02-06 05:04:36.271678'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-02-06 05:04:38.757317'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-02-06 05:04:39.007616'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-02-06 05:04:39.763831'),
(9, 'auth', '0004_alter_user_username_opts', '2019-02-06 05:04:40.154391'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-02-06 05:04:46.424831'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-02-06 05:04:46.483502'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-02-06 05:04:46.570421'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-02-06 05:04:46.834734'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-02-06 05:04:47.086121'),
(15, 'sessions', '0001_initial', '2019-02-06 05:04:48.598238');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('cmy18tdp2158fvbze27gwl0nyw71x0n5', 'M2ZhM2ZkNzY5MzEwODdhOWU3ODFmMWQ0YWE5OWEyNzM4NWE1Y2U4MTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTMzZDkxYTY3NGUwYTBhNGJhYzJkNDUwNzllNWNhNDJkZTIzMmY0YiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2019-02-20 05:11:37.968654');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `directory_district`
--
ALTER TABLE `directory_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division` (`division_id`);

--
-- Indexes for table `directory_division`
--
ALTER TABLE `directory_division`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directory_mobile`
--
ALTER TABLE `directory_mobile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person` (`person_id`);

--
-- Indexes for table `directory_person`
--
ALTER TABLE `directory_person`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thana_id` (`thana_id`);

--
-- Indexes for table `directory_telephone`
--
ALTER TABLE `directory_telephone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person` (`person_id`);

--
-- Indexes for table `directory_thana`
--
ALTER TABLE `directory_thana`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district` (`district_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directory_district`
--
ALTER TABLE `directory_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `directory_division`
--
ALTER TABLE `directory_division`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `directory_mobile`
--
ALTER TABLE `directory_mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directory_person`
--
ALTER TABLE `directory_person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directory_telephone`
--
ALTER TABLE `directory_telephone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `directory_thana`
--
ALTER TABLE `directory_thana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `directory_district`
--
ALTER TABLE `directory_district`
  ADD CONSTRAINT `directory_district_ibfk_1` FOREIGN KEY (`division_id`) REFERENCES `directory_division` (`id`);

--
-- Constraints for table `directory_mobile`
--
ALTER TABLE `directory_mobile`
  ADD CONSTRAINT `directory_mobile_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `directory_person` (`id`);

--
-- Constraints for table `directory_person`
--
ALTER TABLE `directory_person`
  ADD CONSTRAINT `directory_person_ibfk_1` FOREIGN KEY (`thana_id`) REFERENCES `directory_thana` (`id`);

--
-- Constraints for table `directory_telephone`
--
ALTER TABLE `directory_telephone`
  ADD CONSTRAINT `directory_telephone_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `directory_person` (`id`);

--
-- Constraints for table `directory_thana`
--
ALTER TABLE `directory_thana`
  ADD CONSTRAINT `directory_thana_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `directory_district` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
