-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2025 at 11:51 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agri2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE IF NOT EXISTS `cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`id`, `nme`, `st`) VALUES
(1, 'fruits', 0),
(2, 'Vegetables', 0),
(3, 'Seeds', 0),
(4, 'Fertilizers', 0),
(5, 'Tools', 0),
(6, 'Pestiside', 0);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `DistCode` int(11) NOT NULL AUTO_INCREMENT,
  `StCode` int(11) DEFAULT NULL,
  `DistrictName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`DistCode`),
  KEY `StCode` (`StCode`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=651 ;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`DistCode`, `StCode`, `DistrictName`) VALUES
(1, 1, 'North and Middle Andama'),
(2, 1, 'South Andama'),
(3, 1, 'Nicobar'),
(4, 2, 'Anantapur'),
(5, 2, 'Chittoor'),
(6, 2, 'East Godavari'),
(7, 2, 'Guntur'),
(8, 2, 'Krishna'),
(9, 2, 'Kurnool'),
(10, 2, 'Prakasam'),
(11, 2, 'Srikakulam'),
(12, 2, 'Sri Potti Sri Ramulu Nellore'),
(13, 2, 'Vishakhapatnam'),
(14, 2, 'Vizianagaram'),
(15, 2, 'West Godavari'),
(16, 2, 'Cudappah'),
(17, 3, 'Anjaw'),
(18, 3, 'Changlang'),
(19, 3, 'East Siang'),
(20, 3, 'East Kameng'),
(21, 3, 'Kurung Kumey'),
(22, 3, 'Lohit'),
(23, 3, 'Lower Dibang Valley'),
(24, 3, 'Lower Subansiri'),
(25, 3, 'Papum Pare'),
(26, 3, 'Tawang'),
(27, 3, 'Tirap'),
(28, 3, 'Dibang Valley'),
(29, 3, 'Upper Siang'),
(30, 3, 'Upper Subansiri'),
(31, 3, 'West Kameng'),
(32, 3, 'West Siang'),
(33, 4, 'Baksa'),
(34, 4, 'Barpeta'),
(35, 4, 'Bongaigao'),
(36, 4, 'Cachar'),
(37, 4, 'Chirang'),
(38, 4, 'Darrang'),
(39, 4, 'Dhemaji'),
(40, 4, 'Dima Hasao'),
(41, 4, 'Dhubri'),
(42, 4, 'Dibrugarh'),
(43, 4, 'Goalpara'),
(44, 4, 'Golaghat'),
(45, 4, 'Hailakandi'),
(46, 4, 'Jorhat'),
(47, 4, 'Kamrup'),
(48, 4, 'Kamrup Metropolita'),
(49, 4, 'Karbi Anglong'),
(50, 4, 'Karimganj'),
(51, 4, 'Kokrajhar'),
(52, 4, 'Lakhimpur'),
(53, 4, 'Morigao'),
(54, 4, 'Nagao'),
(55, 4, 'Nalbari'),
(56, 4, 'Sivasagar'),
(57, 4, 'Sonitpur'),
(58, 4, 'Tinsukia'),
(59, 4, 'Udalguri'),
(60, 5, 'Araria'),
(61, 5, 'Arwal'),
(62, 5, 'Aurangabad'),
(63, 5, 'Banka'),
(64, 5, 'Begusarai'),
(65, 5, 'Bhagalpur'),
(66, 5, 'Bhojpur'),
(67, 5, 'Buxar'),
(68, 5, 'Darbhanga'),
(69, 5, 'East Champara'),
(70, 5, 'Gaya'),
(71, 5, 'Gopalganj'),
(72, 5, 'Jamui'),
(73, 5, 'Jehanabad'),
(74, 5, 'Kaimur'),
(75, 5, 'Katihar'),
(76, 5, 'Khagaria'),
(77, 5, 'Kishanganj'),
(78, 5, 'Lakhisarai'),
(79, 5, 'Madhepura'),
(80, 5, 'Madhubani'),
(81, 5, 'Munger'),
(82, 5, 'Muzaffarpur'),
(83, 5, 'Nalanda'),
(84, 5, 'Nawada'),
(85, 5, 'Patna'),
(86, 5, 'Purnia'),
(87, 5, 'Rohtas'),
(88, 5, 'Saharsa'),
(89, 5, 'Samastipur'),
(90, 5, 'Sara'),
(91, 5, 'Sheikhpura'),
(92, 5, 'Sheohar'),
(93, 5, 'Sitamarhi'),
(94, 5, 'Siwa'),
(95, 5, 'Supaul'),
(96, 5, 'Vaishali'),
(97, 5, 'West Champara'),
(98, 6, 'Chandigarh'),
(99, 7, 'Bastar'),
(100, 7, 'Bijapur'),
(101, 7, 'Bilaspur'),
(102, 7, 'Dantewada'),
(103, 7, 'Dhamtari'),
(104, 7, 'Durg'),
(105, 7, 'Jashpur'),
(106, 7, 'Janjgir-Champa'),
(107, 7, 'Korba'),
(108, 7, 'Koriya'),
(109, 7, 'Kanker'),
(110, 7, 'Kabirdham (formerly Kawardha);'),
(111, 7, 'Mahasamund'),
(112, 7, 'Narayanpur'),
(113, 7, 'Raigarh'),
(114, 7, 'Rajnandgao'),
(115, 7, 'Raipur'),
(116, 7, 'Surajpur'),
(117, 8, 'Dadra and Nagar Haveli'),
(118, 9, 'Dama'),
(119, 9, 'Diu'),
(120, 10, 'Central Delhi'),
(121, 10, 'East Delhi'),
(122, 10, 'New Delhi'),
(123, 10, 'North Delhi'),
(124, 10, 'North East Delhi'),
(125, 10, 'North West Delhi'),
(126, 10, 'South Delhi'),
(127, 10, 'South West Delhi'),
(128, 10, 'West Delhi'),
(129, 11, 'North Goa'),
(130, 11, 'South Goa'),
(131, 12, 'Ahmedabad'),
(132, 12, 'Amreli'),
(133, 12, 'Anand'),
(134, 12, 'Aravalli'),
(135, 12, 'Banaskantha'),
(136, 12, 'Bharuch'),
(137, 12, 'Bhavnagar'),
(138, 12, 'Dahod'),
(139, 12, 'Dang'),
(140, 12, 'Gandhinagar'),
(141, 12, 'Jamnagar'),
(142, 12, 'Junagadh'),
(143, 12, 'Kutch'),
(144, 12, 'Kheda'),
(145, 12, 'Mehsana'),
(146, 12, 'Narmada'),
(147, 12, 'Navsari'),
(148, 12, 'Pata'),
(149, 12, 'Panchmahal'),
(150, 12, 'Porbandar'),
(151, 12, 'Rajkot'),
(152, 12, 'Sabarkantha'),
(153, 12, 'Surendranagar'),
(154, 12, 'Surat'),
(155, 12, 'Tapi'),
(156, 12, 'Vadodara'),
(157, 12, 'Valsad'),
(158, 13, 'Ambala'),
(159, 13, 'Bhiwani'),
(160, 13, 'Faridabad'),
(161, 13, 'Fatehabad'),
(162, 13, 'Gurgao'),
(163, 13, 'Hissar'),
(164, 13, 'Jhajjar'),
(165, 13, 'Jind'),
(166, 13, 'Karnal'),
(167, 13, 'Kaithal'),
(168, 13, 'Kurukshetra'),
(169, 13, 'Mahendragarh'),
(170, 13, 'Mewat'),
(171, 13, 'Palwal'),
(172, 13, 'Panchkula'),
(173, 13, 'Panipat'),
(174, 13, 'Rewari'),
(175, 13, 'Rohtak'),
(176, 13, 'Sirsa'),
(177, 13, 'Sonipat'),
(178, 13, 'Yamuna Nagar'),
(179, 14, 'Bilaspur'),
(180, 14, 'Chamba'),
(181, 14, 'Hamirpur'),
(182, 14, 'Kangra'),
(183, 14, 'Kinnaur'),
(184, 14, 'Kullu'),
(185, 14, 'Lahaul and Spiti'),
(186, 14, 'Mandi'),
(187, 14, 'Shimla'),
(188, 14, 'Sirmaur'),
(189, 14, 'Sola'),
(190, 14, 'Una'),
(191, 15, 'Anantnag'),
(192, 15, 'Badgam'),
(193, 15, 'Bandipora'),
(194, 15, 'Baramulla'),
(195, 15, 'Doda'),
(196, 15, 'Ganderbal'),
(197, 15, 'Jammu'),
(198, 15, 'Kargil'),
(199, 15, 'Kathua'),
(200, 15, 'Kishtwar'),
(202, 15, 'Kupwara'),
(203, 15, 'Kulgam'),
(204, 15, 'Leh'),
(205, 15, 'Poonch'),
(206, 15, 'Pulwama'),
(207, 15, 'Rajouri'),
(208, 15, 'Ramba'),
(209, 15, 'Reasi'),
(210, 15, 'Samba'),
(211, 15, 'Shopia'),
(212, 15, 'Srinagar'),
(213, 15, 'Udhampur'),
(214, 16, 'Bokaro'),
(215, 16, 'Chatra'),
(216, 16, 'Deoghar'),
(217, 16, 'Dhanbad'),
(218, 16, 'Dumka'),
(219, 16, 'East Singhbhum'),
(220, 16, 'Garhwa'),
(221, 16, 'Giridih'),
(222, 16, 'Godda'),
(223, 16, 'Gumla'),
(224, 16, 'Hazaribag'),
(225, 16, 'Jamtara'),
(226, 16, 'Khunti'),
(227, 16, 'Koderma'),
(228, 16, 'Latehar'),
(229, 16, 'Lohardaga'),
(230, 16, 'Pakur'),
(231, 16, 'Palamu'),
(232, 16, 'Ramgarh'),
(233, 16, 'Ranchi'),
(234, 16, 'Sahibganj'),
(235, 16, 'Seraikela Kharsawa'),
(236, 16, 'Simdega'),
(237, 16, 'West Singhbhum'),
(238, 17, 'Bagalkot'),
(239, 17, 'Bangalore Rural'),
(240, 17, 'Bangalore Urba'),
(241, 17, 'Belgaum'),
(242, 17, 'Bellary'),
(243, 17, 'Bidar'),
(244, 17, 'Bijapur'),
(245, 17, 'Chamarajnagar'),
(246, 17, 'Chikkamagaluru'),
(247, 17, 'Chikkaballapur'),
(248, 17, 'Chitradurga'),
(249, 17, 'Davanagere'),
(250, 17, 'Dharwad'),
(251, 17, 'Dakshina Kannada'),
(252, 17, 'Gadag'),
(253, 17, 'Gulbarga'),
(254, 17, 'Hassa'),
(255, 17, 'Haveri'),
(256, 17, 'Kodagu'),
(257, 17, 'Kolar'),
(258, 17, 'Koppal'),
(259, 17, 'Mandya'),
(260, 17, 'Mysore'),
(261, 17, 'Raichur'),
(262, 17, 'Shimoga'),
(263, 17, 'Tumkur'),
(264, 17, 'Udupi'),
(265, 17, 'Uttara Kannada'),
(266, 17, 'Ramanagara'),
(267, 17, 'Yadgir'),
(268, 18, 'Alappuzha'),
(269, 18, 'Ernakulam'),
(270, 18, 'Idukki'),
(271, 18, 'Kannur'),
(272, 18, 'Kasaragod'),
(273, 18, 'Kollam'),
(274, 18, 'Kottayam'),
(275, 18, 'Kozhikode'),
(276, 18, 'Malappuram'),
(277, 18, 'Palakkad'),
(278, 18, 'Pathanamthitta'),
(279, 18, 'Thrissur'),
(280, 18, 'Thiruvananthapuram'),
(281, 18, 'Wayanad'),
(282, 19, 'Lakshadweep'),
(283, 20, 'Agar'),
(284, 20, 'Alirajpur'),
(285, 20, 'Anuppur'),
(286, 20, 'Ashok Nagar'),
(287, 20, 'Balaghat'),
(288, 20, 'Barwani'),
(289, 20, 'Betul'),
(290, 20, 'Bhind'),
(291, 20, 'Bhopal'),
(292, 20, 'Burhanpur'),
(293, 20, 'Chhatarpur'),
(294, 20, 'Chhindwara'),
(295, 20, 'Damoh'),
(296, 20, 'Datia'),
(297, 20, 'Dewas'),
(298, 20, 'Dhar'),
(299, 20, 'Dindori'),
(300, 20, 'Guna'),
(301, 20, 'Gwalior'),
(302, 20, 'Harda'),
(303, 20, 'Hoshangabad'),
(304, 20, 'Indore'),
(305, 20, 'Jabalpur'),
(306, 20, 'Jhabua'),
(307, 20, 'Katni'),
(308, 20, 'Khandwa (East Nimar);'),
(309, 20, 'Khargone (West Nimar);'),
(310, 20, 'Mandla'),
(311, 20, 'Mandsaur'),
(312, 20, 'Morena'),
(313, 20, 'Narsinghpur'),
(314, 20, 'Neemuch'),
(315, 20, 'Panna'),
(316, 20, 'Raise'),
(317, 20, 'Rajgarh'),
(318, 20, 'Ratlam'),
(319, 20, 'Rewa'),
(320, 20, 'Sagar'),
(321, 20, 'Satna'),
(322, 20, 'Sehore'),
(323, 20, 'Seoni'),
(324, 20, 'Shahdol'),
(325, 20, 'Shajapur'),
(326, 20, 'Sheopur'),
(327, 20, 'Shivpuri'),
(328, 20, 'Sidhi'),
(329, 20, 'Singrauli'),
(330, 20, 'Tikamgarh'),
(331, 20, 'Ujjai'),
(332, 20, 'Umaria'),
(333, 20, 'Vidisha'),
(334, 21, 'Ahmednagar'),
(335, 21, 'Akola'),
(336, 21, 'Amravati'),
(337, 21, 'Aurangabad'),
(338, 21, 'Beed'),
(339, 21, 'Bhandara'),
(340, 21, 'Buldhana'),
(341, 21, 'Chandrapur'),
(342, 21, 'Dhule'),
(343, 21, 'Gadchiroli'),
(344, 21, 'Gondia'),
(345, 21, 'Hingoli'),
(346, 21, 'Jalgao'),
(347, 21, 'Jalna'),
(348, 21, 'Kolhapur'),
(349, 21, 'Latur'),
(350, 21, 'Mumbai City'),
(351, 21, 'Mumbai suburba'),
(352, 21, 'Nanded'),
(353, 21, 'Nandurbar'),
(354, 21, 'Nagpur'),
(355, 21, 'Nashik'),
(356, 21, 'Osmanabad'),
(357, 21, 'Parbhani'),
(358, 21, 'Pune'),
(359, 21, 'Raigad'),
(360, 21, 'Ratnagiri'),
(361, 21, 'Sangli'),
(362, 21, 'Satara'),
(363, 21, 'Sindhudurg'),
(364, 21, 'Solapur'),
(365, 21, 'Thane'),
(366, 21, 'Wardha'),
(367, 21, 'Washim'),
(368, 21, 'Yavatmal'),
(369, 22, 'Bishnupur'),
(370, 22, 'Churachandpur'),
(371, 22, 'Chandel'),
(372, 22, 'Imphal East'),
(373, 22, 'Senapati'),
(374, 22, 'Tamenglong'),
(375, 22, 'Thoubal'),
(376, 22, 'Ukhrul'),
(377, 22, 'Imphal West'),
(378, 23, 'East Garo Hills'),
(379, 23, 'East Khasi Hills'),
(380, 23, 'Jaintia Hills'),
(381, 23, 'Ri Bhoi'),
(382, 23, 'South Garo Hills'),
(383, 23, 'West Garo Hills'),
(384, 23, 'West Khasi Hills'),
(385, 24, 'Aizawl'),
(386, 24, 'Champhai'),
(387, 24, 'Kolasib'),
(388, 24, 'Lawngtlai'),
(389, 24, 'Lunglei'),
(390, 24, 'Mamit'),
(391, 24, 'Saiha'),
(392, 24, 'Serchhip'),
(393, 25, 'Dimapur'),
(394, 25, 'Kiphire'),
(395, 25, 'Kohima'),
(396, 25, 'Longleng'),
(397, 25, 'Mokokchung'),
(398, 25, 'Mo'),
(399, 25, 'Pere'),
(400, 25, 'Phek'),
(401, 25, 'Tuensang'),
(402, 25, 'Wokha'),
(403, 25, 'Zunheboto'),
(404, 26, 'Angul'),
(405, 26, 'Boudh (Bauda);'),
(406, 26, 'Bhadrak'),
(407, 26, 'Balangir'),
(408, 26, 'Bargarh (Baragarh);'),
(409, 26, 'Balasore'),
(410, 26, 'Cuttack'),
(411, 26, 'Debagarh (Deogarh);'),
(412, 26, 'Dhenkanal'),
(413, 26, 'Ganjam'),
(414, 26, 'Gajapati'),
(415, 26, 'Jharsuguda'),
(416, 26, 'Jajpur'),
(417, 26, 'Jagatsinghpur'),
(418, 26, 'Khordha'),
(419, 26, 'Kendujhar (Keonjhar);'),
(420, 26, 'Kalahandi'),
(421, 26, 'Kandhamal'),
(422, 26, 'Koraput'),
(423, 26, 'Kendrapara'),
(424, 26, 'Malkangiri'),
(425, 26, 'Mayurbhanj'),
(426, 26, 'Nabarangpur'),
(427, 26, 'Nuapada'),
(428, 26, 'Nayagarh'),
(429, 26, 'Puri'),
(430, 26, 'Rayagada'),
(431, 26, 'Sambalpur'),
(432, 26, 'Subarnapur (Sonepur);'),
(433, 26, 'Sundergarh'),
(434, 27, 'Karaikal'),
(435, 27, 'Mahe'),
(436, 27, 'Pondicherry'),
(437, 27, 'Yanam'),
(438, 28, 'Amritsar'),
(439, 28, 'Barnala'),
(440, 28, 'Bathinda'),
(441, 28, 'Firozpur'),
(442, 28, 'Faridkot'),
(443, 28, 'Fatehgarh Sahib'),
(444, 28, 'Fazilka'),
(445, 28, 'Gurdaspur'),
(446, 28, 'Hoshiarpur'),
(447, 28, 'Jalandhar'),
(448, 28, 'Kapurthala'),
(449, 28, 'Ludhiana'),
(450, 28, 'Mansa'),
(451, 28, 'Moga'),
(452, 28, 'Sri Muktsar Sahib'),
(453, 28, 'Pathankot'),
(454, 28, 'Patiala'),
(455, 28, 'Rupnagar'),
(456, 28, 'Ajitgarh (Mohali);'),
(457, 28, 'Sangrur'),
(458, 28, 'Shahid Bhagat Singh Nagar'),
(459, 28, 'Tarn Tara'),
(460, 29, 'Ajmer'),
(461, 29, 'Alwar'),
(462, 29, 'Bikaner'),
(463, 29, 'Barmer'),
(464, 29, 'Banswara'),
(465, 29, 'Bharatpur'),
(466, 29, 'Bara'),
(467, 29, 'Bundi'),
(468, 29, 'Bhilwara'),
(469, 29, 'Churu'),
(470, 29, 'Chittorgarh'),
(471, 29, 'Dausa'),
(472, 29, 'Dholpur'),
(473, 29, 'Dungapur'),
(474, 29, 'Ganganagar'),
(475, 29, 'Hanumangarh'),
(476, 29, 'Jhunjhunu'),
(477, 29, 'Jalore'),
(478, 29, 'Jodhpur'),
(479, 29, 'Jaipur'),
(480, 29, 'Jaisalmer'),
(481, 29, 'Jhalawar'),
(482, 29, 'Karauli'),
(483, 29, 'Kota'),
(484, 29, 'Nagaur'),
(485, 29, 'Pali'),
(486, 29, 'Pratapgarh'),
(487, 29, 'Rajsamand'),
(488, 29, 'Sikar'),
(489, 29, 'Sawai Madhopur'),
(490, 29, 'Sirohi'),
(491, 29, 'Tonk'),
(492, 29, 'Udaipur'),
(493, 30, 'East Sikkim'),
(494, 30, 'North Sikkim'),
(495, 30, 'South Sikkim'),
(496, 30, 'West Sikkim'),
(497, 31, 'Ariyalur'),
(498, 31, 'Chennai'),
(499, 31, 'Coimbatore'),
(500, 31, 'Cuddalore'),
(501, 31, 'Dharmapuri'),
(502, 31, 'Dindigul'),
(503, 31, 'Erode'),
(504, 31, 'Kanchipuram'),
(505, 31, 'Kanyakumari'),
(506, 31, 'Karur'),
(507, 31, 'Krishnagiri'),
(508, 31, 'Madurai'),
(509, 31, 'Nagapattinam'),
(510, 31, 'Nilgiris'),
(511, 31, 'Namakkal'),
(512, 31, 'Perambalur'),
(513, 31, 'Pudukkottai'),
(514, 31, 'Ramanathapuram'),
(515, 31, 'Salem'),
(516, 31, 'Sivaganga'),
(517, 31, 'Tirupur'),
(518, 31, 'Tiruchirappalli'),
(519, 31, 'Theni'),
(520, 31, 'Tirunelveli'),
(521, 31, 'Thanjavur'),
(522, 31, 'Thoothukudi'),
(523, 31, 'Tiruvallur'),
(524, 31, 'Tiruvarur'),
(525, 31, 'Tiruvannamalai'),
(526, 31, 'Vellore'),
(527, 31, 'Viluppuram'),
(528, 31, 'Virudhunagar'),
(529, 32, 'Adilabad'),
(530, 32, 'Hyderabad'),
(531, 32, 'Karimnagar'),
(532, 32, 'Khammam'),
(533, 32, 'Mahbubnagar'),
(534, 32, 'Medak'),
(535, 32, 'Nalgonda'),
(536, 32, 'Nizamabad'),
(537, 32, 'Ranga Reddy'),
(538, 32, 'Warangal'),
(539, 33, 'Dhalai'),
(540, 33, 'North Tripura'),
(541, 33, 'South Tripura'),
(542, 33, 'Khowai'),
(543, 33, 'West Tripura'),
(544, 35, 'Agra'),
(545, 35, 'Aligarh'),
(546, 35, 'Allahabad'),
(547, 35, 'Ambedkar Nagar'),
(548, 35, 'Auraiya'),
(549, 35, 'Azamgarh'),
(550, 35, 'Bagpat'),
(551, 35, 'Bahraich'),
(552, 35, 'Ballia'),
(553, 35, 'Balrampur'),
(554, 35, 'Banda'),
(555, 35, 'Barabanki'),
(556, 35, 'Bareilly'),
(557, 35, 'Basti'),
(558, 35, 'Bijnor'),
(559, 35, 'Budau'),
(560, 35, 'Bulandshahr'),
(561, 35, 'Chandauli'),
(562, 35, 'Amethi (Chhatrapati Shahuji Maharaj Nagar)'),
(563, 35, 'Chitrakoot'),
(564, 35, 'Deoria'),
(565, 35, 'Etah'),
(566, 35, 'Etawah'),
(567, 35, 'Faizabad'),
(568, 35, 'Farrukhabad'),
(569, 35, 'Fatehpur'),
(570, 35, 'Firozabad'),
(571, 35, 'Gautam Buddh Nagar'),
(572, 35, 'Ghaziabad'),
(573, 35, 'Ghazipur'),
(574, 35, 'Gonda'),
(575, 35, 'Gorakhpur'),
(576, 35, 'Hamirpur'),
(577, 35, 'Hardoi'),
(578, 35, 'Hathras (Mahamaya Nagar);'),
(579, 35, 'Jalau'),
(580, 35, 'Jaunpur'),
(581, 35, 'Jhansi'),
(582, 35, 'Jyotiba Phule Nagar'),
(583, 35, 'Kannauj'),
(584, 35, 'Kanpur Dehat (Ramabai Nagar);'),
(585, 35, 'Kanpur Nagar'),
(586, 35, 'Kanshi Ram Nagar'),
(587, 35, 'Kaushambi'),
(588, 35, 'Kushinagar'),
(589, 35, 'Lakhimpur Kheri'),
(590, 35, 'Lalitpur'),
(591, 35, 'Lucknow'),
(592, 35, 'Maharajganj'),
(593, 35, 'Mahoba'),
(594, 35, 'Mainpuri'),
(595, 35, 'Mathura'),
(596, 35, 'Mau'),
(597, 35, 'Meerut'),
(598, 35, 'Mirzapur'),
(599, 35, 'Moradabad'),
(600, 35, 'Muzaffarnagar'),
(601, 35, 'Panchsheel Nagar (Hapur);'),
(602, 35, 'Pilibhit'),
(603, 35, 'Pratapgarh'),
(604, 35, 'Raebareli'),
(605, 35, 'Rampur'),
(606, 35, 'Saharanpur'),
(607, 35, 'Sambhal(Bheem Nagar);'),
(608, 35, 'Sant Kabir Nagar'),
(609, 35, 'Sant Ravidas Nagar'),
(610, 35, 'Shahjahanpur'),
(611, 35, 'Shamli'),
(612, 35, 'Shravasti'),
(613, 35, 'Siddharthnagar'),
(614, 35, 'Sitapur'),
(615, 35, 'Sonbhadra'),
(616, 35, 'Sultanpur'),
(617, 35, 'Unnao'),
(618, 35, 'Varanasi'),
(619, 34, 'Almora'),
(620, 34, 'Bageshwar'),
(621, 34, 'Chamoli'),
(622, 34, 'Champawat'),
(623, 34, 'Dehradu'),
(624, 34, 'Haridwar'),
(625, 34, 'Nainital'),
(626, 34, 'Pauri Garhwal'),
(627, 34, 'Pithoragarh'),
(628, 34, 'Rudraprayag'),
(629, 34, 'Tehri Garhwal'),
(630, 34, 'Udham Singh Nagar'),
(631, 34, 'Uttarkashi'),
(632, 36, 'Bankura'),
(633, 36, 'Bardhama'),
(634, 36, 'Birbhum'),
(635, 36, 'Cooch Behar'),
(636, 36, 'Dakshin Dinajpur'),
(637, 36, 'Darjeeling'),
(638, 36, 'Hooghly'),
(639, 36, 'Howrah'),
(640, 36, 'Jalpaiguri'),
(641, 36, 'Kolkata'),
(642, 36, 'Maldah'),
(643, 36, 'Murshidabad'),
(644, 36, 'Nadia'),
(645, 36, 'North 24 Parganas'),
(646, 36, 'Paschim Medinipur'),
(647, 36, 'Purba Medinipur'),
(648, 36, 'Purulia'),
(649, 36, 'South 24 Parganas'),
(650, 36, 'Uttar Dinajpur');

-- --------------------------------------------------------

--
-- Table structure for table `dis_data`
--

CREATE TABLE IF NOT EXISTS `dis_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dis` varchar(150) NOT NULL,
  `nme` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `em` varchar(150) NOT NULL,
  `pass` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `dis_data`
--

INSERT INTO `dis_data` (`id`, `dis`, `nme`, `cont`, `em`, `pass`, `st`) VALUES
(1, 'Thiruvananthapuram', 'Trivandrum Office', '7984563215', 'tvm@gmail.com', '123', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doubt`
--

CREATE TABLE IF NOT EXISTS `doubt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tit` varchar(150) NOT NULL,
  `dt` date NOT NULL,
  `uid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `doubt`
--

INSERT INTO `doubt` (`id`, `tit`, `dt`, `uid`, `st`) VALUES
(1, 'What is the best  climate for farming Orange ??', '2022-11-04', 'ma@gmail.com', 0),
(2, 'i need a good land for agriculture in trivandrum', '2022-11-05', 'ak@gmail.com', 0),
(3, 'how to grow grapes????', '2023-04-05', 'ak@gmail.com', 0),
(4, 'How to make my soil more fertile???', '2023-04-28', 'ma@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE IF NOT EXISTS `loan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tit` varchar(150) NOT NULL,
  `desc` text NOT NULL,
  `dt` date NOT NULL,
  `uid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`id`, `tit`, `desc`, `dt`, `uid`, `st`) VALUES
(2, 'Agriculture Subsidy', '<p><strong>SUBSIDY SCHEMES IMPLEMENTED BY THE BANK:</strong></p>\r\n\r\n<p>The Bank is implementing various subsidy/relief schemes for promoting Agriculture and providing investment as well as interest relief to its prompt borrowers. The various schemes are</p>\r\n\r\n<ol>\r\n	<li>Dairy Entrepreneur Development Scheme (DEDS)</li>\r\n	<li>National Livestock Mission (NLM)</li>\r\n	<li>Education loan</li>\r\n	<li>NORKA Department Project for Rehabilitation of Return Emigrants (NDPREM)</li>\r\n</ol>\r\n\r\n<p><strong>A. Dairy Entrepreneur Development Scheme (DEDS):</strong></p>\r\n\r\n<p><em><strong>The main objectives are</strong></em></p>\r\n\r\n<ul>\r\n	<li>To promote setting up of modern dairy farms for production of clean milk</li>\r\n	<li>To encourage heifer calf rearing, thereby conserving good breeding stock</li>\r\n	<li>To bring structural changes in the unorganised sector so that initial processing of milk can be taken up at the village level itself</li>\r\n	<li>To upgrade the quality and traditional technology to handle milk on a commercial scale</li>\r\n	<li>To generate self-employment and provide infrastructure mainly for unorganised sector</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>B. National Livestock Mission (NLM):</strong></p>\r\n\r\n<p><em><strong>The project is designed mainly for entrepreneurship development and technology infusion and the sub components are given below:</strong></em><br />\r\n<em>SubComponents :</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1)Poultry Venture Capital Fund (PVCF-EDEG):</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>To encourage entrepreneurship in various poultry activities and provide capacity building for employment opportunities</li>\r\n	<li>To improve production of poultry products and productivity of processing units through technology upgradation and also encourage introduction of innovative technology.</li>\r\n	<li>To encourage rearing of other poultry species like quails, ducks, and turkeys etc. which have good potential.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2) Integrated Development of Small Ruminants and Rabbits (IDSRR)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Development of Sheep for Wool and Mutton.</li>\r\n	<li>Development of Goat for Meat and Milk</li>\r\n	<li>Assistance for Establishment of Goat Farms in Government Sector, NGO and Private</li>\r\n	<li>Assistance for Establishment of Rabbit Breeding Farms for Wool. V</li>\r\n	<li>Assistance for Training in Sheep, Goat and Rabbit Production</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3) Pig Development (PD):</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Encourage commercial rearing of pigs by adopting scientific methods and creation of infrastructure</li>\r\n	<li>Production and supply of improved germ plasm</li>\r\n	<li>Organizing stakeholders to popularize scientific practices</li>\r\n	<li>Create supply chain for pork industry.</li>\r\n	<li>Encourage value addition for better income.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4) Salvaging of Male Buffalo Calves (SMBC)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>to enhance survival rate,</li>\r\n	<li>Increase availability of buffalo meat for export and domestic markets,</li>\r\n	<li>Enlarge raw material base for leather industry</li>\r\n	<li>Improve availability of by-products such as meat-cum-bone meal, tallow, hides, bio-fertilizer, brushes, combs and buttons, etc.,</li>\r\n	<li>Improve Indiaâ€Ÿs foreign exchange earning through export of buffalo meat and leather products,</li>\r\n	<li>Create avenues of economic gain from genetic material which otherwise go waste by linking livestock farmers and meat / leather industry,<br />\r\n	Enhance employment opportunities in rural areas.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GENERAL GUIDELINES:</strong></p>\r\n\r\n<ul>\r\n	<li>NABARD is the implementing agency for the Capital subsidy scheme under DEDS and NLM.</li>\r\n	<li>NABARD has developed a portal for online submission of subsidy applications, their scrutiny, sanction and for release of subsidy.</li>\r\n	<li>The subsidy will be sanctioned and released on first come first serve basis and the PCARDBs should submit the claims online through the respective R.Os for uploading the same through the Ensure Portal of NABARD.</li>\r\n	<li>The eligible claim are processed , forwarded to H.O and uploaded to NABARD through the Ensure Portal .</li>\r\n	<li>The ceiling on subsidy in general is at the rate of 25% depending on category of beneficiaries and location of the project and is back ended with a lock in period of 3 years.</li>\r\n	<li>The claims are to be preferred to Head Office for onward transmission to NABARD immediately after sanction of loan as subsidy claims are honored on a first come first serve basis.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C. NORKA Department Project for Rehabilitation of Return Emigrants &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (NDPREM)</strong></p>\r\n\r\n<ul>\r\n	<li>NORKA Department Project for Rehabilitation of Return Emigrants (NDPREM) is implemented by Government of Kerala</li>\r\n	<li>KSCARD Bank and NORKA Roots has entered into an Memorandum of understanding to provide finance through the affiliated PCARDBs to the applicants subject to the terms and conditions including security norms of our Bank under Farm and Non Farm sector (excluding housing).</li>\r\n	<li>Selection of beneficiaries will be done by the NORKA ROOTS after conducting orientation &amp; training camps for those who register under NDPREM scheme .</li>\r\n	<li>As per the scheme, the NORKA ROOTS provides a capital subsidy up to 15% of the project cost limited to a maximum of Rs.3.00 lakhs and an interest subsidy of 3% up to 4 years to those customers who are prompt in repayment .</li>\r\n</ul>\r\n\r\n<p><strong>D . Education Loan Repayment Support Scheme (ELRS)</strong></p>\r\n\r\n<ul>\r\n	<li>Education Loan Repayment Support Scheme, is implemented by theGovernment of Kerala w.e.f 01/04/2016.</li>\r\n	<li>The scheme provides Government support to those who availed of education loan and find it extremely difficult to repay the education loan debts after the completion of their course.</li>\r\n	<li>In ELRS, the Government will provide relief for a period of four years after the repayment holiday with effect from 1st April 2016 .</li>\r\n	<li>The coverage of the scheme is limited to the students admitted in recognized technical/Professional courses in India under merit Quota except for students who secured admission for nursing under Management quota.</li>\r\n	<li>The eligible students are permitted to apply by entering the web portal for ELRS which will be forwarded by the concerned PCARDBank to the Nodal Officer in H.O for onward transmission to SLBC for further processing.</li>\r\n</ul>\r\n', '2023-03-30', 'tvm@gmail.com', 0),
(3, 'Agriculture Loan', '<h2>Agricultural Loan Interest Rate</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Interest rate</strong></td>\r\n			<td>7% p.a. onwards</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Processing fee</strong></td>\r\n			<td>0% to 4% of the loan amount</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Agriculture Loan Interest Rate for different Banks in India</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Bank</strong></td>\r\n			<td><strong>Interest Rate</strong></td>\r\n			<td><strong>Processing Fee</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>State Bank of India</td>\r\n			<td>7.25% p.a. onwards</td>\r\n			<td>0% p.a. to 1.25% p.a. of the loan amount</td>\r\n		</tr>\r\n		<tr>\r\n			<td>IDBI Bank</td>\r\n			<td>7% p.a. onwards</td>\r\n			<td>At the discretion of the bank</td>\r\n		</tr>\r\n		<tr>\r\n			<td>IndusInd Bank</td>\r\n			<td>10% p.a. onwards</td>\r\n			<td>1.25% of the loan amount + GST</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Central Bank of India</td>\r\n			<td>Up to 13.25% p.a.</td>\r\n			<td>At the discretion of the bank</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Karur Vysya Bank</td>\r\n			<td>8.30% p.a. onwards</td>\r\n			<td>At the discretion of the bank</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h2>Types of Agriculture Loan</h2>\r\n\r\n<p>Given below is the list of types of agriculture loans that you can avail for yourself:</p>\r\n\r\n<ul>\r\n	<li><strong>Crop Loan</strong>: These types of loans are also known as Retail Agri Loans is a type of loan which allows a farmer to meet his short-term expenses arising due to cultivation of crops, maintenance of farm equipment, and other post farm activities. The farmer gets a credit card called the&nbsp;<a href="https://www.bankbazaar.com/kisan-credit-card.html">Kisan Credit Card</a>&nbsp;on availing this type of loan which they can use to withdraw money to make necessary purchases to meet their farming needs.</li>\r\n	<li><strong>Agricultural Term Loan</strong>: These are long term loan schemes which a farmer can avail to meet their non-seasonal expenses. One can avail this loan to buy or upgrade equipment such as windmills, solar power, etc. The repayment tenure for such kind of loan schemes can go up to 4 years allowing the farmer to repay the amount in a convenient manner.</li>\r\n	<li><strong>Solar Pump Set Loan</strong>: If a farmer is involved in small irrigation projects and require capital to buy photo voltaic pumping system, then availing a solar pump set loan is the appropriate option. The repayment tenure for such loan schemes go up to 10 years.</li>\r\n	<li><strong>Loan for Allied Agricultural Activities</strong>: Farmers involved in allied agricultural activities can apply for such type of loans if they need to raise working capitals to meet their farming expenses.</li>\r\n	<li><strong>Farm Mechanisation Loan</strong>: If a farmer requires working capital so that they can either purchase new farming machineries or upgrade their existing ones such as purchasing a new tractor or getting an old one repaired, then they can apply for these types of loan schemes.</li>\r\n</ul>\r\n\r\n<p><strong>Other types of loans</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Agricultural Gold Loan</strong>: The applicant can avail this type of loan by pledging their gold ornament as security. The loan amount can be used to meet various farming expenses such as buying machineries or to meet cost related to cultivation of crops. These types of loans are generally offered at a low interest rate and also allows a farmer to use their gold which would otherwise stay idle.</li>\r\n	<li><strong>Forestry Loan</strong>: If a person is involved in growing crops which grows on trees, then they can apply for a forestry loan. The loan amount can be used to meet the cost of activities such as converting a barren land into a farming land, setting up irrigation channels, clearing wild trees, etc.</li>\r\n	<li><strong>Horticultural Loan</strong>: Farmers involved in setting up vegetable farms and orchards can apply for a horticultural loan which not only allows them to meet the cost of managing such type of farms, but also helps in meeting the expenses related to other horticulture activities such as clearing wild trees, setting up fence, etc.</li>\r\n</ul>\r\n\r\n<h2>Some of the banks who provide Agriculture Loan India</h2>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Name of the bank</strong></td>\r\n			<td><strong>Agriculture loan schemes offered</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>State Bank of India</td>\r\n			<td>\r\n			<ul>\r\n				<li><a href="https://www.bankbazaar.com/personal-loan/crop-loan.html">Crop Loan</a></li>\r\n				<li>Kisan Credit Card</li>\r\n				<li>Multipurpose Gold Loan</li>\r\n				<li><a href="https://www.bankbazaar.com/personal-loan/tractor-loan.html">Tractor Loan</a></li>\r\n				<li>Combine Harvestor Loan</li>\r\n				<li>Drip Irrigation Loan</li>\r\n				<li><a href="https://www.bankbazaar.com/personal-loan/dairy-farm-business-loan.html">Dairy Loan</a></li>\r\n				<li>Poultry Loan</li>\r\n				<li>Fisheries Loan</li>\r\n				<li>Produce Marketing Loan</li>\r\n				<li>Setting up of Agri Clinic and Agri Business Centres</li>\r\n				<li>Land Purchase Scheme</li>\r\n				<li>SBI Krishak Uthan Yojana</li>\r\n				<li>Scheme for Debt Swapping of Borrowers</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href="https://www.bankbazaar.com/personal-loan/nabard.html">National Bank for Agriculture and Rural Development</a>&nbsp;(NABARD)</td>\r\n			<td>\r\n			<ul>\r\n				<li>Capital Investment Subsidy Scheme for Commercial Production Units for organic/ biological Inputs</li>\r\n				<li>Agriclinic and Agribusiness Centres Scheme</li>\r\n				<li>National Livestock Mission</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Karur Vysya Bank</td>\r\n			<td>\r\n			<ul>\r\n				<li>Green Card / Green Card Plus (Kisan Card)</li>\r\n				<li>Green Harvester</li>\r\n				<li>Green Trac</li>\r\n				<li>Warehouse Receipt Loan</li>\r\n				<li>Jewel Loan</li>\r\n				<li>Kisan Tatkal</li>\r\n				<li>Green Car</li>\r\n				<li>Loans for Horticulture Projects</li>\r\n				<li>Two-Wheeler Loan</li>\r\n				<li>Dairy Loan</li>\r\n				<li>Poultry Loan</li>\r\n				<li>Pisciculture Loan</li>\r\n				<li>Loans for SHG-JLG</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>IndusInd Bank</td>\r\n			<td>\r\n			<ul>\r\n				<li>Production Loan (CC)</li>\r\n				<li>Investment Loan (TL)</li>\r\n				<li>Hi-Tech Agriculture (OD)</li>\r\n				<li>Hi-Tech Agriculture (TL)</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2023-03-30', 'tvm@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `msg`
--

CREATE TABLE IF NOT EXISTS `msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `did` varchar(150) NOT NULL,
  `tit` text NOT NULL,
  `dt` date NOT NULL,
  `uid` varchar(150) NOT NULL,
  `utype` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `msg`
--

INSERT INTO `msg` (`id`, `did`, `tit`, `dt`, `uid`, `utype`, `st`) VALUES
(1, '1', 'helloo???', '2022-11-05', 'ma@gmail.com', '1', 0),
(2, '1', 'hi', '2022-11-05', 'tvm@gmail.com', '2', 0),
(3, '2', 'Hi', '2023-03-24', 'ak@gmail.com', '1', 0),
(4, '3', 'cold climate', '2023-04-05', 'tvm@gmail.com', '2', 0),
(5, '4', 'buy good fertilizer', '2023-04-28', 'tvm@gmail.com', '2', 0),
(6, '4', 'thanks', '2023-05-17', 'ma@gmail.com', '1', 0),
(7, '4', 'you welcome', '2023-05-17', 'tvm@gmail.com', '2', 0),
(8, '4', 'hi', '2024-04-13', 'ma@gmail.com', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plot`
--

CREATE TABLE IF NOT EXISTS `plot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tit` varchar(150) NOT NULL,
  `ar` varchar(150) NOT NULL,
  `addr` text NOT NULL,
  `desc` text NOT NULL,
  `ph` varchar(150) NOT NULL,
  `oid` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `dis` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `plot`
--

INSERT INTO `plot` (`id`, `tit`, `ar`, `addr`, `desc`, `ph`, `oid`, `cont`, `dis`, `st`) VALUES
(1, 'Manathala Land for Sale', '15 Acre', 'Mnathalala Nalanchira Trivandrum', '<p>Land can be a super profitable investment. Unlike buildings, plots do not have depreciation values, and when you invest in a land in the right location, its price is bound to increase exponentially. In India, agricultural land is in abundance and our economy is primarily backed by farming. So, though it can be profitable to buy or sell agricultural lands, the process can be slightly tricky as the rules and laws associated with it are unique.&nbsp;&nbsp;</p>\n\n<p>Which is why, this blog covers everything you need to know about buying agricultural lands in India.&nbsp;</p>\n\n<h2>Who cannot buy agricultural lands in India?</h2>\n\n<p>If you are a Person of Indian Origin (PIO) or a Non-Resident Indian (NRI), you cannot buy agricultural lands, farmhouses, or plantation properties anywhere in India. However, you will be able to inherit them.&nbsp;</p>\n\n<h2>State-wise rules for purchasing agricultural lands</h2>\n\n<p>Every state has separate rules when it comes to buying agricultural lands. Here are a few state-wise restrictions that you should know about.</p>\n\n<ol>\n	<li>\n	<p><strong>Tamil Nadu</strong><strong>&nbsp;&ndash;</strong>&nbsp;If no agricultural activity has happened on the land for at least ten years, it can be bought and converted into non-agricultural land. One person can buy a maximum of 59.95 acres this way.</p>\n	</li>\n	<li>\n	<p><strong>Kerala</strong><strong>&nbsp;&ndash;</strong>&nbsp;Kerala also allows anyone to purchase agricultural land, despite their intentions. However, the amount of land that can be bought depends on the person and their family size.&nbsp;</p>\n	</li>\n</ol>\n\n<table>\n	<tbody>\n		<tr>\n			<td>\n			<p><strong>Family Size</strong></p>\n			</td>\n			<td>\n			<p><strong>Standard land area allowed (acres)</strong></p>\n			</td>\n			<td>\n			<p><strong>Ceiling limit (acres)</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Single unmarried adult</p>\n			</td>\n			<td>\n			<p>5</p>\n			</td>\n			<td>\n			<p>6-7.5</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Family size of 2-5 members</p>\n			</td>\n			<td>\n			<p>10</p>\n			</td>\n			<td>\n			<p>12-15</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Family size &gt; 5 members</p>\n			</td>\n			<td>\n			<p>10 (increased by 1 acre for each extra member after 5)</p>\n			</td>\n			<td>\n			<p>12-20</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n', '2446075.webp', 'tvm@gmail.com', '7984563215', 'Thiruvananthapuram', 0),
(2, 'East Fort Free Plot', '20 Acre', 'East fort trivandrum kerala', '<p>Land can be a super profitable investment. Unlike buildings, plots do not have depreciation values, and when you invest in a land in the right location, its price is bound to increase exponentially. In India, agricultural land is in abundance and our economy is primarily backed by farming. So, though it can be profitable to buy or sell agricultural lands, the process can be slightly tricky as the rules and laws associated with it are unique.&nbsp;&nbsp;</p>\n\n<p>Which is why, this blog covers everything you need to know about buying agricultural lands in India.&nbsp;</p>\n\n<h2>Who cannot buy agricultural lands in India?</h2>\n\n<p>If you are a Person of Indian Origin (PIO) or a Non-Resident Indian (NRI), you cannot buy agricultural lands, farmhouses, or plantation properties anywhere in India. However, you will be able to inherit them.&nbsp;</p>\n\n<h2>State-wise rules for purchasing agricultural lands</h2>\n\n<p>Every state has separate rules when it comes to buying agricultural lands. Here are a few state-wise restrictions that you should know about.</p>\n\n<ol>\n	<li>\n	<p><strong>Tamil Nadu</strong><strong>&nbsp;&ndash;</strong>&nbsp;If no agricultural activity has happened on the land for at least ten years, it can be bought and converted into non-agricultural land. One person can buy a maximum of 59.95 acres this way.</p>\n	</li>\n	<li>\n	<p><strong>Kerala</strong><strong>&nbsp;&ndash;</strong>&nbsp;Kerala also allows anyone to purchase agricultural land, despite their intentions. However, the amount of land that can be bought depends on the person and their family size.&nbsp;</p>\n	</li>\n</ol>\n\n<table>\n	<tbody>\n		<tr>\n			<td>\n			<p><strong>Family Size</strong></p>\n			</td>\n			<td>\n			<p><strong>Standard land area allowed (acres)</strong></p>\n			</td>\n			<td>\n			<p><strong>Ceiling limit (acres)</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Single unmarried adult</p>\n			</td>\n			<td>\n			<p>5</p>\n			</td>\n			<td>\n			<p>6-7.5</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Family size of 2-5 members</p>\n			</td>\n			<td>\n			<p>10</p>\n			</td>\n			<td>\n			<p>12-15</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Family size &gt; 5 members</p>\n			</td>\n			<td>\n			<p>10 (increased by 1 acre for each extra member after 5)</p>\n			</td>\n			<td>\n			<p>12-20</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n', '7045501.jpg', 'tvm@gmail.com', '7984563215', 'Thiruvananthapuram', 0),
(3, 'Pulimoode Plot', '22 Acre', 'Pulimode Junction trivandrum keralal', '<p>Land can be a super profitable investment. Unlike buildings, plots do not have depreciation values, and when you invest in a land in the right location, its price is bound to increase exponentially. In India, agricultural land is in abundance and our economy is primarily backed by farming. So, though it can be profitable to buy or sell agricultural lands, the process can be slightly tricky as the rules and laws associated with it are unique.&nbsp;&nbsp;</p>\n\n<p>Which is why, this blog covers everything you need to know about buying agricultural lands in India.&nbsp;</p>\n\n<h2>Who cannot buy agricultural lands in India?</h2>\n\n<p>If you are a Person of Indian Origin (PIO) or a Non-Resident Indian (NRI), you cannot buy agricultural lands, farmhouses, or plantation properties anywhere in India. However, you will be able to inherit them.&nbsp;</p>\n\n<h2>State-wise rules for purchasing agricultural lands</h2>\n\n<p>Every state has separate rules when it comes to buying agricultural lands. Here are a few state-wise restrictions that you should know about.</p>\n\n<ol>\n	<li>\n	<p><strong>Tamil Nadu</strong><strong>&nbsp;&ndash;</strong>&nbsp;If no agricultural activity has happened on the land for at least ten years, it can be bought and converted into non-agricultural land. One person can buy a maximum of 59.95 acres this way.</p>\n	</li>\n	<li>\n	<p><strong>Kerala</strong><strong>&nbsp;&ndash;</strong>&nbsp;Kerala also allows anyone to purchase agricultural land, despite their intentions. However, the amount of land that can be bought depends on the person and their family size.&nbsp;</p>\n	</li>\n</ol>\n\n<table>\n	<tbody>\n		<tr>\n			<td>\n			<p><strong>Family Size</strong></p>\n			</td>\n			<td>\n			<p><strong>Standard land area allowed (acres)</strong></p>\n			</td>\n			<td>\n			<p><strong>Ceiling limit (acres)</strong></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Single unmarried adult</p>\n			</td>\n			<td>\n			<p>5</p>\n			</td>\n			<td>\n			<p>6-7.5</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Family size of 2-5 members</p>\n			</td>\n			<td>\n			<p>10</p>\n			</td>\n			<td>\n			<p>12-15</p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Family size &gt; 5 members</p>\n			</td>\n			<td>\n			<p>10 (increased by 1 acre for each extra member after 5)</p>\n			</td>\n			<td>\n			<p>12-20</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n', '5928466.jpg', 'tvm@gmail.com', '7984563215', 'Thiruvananthapuram', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plot_msg`
--

CREATE TABLE IF NOT EXISTS `plot_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(150) NOT NULL,
  `nme` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `em` varchar(150) NOT NULL,
  `abt` text NOT NULL,
  `uid` varchar(150) NOT NULL,
  `oid` varchar(150) NOT NULL,
  `dt` date NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `plot_msg`
--

INSERT INTO `plot_msg` (`id`, `pid`, `nme`, `cont`, `em`, `abt`, `uid`, `oid`, `dt`, `st`) VALUES
(1, '1', 'Manu Krishna', '7894561235', 'ma@gmail.com', 'Is it good for Farming', 'ma@gmail.com', 'tvm@gmail.com', '2022-11-04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pro`
--

CREATE TABLE IF NOT EXISTS `pro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate` varchar(150) NOT NULL,
  `nme` varchar(150) NOT NULL,
  `qnt` varchar(150) NOT NULL,
  `prc` varchar(150) NOT NULL,
  `ph` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pro`
--

INSERT INTO `pro` (`id`, `cate`, `nme`, `qnt`, `prc`, `ph`, `uid`, `st`) VALUES
(1, '1', 'Orange', 'per kg', '300', '9744842.jpg', 'ma@gmail.com', 0),
(2, '1', 'Grapes', 'per kg', '200', '2594116.webp', 'ma@gmail.com', 1),
(3, '1', 'Apple', 'per kg', '400', '3396392.jpg', 'ma@gmail.com', 1),
(4, '2', 'Carrot', 'per kg', '200', '5461822.jpg', 'ma@gmail.com', 0),
(5, '2', 'Cabage', 'per kg', '230', '7401184.jpg', 'ma@gmail.com', 0),
(6, '3', 'Orange Seeds', '1 Pack', '100', '2769348.jpg', 'ma@gmail.com', 0),
(7, '4', 'Organic Way', '3 Pack', '500', '4593353.jpg', 'ma@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE IF NOT EXISTS `sale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(150) NOT NULL,
  `nme` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `em` varchar(150) NOT NULL,
  `qnt` varchar(150) NOT NULL,
  `addr` varchar(150) NOT NULL,
  `uid` varchar(150) NOT NULL,
  `sid` varchar(150) NOT NULL,
  `dt` date NOT NULL,
  `sale_id` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `pid`, `nme`, `cont`, `em`, `qnt`, `addr`, `uid`, `sid`, `dt`, `sale_id`, `st`) VALUES
(1, '2', 'Ajay Kumar', '7894563215', 'ak@gmail.com', '2', 'House no 33 bhagath singh nagar nalanchira trivandrum', 'ak@gmail.com', 'ma@gmail.com', '2022-11-02', 'FT-556544', 0),
(2, '1', 'Ajay Kumar', '7894563215', 'ak@gmail.com', '2', 'House no 33 bhagath singh nagar nalanchira trivandrum', 'ak@gmail.com', 'ma@gmail.com', '2023-04-28', 'FT-2873992', 0),
(3, '7', 'Ajay Kumar', '7894563215', 'ak@gmail.com', '1', 'House no 33 bhagath singh nagar nalanchira trivandrum', 'ak@gmail.com', 'ma@gmail.com', '2023-05-17', 'FT-9819000', 0),
(4, '1', 'Ajay Kumar', '7894563215', 'ak@gmail.com', '2', 'House no 33 bhagath singh nagar nalanchira trivandrum', 'ak@gmail.com', 'ma@gmail.com', '2024-04-13', 'FT-5619476', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tut`
--

CREATE TABLE IF NOT EXISTS `tut` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tit` varchar(150) NOT NULL,
  `lin` text NOT NULL,
  `desc` text NOT NULL,
  `ph` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tut`
--

INSERT INTO `tut` (`id`, `tit`, `lin`, `desc`, `ph`, `st`) VALUES
(2, 'How to be a Farmer Step by Step Guide', '<iframe width="640" height="360" src="https://www.youtube.com/embed/fRlUhUWS0Hk" title="How to Start a Farm From Scratch (Beginner''s Guide to Growing Vegetables for Profit)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', '<p>We live in an era where more and more people of different areas, with totally different backgrounds, ages and education levels seek to change their lives, by moving to the countryside and start a farming business.&nbsp;</p>\r\n\r\n<p>Since it is not that easy to become a farmer without any experience, this guide will help you to clear things out and understand the basic steps you have to take.</p>\r\n\r\n<p>First of all, it is very important to understand what -in fact- farmers do.</p>\r\n\r\n<p><strong>What Does a Farmer Do?&nbsp;</strong></p>\r\n\r\n<p>As a farmer, we define anyone who makes income by working in the primary sector, raising living organisms either for food or for raw materials (for instance cotton). Farmers are believed to be people closely connected with nature, spending most of their time outside in the field, either growing plants or raising animals. This is partly true. However, contemporary greenhouse farmers may be closed in their facilities all day long and not be able to have access to sunlight. In all cases, farmers do not have specific working hours. They deal with living organisms and this often creates a mess in their personal schedule. It is not that easy to have a structured work schedule. Some of them do not have vacations or days off. Farming requires total dedication, love, and passion in order to succeed.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Step 1: Decide What to grow and in which specific field &ndash; Can I get a profit?.&nbsp;</strong></p>\r\n\r\n<p><em><strong>Choosing the right crop</strong></em></p>\r\n\r\n<p>First of all, you have to decide what you are going to grow. Although this may sound like an easy procedure, in fact, this is the most complicated decision. The type of plant (or animal) you are going to choose is perhaps the most crucial decision you are going to make.&nbsp;</p>\r\n\r\n<p>Farming is divided into categories depending on production. The main categories are:</p>\r\n\r\n<p><strong>Agriculture&nbsp;</strong></p>\r\n\r\n<p>Arboriculture (commercial fruit trees),&nbsp;<a href="https://wikifarmer.com/market/en/fruits/">Vegetable</a>&nbsp;and&nbsp;<a href="https://wikifarmer.com/market/en/fruits/">Fruit</a>&nbsp;Farming, Wood production, Biomass production, Grain Farming, Forage Crops,&nbsp;<a href="https://wikifarmer.com/market/en/packaged/herbs/">Herbs</a>&nbsp;Farming,&nbsp;<a href="https://wikifarmer.com/market/en/fruits/grapes/">Grapes</a>&nbsp;Farming (Viticulture),&nbsp;<a href="https://wikifarmer.com/market/en/fruits/strawberries-blackberries-figs/">Berries</a>&nbsp;Farming, Special Crops like Cotton and others. Most of these crops are established outdoors. Some of them can also be established indoors (greenhouses) with soil or air/water as a substrate medium.&nbsp;</p>\r\n\r\n<p><strong>Livestock Farming</strong></p>\r\n\r\n<p>In this category, we have farmers who raise animals mainly for their milk, meat, or&nbsp;<a href="https://wikifarmer.com/market/en/packaged/eggs/">eggs</a>. Some examples are cows, sheep, goats, pigs, and poultry farming (chickens, ducks, etc.), etc. Some Authorities do not consider Poultry Farming as Livestock, but rather as a separate category.&nbsp;</p>\r\n\r\n<p><strong>Beekeeping</strong></p>\r\n\r\n<p>Beekeeping is a special type of farming. Farmers raise honey bees from which they collect,&nbsp;<a href="https://wikifarmer.com/market/en/honey/">honey</a>,&nbsp;<a href="https://wikifarmer.com/market/en/honey/pollen/">pollen</a>,&nbsp;<a href="https://wikifarmer.com/market/en/honey/royal-jelly/">royal jelly</a>&nbsp;or wax.</p>\r\n\r\n<p><strong>Snails Farming</strong></p>\r\n\r\n<p>Farmers raise snails, either for their meat, or their &ldquo;jelly&rdquo; excretion.</p>\r\n\r\n<p><strong>Worms Farming</strong></p>\r\n\r\n<p>This is a special type of farming where farmers grow worms in order to use them for the conversion of waste to organic fertilizers.</p>\r\n\r\n<p>Before you start, it is crucial to do extended research on your desired crop or livestock. Once you have selected 3-4 potential crops, you shall consider contacting local producers and agricultural scientists, so as to be informed about the type of plants and varieties that thrive in this particular area.&nbsp;</p>\r\n\r\n<p><em><strong>Match the crop to the market</strong></em></p>\r\n\r\n<p>First of all, you have to define your client, for a selected crop. Who is going to buy your products? What is the number of prospective buyers in your region for the crop you will choose? At what price do they buy other similar products? Do they pay cash or on credit? When do they buy the product? Do you need storing facilities so that you can have more time to negotiate a better price? Can you export your product (find buyers from another country)? Is there a real demand for the product you choose?&nbsp;</p>\r\n\r\n<p>A frequent mistake of new farmers is that they start their crop establishment without taking into consideration any of these. If there is no demand for your product, you will probably end up broke, although you may have produced an excellent product. Thus, you can start with your crops checklist and start to examine potential markets for each one of them. You may have to exclude those crops that you are not sure if you can sell the production. In some cases, beginning farmers join a group of local farmers (association), so that they can have synergies. In many countries, farmers (who grow a specific crop) form an association. The association creates a Marketing Department and employes a group of people responsible for finding markets for the products. In this way, all the farmers pay a fee and actually outsource sales and marketing activities. Thus, they have more time to invest in core activities. But even in this case, you must always have a basic understanding of the market that your products target, so that you will always be ready to find an alternative.&nbsp;</p>\r\n\r\n<p><em><strong>Choosing the right field for this Crop</strong></em></p>\r\n\r\n<p>The topography of the area, type of soil, environmental conditions, and climate are very important factors that all potential farmers should know, before starting any other activity. The location of your field can dramatically change your business plan and your daily routine. For example, livestock farmers in areas with rich and diverse flora may rely more on pasture for feeding their animals. On the contrary, livestock farmers in areas with no flora will have to buy foodstuff, something that will surely increase costs.&nbsp;</p>\r\n\r\n<p>Without a field, you cannot start your farm business. There are two scenarios when it comes to field selection. In case you own the land, things are easy. But in case you do not own land, you will have to rent or lease someone else&rsquo;s field(s), and here is the point where the problems start.&nbsp;</p>\r\n\r\n<p>You should have in mind that there are some plant categories you may have to avoid in case you do not have your own land. Perennial plant categories may be not suitable, for many reasons. First of all, the cost could be really high in case you wish to rent a field for many years. Moreover, when it comes to commercial fruit trees, for example, you have to know that most trees do not produce fruits earlier than 6-7 years. Thus, you will have to pay rent without having any revenues for some years. Moreover, there are legal issues. Although you may sign a contract, according to which you are allowed to occupy the land for 30 years or more, the legal framework may change in such a long time. Thus, you may be enforced to destroy your crop and leave, and in some cases without receiving any compensation. In case you and your family do not own land, you may consider avoiding crops of long term engagement. Perennial herbs crops last 6-12 years. Grape vines and fruit trees normally mature 7-8 years after planting and can continue to give a good yield for 30-60 years or more. You may consider avoiding those categories. On the contrary, most vegetables can be harvested (and thus produce revenues) 3-5 months after transplanting or seeding. These crops may be more suitable for a new farmer.&nbsp;</p>\r\n\r\n<p>Cereals (wheat, barley, corn) and cotton can be harvested 6-9 months after seeding, but these crops are considered commodities. This means that their price is mostly determined by the processor &ndash; buyer according to the local demand and supply. This is a very competitive landscape, and a new farmer can rarely have a profit by growing commodities during his/her first years of engagement. However, every case is different, and yes, in some cases, it can be financially wise to start a commodity crop in some areas.&nbsp;</p>\r\n\r\n<p>In any case, the field you are going to choose should be suitable for your selected crop. It is your responsibility to do your research about the field structure, pH level, and crop history. Collecting 3-4 soil samples from different spots of the field and sending them to a laboratory is essential. A local licensed agronomist can let you know if the soil is suitable for this crop. You can also get advice on any corrective actions you may have to take, so as to restore soil fertility.&nbsp;</p>\r\n\r\n<p>Finally, you have to examine your region&rsquo;s annual precipitation levels as well as the dates that the first and last frost usually appears.&nbsp;</p>\r\n\r\n<p>Another important factor is whether the field has access to water. Most of the commercial crops need irrigation in order to give acceptable yields. In case you choose a field that has no access to a water source, you will need to use water tanks transferred from the closest resource. In order to transport water tanks, you will need to find tractors. The cost and effort are going to be high.</p>\r\n\r\n<p><strong><em>Examine the Total Costs versus. Total Projected Revenues. Will I make a profit?</em></strong></p>\r\n\r\n<p>By now, you will have ended up with a limited number of alternatives on your list. It is now time to make a small business plan, by examining the potential income you are going to receive from each of the alternatives, based on the revenues and the projected costs. The way to do so is simple. Try to contact successful farmers that have years of experience in the crops you consider to grow. These people, given that they are honest and willing to share details, are the best source of information concerning market prices and actual costs. However, for a more scientific opinion, agricultural advisors &ndash; experts could also help you by taking into account all the parameters and creating a business plan for you.&nbsp;</p>\r\n\r\n<p>You may think, &ldquo;what could be the cost for crop farming?&rdquo; In fact, depending on the type of farming, the cost could vary from some hundreds to some millions of dollars per year. Costs include :&nbsp;</p>\r\n\r\n<ul>\r\n	<li>The installation cost. For example, when it comes to greenhouse farming, the cost can be really high, as a lot of expensive equipment is required (skeleton, covers, fans, heaters, lamps, etc.).&nbsp;</li>\r\n	<li>Soil preparation cost: Plowing, Leveling or Restoring Soil Fertility</li>\r\n	<li>Seeds / Plants purchase cost</li>\r\n	<li>Irrigation cost: Most plants need irrigation in order to grow and produce an average yield. Thus, for commercial farming, in most cases, you may need to install an irrigation system.</li>\r\n	<li>Protective nets and covers: Some plants may be more sensitive than others, and farmers need to protect them under specific environmental conditions.</li>\r\n	<li>Fertilizers or Manure cost: Most plants, when grown for commercial use, need to be &ldquo;fed&rdquo; in order to produce an acceptable yield.</li>\r\n	<li>Crop protection substances: Growers that practice conventional farming may need to buy agrochemical products, that protect the crop against pests and diseases.&nbsp;</li>\r\n	<li>Labor cost: One of the most important costs is labor costs. It is almost impossible to work all alone; you will have to hire people for helping you, at least during critical stages of the crop (for example, harvest).</li>\r\n	<li>Machinery cost: Some crop types need special machinery in order to be seeded or harvested.&nbsp;</li>\r\n	<li>Storage cost: For products that are not transferred to the market the same day they are harvested, farmers may need to build special areas where they will store the products. In most cases, these areas are equipped with sensors that control the temperature, moisture, and CO2&nbsp;levels.</li>\r\n	<li>Transfer cost. This can also be an important fraction of the total cost. Where is your buyer located? In many cases, farmers pay for transportation fees.&nbsp;</li>\r\n	<li>Crop Insurance cost.&nbsp;</li>\r\n	<li>Fees of various experts and scientists that will give you advice.&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>As far as projected revenues are concerned, we normally need 3-4 inputs. First, we need to calculate the total surface of our cropland. Secondly, we need to make a research about the average yield of our crop in our region. By multiplying these two, we can get our projected total yield. For example, let&rsquo;s suppose that we want to grow eggplant and our field is 8 hectares. We know that the average eggplant yield per hectare in our region is 25 to 40 tons per hectare. Thus, we have to multiply 8 hectares X 25 tons = 200 tons of eggplant. Finally, we need to make a research on the market price of the eggplant in our region (not the retail price, but the price the farmer gets). Suppose that farmers report that this price is 100$ per ton. Then, our projected revenues will be 200 tons X 100 $ per ton = 20000 $. Keep in mind that we picked the lowest possible yield (25 instead of 40 tons), because beginning farmers are not supposed to produce the maximum or even the average yield. Very often, the average yields reported online can only be obtained by successful farmers after many years of experience. Moreover, there can be significant deviations from all these numbers. For example, not all varieties of eggplant can be marketed at the same price. Vendors may also buy your products at a much lower price, claiming that your fruits are not uniform (this is a frequent problem of beginning farmers). But even in this case, we can have a general view of our projected revenues for this specific crop.&nbsp;</p>\r\n\r\n<p>Examining and documenting all these costs and projected revenues is essential in order to figure out if you will have a profit when your crop matures. Many people are very tired of their city lifestyle. They just want to get a new life by engaging in agricultural activities in the country. However, getting into farming without doing this kind of research will surely lead to your personal economic disaster.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Step 2: Examine your Financing Options &ndash; Secure your Capital</strong></p>\r\n\r\n<p>Needless to say that a farmer is not paid every month or 15 days, as an employee normally does. In the best-case scenario, a farmer is paid when (s)he sells the product. This means that -by default- farmers will have to pay first all the production expenses out of their own pocket, well before they realize any revenues. Thus, you will have to secure capital in order to buy all the inputs (seeds, seedlings, fertilizers, agrochemicals, irrigation equipment, workers&rsquo; wages, etc.) and of course to cover your own family&rsquo;s cost of living for at least the next six months or so. Hopefully, there are many options when it comes to farming loans, in case you do not have the required capital. In many countries, State Agencies want to encourage new people to get into farming. Thus, they act as a guarantor so that farmers can receive zero-interest rates loans from commercial or State banks. International Institutions also give loans to new farmers in many countries. Contract farming can also be an option. This means that the farmer and a buyer (for example, a food processing company) agree on a certain price of a product before the crop is established. In many cases, the buyer covers all the expenses of the crop establishment, and of course, this amount is deducted from the final revenues of the farmer. This can also be an alternative form of financing.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Step 3: Make Sure You Have Available Inputs and Resources at the time you need them.&nbsp;</strong></p>\r\n\r\n<p>Another thing to consider is whether you can have available all the necessary inputs and resources when you need them and at reasonable prices. For example, farmers often hire workers to help them with some procedures (for instance, harvesting). It will be a great surprise to start your farm business and realize you cannot find workers in your area. Even if your farm does not require permanent staff, you must be sure you can hire occasional workers at the time you need them. For instance, in the case of viticulture, most grape farmers need a considerable number of workers to help during the harvest period. In case they do not find workers at that time, the grapes are going to stay longer on the plant, and their quality and commercial value will decrease significantly within a week. Even in developed countries like the USA, experienced farmers have reported that they abandoned apple tree commercial orchards because they could not find workers at the exact time that the apples should be harvested. Cotton farmers also face similar issues. The crop matures at some point and needs to be harvested urgently. However, cotton cannot be harvested by hand; it can only be harvested through tractors that cost hundreds of thousands of dollars. Can you rent such a machine at this point? If there are a lot of cotton fields in an area, and only a small number of harvesting machines, then only a fraction of cotton fields will be harvested at the right time. The rest will be left, and their quality and market price will be diminished.&nbsp;</p>\r\n\r\n<p><strong><em>Consequently, as it happens in nearly all professions and careers, being a successful farmer does not depend exclusively on yourself, but also on your local ecosystem and the network you build over the years.&nbsp;</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Step 4: Organic or Conventional Farming? Choosing Quantity or Quality?&nbsp;</strong></p>\r\n\r\n<p>In a few words, organic farming involves growing techniques and methods that seek to protect the environment, humans, and animals, through sustainable agriculture. Producers of organic farming are not allowed to use anything but biological substances for both fertilization and crop protection. As fertilization methods, they mainly use manure, compost, or special organic synthetic fertilizers. As crop protection measures, they mostly use traps and predators. This farming method requires a lot of effort and money and has significantly lower yields than conventional farming. However, the organic producer can market the products at higher prices than the conventional ones. On the other hand, conventional farming does include the utilization of agrochemicals or synthetic fertilizers, only if they are used according to GAP standards.</p>\r\n\r\n<p>The decision on choosing organic versus conventional farming is not easy. It is for sure that a new farmer cannot compete in cost. (S)he does not have the experience to control all the costs and produce an average product at an attractive price. Thus, many new farmers choose organic farming. In this way, they bet on quality. They plan to produce a small quantity of a high-quality product that can be sold at very high prices. Some of them are successful in this, while others are not. In any case, organic farming requires special handling, guidance, and some level of experience in order to be successful.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Step 5: Examining Storing Facilities and Logistics &ndash; Transportation&nbsp;</strong></p>\r\n\r\n<p>Not all products are transferred directly from the field to the market. In many cases, the crops need to be stored for some time before they are transported to the buyer&rsquo;s facility. Wholesalers are often responsible for storing the products. However, many farmers do not sell their products to wholesalers. Thus, it may be crucial to have a proper storing facility suitable for the crop you produce. Different products need different storing conditions in order to be properly maintained. In most cases, storages are buildings equipped with sensors able to control and stimulate the temperature, moisture,&nbsp;CO2, and light conditions.</p>\r\n\r\n<p>Transportation may not be a farmer&rsquo;s responsibility in many cases. However, many farmers need to transfer their products and deliver by themselves, especially to local buyers. A farmer who is responsible for transportation should be equipped with a vehicle that meets the requirements of safe shipping for the product, in order to avoid the product&rsquo;s contamination.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Step 6: What does a Farmer Need to do &ndash; Research, Research and again Research!!&nbsp;</strong></p>\r\n\r\n<p>According to the&nbsp;<a href="https://www.cfra.org/" target="_blank">Center of Rural Affairs</a>, &ldquo;in the preindustrial economy, wealth was directly tied to land ownership. The more land you own, the more you could produce and the more money you made. In the industrial economy, the people who had access to capital to build factories and&nbsp;delivery systems captured the wealth. Today we are in a knowledge-based economy.&nbsp;Wealth is now flowing to those who know something others don&rsquo;t.&rdquo;</p>\r\n\r\n<p>This is very important for a farmer. In hundreds of cases, we see a group of farmers in a particular area growing a specific crop in exactly the same way. These farmers produce exactly the same product, but in the end, only one of them can sell it at a higher price. This grower may have done extensive research on finding overseas markets or on selecting a different packaging for his/her products. In the case of herbs, this grower may distill the product and sell the essential oil, instead of selling the floral mass at a low price. This grower will most probably be a successful farmer for many more years to come, while all the other farmers (that rely on conventional wisdom) will always complain that they do not get any profit and that farming is not financially sustainable. Farmers of 2022 and beyond must do extensive research (365 days a year if possible) on new growing techniques and new markets for their existing crops, new uses of their products, new packaging, alternative sales channels, new profitable crops that may thrive in their regions, etc.&nbsp;</p>\r\n\r\n<p>In order to become a farmer, it is not required to have a degree. However, it is essential that you make constant online and offline research on crop-related and marketing issues. There are some subjects you may need to be trained about, so as to be capable of coping with any situation. For example, it is essential to deeply understand your crop. Farmers who have extended knowledge about their crops basic biology, life cycle, and growing stages are able to recognize possible physiological or pathological anomalies at their first stages. Thus, they have better chances to make quick fact-based decisions and produce quality products over the years. Furthermore, it is extremely important to be informed about the proper use of water and energy resources, what agrochemicals are available, and how to use them wisely according to the Good Agricultural Practices standards.</p>\r\n\r\n<p>In general, although online research is absolutely necessary, there are also other sources of valuable information. The members of your local Farmers Association or your local Agricultural State Authority Office must become your best friends. They can inform you of industry updates (business and scientific), for example disease outbreaks, changes in the legal framework, new markets for your products, new potential buyers, loans intended for specific crops, etc. Of course, you have to question everything, and at the end of the day, you are responsible for any decision you make. However, good information from local experts is always welcome and can sometimes lead to wise decisions.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Step 7: Examine the Local and Universal Regulations about your field of interest.</strong></p>\r\n\r\n<p>Good Agricultural Practices (also known as GAP) are a series of methods that farmers have to apply in order to protect their own health and well-being, the health and well-being of people who consume their products and finally the environment. Standards may differ from one country to another due to different regulatory and legal frameworks, but the philosophy remains the same. The rules and principles of Good Agricultural Practices altogether create a mindset of prevention, rather than troubleshooting.&nbsp;&nbsp;</p>\r\n\r\n<p><strong>The implementation of Good Agricultural Practice starts before the crop establishment. For example, if you select a field that is heavily contaminated, even if you do everything properly, your product will most probably still be dangerous for the general public.&nbsp;</strong></p>\r\n\r\n<p>The implementation of GAP will certainly lead to long term income increase for farmers and at the same time, will help us consume safer food of higher quality. Finally, environmental sustainability is enforced through the implementation of the basic principles of Good Agricultural Practices. Constant training and education are essential for farmers and all people involved in the supply chain of agricultural and non-agricultural products.</p>\r\n\r\n<p>In our modern, regenerated agricultural world, every professional farmer has to consider, apart from expanding his/her production, being alert and conforming with the sustainable agricultural principles and guidelines. Many agencies, food processing companies and retailers globally apply GAP standards for their suppliers, in order to increase the quality of their agricultural products. Producers who do not comply with those standards will gradually fall behind.&nbsp;</p>\r\n\r\n<p>Globalization and international trade give the opportunity to retailers, to easily seek for new GAP certified suppliers.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Livestock Farming</strong></p>\r\n\r\n<p>Livestock is a much more complicated field than Agriculture and requires heavier financial and personal engagement. It is crucial to know that not all commercial livestock facilities are allowed in all areas. In addition, most countries have strict rules about the distance a livestock facility should have from a populated area. You must be informed about the regulations in your area before proceeding to any activity.</p>\r\n\r\n<p>When it comes to animal farming, the field you are going to choose to install your facility is very important. Once again, in case you own a field at an area where you are allowed to keep animals, things are easy. On the contrary, in case you need to rent or lease land, you may increase your production cost significantly and may be forced to leave at some point. In any case, make sure to sign a reasonable contract with the owner of the land.</p>\r\n\r\n<p>Installation cost is greater in livestock farming. Commercial livestock involves a heavy investment in order to build a proper legitimate livestock facility and house properly the animals. Contemporary milking equipment is also expensive. There are also other costs associated with feeding and vaccinating the animals. Conforming to hygiene standards and having a sound and documented waste management plan is essential.&nbsp;</p>\r\n\r\n<p>Again, it is crucial to decide on what kind of livestock activity you are supposed to engage in. Not all animals are suitable for everyone. The animals you are going to raise will be part of your life and family. You are going to spend most of your day with them. Thus, it is crucial to make a wise decision. A good technique is to start by having 2-3 animals in your backyard (if this is legal) so as to examine whether you are suitable for this career.&nbsp;</p>\r\n\r\n<p>In case you can cope with this new lifestyle, then you may start asking yourself the questions mentioned above. Who is going to buy your products? What is the number of prospective buyers in your region for your milk, meat, or eggs? At what price do they buy other similar products? Do they pay cash or on credit? When do they buy the product? Do you need storing facilities so that you can have more time to negotiate a better price? Can you export your product (find buyers from another country)? Is there a real demand for the product you choose? Can you eventually get a profit from all these (Profit = Total Revenues &ndash; Total Costs)?&nbsp;</p>\r\n', '6800781.jpg', 0),
(3, 'How to Grow Pineapples at Home Fast n Easy', '<iframe width="640" height="360" src="https://www.youtube.com/embed/MHFvC5Rm5Pw" title="How to Grow Pineapples at Home Fast n Easy" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', '<p>Not only is growing pineapples&nbsp;ridiculously easy. Growing pineapple plants is possible just about&nbsp;anywhere in the world.</p>\r\n\r\n<p>That&#39;s because the pineapple plant is one of the few tropical fruits that are really well suited to growing in pots, and that means you can grow pineapple plants indoors.</p>\r\n\r\n<p>Having said that, to grow good pineapple fruit (and in reasonable amounts) you need to live somewhere that is warm and sunny year round. Below we will talk about how to grow pineapples outdoors to get lots of fruit.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Pineapples growing in my garden." src="https://www.tropicalpermaculture.com/images/growing-pineapples-13.jpg" style="height:420px; width:560px" /></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>I love pineapples. I love the fruit, I love the plant itself and its spectacular flower, and once you have a few pineapples... Well, they multiply like rabbits, so if you grow pineapples you eventually end up with lots of them.</p>\r\n\r\n<p>I grow lots of pineapples in my garden. If you plant them in the right spot&nbsp;<strong>they need virtually no care whatsoever</strong>.</p>\r\n\r\n<p>But let&#39;s start at the start. Here&#39;s&nbsp;<strong>all you ever wanted to know about growing pineapples&nbsp;</strong>(and then some).<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Growing pineapples: spectacular flower." src="https://www.tropicalpermaculture.com/images/growing-pineapples.jpg" style="height:408px; width:560px" /></p>\r\n\r\n<h2>All About Growing Pineapples</h2>\r\n\r\n<p><a href="https://www.tropicalpermaculture.com/growing-pineapples.html#growing-pineapples"><strong>Growing Pineapples Is Easy</strong></a><br />\r\nThis page summarises all the&nbsp;<strong>essential information about growing pineapples</strong>. It&#39;s best to read this first. It may be all you need.</p>\r\n\r\n<p><a href="https://www.tropicalpermaculture.com/pineapple-growing.html"><strong>More Pineapple Growing</strong></a><br />\r\nYour pineapple tops are planted and doing well, now you need to know how to&nbsp;<strong>look after and multiply your pineapples</strong>. Learn how to propagate using slips and suckers and find pineapple growing tips and strategies.</p>\r\n\r\n<p><a href="https://www.tropicalpermaculture.com/pineapples-permaculture.html"><strong>Pineapples And Permaculture</strong></a><br />\r\nIdeas, tips and tricks for growing&nbsp;<strong>pineapples in a permaculture garden</strong>.<br />\r\n&nbsp;</p>\r\n\r\n<h2>Growing Pineapples Is Easy</h2>\r\n\r\n<p>Growing pineapples is easy if you get the basics right.</p>\r\n\r\n<p>But first of all, here are a few pictures of pineapple plants for those who don&#39;t know what they look like:<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Growing young pineapple plants." src="https://www.tropicalpermaculture.com/images/growing-pineapples-1.jpg" style="height:420px; width:560px" /></p>\r\n\r\n<p><img alt="Growing Smooth Cayenne pineapples." src="https://www.tropicalpermaculture.com/images/growing-pineapples-2.jpg" style="height:397px; width:560px" /></p>\r\n\r\n<p><br />\r\nAbove are some young pineapple plants of two different varieties. The second one is called&nbsp;<em>Smooth Cayenne</em>, a variety that is grown commercially. I am not sure what the first one is called. It is a smaller plant, with even spikier leaves, and very sweet, small fruit.</p>\r\n\r\n<p>The next photo shows a mature pineapple plant from the top.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Mature pineapple plant" src="https://www.tropicalpermaculture.com/images/growing-pineapples-3.jpg" style="height:420px; width:560px" /></p>\r\n\r\n<p><br />\r\nThe last photo shows a fruiting plant. The fruit stem emerges from the middle of the plant and you get one pineapple per plant.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Fruiting pineapple plant" src="https://www.tropicalpermaculture.com/images/growing-pineapples-4.jpg" style="height:395px; width:560px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>A Few Things You Should Know About Pineapple Plants</h2>\r\n\r\n<ul>\r\n	<li>Pineapples don&#39;t need much water. They have very tough leaves so they don&#39;t lose much water through evaporation. They can get by on very little.</li>\r\n	<li>Pineapples need free draining soil.</li>\r\n	<li>Pineapples don&#39;t need much soil or high quality soil. They belong to the family of bromeliads, and like all bromeliads they do not have a big root system.</li>\r\n	<li>Pineapples get a lot of their water and nutrition through their leaves.</li>\r\n	<li>Pineapples like slightly acidic soils, which is what most gardens have anyway.</li>\r\n	<li>Pineapples grow in full sun, even in the hottest climates, but they also do well in dappled shade.</li>\r\n	<li>Pineapples grow very happily in pots or tubs.</li>\r\n</ul>\r\n\r\n<p>What<strong>&nbsp;pineapples do not like</strong>&nbsp;is</p>\r\n\r\n<ul>\r\n	<li>soggy, waterlogged soils,</li>\r\n	<li>having their leaves burned with concentrated fertilisers,</li>\r\n	<li>frost.</li>\r\n</ul>\r\n\r\n<h2>Planting Pineapples</h2>\r\n\r\n<p>You can get started several ways. Most people will start using the top of a shop bought pineapple. If you know someone who grows pineapples you may also be able to beg, steal or buy some &quot;suckers&quot;, &quot;pups&quot; or &quot;slips&quot;, little plantlets taken of a mature pineapple plant. (I will tell you more about those later on.)</p>\r\n\r\n<p><strong>Don&#39;t</strong>&nbsp;put the little thing in a glass of water. I don&#39;t know where people get the idea that everything needs to be started in a glass of water. Really, that&#39;s nonsense. In the case of pineapple tops it&#39;s actually better to let it cure or dry for a day or two before planting.</p>\r\n\r\n<p>If you use tops make sure you remove all the fruit flesh. The stem that is left needs to be bare, dry and clean. Shop bought pineapples may already have a bit of rot in that stem. Cut it out if you can, and if not, use another top. I&#39;ll say it again because it is so important: the end of the stem should be dry! Leave your cleaned top on the bench for a day or two if needed.</p>\r\n\r\n<p>You should also remove all the small bottom leaves. Just pull them off. The same goes for suckers. If they are very small or have dead leaves at the bottom, pull the bottom leaves off. You may find little roots growing in between them already.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Cutting the top off a shop bought pineapple." src="https://www.tropicalpermaculture.com/images/growing-pineapples-5.jpg" style="height:404px; width:560px" /></p>\r\n\r\n<p><img alt="Pulling off the bottom leaves." src="https://www.tropicalpermaculture.com/images/growing-pineapples-6.jpg" style="height:384px; width:560px" /></p>\r\n\r\n<p><br />\r\nNow just make a small hole in the ground or in a pot and stick your little pineapple in that.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Planting a pineapple top." src="https://www.tropicalpermaculture.com/images/growing-pineapples-7.jpg" style="height:384px; width:560px" /></p>\r\n\r\n<p><br />\r\nPush the soil back in and firm it around the base so the pineapple sits straight and doesn&#39;t fall over. If the soil is dry give it some water.</p>\r\n\r\n<p>And that&#39;s it. It&#39;ll grow.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Pineapple top growing." src="https://www.tropicalpermaculture.com/images/growing-pineapples-8.jpg" style="height:420px; width:560px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>How Much Space Do Pineapples Need?</h2>\r\n\r\n<p>The roots don&#39;t need much space but&nbsp;<strong>the plant itself can grow to an impressive size</strong>.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Tall pineapples" src="https://www.tropicalpermaculture.com/images/growing-pineapples-9.jpg" style="height:382px; width:560px" />My late neighbour Henry behind some of his pineapples.</p>\r\n\r\n<p><br />\r\nPineapple leaves are very spiky, so make sure you put them in a place where they can spread without becoming a nuisance.</p>\r\n\r\n<p>They are nice to grow in clumps if you have room, or as a (wide) border along paths or driveways.</p>\r\n\r\n<p>Plant them at a distance of about a foot (that&#39;s pretty close but it&#39;s what I do anyway), and expect individual healthy plants to measure up to a metre across and a metre high.</p>\r\n\r\n<h2>How Much Water Do Pineapples Need?</h2>\r\n\r\n<p>Basically, it doesn&#39;t matter.</p>\r\n\r\n<p>If you live in an area where water is scarce just give them what you can spare.&nbsp;<strong>Pineapples grow with very little water</strong>. Make sure your soil is thickly mulched to reduce evaporation and consider growing pineapples under a bit of shade.</p>\r\n\r\n<p>(This of course depends on the climate you live in. The closer to tropical or sub-tropical your area is, the more shade your pineapples can handle. If you live in a climate where you have to grow pineapples indoors during winter then they will need all the sun they can get in summer.)</p>\r\n\r\n<p>If you have lots of water, great. It&#39;s okay to always have water sitting in the rosette in the middle of the plant. Everything extra will just run off and drain away. But it is a waste and you should avoid overwatering.</p>\r\n\r\n<p>However,&nbsp;<strong>it is important that excess water can drain away quickly</strong>. Don&#39;t try growing them in a bog hole.</p>\r\n\r\n<h2>How Much And Which Plant Food?</h2>\r\n\r\n<p>Pineapples take up a lot of their nutrition through their leaves, and the first few months after planting they rely&nbsp;<strong>only</strong>&nbsp;on their leaves. You should make sure the plant food actually lands on the leaves.</p>\r\n\r\n<p>If you use artificial and concentrated fertilisers&nbsp;<strong>you will burn your pineapple</strong>, so stay away from them. You should stay away from them anyway. They generally do more harm than good.</p>\r\n\r\n<p>You can use liquid fertilisers like&nbsp;<strong>fish emulsion or seaweed extract</strong>. Make a very diluted solution and just use a watering can to put it on the pineapple plant and the surrounding soil.</p>\r\n\r\n<p>If you use something like&nbsp;<strong>pelleted chicken manure</strong>&nbsp;sprinkle it on the soil very close to the base of the pineapple plant (remember, very small root system) and make sure a bit falls into the bottom leaves.</p>\r\n\r\n<p><strong>The best way</strong>&nbsp;by far is of course a&nbsp;natural and organic solution that does not require you to buy anything.<br />\r\nMix compost in with your soil before you plant the pineapple, and then mulch thickly around it.<br />\r\nYou end up with mulch and compost sitting in the bottom leaves, and as it breaks down it feeds the plant.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Pineapples grow better with mulch." src="https://www.tropicalpermaculture.com/images/growing-pineapples-10.jpg" style="height:389px; width:560px" /></p>\r\n\r\n<p><br />\r\nThe colour of the leaves of your pineapple plant will tell you how well you are doing. If they have a reddish, purple tinge&nbsp;<strong>then your pineapple is starving</strong>&nbsp;and you should help it a bit.</p>\r\n\r\n<p>Don&#39;t panic, they are hard to kill. I rarely manage to avoid that purple tinge on them in the first few months. They grow out of it. But keep in mind that you do get bigger, tastier and juicier fruit from a well fed pineapple plant. You also get it quicker...<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Discoloured pineapple plant." src="https://www.tropicalpermaculture.com/images/growing-pineapples-11.jpg" style="height:404px; width:560px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>When Do Pineapples Fruit?</h2>\r\n\r\n<p>Um, when they&#39;re ready.</p>\r\n\r\n<p>It depends on the variety, on your climate, how well you look after them, and it depends whether you plant tops, suckers/pups or slips.</p>\r\n\r\n<p>Growing pineapples from tops of shop bought pineapples can seem to take forever.&nbsp;<strong>Tops take about 24 months to fruit</strong>&nbsp;(even longer in colder climates).</p>\r\n\r\n<p><strong>Suckers take about 18 months and slips can fruit within a year</strong>.</p>\r\n\r\n<p>Generally a pineapple will flower as soon as it is big enough, so the happier it is and the better you look after it the sooner it will flower. If you grow pineapples outside their ideal (tropical) range they take longer.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt="Beautiful, little pineapple fruit growing." src="https://www.tropicalpermaculture.com/images/growing-pineapples-12.jpg" style="height:420px; width:560px" /></p>\r\n\r\n<p><br />\r\nOnce a pineapple flowers you have to wait for&nbsp;<strong>another six month for the fruit to mature</strong>. Growing pineapples for fruit sure is a long term investment.</p>\r\n\r\n<p>The fruit is ready to pick when it starts to turn yellow. If you have four legged marauders, or if it looks like the fruit is getting sunburned, cut it now and leave it on the kitchen bench for a few days.</p>\r\n\r\n<p>Otherwise leave it on the plant until it&#39;s fully ripe and yellow. Cut it, eat it and plant the top :-).</p>\r\n\r\n<p>Once you have the first few pineapples growing it gets easier and faster.&nbsp;<strong>A mature pineapple plant produces lots of offspring</strong>&nbsp;and the suckers and slips fruit a lot quicker.</p>\r\n\r\n<p>If you have enough space you can theoretically have hundreds of them within a few years. And then it doesn&#39;t matter anymore how long it takes for any of them. There will always be some of them fruiting.</p>\r\n', '6675811.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nme` varchar(150) NOT NULL,
  `cont` varchar(150) NOT NULL,
  `em` varchar(150) NOT NULL,
  `pas` varchar(150) NOT NULL,
  `adr` text NOT NULL,
  `ph1` varchar(150) NOT NULL,
  `ph2` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`id`, `nme`, `cont`, `em`, `pas`, `adr`, `ph1`, `ph2`, `st`) VALUES
(1, 'Manu Krishna', '7894562135', 'ma@gmail.com', '123', 'house no c31 bhagath singh nagar trivandrum', '6349517.jpg', '9659973.jpg', 0),
(2, 'Ajay Kumar', '7894563215', 'ak@gmail.com', '123', 'House no 33 bhagath singh nagar nalanchira trivandrum', '1944274.jpg', '8597869.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `utyp` varchar(15) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`id`, `uid`, `pwd`, `utyp`, `st`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', 1),
(2, 'tvm@gmail.com', '123', 'office', 0),
(3, 'ma@gmail.com', '123', 'usr', 0),
(4, 'ak@gmail.com', '123', 'usr', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wet`
--

CREATE TABLE IF NOT EXISTS `wet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mth` varchar(150) NOT NULL,
  `nme` varchar(150) NOT NULL,
  `st` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wet`
--

INSERT INTO `wet` (`id`, `mth`, `nme`, `st`) VALUES
(1, '2023-12', 'Apple', 0),
(2, '2023-06', 'Orange', 0),
(3, '2023-08', 'Grappes', 0),
(4, '2023-01', 'Lemon', 0),
(5, '2023-12', 'Mango', 0),
(6, '2023-11', 'Lemon', 0),
(7, '2023-02', 'Lemon', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
