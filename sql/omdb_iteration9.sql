-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2020 at 08:33 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(6) NOT NULL,
  `native_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `english_name` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_made` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES
(1, 'local_name_1_changed', 'engish_name_1_changed', 2020),
(2, 'local_name_2', 'engish_name_2', 2003),
(3, 'local_name_3', 'engish_name_3', 1932),
(4, 'local_name_4', 'engish_name_4', 1916),
(5, 'local_name_5', 'engish_name_5', 1936),
(6, 'local_name_6', 'engish_name_6', 2000),
(7, 'local_name_7', 'engish_name_7', 1973),
(8, 'local_name_8', 'engish_name_8', 1951),
(9, 'local_name_9', 'engish_name_9', 1963),
(10, 'local_name_10', 'engish_name_10', 1920),
(11, 'local_name_11', 'engish_name_11', 1916),
(12, 'local_name_12', 'engish_name_12', 1992),
(13, 'local_name_13', 'engish_name_13', 2010),
(14, 'local_name_14', 'engish_name_14', 1968),
(15, 'local_name_15', 'engish_name_15', 1936),
(16, 'local_name_16', 'engish_name_16', 1972),
(17, 'local_name_17', 'engish_name_17', 1922),
(18, 'local_name_18', 'engish_name_18', 2019),
(19, 'local_name_19', 'engish_name_19', 1989),
(20, 'local_name_20', 'engish_name_20', 1904),
(21, 'local_name_21', 'engish_name_21', 1933),
(22, 'local_name_22', 'engish_name_22', 1915),
(23, 'local_name_23', 'engish_name_23', 1964),
(24, 'local_name_24', 'engish_name_24', 1912),
(25, 'local_name_25', 'engish_name_25', 1927),
(26, 'local_name_26', 'engish_name_26', 1958),
(27, 'local_name_27', 'engish_name_27', 1974),
(28, 'local_name_28', 'engish_name_28', 1903),
(29, 'local_name_29', 'engish_name_29', 1970),
(30, 'local_name_30', 'engish_name_30', 1939),
(31, 'local_name_31', 'engish_name_31', 1969),
(32, 'local_name_32', 'engish_name_32', 2002),
(33, 'local_name_33', 'engish_name_33', 1913),
(34, 'local_name_34', 'engish_name_34', 1966),
(35, 'local_name_35', 'engish_name_35', 1978),
(36, 'local_name_36', 'engish_name_36', 1953),
(37, 'local_name_37', 'engish_name_37', 1903),
(38, 'local_name_38', 'engish_name_38', 1984),
(39, 'local_name_39', 'engish_name_39', 0000),
(40, 'local_name_40', 'engish_name_40', 1954),
(41, 'local_name_41', 'engish_name_41', 2015),
(42, 'local_name_42', 'engish_name_42', 1935),
(43, 'local_name_43', 'engish_name_43', 1996),
(44, 'local_name_44', 'engish_name_44', 2020),
(45, 'local_name_45', 'engish_name_45', 1926),
(46, 'local_name_46', 'engish_name_46', 1973),
(47, 'local_name_47', 'engish_name_47', 2012),
(48, 'local_name_48', 'engish_name_48', 1988),
(49, 'local_name_49', 'engish_name_49', 1902),
(50, 'local_name_50', 'engish_name_50', 1930),
(51, 'local_name_51', 'engish_name_51', 1919),
(52, 'local_name_52', 'engish_name_52', 1982),
(53, 'local_name_53', 'engish_name_53', 2020),
(54, 'local_name_54', 'engish_name_54', 1973),
(55, 'local_name_55', 'engish_name_55', 1953),
(56, 'local_name_56', 'engish_name_56', 1982),
(57, 'local_name_57', 'engish_name_57', 1999),
(58, 'local_name_58', 'engish_name_58', 1966),
(59, 'local_name_59', 'engish_name_59', 1958),
(60, 'local_name_60', 'engish_name_60', 1904),
(61, 'local_name_61', 'engish_name_61', 1972),
(62, 'local_name_62', 'engish_name_62', 1983),
(63, 'local_name_63', 'engish_name_63', 1941),
(64, 'local_name_64', 'engish_name_64', 1953),
(65, 'local_name_65', 'engish_name_65', 1971),
(66, 'local_name_66', 'engish_name_66', 1999),
(67, 'local_name_67', 'engish_name_67', 1926),
(68, 'local_name_68', 'engish_name_68', 2009),
(69, 'local_name_69', 'engish_name_69', 1915),
(70, 'local_name_70', 'engish_name_70', 1960),
(71, 'local_name_71', 'engish_name_71', 1958),
(72, 'local_name_72', 'engish_name_72', 1921),
(73, 'local_name_73', 'engish_name_73', 1951),
(74, 'local_name_74', 'engish_name_74', 2016),
(75, 'local_name_75', 'engish_name_75', 1956),
(76, 'local_name_76', 'engish_name_76', 2015),
(77, 'local_name_77', 'engish_name_77', 1920),
(78, 'local_name_78', 'engish_name_78', 2016),
(79, 'local_name_79', 'engish_name_79', 1903),
(80, 'local_name_80', 'engish_name_80', 1984),
(81, 'local_name_81', 'engish_name_81', 1985),
(82, 'local_name_82', 'engish_name_82', 1928),
(83, 'local_name_83', 'engish_name_83', 1967),
(84, 'local_name_84', 'engish_name_84', 1925),
(85, 'local_name_85', 'engish_name_85', 1945),
(86, 'local_name_86', 'engish_name_86', 2012),
(87, 'local_name_87', 'engish_name_87', 1960),
(88, 'local_name_88', 'engish_name_88', 1998),
(89, 'local_name_89', 'engish_name_89', 1924),
(90, 'local_name_90', 'engish_name_90', 1942),
(91, 'local_name_91', 'engish_name_91', 1905),
(92, 'local_name_92', 'engish_name_92', 1942),
(93, 'local_name_93', 'engish_name_93', 1967),
(94, 'local_name_94', 'engish_name_94', 1972),
(95, 'local_name_95', 'engish_name_95', 2003),
(96, 'local_name_96', 'engish_name_96', 1919),
(97, 'local_name_97', 'engish_name_97', 1988),
(98, 'local_name_98', 'engish_name_98', 1926),
(99, 'local_name_99', 'engish_name_99', 1911),
(100, 'local_name_100', 'engish_name_100', 1982),
(101, 'local_name_101', 'engish_name_101', 1985),
(102, 'local_name_102', 'engish_name_102', 1974),
(103, 'local_name_103', 'engish_name_103', 1945),
(104, 'local_name_104', 'engish_name_104', 1992),
(105, 'local_name_105', 'engish_name_105', 1976),
(106, 'local_name_106', 'engish_name_106', 1903),
(107, 'local_name_107', 'engish_name_107', 1951),
(108, 'local_name_108', 'engish_name_108', 1940),
(109, 'local_name_109', 'engish_name_109', 1996),
(110, 'local_name_110', 'engish_name_110', 1959),
(111, 'local_name_111', 'engish_name_111', 1979),
(112, 'local_name_112', 'engish_name_112', 2015),
(113, 'local_name_113', 'engish_name_113', 2011),
(114, 'local_name_114', 'engish_name_114', 2016),
(115, 'local_name_115', 'engish_name_115', 1991),
(116, 'local_name_116', 'engish_name_116', 1948),
(117, 'local_name_117', 'engish_name_117', 1944),
(118, 'local_name_118', 'engish_name_118', 1909),
(119, 'local_name_119', 'engish_name_119', 1994),
(120, 'local_name_120', 'engish_name_120', 1972),
(121, 'local_name_121', 'engish_name_121', 1904),
(122, 'local_name_122', 'engish_name_122', 1928),
(123, 'local_name_123', 'engish_name_123', 1983),
(124, 'local_name_124', 'engish_name_124', 1939),
(125, 'local_name_125', 'engish_name_125', 0000),
(126, 'local_name_126', 'engish_name_126', 1904),
(127, 'local_name_127', 'engish_name_127', 1914),
(128, 'local_name_128', 'engish_name_128', 1984),
(129, 'local_name_129', 'engish_name_129', 1986),
(130, 'local_name_130', 'engish_name_130', 1956),
(131, 'local_name_131', 'engish_name_131', 1948),
(132, 'local_name_132', 'engish_name_132', 1959),
(133, 'local_name_133', 'engish_name_133', 2015),
(134, 'local_name_134', 'engish_name_134', 1937),
(135, 'local_name_135', 'engish_name_135', 1915),
(136, 'local_name_136', 'engish_name_136', 1916),
(137, 'local_name_137', 'engish_name_137', 1916),
(138, 'local_name_138', 'engish_name_138', 1963),
(139, 'local_name_139', 'engish_name_139', 1960),
(140, 'local_name_140', 'engish_name_140', 1930),
(141, 'local_name_141', 'engish_name_141', 1957),
(142, 'local_name_142', 'engish_name_142', 1946),
(143, 'local_name_143', 'engish_name_143', 2014),
(144, 'local_name_144', 'engish_name_144', 1994),
(145, 'local_name_145', 'engish_name_145', 1923),
(146, 'local_name_146', 'engish_name_146', 1971),
(147, 'local_name_147', 'engish_name_147', 2002),
(148, 'local_name_148', 'engish_name_148', 1924),
(149, 'local_name_149', 'engish_name_149', 1932),
(150, 'local_name_150', 'engish_name_150', 1910),
(151, 'local_name_151', 'engish_name_151', 1942),
(152, 'local_name_152', 'engish_name_152', 2006),
(153, 'local_name_153', 'engish_name_153', 1994),
(154, 'local_name_154', 'engish_name_154', 1933),
(155, 'local_name_155', 'engish_name_155', 1975),
(156, 'local_name_156', 'engish_name_156', 1966),
(157, 'local_name_157', 'engish_name_157', 1961),
(158, 'local_name_158', 'engish_name_158', 2014),
(159, 'local_name_159', 'engish_name_159', 1903),
(160, 'local_name_160', 'engish_name_160', 1904),
(161, 'local_name_161', 'engish_name_161', 1944),
(162, 'local_name_162', 'engish_name_162', 1999),
(163, 'local_name_163', 'engish_name_163', 1944),
(164, 'local_name_164', 'engish_name_164', 1977),
(165, 'local_name_165', 'engish_name_165', 1914),
(166, 'local_name_166', 'engish_name_166', 2011),
(167, 'local_name_167', 'engish_name_167', 2016),
(168, 'local_name_168', 'engish_name_168', 1909),
(169, 'local_name_169', 'engish_name_169', 1978),
(170, 'local_name_170', 'engish_name_170', 1932),
(171, 'local_name_171', 'engish_name_171', 1936),
(172, 'local_name_172', 'engish_name_172', 1926),
(173, 'local_name_173', 'engish_name_173', 1996),
(174, 'local_name_174', 'engish_name_174', 1967),
(175, 'local_name_175', 'engish_name_175', 1915),
(176, 'local_name_176', 'engish_name_176', 1982),
(177, 'local_name_177', 'engish_name_177', 1929),
(178, 'local_name_178', 'engish_name_178', 2013),
(179, 'local_name_179', 'engish_name_179', 1973),
(180, 'local_name_180', 'engish_name_180', 1950),
(181, 'local_name_181', 'engish_name_181', 1942),
(182, 'local_name_182', 'engish_name_182', 1902),
(183, 'local_name_183', 'engish_name_183', 2014),
(184, 'local_name_184', 'engish_name_184', 2010),
(185, 'local_name_185', 'engish_name_185', 1997),
(186, 'local_name_186', 'engish_name_186', 1904),
(187, 'local_name_187', 'engish_name_187', 1956),
(188, 'local_name_188', 'engish_name_188', 1953),
(189, 'local_name_189', 'engish_name_189', 1918),
(190, 'local_name_190', 'engish_name_190', 0000),
(191, 'local_name_191', 'engish_name_191', 2020),
(192, 'local_name_192', 'engish_name_192', 1998),
(193, 'local_name_193', 'engish_name_193', 1951),
(194, 'local_name_194', 'engish_name_194', 2002),
(195, 'local_name_195', 'engish_name_195', 1990),
(196, 'local_name_196', 'engish_name_196', 1941),
(197, 'local_name_197', 'engish_name_197', 1931),
(198, 'local_name_198', 'engish_name_198', 1999),
(199, 'local_name_199', 'engish_name_199', 2015),
(200, 'local_name_200', 'engish_name_200', 1902),
(201, 'local_name_201', 'engish_name_201', 1977),
(202, 'local_name_202', 'engish_name_202', 1981),
(203, 'local_name_203', 'engish_name_203', 1965),
(204, 'local_name_204', 'engish_name_204', 1905),
(205, 'local_name_205', 'engish_name_205', 2020),
(206, 'local_name_206', 'engish_name_206', 1936),
(207, 'local_name_207', 'engish_name_207', 1944),
(208, 'local_name_208', 'engish_name_208', 2001),
(209, 'local_name_209', 'engish_name_209', 1928),
(210, 'local_name_210', 'engish_name_210', 1973),
(211, 'local_name_211', 'engish_name_211', 1903),
(212, 'local_name_212', 'engish_name_212', 1923),
(213, 'local_name_213', 'engish_name_213', 1987),
(214, 'local_name_214', 'engish_name_214', 1988),
(215, 'local_name_215', 'engish_name_215', 1942),
(216, 'local_name_216', 'engish_name_216', 2015),
(217, 'local_name_217', 'engish_name_217', 1966),
(218, 'local_name_218', 'engish_name_218', 1996),
(219, 'local_name_219', 'engish_name_219', 1928),
(220, 'local_name_220', 'engish_name_220', 1967),
(221, 'local_name_221', 'engish_name_221', 1935),
(222, 'local_name_222', 'engish_name_222', 1921),
(223, 'local_name_223', 'engish_name_223', 2006),
(224, 'local_name_224', 'engish_name_224', 1940),
(225, 'local_name_225', 'engish_name_225', 1903),
(226, 'local_name_226', 'engish_name_226', 1915),
(227, 'local_name_227', 'engish_name_227', 1999),
(228, 'local_name_228', 'engish_name_228', 1939),
(229, 'local_name_229', 'engish_name_229', 1947),
(230, 'local_name_230', 'engish_name_230', 1950),
(231, 'local_name_231', 'engish_name_231', 1917),
(232, 'local_name_232', 'engish_name_232', 1976),
(233, 'local_name_233', 'engish_name_233', 1990),
(234, 'local_name_234', 'engish_name_234', 1961),
(235, 'local_name_235', 'engish_name_235', 1984),
(236, 'local_name_236', 'engish_name_236', 1921),
(237, 'local_name_237', 'engish_name_237', 1927),
(238, 'local_name_238', 'engish_name_238', 1943),
(239, 'local_name_239', 'engish_name_239', 1999),
(240, 'local_name_240', 'engish_name_240', 1966),
(241, 'local_name_241', 'engish_name_241', 1984),
(242, 'local_name_242', 'engish_name_242', 1971),
(243, 'local_name_243', 'engish_name_243', 2012),
(244, 'local_name_244', 'engish_name_244', 1933),
(245, 'local_name_245', 'engish_name_245', 1984),
(246, 'local_name_246', 'engish_name_246', 1913),
(247, 'local_name_247', 'engish_name_247', 1952),
(248, 'local_name_248', 'engish_name_248', 1938),
(249, 'local_name_249', 'engish_name_249', 1991),
(250, 'local_name_250', 'engish_name_250', 1941),
(251, 'local_name_251', 'engish_name_251', 1991),
(252, 'local_name_252', 'engish_name_252', 1987),
(253, 'local_name_253', 'engish_name_253', 1996),
(254, 'local_name_254', 'engish_name_254', 1958),
(255, 'local_name_255', 'engish_name_255', 1942),
(256, 'local_name_256', 'engish_name_256', 1907),
(257, 'local_name_257', 'engish_name_257', 1913),
(258, 'local_name_258', 'engish_name_258', 1945),
(259, 'local_name_259', 'engish_name_259', 1923),
(260, 'local_name_260', 'engish_name_260', 1932),
(261, 'local_name_261', 'engish_name_261', 1938),
(262, 'local_name_262', 'engish_name_262', 1935),
(263, 'local_name_263', 'engish_name_263', 1932),
(264, 'local_name_264', 'engish_name_264', 1988),
(265, 'local_name_265', 'engish_name_265', 2002),
(266, 'local_name_266', 'engish_name_266', 1995),
(267, 'local_name_267', 'engish_name_267', 1912),
(268, 'local_name_268', 'engish_name_268', 1950),
(269, 'local_name_269', 'engish_name_269', 1905),
(270, 'local_name_270', 'engish_name_270', 2017),
(271, 'local_name_271', 'engish_name_271', 1948),
(272, 'local_name_272', 'engish_name_272', 1984),
(273, 'local_name_273', 'engish_name_273', 1961),
(274, 'local_name_274', 'engish_name_274', 2013),
(275, 'local_name_275', 'engish_name_275', 2000),
(276, 'local_name_276', 'engish_name_276', 1956),
(277, 'local_name_277', 'engish_name_277', 2007),
(278, 'local_name_278', 'engish_name_278', 1950),
(279, 'local_name_279', 'engish_name_279', 1997),
(280, 'local_name_280', 'engish_name_280', 1998),
(281, 'local_name_281', 'engish_name_281', 1950),
(282, 'local_name_282', 'engish_name_282', 1977),
(283, 'local_name_283', 'engish_name_283', 1982),
(284, 'local_name_284', 'engish_name_284', 1919),
(285, 'local_name_285', 'engish_name_285', 2017),
(286, 'local_name_286', 'engish_name_286', 1998),
(287, 'local_name_287', 'engish_name_287', 1955),
(288, 'local_name_288', 'engish_name_288', 1983),
(289, 'local_name_289', 'engish_name_289', 2001),
(290, 'local_name_290', 'engish_name_290', 1993),
(291, 'local_name_291', 'engish_name_291', 1984),
(292, 'local_name_292', 'engish_name_292', 1903),
(293, 'local_name_293', 'engish_name_293', 1985),
(294, 'local_name_294', 'engish_name_294', 1960),
(295, 'local_name_295', 'engish_name_295', 1993),
(296, 'local_name_296', 'engish_name_296', 1922),
(297, 'local_name_297', 'engish_name_297', 1910),
(298, 'local_name_298', 'engish_name_298', 1919),
(299, 'local_name_299', 'engish_name_299', 1933),
(300, 'local_name_300', 'engish_name_300', 1958),
(301, 'local_name_301', 'engish_name_301', 1954),
(302, 'local_name_302', 'engish_name_302', 1918),
(303, 'local_name_303', 'engish_name_303', 2001),
(304, 'local_name_304', 'engish_name_304', 1929),
(305, 'local_name_305', 'engish_name_305', 2012),
(306, 'local_name_306', 'engish_name_306', 1956),
(307, 'local_name_307', 'engish_name_307', 1928),
(308, 'local_name_308', 'engish_name_308', 2009),
(309, 'local_name_309', 'engish_name_309', 1931),
(310, 'local_name_310', 'engish_name_310', 1910),
(311, 'local_name_311', 'engish_name_311', 1991),
(312, 'local_name_312', 'engish_name_312', 1931),
(313, 'local_name_313', 'engish_name_313', 1909),
(314, 'local_name_314', 'engish_name_314', 1912),
(315, 'local_name_315', 'engish_name_315', 1968),
(316, 'local_name_316', 'engish_name_316', 2003),
(317, 'local_name_317', 'engish_name_317', 1978),
(318, 'local_name_318', 'engish_name_318', 2018),
(319, 'local_name_319', 'engish_name_319', 1998),
(320, 'local_name_320', 'engish_name_320', 0000),
(321, 'local_name_321', 'engish_name_321', 1942),
(322, 'local_name_322', 'engish_name_322', 1920),
(323, 'local_name_323', 'engish_name_323', 1964),
(324, 'local_name_324', 'engish_name_324', 1996),
(325, 'local_name_325', 'engish_name_325', 1984),
(326, 'local_name_326', 'engish_name_326', 1949),
(327, 'local_name_327', 'engish_name_327', 1905),
(328, 'local_name_328', 'engish_name_328', 1991),
(329, 'local_name_329', 'engish_name_329', 0000),
(330, 'local_name_330', 'engish_name_330', 1927),
(331, 'local_name_331', 'engish_name_331', 1980),
(332, 'local_name_332', 'engish_name_332', 2016),
(333, 'local_name_333', 'engish_name_333', 1970),
(334, 'local_name_334', 'engish_name_334', 2014),
(335, 'local_name_335', 'engish_name_335', 1975),
(336, 'local_name_336', 'engish_name_336', 1967),
(337, 'local_name_337', 'engish_name_337', 2015),
(338, 'local_name_338', 'engish_name_338', 1981),
(339, 'local_name_339', 'engish_name_339', 1988),
(340, 'local_name_340', 'engish_name_340', 1997),
(341, 'local_name_341', 'engish_name_341', 1954),
(342, 'local_name_342', 'engish_name_342', 2013),
(343, 'local_name_343', 'engish_name_343', 1972),
(344, 'local_name_344', 'engish_name_344', 1946),
(345, 'local_name_345', 'engish_name_345', 1986),
(346, 'local_name_346', 'engish_name_346', 1955),
(347, 'local_name_347', 'engish_name_347', 1914),
(348, 'local_name_348', 'engish_name_348', 1999),
(349, 'local_name_349', 'engish_name_349', 1970),
(350, 'local_name_350', 'engish_name_350', 1977),
(351, 'local_name_351', 'engish_name_351', 1949),
(352, 'local_name_352', 'engish_name_352', 1958),
(353, 'local_name_353', 'engish_name_353', 1991),
(354, 'local_name_354', 'engish_name_354', 2003),
(355, 'local_name_355', 'engish_name_355', 1982),
(356, 'local_name_356', 'engish_name_356', 1950),
(357, 'local_name_357', 'engish_name_357', 1954),
(358, 'local_name_358', 'engish_name_358', 2004),
(359, 'local_name_359', 'engish_name_359', 1942),
(360, 'local_name_360', 'engish_name_360', 1933),
(361, 'local_name_361', 'engish_name_361', 1972),
(362, 'local_name_362', 'engish_name_362', 2009),
(363, 'local_name_363', 'engish_name_363', 1990),
(364, 'local_name_364', 'engish_name_364', 2002),
(365, 'local_name_365', 'engish_name_365', 2001),
(366, 'local_name_366', 'engish_name_366', 1965),
(367, 'local_name_367', 'engish_name_367', 1975),
(368, 'local_name_368', 'engish_name_368', 1917),
(369, 'local_name_369', 'engish_name_369', 1903),
(370, 'local_name_370', 'engish_name_370', 1933),
(371, 'local_name_371', 'engish_name_371', 1939),
(372, 'local_name_372', 'engish_name_372', 1920),
(373, 'local_name_373', 'engish_name_373', 1959),
(374, 'local_name_374', 'engish_name_374', 1967),
(375, 'local_name_375', 'engish_name_375', 1964),
(376, 'local_name_376', 'engish_name_376', 2001),
(377, 'local_name_377', 'engish_name_377', 1901),
(378, 'local_name_378', 'engish_name_378', 1974),
(379, 'local_name_379', 'engish_name_379', 1952),
(380, 'local_name_380', 'engish_name_380', 1960),
(381, 'local_name_381', 'engish_name_381', 2016),
(382, 'local_name_382', 'engish_name_382', 1935),
(383, 'local_name_383', 'engish_name_383', 1964),
(384, 'local_name_384', 'engish_name_384', 1956),
(385, 'local_name_385', 'engish_name_385', 1913),
(386, 'local_name_386', 'engish_name_386', 1970),
(387, 'local_name_387', 'engish_name_387', 1925),
(388, 'local_name_388', 'engish_name_388', 1919),
(389, 'local_name_389', 'engish_name_389', 1986),
(390, 'local_name_390', 'engish_name_390', 1924),
(391, 'local_name_391', 'engish_name_391', 2002),
(392, 'local_name_392', 'engish_name_392', 1933),
(393, 'local_name_393', 'engish_name_393', 2010),
(394, 'local_name_394', 'engish_name_394', 1936),
(395, 'local_name_395', 'engish_name_395', 1951),
(396, 'local_name_396', 'engish_name_396', 1992),
(397, 'local_name_397', 'engish_name_397', 1927),
(398, 'local_name_398', 'engish_name_398', 1938),
(399, 'local_name_399', 'engish_name_399', 1931),
(400, 'local_name_400', 'engish_name_400', 0000),
(401, 'local_name_401', 'engish_name_401', 1972),
(402, 'local_name_402', 'engish_name_402', 1901),
(403, 'local_name_403', 'engish_name_403', 1947),
(404, 'local_name_404', 'engish_name_404', 1955),
(405, 'local_name_405', 'engish_name_405', 1980),
(406, 'local_name_406', 'engish_name_406', 1923),
(407, 'local_name_407', 'engish_name_407', 1943),
(408, 'local_name_408', 'engish_name_408', 1986),
(409, 'local_name_409', 'engish_name_409', 1908),
(410, 'local_name_410', 'engish_name_410', 1981),
(411, 'local_name_411', 'engish_name_411', 1997),
(412, 'local_name_412', 'engish_name_412', 1946),
(413, 'local_name_413', 'engish_name_413', 1938),
(414, 'local_name_414', 'engish_name_414', 1933),
(415, 'local_name_415', 'engish_name_415', 2016),
(416, 'local_name_416', 'engish_name_416', 1903),
(417, 'local_name_417', 'engish_name_417', 1943),
(418, 'local_name_418', 'engish_name_418', 1902),
(419, 'local_name_419', 'engish_name_419', 1990),
(420, 'local_name_420', 'engish_name_420', 1983),
(421, 'local_name_421', 'engish_name_421', 2002),
(422, 'local_name_422', 'engish_name_422', 1901),
(423, 'local_name_423', 'engish_name_423', 1973),
(424, 'local_name_424', 'engish_name_424', 1918),
(425, 'local_name_425', 'engish_name_425', 2003),
(426, 'local_name_426', 'engish_name_426', 1908),
(427, 'local_name_427', 'engish_name_427', 0000),
(428, 'local_name_428', 'engish_name_428', 2005),
(429, 'local_name_429', 'engish_name_429', 1908),
(430, 'local_name_430', 'engish_name_430', 1932),
(431, 'local_name_431', 'engish_name_431', 1967),
(432, 'local_name_432', 'engish_name_432', 1954),
(433, 'local_name_433', 'engish_name_433', 1968),
(434, 'local_name_434', 'engish_name_434', 1988),
(435, 'local_name_435', 'engish_name_435', 1944),
(436, 'local_name_436', 'engish_name_436', 1944),
(437, 'local_name_437', 'engish_name_437', 1936),
(438, 'local_name_438', 'engish_name_438', 1971),
(439, 'local_name_439', 'engish_name_439', 1931),
(440, 'local_name_440', 'engish_name_440', 1982),
(441, 'local_name_441', 'engish_name_441', 1986),
(442, 'local_name_442', 'engish_name_442', 1910),
(443, 'local_name_443', 'engish_name_443', 1927),
(444, 'local_name_444', 'engish_name_444', 1924),
(445, 'local_name_445', 'engish_name_445', 1950),
(446, 'local_name_446', 'engish_name_446', 2017),
(447, 'local_name_447', 'engish_name_447', 1993),
(448, 'local_name_448', 'engish_name_448', 1928),
(449, 'local_name_449', 'engish_name_449', 1910),
(450, 'local_name_450', 'engish_name_450', 1945),
(451, 'local_name_451', 'engish_name_451', 1937),
(452, 'local_name_452', 'engish_name_452', 1938),
(453, 'local_name_453', 'engish_name_453', 1912),
(454, 'local_name_454', 'engish_name_454', 1980),
(455, 'local_name_455', 'engish_name_455', 1916),
(456, 'local_name_456', 'engish_name_456', 1933),
(457, 'local_name_457', 'engish_name_457', 1953),
(458, 'local_name_458', 'engish_name_458', 1913),
(459, 'local_name_459', 'engish_name_459', 1998),
(460, 'local_name_460', 'engish_name_460', 1904),
(461, 'local_name_461', 'engish_name_461', 1997),
(462, 'local_name_462', 'engish_name_462', 1921),
(463, 'local_name_463', 'engish_name_463', 1918),
(464, 'local_name_464', 'engish_name_464', 1970),
(465, 'local_name_465', 'engish_name_465', 1927),
(466, 'local_name_466', 'engish_name_466', 1964),
(467, 'local_name_467', 'engish_name_467', 1934),
(468, 'local_name_468', 'engish_name_468', 1971),
(469, 'local_name_469', 'engish_name_469', 1995),
(470, 'local_name_470', 'engish_name_470', 1935),
(471, 'local_name_471', 'engish_name_471', 2014),
(472, 'local_name_472', 'engish_name_472', 1919),
(473, 'local_name_473', 'engish_name_473', 1982),
(474, 'local_name_474', 'engish_name_474', 1927),
(475, 'local_name_475', 'engish_name_475', 2001),
(476, 'local_name_476', 'engish_name_476', 1992),
(477, 'local_name_477', 'engish_name_477', 1962),
(478, 'local_name_478', 'engish_name_478', 1991),
(479, 'local_name_479', 'engish_name_479', 1912),
(480, 'local_name_480', 'engish_name_480', 1965),
(481, 'local_name_481', 'engish_name_481', 1977),
(482, 'local_name_482', 'engish_name_482', 1948),
(483, 'local_name_483', 'engish_name_483', 1998),
(484, 'local_name_484', 'engish_name_484', 2000),
(485, 'local_name_485', 'engish_name_485', 1903),
(486, 'local_name_486', 'engish_name_486', 2017),
(487, 'local_name_487', 'engish_name_487', 2006),
(488, 'local_name_488', 'engish_name_488', 1913),
(489, 'local_name_489', 'engish_name_489', 1934),
(490, 'local_name_490', 'engish_name_490', 2012),
(491, 'local_name_491', 'engish_name_491', 1965),
(492, 'local_name_492', 'engish_name_492', 1992),
(493, 'local_name_493', 'engish_name_493', 1945),
(494, 'local_name_494', 'engish_name_494', 1978),
(495, 'local_name_495', 'engish_name_495', 1945),
(496, 'local_name_496', 'engish_name_496', 1999),
(497, 'local_name_497', 'engish_name_497', 2010),
(498, 'local_name_498', 'engish_name_498', 1984),
(499, 'local_name_499', 'engish_name_499', 1961),
(500, 'local_name_500', 'engish_name_500', 2018),
(501, 'local_name_501', 'engish_name_501', 1967),
(502, 'local_name_502', 'engish_name_502', 1949),
(503, 'local_name_503', 'engish_name_503', 1984),
(504, 'local_name_504', 'engish_name_504', 2009),
(505, 'local_name_505', 'engish_name_505', 1979),
(506, 'local_name_506', 'engish_name_506', 1904),
(507, 'local_name_507', 'engish_name_507', 1977),
(508, 'local_name_508', 'engish_name_508', 1946),
(509, 'local_name_509', 'engish_name_509', 2002),
(510, 'local_name_510', 'engish_name_510', 1994),
(511, 'local_name_511', 'engish_name_511', 1958),
(512, 'local_name_512', 'engish_name_512', 2020),
(513, 'local_name_513', 'engish_name_513', 1960),
(514, 'local_name_514', 'engish_name_514', 1963),
(515, 'local_name_515', 'engish_name_515', 1934),
(516, 'local_name_516', 'engish_name_516', 2016),
(517, 'local_name_517', 'engish_name_517', 1926),
(518, 'local_name_518', 'engish_name_518', 1945),
(519, 'local_name_519', 'engish_name_519', 2009),
(520, 'local_name_520', 'engish_name_520', 1976),
(521, 'local_name_521', 'engish_name_521', 1995),
(522, 'local_name_522', 'engish_name_522', 2004),
(523, 'local_name_523', 'engish_name_523', 1961),
(524, 'local_name_524', 'engish_name_524', 1979),
(525, 'local_name_525', 'engish_name_525', 1926),
(526, 'local_name_526', 'engish_name_526', 1944),
(527, 'local_name_527', 'engish_name_527', 1972),
(528, 'local_name_528', 'engish_name_528', 1927),
(529, 'local_name_529', 'engish_name_529', 1994),
(530, 'local_name_530', 'engish_name_530', 1931),
(531, 'local_name_531', 'engish_name_531', 1972),
(532, 'local_name_532', 'engish_name_532', 1939),
(533, 'local_name_533', 'engish_name_533', 1976),
(534, 'local_name_534', 'engish_name_534', 1989),
(535, 'local_name_535', 'engish_name_535', 1943),
(536, 'local_name_536', 'engish_name_536', 1938),
(537, 'local_name_537', 'engish_name_537', 2001),
(538, 'local_name_538', 'engish_name_538', 2008),
(539, 'local_name_539', 'engish_name_539', 1915),
(540, 'local_name_540', 'engish_name_540', 1955),
(541, 'local_name_541', 'engish_name_541', 1907),
(542, 'local_name_542', 'engish_name_542', 1907),
(543, 'local_name_543', 'engish_name_543', 1914),
(544, 'local_name_544', 'engish_name_544', 1999),
(545, 'local_name_545', 'engish_name_545', 1928),
(546, 'local_name_546', 'engish_name_546', 2010),
(547, 'local_name_547', 'engish_name_547', 1951),
(548, 'local_name_548', 'engish_name_548', 2016),
(549, 'local_name_549', 'engish_name_549', 1913),
(550, 'local_name_550', 'engish_name_550', 1992),
(551, 'local_name_551', 'engish_name_551', 1985),
(552, 'local_name_552', 'engish_name_552', 1926),
(553, 'local_name_553', 'engish_name_553', 1991),
(554, 'local_name_554', 'engish_name_554', 2010),
(555, 'local_name_555', 'engish_name_555', 1977),
(556, 'local_name_556', 'engish_name_556', 1905),
(557, 'local_name_557', 'engish_name_557', 2015),
(558, 'local_name_558', 'engish_name_558', 1971),
(559, 'local_name_559', 'engish_name_559', 1944),
(560, 'local_name_560', 'engish_name_560', 1992),
(561, 'local_name_561', 'engish_name_561', 1962),
(562, 'local_name_562', 'engish_name_562', 1958),
(563, 'local_name_563', 'engish_name_563', 1955),
(564, 'local_name_564', 'engish_name_564', 1903),
(565, 'local_name_565', 'engish_name_565', 0000),
(566, 'local_name_566', 'engish_name_566', 1972),
(567, 'local_name_567', 'engish_name_567', 2008),
(568, 'local_name_568', 'engish_name_568', 1982),
(569, 'local_name_569', 'engish_name_569', 2007),
(570, 'local_name_570', 'engish_name_570', 1965),
(571, 'local_name_571', 'engish_name_571', 1988),
(572, 'local_name_572', 'engish_name_572', 1918),
(573, 'local_name_573', 'engish_name_573', 2008),
(574, 'local_name_574', 'engish_name_574', 1978),
(575, 'local_name_575', 'engish_name_575', 1967),
(576, 'local_name_576', 'engish_name_576', 1942),
(577, 'local_name_577', 'engish_name_577', 1903),
(578, 'local_name_578', 'engish_name_578', 1931),
(579, 'local_name_579', 'engish_name_579', 1987),
(580, 'local_name_580', 'engish_name_580', 1906),
(581, 'local_name_581', 'engish_name_581', 1975),
(582, 'local_name_582', 'engish_name_582', 1951),
(583, 'local_name_583', 'engish_name_583', 1914),
(584, 'local_name_584', 'engish_name_584', 1993),
(585, 'local_name_585', 'engish_name_585', 1986),
(586, 'local_name_586', 'engish_name_586', 1965),
(587, 'local_name_587', 'engish_name_587', 1982),
(588, 'local_name_588', 'engish_name_588', 1941),
(589, 'local_name_589', 'engish_name_589', 1940),
(590, 'local_name_590', 'engish_name_590', 1959),
(591, 'local_name_591', 'engish_name_591', 1954),
(592, 'local_name_592', 'engish_name_592', 1921),
(593, 'local_name_593', 'engish_name_593', 1998),
(594, 'local_name_594', 'engish_name_594', 1904),
(595, 'local_name_595', 'engish_name_595', 1963),
(596, 'local_name_596', 'engish_name_596', 1980),
(597, 'local_name_597', 'engish_name_597', 1965),
(598, 'local_name_598', 'engish_name_598', 1945),
(599, 'local_name_599', 'engish_name_599', 1988),
(600, 'local_name_600', 'engish_name_600', 2002),
(601, 'local_name_601', 'engish_name_601', 2008),
(602, 'local_name_602', 'engish_name_602', 1987),
(603, 'local_name_603', 'engish_name_603', 1980),
(604, 'local_name_604', 'engish_name_604', 2003),
(605, 'local_name_605', 'engish_name_605', 1908),
(606, 'local_name_606', 'engish_name_606', 1930),
(607, 'local_name_607', 'engish_name_607', 1978),
(608, 'local_name_608', 'engish_name_608', 1922),
(609, 'local_name_609', 'engish_name_609', 1962),
(610, 'local_name_610', 'engish_name_610', 1958),
(611, 'local_name_611', 'engish_name_611', 1996),
(612, 'local_name_612', 'engish_name_612', 1962),
(613, 'local_name_613', 'engish_name_613', 1988),
(614, 'local_name_614', 'engish_name_614', 1930),
(615, 'local_name_615', 'engish_name_615', 2015),
(616, 'local_name_616', 'engish_name_616', 2000),
(617, 'local_name_617', 'engish_name_617', 1941),
(618, 'local_name_618', 'engish_name_618', 1963),
(619, 'local_name_619', 'engish_name_619', 1935),
(620, 'local_name_620', 'engish_name_620', 1935),
(621, 'local_name_621', 'engish_name_621', 1913),
(622, 'local_name_622', 'engish_name_622', 1915),
(623, 'local_name_623', 'engish_name_623', 1927),
(624, 'local_name_624', 'engish_name_624', 1990),
(625, 'local_name_625', 'engish_name_625', 1972),
(626, 'local_name_626', 'engish_name_626', 1995),
(627, 'local_name_627', 'engish_name_627', 1901),
(628, 'local_name_628', 'engish_name_628', 1950),
(629, 'local_name_629', 'engish_name_629', 1988),
(630, 'local_name_630', 'engish_name_630', 1921),
(631, 'local_name_631', 'engish_name_631', 1982),
(632, 'local_name_632', 'engish_name_632', 1971),
(633, 'local_name_633', 'engish_name_633', 1985),
(634, 'local_name_634', 'engish_name_634', 1932),
(635, 'local_name_635', 'engish_name_635', 1910),
(636, 'local_name_636', 'engish_name_636', 1960),
(637, 'local_name_637', 'engish_name_637', 1994),
(638, 'local_name_638', 'engish_name_638', 1983),
(639, 'local_name_639', 'engish_name_639', 1924),
(640, 'local_name_640', 'engish_name_640', 1989),
(641, 'local_name_641', 'engish_name_641', 1932),
(642, 'local_name_642', 'engish_name_642', 1931),
(643, 'local_name_643', 'engish_name_643', 1925),
(644, 'local_name_644', 'engish_name_644', 1928),
(645, 'local_name_645', 'engish_name_645', 2005),
(646, 'local_name_646', 'engish_name_646', 1937),
(647, 'local_name_647', 'engish_name_647', 1963),
(648, 'local_name_648', 'engish_name_648', 1981),
(649, 'local_name_649', 'engish_name_649', 1946),
(650, 'local_name_650', 'engish_name_650', 2006),
(651, 'local_name_651', 'engish_name_651', 2018),
(652, 'local_name_652', 'engish_name_652', 2008),
(653, 'local_name_653', 'engish_name_653', 1967),
(654, 'local_name_654', 'engish_name_654', 1912),
(655, 'local_name_655', 'engish_name_655', 1908),
(656, 'local_name_656', 'engish_name_656', 2011),
(657, 'local_name_657', 'engish_name_657', 1924),
(658, 'local_name_658', 'engish_name_658', 1987),
(659, 'local_name_659', 'engish_name_659', 2005),
(660, 'local_name_660', 'engish_name_660', 1980),
(661, 'local_name_661', 'engish_name_661', 1948),
(662, 'local_name_662', 'engish_name_662', 1989),
(663, 'local_name_663', 'engish_name_663', 1901),
(664, 'local_name_664', 'engish_name_664', 1986),
(665, 'local_name_665', 'engish_name_665', 1961),
(666, 'local_name_666', 'engish_name_666', 1956),
(667, 'local_name_667', 'engish_name_667', 2006),
(668, 'local_name_668', 'engish_name_668', 2008),
(669, 'local_name_669', 'engish_name_669', 1907),
(670, 'local_name_670', 'engish_name_670', 1939),
(671, 'local_name_671', 'engish_name_671', 1990),
(672, 'local_name_672', 'engish_name_672', 1931),
(673, 'local_name_673', 'engish_name_673', 1989),
(674, 'local_name_674', 'engish_name_674', 1994),
(675, 'local_name_675', 'engish_name_675', 1937),
(676, 'local_name_676', 'engish_name_676', 1927),
(677, 'local_name_677', 'engish_name_677', 1979),
(678, 'local_name_678', 'engish_name_678', 2006),
(679, 'local_name_679', 'engish_name_679', 2005),
(680, 'local_name_680', 'engish_name_680', 1994),
(681, 'local_name_681', 'engish_name_681', 1947),
(682, 'local_name_682', 'engish_name_682', 1960),
(683, 'local_name_683', 'engish_name_683', 1965),
(684, 'local_name_684', 'engish_name_684', 1931),
(685, 'local_name_685', 'engish_name_685', 2018),
(686, 'local_name_686', 'engish_name_686', 2003),
(687, 'local_name_687', 'engish_name_687', 2001),
(688, 'local_name_688', 'engish_name_688', 1948),
(689, 'local_name_689', 'engish_name_689', 1935),
(690, 'local_name_690', 'engish_name_690', 1929),
(691, 'local_name_691', 'engish_name_691', 1939),
(692, 'local_name_692', 'engish_name_692', 1992),
(693, 'local_name_693', 'engish_name_693', 2009),
(694, 'local_name_694', 'engish_name_694', 1953),
(695, 'local_name_695', 'engish_name_695', 1988),
(696, 'local_name_696', 'engish_name_696', 1992),
(697, 'local_name_697', 'engish_name_697', 1971),
(698, 'local_name_698', 'engish_name_698', 2006),
(699, 'local_name_699', 'engish_name_699', 1964),
(700, 'local_name_700', 'engish_name_700', 1967),
(701, 'local_name_701', 'engish_name_701', 1934),
(702, 'local_name_702', 'engish_name_702', 1946),
(703, 'local_name_703', 'engish_name_703', 1938),
(704, 'local_name_704', 'engish_name_704', 2017),
(705, 'local_name_705', 'engish_name_705', 1967),
(706, 'local_name_706', 'engish_name_706', 1985),
(707, 'local_name_707', 'engish_name_707', 2004),
(708, 'local_name_708', 'engish_name_708', 2020),
(709, 'local_name_709', 'engish_name_709', 1941),
(710, 'local_name_710', 'engish_name_710', 1980),
(711, 'local_name_711', 'engish_name_711', 1979),
(712, 'local_name_712', 'engish_name_712', 1934),
(713, 'local_name_713', 'engish_name_713', 2011),
(714, 'local_name_714', 'engish_name_714', 1987),
(715, 'local_name_715', 'engish_name_715', 1983),
(716, 'local_name_716', 'engish_name_716', 1968),
(717, 'local_name_717', 'engish_name_717', 1945),
(718, 'local_name_718', 'engish_name_718', 2013),
(719, 'local_name_719', 'engish_name_719', 1977),
(720, 'local_name_720', 'engish_name_720', 2000),
(721, 'local_name_721', 'engish_name_721', 1904),
(722, 'local_name_722', 'engish_name_722', 1928),
(723, 'local_name_723', 'engish_name_723', 1995),
(724, 'local_name_724', 'engish_name_724', 1970),
(725, 'local_name_725', 'engish_name_725', 1992),
(726, 'local_name_726', 'engish_name_726', 1979),
(727, 'local_name_727', 'engish_name_727', 1930),
(728, 'local_name_728', 'engish_name_728', 1933),
(729, 'local_name_729', 'engish_name_729', 1919),
(730, 'local_name_730', 'engish_name_730', 1904),
(731, 'local_name_731', 'engish_name_731', 1960),
(732, 'local_name_732', 'engish_name_732', 1955),
(733, 'local_name_733', 'engish_name_733', 1972),
(734, 'local_name_734', 'engish_name_734', 1964),
(735, 'local_name_735', 'engish_name_735', 1947),
(736, 'local_name_736', 'engish_name_736', 2009),
(737, 'local_name_737', 'engish_name_737', 1978),
(738, 'local_name_738', 'engish_name_738', 1927),
(739, 'local_name_739', 'engish_name_739', 1993),
(740, 'local_name_740', 'engish_name_740', 1951),
(741, 'local_name_741', 'engish_name_741', 1950),
(742, 'local_name_742', 'engish_name_742', 1981),
(743, 'local_name_743', 'engish_name_743', 1959),
(744, 'local_name_744', 'engish_name_744', 1994),
(745, 'local_name_745', 'engish_name_745', 1945),
(746, 'local_name_746', 'engish_name_746', 1905),
(747, 'local_name_747', 'engish_name_747', 1981),
(748, 'local_name_748', 'engish_name_748', 1904),
(749, 'local_name_749', 'engish_name_749', 1994),
(750, 'local_name_750', 'engish_name_750', 1949),
(751, 'local_name_751', 'engish_name_751', 1995),
(752, 'local_name_752', 'engish_name_752', 2001),
(753, 'local_name_753', 'engish_name_753', 1921),
(754, 'local_name_754', 'engish_name_754', 1908),
(755, 'local_name_755', 'engish_name_755', 1988),
(756, 'local_name_756', 'engish_name_756', 1938),
(757, 'local_name_757', 'engish_name_757', 1921),
(758, 'local_name_758', 'engish_name_758', 2004),
(759, 'local_name_759', 'engish_name_759', 1958),
(760, 'local_name_760', 'engish_name_760', 1925),
(761, 'local_name_761', 'engish_name_761', 1965),
(762, 'local_name_762', 'engish_name_762', 1918),
(763, 'local_name_763', 'engish_name_763', 1987),
(764, 'local_name_764', 'engish_name_764', 1992),
(765, 'local_name_765', 'engish_name_765', 1992),
(766, 'local_name_766', 'engish_name_766', 1997),
(767, 'local_name_767', 'engish_name_767', 1932),
(768, 'local_name_768', 'engish_name_768', 2017),
(769, 'local_name_769', 'engish_name_769', 1934),
(770, 'local_name_770', 'engish_name_770', 1909),
(771, 'local_name_771', 'engish_name_771', 1982),
(772, 'local_name_772', 'engish_name_772', 1987),
(773, 'local_name_773', 'engish_name_773', 1942),
(774, 'local_name_774', 'engish_name_774', 1934),
(775, 'local_name_775', 'engish_name_775', 0000),
(776, 'local_name_776', 'engish_name_776', 1912),
(777, 'local_name_777', 'engish_name_777', 1907),
(778, 'local_name_778', 'engish_name_778', 1922),
(779, 'local_name_779', 'engish_name_779', 1945),
(780, 'local_name_780', 'engish_name_780', 1991),
(781, 'local_name_781', 'engish_name_781', 1926),
(782, 'local_name_782', 'engish_name_782', 1926),
(783, 'local_name_783', 'engish_name_783', 1972),
(784, 'local_name_784', 'engish_name_784', 2018),
(785, 'local_name_785', 'engish_name_785', 1912),
(786, 'local_name_786', 'engish_name_786', 1982),
(787, 'local_name_787', 'engish_name_787', 1924),
(788, 'local_name_788', 'engish_name_788', 1993),
(789, 'local_name_789', 'engish_name_789', 1956),
(790, 'local_name_790', 'engish_name_790', 1999),
(791, 'local_name_791', 'engish_name_791', 1931),
(792, 'local_name_792', 'engish_name_792', 1916),
(793, 'local_name_793', 'engish_name_793', 1993),
(794, 'local_name_794', 'engish_name_794', 1993),
(795, 'local_name_795', 'engish_name_795', 1936),
(796, 'local_name_796', 'engish_name_796', 1951),
(797, 'local_name_797', 'engish_name_797', 1922),
(798, 'local_name_798', 'engish_name_798', 1954),
(799, 'local_name_799', 'engish_name_799', 1979),
(800, 'local_name_800', 'engish_name_800', 1976),
(801, 'local_name_801', 'engish_name_801', 1987),
(802, 'local_name_802', 'engish_name_802', 1949),
(803, 'local_name_803', 'engish_name_803', 2016),
(804, 'local_name_804', 'engish_name_804', 1908),
(805, 'local_name_805', 'engish_name_805', 1925),
(806, 'local_name_806', 'engish_name_806', 2004),
(807, 'local_name_807', 'engish_name_807', 1932),
(808, 'local_name_808', 'engish_name_808', 2014),
(809, 'local_name_809', 'engish_name_809', 2008),
(810, 'local_name_810', 'engish_name_810', 1916),
(811, 'local_name_811', 'engish_name_811', 1936),
(812, 'local_name_812', 'engish_name_812', 1931),
(813, 'local_name_813', 'engish_name_813', 1966),
(814, 'local_name_814', 'engish_name_814', 1967),
(815, 'local_name_815', 'engish_name_815', 1941),
(816, 'local_name_816', 'engish_name_816', 1998),
(817, 'local_name_817', 'engish_name_817', 1917),
(818, 'local_name_818', 'engish_name_818', 1913),
(819, 'local_name_819', 'engish_name_819', 1933),
(820, 'local_name_820', 'engish_name_820', 1964),
(821, 'local_name_821', 'engish_name_821', 1939),
(822, 'local_name_822', 'engish_name_822', 2012),
(823, 'local_name_823', 'engish_name_823', 1967),
(824, 'local_name_824', 'engish_name_824', 1921),
(825, 'local_name_825', 'engish_name_825', 1981),
(826, 'local_name_826', 'engish_name_826', 1975),
(827, 'local_name_827', 'engish_name_827', 1941),
(828, 'local_name_828', 'engish_name_828', 2000),
(829, 'local_name_829', 'engish_name_829', 1974),
(830, 'local_name_830', 'engish_name_830', 1953),
(831, 'local_name_831', 'engish_name_831', 2018),
(832, 'local_name_832', 'engish_name_832', 1931),
(833, 'local_name_833', 'engish_name_833', 2017),
(834, 'local_name_834', 'engish_name_834', 1970),
(835, 'local_name_835', 'engish_name_835', 1990),
(836, 'local_name_836', 'engish_name_836', 2014),
(837, 'local_name_837', 'engish_name_837', 1938),
(838, 'local_name_838', 'engish_name_838', 1934),
(839, 'local_name_839', 'engish_name_839', 1930),
(840, 'local_name_840', 'engish_name_840', 1955),
(841, 'local_name_841', 'engish_name_841', 1936),
(842, 'local_name_842', 'engish_name_842', 1943),
(843, 'local_name_843', 'engish_name_843', 1949),
(844, 'local_name_844', 'engish_name_844', 1913),
(845, 'local_name_845', 'engish_name_845', 1995),
(846, 'local_name_846', 'engish_name_846', 1996),
(847, 'local_name_847', 'engish_name_847', 1914),
(848, 'local_name_848', 'engish_name_848', 1975),
(849, 'local_name_849', 'engish_name_849', 1951),
(850, 'local_name_850', 'engish_name_850', 1969),
(851, 'local_name_851', 'engish_name_851', 1996),
(852, 'local_name_852', 'engish_name_852', 1997),
(853, 'local_name_853', 'engish_name_853', 1913),
(854, 'local_name_854', 'engish_name_854', 2017),
(855, 'local_name_855', 'engish_name_855', 1940),
(856, 'local_name_856', 'engish_name_856', 2000),
(857, 'local_name_857', 'engish_name_857', 1948),
(858, 'local_name_858', 'engish_name_858', 1982),
(859, 'local_name_859', 'engish_name_859', 1912),
(860, 'local_name_860', 'engish_name_860', 1965),
(861, 'local_name_861', 'engish_name_861', 2012),
(862, 'local_name_862', 'engish_name_862', 1993),
(863, 'local_name_863', 'engish_name_863', 1990),
(864, 'local_name_864', 'engish_name_864', 1980),
(865, 'local_name_865', 'engish_name_865', 1966),
(866, 'local_name_866', 'engish_name_866', 1979),
(867, 'local_name_867', 'engish_name_867', 2020),
(868, 'local_name_868', 'engish_name_868', 1987),
(869, 'local_name_869', 'engish_name_869', 1911),
(870, 'local_name_870', 'engish_name_870', 1989),
(871, 'local_name_871', 'engish_name_871', 1930),
(872, 'local_name_872', 'engish_name_872', 1969),
(873, 'local_name_873', 'engish_name_873', 1929),
(874, 'local_name_874', 'engish_name_874', 1979),
(875, 'local_name_875', 'engish_name_875', 1911),
(876, 'local_name_876', 'engish_name_876', 1933),
(877, 'local_name_877', 'engish_name_877', 1987),
(878, 'local_name_878', 'engish_name_878', 1967),
(879, 'local_name_879', 'engish_name_879', 1979),
(880, 'local_name_880', 'engish_name_880', 1942),
(881, 'local_name_881', 'engish_name_881', 1944),
(882, 'local_name_882', 'engish_name_882', 1983),
(883, 'local_name_883', 'engish_name_883', 1983),
(884, 'local_name_884', 'engish_name_884', 2017),
(885, 'local_name_885', 'engish_name_885', 2012),
(886, 'local_name_886', 'engish_name_886', 1910),
(887, 'local_name_887', 'engish_name_887', 1940),
(888, 'local_name_888', 'engish_name_888', 1932),
(889, 'local_name_889', 'engish_name_889', 2003),
(890, 'local_name_890', 'engish_name_890', 1949),
(891, 'local_name_891', 'engish_name_891', 1956),
(892, 'local_name_892', 'engish_name_892', 2003),
(893, 'local_name_893', 'engish_name_893', 1905),
(894, 'local_name_894', 'engish_name_894', 1982),
(895, 'local_name_895', 'engish_name_895', 1970),
(896, 'local_name_896', 'engish_name_896', 1981),
(897, 'local_name_897', 'engish_name_897', 2005),
(898, 'local_name_898', 'engish_name_898', 1927),
(899, 'local_name_899', 'engish_name_899', 1915),
(900, 'local_name_900', 'engish_name_900', 1903),
(901, 'local_name_901', 'engish_name_901', 1919),
(902, 'local_name_902', 'engish_name_902', 1969),
(903, 'local_name_903', 'engish_name_903', 1985),
(904, 'local_name_904', 'engish_name_904', 1991),
(905, 'local_name_905', 'engish_name_905', 1939),
(906, 'local_name_906', 'engish_name_906', 1906),
(907, 'local_name_907', 'engish_name_907', 1907),
(908, 'local_name_908', 'engish_name_908', 2006),
(909, 'local_name_909', 'engish_name_909', 1907),
(910, 'local_name_910', 'engish_name_910', 1926),
(911, 'local_name_911', 'engish_name_911', 2002),
(912, 'local_name_912', 'engish_name_912', 1930),
(913, 'local_name_913', 'engish_name_913', 1938),
(914, 'local_name_914', 'engish_name_914', 1980),
(915, 'local_name_915', 'engish_name_915', 1953),
(916, 'local_name_916', 'engish_name_916', 1938),
(917, 'local_name_917', 'engish_name_917', 1938),
(918, 'local_name_918', 'engish_name_918', 2008),
(919, 'local_name_919', 'engish_name_919', 1907),
(920, 'local_name_920', 'engish_name_920', 1957),
(921, 'local_name_921', 'engish_name_921', 1949),
(922, 'local_name_922', 'engish_name_922', 1915),
(923, 'local_name_923', 'engish_name_923', 2008),
(924, 'local_name_924', 'engish_name_924', 1929),
(925, 'local_name_925', 'engish_name_925', 1983),
(926, 'local_name_926', 'engish_name_926', 1923),
(927, 'local_name_927', 'engish_name_927', 1987),
(928, 'local_name_928', 'engish_name_928', 1991),
(929, 'local_name_929', 'engish_name_929', 1971),
(930, 'local_name_930', 'engish_name_930', 1973),
(931, 'local_name_931', 'engish_name_931', 1981),
(932, 'local_name_932', 'engish_name_932', 1978),
(933, 'local_name_933', 'engish_name_933', 1931),
(934, 'local_name_934', 'engish_name_934', 1999),
(935, 'local_name_935', 'engish_name_935', 1924),
(936, 'local_name_936', 'engish_name_936', 1954),
(937, 'local_name_937', 'engish_name_937', 1999),
(938, 'local_name_938', 'engish_name_938', 1933),
(939, 'local_name_939', 'engish_name_939', 2003),
(940, 'local_name_940', 'engish_name_940', 1991),
(941, 'local_name_941', 'engish_name_941', 2002),
(942, 'local_name_942', 'engish_name_942', 1984),
(943, 'local_name_943', 'engish_name_943', 1983),
(944, 'local_name_944', 'engish_name_944', 1944),
(945, 'local_name_945', 'engish_name_945', 1998),
(946, 'local_name_946', 'engish_name_946', 2011),
(947, 'local_name_947', 'engish_name_947', 1919),
(948, 'local_name_948', 'engish_name_948', 2017),
(949, 'local_name_949', 'engish_name_949', 1954),
(950, 'local_name_950', 'engish_name_950', 1943),
(951, 'local_name_951', 'engish_name_951', 1979),
(952, 'local_name_952', 'engish_name_952', 1926),
(953, 'local_name_953', 'engish_name_953', 2009),
(954, 'local_name_954', 'engish_name_954', 2005),
(955, 'local_name_955', 'engish_name_955', 1951),
(956, 'local_name_956', 'engish_name_956', 1995),
(957, 'local_name_957', 'engish_name_957', 2000),
(958, 'local_name_958', 'engish_name_958', 1958),
(959, 'local_name_959', 'engish_name_959', 1998),
(960, 'local_name_960', 'engish_name_960', 1931),
(961, 'local_name_961', 'engish_name_961', 1948),
(962, 'local_name_962', 'engish_name_962', 1922),
(963, 'local_name_963', 'engish_name_963', 1907),
(964, 'local_name_964', 'engish_name_964', 2004),
(965, 'local_name_965', 'engish_name_965', 2013),
(966, 'local_name_966', 'engish_name_966', 1904),
(967, 'local_name_967', 'engish_name_967', 1936),
(968, 'local_name_968', 'engish_name_968', 1994),
(969, 'local_name_969', 'engish_name_969', 1978),
(970, 'local_name_970', 'engish_name_970', 1946),
(971, 'local_name_971', 'engish_name_971', 1931),
(972, 'local_name_972', 'engish_name_972', 1908),
(973, 'local_name_973', 'engish_name_973', 1945),
(974, 'local_name_974', 'engish_name_974', 1967),
(975, 'local_name_975', 'engish_name_975', 2010),
(976, 'local_name_976', 'engish_name_976', 1947),
(977, 'local_name_977', 'engish_name_977', 1941),
(978, 'local_name_978', 'engish_name_978', 2010),
(979, 'local_name_979', 'engish_name_979', 1906),
(980, 'local_name_980', 'engish_name_980', 1917),
(981, 'local_name_981', 'engish_name_981', 2010),
(982, 'local_name_982', 'engish_name_982', 1987),
(983, 'local_name_983', 'engish_name_983', 2004),
(984, 'local_name_984', 'engish_name_984', 1947),
(985, 'local_name_985', 'engish_name_985', 1932),
(986, 'local_name_986', 'engish_name_986', 1978),
(987, 'local_name_987', 'engish_name_987', 1907),
(988, 'local_name_988', 'engish_name_988', 2015),
(989, 'local_name_989', 'engish_name_989', 1923),
(990, 'local_name_990', 'engish_name_990', 1992),
(991, 'local_name_991', 'engish_name_991', 1935),
(992, 'local_name_992', 'engish_name_992', 1962),
(993, 'local_name_993', 'engish_name_993', 1926),
(994, 'local_name_994', 'engish_name_994', 1999),
(995, 'local_name_995', 'engish_name_995', 1967),
(996, 'local_name_996', 'engish_name_996', 1951),
(997, 'local_name_997', 'engish_name_997', 1942),
(998, 'local_name_998', 'engish_name_998', 1921),
(999, 'local_name_999', 'engish_name_999', 1901),
(1000, 'local_name_1000', 'engish_name_1000', 1945),
(1001, 'local_name_1001', 'engish_name_1001', 1989),
(1002, 'local_name_1002', 'engish_name_1002', 2033),
(1003, 'Aladdin', 'Aladdin', 1992),
(1004, 'City of God', 'City of God', 2002),
(1005, 'Der Untergang', 'Downfall', 2008),
(1006, 'Die Welle', 'The Wave', 2008),
(1007, 'Django Unchained', 'Django Unchained', 2012),
(1008, 'Gladiator', 'Gladiator', 2000),
(1009, 'Gone Girl', 'Gone Girl', 2014),
(1010, 'Good Will Hunting', 'Good Will Hunting', 1997),
(1011, 'Inception', 'Inception', 2010),
(1012, 'Inglourious Basterds', 'Inglourious Basterds', 2009),
(1013, 'Matrix', 'Matrix', 1999),
(1014, 'Saving Private Ryan', 'Saving Private Ryan', 1998),
(1015, 'The Grand Budapest Hotel', 'The Grand Budapest Hotel', 2014),
(1016, 'The Terminator', 'The Terminator', 1984),
(1017, 'ハウルの動く城', 'Howl\'s Moving Castle', 2004),
(1018, 'Pinocchio', 'Pinocchio', 1940),
(1019, 'Bloodsport', 'Bloodsport', 1988);

-- --------------------------------------------------------

--
-- Table structure for table `movie_anagrams`
--

CREATE TABLE `movie_anagrams` (
  `movie_id` int(6) NOT NULL COMMENT 'movie_anagrams is a WEAK entity. movie_id is both PK and FK',
  `anagram` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'anagram of native name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_data`
--

CREATE TABLE `movie_data` (
  `movie_id` int(6) NOT NULL COMMENT 'This is both PK and FK; movie_data is a WEAK entity',
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `genre` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plot` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_data`
--

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `plot`) VALUES
(1003, 'English', 'USA', 'Adventure', 'A kindhearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make their deepest wishes come true.'),
(1008, 'English', 'USA', 'Action', 'Maximus is a powerful Roman general, loved by the people and the aging Emperor, Marcus Aurelius. Before his death, the Emperor chooses Maximus to be his heir over his own son, Commodus, and a power struggle leaves Maximus and his family condemned to death. The powerful general is unable to save his family, and his loss of will allows him to get captured and put into the Gladiator games until he dies. The only desire that fuels him now is the chance to rise to the top so that he will be able to look into the eyes of the man who will feel his revenge.'),
(1011, 'English', 'USA', 'Sci-Fi', 'Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb\'s rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible, inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea, but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming.'),
(1014, 'English', 'USA', 'Drama', 'Opening with the Allied invasion of Normandy on 6 June 1944, members of the 2nd Ranger Battalion under Cpt. Miller fight ashore to secure a beachhead. Amidst the fighting, two brothers are killed in action. Earlier in New Guinea, a third brother is KIA. Their mother, Mrs. Ryan, is to receive all three of the grave telegrams on the same day. The United States Army Chief of Staff, George C. Marshall, is given an opportunity to alleviate some of her grief when he learns of a fourth brother, Private James Ryan, and decides to send out 8 men (Cpt. Miller and select members from 2nd Rangers) to find him and bring him back home to his mother...'),
(1017, 'Japanese', 'Japan', 'Adventure', 'A love story between an 18-year-old girl named Sophie, cursed by a witch into an old woman\'s body, and a magician named Howl. Under the curse, Sophie sets out to seek her fortune, which takes her to Howl\'s strange moving castle. In the castle, Sophie meets Howl\'s fire demon, named Karishifâ. Seeing that she is under a curse, the demon makes a deal with Sophie--if she breaks the contract he is under with Howl, then Karushifâ will lift the curse that Sophie is under, and she will return to her 18-year-old shape.'),
(1018, 'English', 'USA', 'Comedy', 'Toymaker Gepetto creates a wooden puppet toy named Pinocchio and wishes on a star that he would be a real boy. A kindly Blue Fairy appears and grants his wish thus making Pinocchio come alive. Pinocchio learns that he must prove himself worthy in order to make his father\'s wish come true. With help from tiny Jiminy Cricket, Pinocchio comes across challenges of temptation such as a sly fox and his cat sidekick and a greedy puppeteer. His final challenge comes when he figures out his father goes missing by getting swallowed by the massive whale Monstro and must go find and save him.'),
(1019, 'English', 'USA', 'Action', 'When a martial arts-trained soldier learns of an underground fight-to-the-death tournament through the last words of his dying sensei, he must travel to Hong Kong while avoiding capture from his military superiors so he can fight his way to the top in the deadly competition to honor the legacy of his sensei.');

-- --------------------------------------------------------

--
-- Table structure for table `movie_keywords`
--

CREATE TABLE `movie_keywords` (
  `movie_id` int(6) NOT NULL,
  `keyword` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_keywords`
--

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES
(1003, 'arab'),
(1003, 'cave'),
(1003, 'genie'),
(1003, 'princess'),
(1008, 'battlefield'),
(1008, 'combat'),
(1008, 'gladiator'),
(1008, 'roman empire'),
(1008, 'slavery'),
(1011, 'ambiguous ending'),
(1011, 'dream'),
(1011, 'mindbender'),
(1011, 'subconscious'),
(1011, 'thriller'),
(1014, 'd day'),
(1014, 'infantry'),
(1014, 'military'),
(1014, 'nazi'),
(1014, 'rescue mission'),
(1014, 'world war two'),
(1017, 'anime'),
(1017, 'castle'),
(1017, 'curse'),
(1017, 'demon'),
(1017, 'steampunk'),
(1017, 'studio ghibli'),
(1018, 'anthropomorphism'),
(1018, 'fairy'),
(1018, 'italy'),
(1018, 'lie'),
(1018, 'puppet'),
(1019, 'hong kong'),
(1019, 'kumite'),
(1019, 'martial arts'),
(1019, 'tournament'),
(1019, 'training');

-- --------------------------------------------------------

--
-- Table structure for table `movie_media`
--

CREATE TABLE `movie_media` (
  `movie_media_id` int(6) NOT NULL,
  `m_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_link_type` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'video, poster, photo are three possible values.',
  `movie_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_media`
--

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES
(1, 'https://m.media-amazon.com/images/M/MV5BMTUzMjg3Njc4MV5BMl5BanBnXkFtZTcwNjE0ODAyNw@@._V1_SY1000_CR0,0,1675,1000_AL_.jpg', 'photo', 1003),
(2, 'https://m.media-amazon.com/images/M/MV5BY2Q2NDI1MjUtM2Q5ZS00MTFlLWJiYWEtNTZmNjQ3OGJkZDgxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_.jpg', 'poster', 1003),
(3, 'https://m.media-amazon.com/images/M/MV5BNTA1YzE1MmYtMzI1ZC00YTcwLTliZGYtMzIyODZlMWQxYWI4XkEyXkFqcGdeQXVyODc0OTEyNDU@._V1_SY1000_CR0,0,647,1000_AL_.jpg', 'poster', 1003),
(4, 'https://m.media-amazon.com/images/M/MV5BNTQ3NTY2MjAyOV5BMl5BanBnXkFtZTcwODE0ODAyNw@@._V1_SY1000_CR0,0,1688,1000_AL_.jpg', 'photo', 1003),
(5, 'https://www.youtube.com/watch?v=8HrmBXgiwDU', 'video', 1003),
(6, 'https://m.media-amazon.com/images/M/MV5BNmM4YTFmMmItMGE3Yy00MmRkLTlmZGEtMzZlOTQzYjk3MzA2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 'poster', 1017),
(7, 'https://m.media-amazon.com/images/M/MV5BMTg2NDE1NDI2OV5BMl5BanBnXkFtZTcwOTk1NzEyNw@@._V1_SX1777_CR0,0,1777,961_AL_.jpg', 'photo', 1017),
(8, 'https://www.youtube.com/watch?v=iwROgK94zcM', 'video', 1017),
(9, 'https://m.media-amazon.com/images/M/MV5BMTU4Mzk3ODIyOF5BMl5BanBnXkFtZTgwODgyNzk2NjE@._V1_SY1000_CR0,0,654,1000_AL_.jpg', 'poster', 1018),
(10, 'https://m.media-amazon.com/images/M/MV5BMjEwNTk2NDg1N15BMl5BanBnXkFtZTgwOTgyNzk2NjE@._V1_SY1000_CR0,0,676,1000_AL_.jpg', 'poster', 1018),
(11, 'https://m.media-amazon.com/images/M/MV5BOTZmNTM2MWEtNmU1MC00NWMwLTg1N2MtOTUwODJhNDllOTMyXkEyXkFqcGdeQXVyNDE5MTU2MDE@._V1_.jpg', 'photo', 1018),
(12, 'https://m.media-amazon.com/images/M/MV5BOGQ3MzA0N2ItNDk2OC00NmQ4LThkZjEtM2U4NWNiZTEwMTZjXkEyXkFqcGdeQXVyNDE5MTU2MDE@._V1_.jpg', 'photo', 1018),
(13, 'https://www.youtube.com/watch?v=hrXOxlFGFRw', 'video', 1018),
(14, 'https://m.media-amazon.com/images/M/MV5BZmVhYjE2OTgtMjVlOC00OGM2LTk2ZjMtNzRjNDA2NDM1Mjg1XkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_.jpg', 'poster', 1019),
(15, 'https://m.media-amazon.com/images/M/MV5BNTAxYzA2ODctMjAzYS00YTcyLWIwZGMtZDkzMTFjMWE5NTBmXkEyXkFqcGdeQXVyNTE1OTQ3OTc@._V1_SY1000_CR0,0,1503,1000_AL_.jpg', 'poster', 1019),
(16, 'https://m.media-amazon.com/images/M/MV5BMjA0MDc4MjM2M15BMl5BanBnXkFtZTcwMDgxNDcyNA@@._V1_.jpg', 'photo', 1019),
(17, 'https://m.media-amazon.com/images/M/MV5BMTU5OTQ4MzQ2MF5BMl5BanBnXkFtZTcwMzgxNDcyNA@@._V1_.jpg', 'photo', 1019),
(18, 'https://www.youtube.com/watch?v=WaT9dYalyU0', 'video', 1019),
(19, 'https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SY1000_CR0,0,675,1000_AL_.jpg', 'poster', 1008),
(20, 'https://m.media-amazon.com/images/M/MV5BMTA0MDEwNDM0MTVeQTJeQWpwZ15BbWU3MDQ0NDY3MTQ@._V1_SY1000_CR0,0,1504,1000_AL_.jpg', 'photo', 1008),
(21, 'https://m.media-amazon.com/images/M/MV5BMjExOTEyNDgxOV5BMl5BanBnXkFtZTcwMDU0NjcxNA@@._V1_SY1000_CR0,0,1508,1000_AL_.jpg', 'photo', 1008),
(22, 'https://www.youtube.com/watch?v=e3PjQ1yRw4w', 'video', 1008),
(23, 'https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SY1000_CR0,0,679,1000_AL_.jpg', 'poster', 1014),
(24, 'https://m.media-amazon.com/images/M/MV5BZTAwMzAxNDEtM2FiNC00ODY2LTk1ZTctOTkyNmJlMmE0Y2IzXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SY1000_CR0,0,682,1000_AL_.jpg', 'poster', 1014),
(25, 'https://m.media-amazon.com/images/M/MV5BN2ZkY2E2ODYtZTY1MC00NTAzLWJhNDUtNzAyNTcyZTcwZmE3XkEyXkFqcGdeQXVyMDc2NTEzMw@@._V1_SY1000_CR0,0,1552,1000_AL_.jpg', 'photo', 1014),
(26, 'https://m.media-amazon.com/images/M/MV5BMTM5MzI1MDE5Nl5BMl5BanBnXkFtZTcwNDM3NzgwMw@@._V1_SY1000_CR0,0,1493,1000_AL_.jpg', 'photo', 1014),
(27, 'https://www.youtube.com/watch?v=zwhP5b4tD6g', 'video', 1014),
(28, 'https://m.media-amazon.com/images/M/MV5BMTk4NzE0OTQxMV5BMl5BanBnXkFtZTcwOTE0MjYwMw@@._V1_.jpg', 'poster', 1011),
(29, 'https://m.media-amazon.com/images/M/MV5BMTA0YWIyMjAtMTFhYi00ZWQ5LWE4ZjAtM2QxNjA4YTM3YmIzXkEyXkFqcGdeQXVyOTY2MDM3MjM@._V1_SX1777_CR0,0,1777,728_AL_.jpg', 'photo', 1011),
(30, 'https://m.media-amazon.com/images/M/MV5BNmY1MmUxYmQtOTkyMC00MTAyLTgyMTktYjhmMTQzNTQ1NDA1XkEyXkFqcGdeQXVyOTY2MDM3MjM@._V1_SX1777_CR0,0,1777,728_AL_.jpg', 'photo', 1011),
(31, 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'video', 1011);

-- --------------------------------------------------------

--
-- Table structure for table `movie_numbers`
--

CREATE TABLE `movie_numbers` (
  `movie_id` int(6) NOT NULL COMMENT 'This is both PK and FK; movie_numbers is a WEAK entity',
  `running_time` int(3) DEFAULT NULL COMMENT 'Running Time in Minutes',
  `length` int(2) DEFAULT NULL COMMENT 'length (depends on the native_name)',
  `strength` int(2) DEFAULT NULL COMMENT 'strengh (depends on the native_name)',
  `weight` int(2) DEFAULT NULL COMMENT 'weight (depends on native name)',
  `budget` int(8) DEFAULT NULL COMMENT 'budget in local (native) currency',
  `box_office` int(8) DEFAULT NULL COMMENT 'box office numbers in local (native) currency'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_people`
--

CREATE TABLE `movie_people` (
  `movie_id` int(6) NOT NULL,
  `people_id` int(6) NOT NULL,
  `role` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'director, producer, music director, lead actor, lead actress, supporting actor, supporting actress are possible values'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_people`
--

INSERT INTO `movie_people` (`movie_id`, `people_id`, `role`) VALUES
(1002, 4, 'supporting actor'),
(1003, 1, 'lead actor'),
(1003, 2, 'lead actress'),
(1003, 3, 'director'),
(1003, 3, 'producer'),
(1003, 4, 'director'),
(1003, 4, 'producer'),
(1003, 5, 'music director'),
(1003, 8, 'supporting actor'),
(1003, 10, 'supporting actor'),
(1003, 11, 'supporting actress'),
(1003, 12, 'supporting actress'),
(1008, 45, 'lead actor'),
(1008, 46, 'supporting actor'),
(1008, 47, 'lead actress'),
(1008, 48, 'supporting actor'),
(1008, 49, 'supporting actor'),
(1008, 50, 'supporting actor'),
(1008, 51, 'supporting actor'),
(1008, 52, 'supporting actor'),
(1008, 53, 'supporting actor'),
(1008, 54, 'supporting actor'),
(1008, 55, 'supporting actor'),
(1008, 56, 'supporting actor'),
(1008, 57, 'supporting actor'),
(1008, 58, 'supporting actor'),
(1008, 59, 'supporting actor'),
(1008, 60, 'supporting actor'),
(1008, 61, 'supporting actor'),
(1008, 62, 'supporting actress'),
(1008, 63, 'supporting actor'),
(1008, 101, 'director'),
(1011, 80, 'lead actor'),
(1011, 81, 'supporting actor'),
(1011, 82, 'lead actress'),
(1011, 83, 'supporting actor'),
(1011, 84, 'supporting actor'),
(1011, 85, 'supporting actor'),
(1011, 86, 'supporting actor'),
(1011, 87, 'supporting actor'),
(1011, 88, 'supporting actress'),
(1011, 89, 'supporting actor'),
(1011, 90, 'supporting actor'),
(1011, 91, 'supporting actor'),
(1011, 92, 'supporting actress'),
(1014, 64, 'lead actor'),
(1014, 65, 'supporting actor'),
(1014, 66, 'supporting actor'),
(1014, 67, 'supporting actor'),
(1014, 68, 'supporting actor'),
(1014, 69, 'supporting actor'),
(1014, 70, 'supporting actor'),
(1014, 71, 'supporting actor'),
(1014, 72, 'supporting actor'),
(1014, 73, 'supporting actor'),
(1014, 74, 'supporting actor'),
(1014, 75, 'supporting actor'),
(1014, 76, 'supporting actor'),
(1014, 77, 'supporting actor'),
(1014, 78, 'supporting actor'),
(1014, 79, 'supporting actress'),
(1017, 4, 'lead actor'),
(1017, 16, 'lead actress'),
(1017, 17, 'lead actor'),
(1017, 18, 'supporting actor'),
(1017, 19, 'supporting actor'),
(1017, 20, 'supporting actor'),
(1017, 21, 'supporting actor'),
(1017, 22, 'supporting actor'),
(1017, 23, 'supporting actor'),
(1017, 24, 'supporting actor'),
(1017, 25, 'supporting actress'),
(1018, 26, 'lead actor'),
(1018, 27, 'supporting actor'),
(1018, 28, 'supporting actor'),
(1018, 29, 'supporting actor'),
(1018, 30, 'supporting actor'),
(1018, 31, 'lead actress'),
(1018, 32, 'supporting actor'),
(1018, 33, 'supporting actor'),
(1018, 34, 'supporting actor'),
(1018, 93, 'director'),
(1018, 94, 'director'),
(1018, 95, 'director'),
(1018, 96, 'director'),
(1018, 97, 'director'),
(1018, 98, 'director'),
(1018, 99, 'producer'),
(1019, 35, 'lead actor'),
(1019, 36, 'supporting actor'),
(1019, 37, 'lead actress'),
(1019, 38, 'supporting actor'),
(1019, 39, 'supporting actor'),
(1019, 40, 'supporting actor'),
(1019, 41, 'supporting actor'),
(1019, 42, 'supporting actor'),
(1019, 43, 'supporting actor'),
(1019, 44, 'supporting actress'),
(1019, 100, 'director');

-- --------------------------------------------------------

--
-- Table structure for table `movie_quotes`
--

CREATE TABLE `movie_quotes` (
  `movie_id` int(6) NOT NULL,
  `movie_quote_id` int(6) NOT NULL,
  `movie_quote_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_song`
--

CREATE TABLE `movie_song` (
  `movie_id` int(6) NOT NULL,
  `song_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='This tables reflects an associative entity (movie,song)';

--
-- Dumping data for table `movie_song`
--

INSERT INTO `movie_song` (`movie_id`, `song_id`) VALUES
(1003, 1),
(1003, 2),
(1003, 3),
(1003, 4),
(1003, 5),
(1017, 6);

-- --------------------------------------------------------

--
-- Table structure for table `movie_trivia`
--

CREATE TABLE `movie_trivia` (
  `movie_id` int(6) NOT NULL,
  `trivia` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movie_trivia`
--

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES
(1017, 'Although the film was not released in the United Kingdom until 23 September 2005, director Hayao Miyazaki personally traveled to England in the summer of 2004 to give a private showing of the film to Diana Wynne Jones.'),
(1017, 'Sophie\'s city was modeled after Colmar, France.');

-- --------------------------------------------------------

--
-- Stand-in structure for view `movie_view`
-- (See below for the actual view)
--
CREATE TABLE `movie_view` (
`movie_id` int(6)
,`native_name` varchar(180)
,`country` varchar(20)
,`language` varchar(10)
,`running_time` int(3)
,`keywords` mediumtext
,`trivia` mediumtext
,`media` mediumtext
,`songs` mediumtext
,`anagrams` mediumtext
);

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(6) NOT NULL,
  `first_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'We will store the images locally on the server; This field refers to the image file name',
  `screen_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Many people in the movie industry are known by short names'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`, `screen_name`) VALUES
(1, 'Scott', '', 'Weinger', 'Male', 'scott_weinger.jpg', ''),
(2, 'Linda', '', 'Larkin', 'Female', 'linda_larkin.jpg', ''),
(3, 'Ronald', 'Francis', 'Clements', 'Male', 'ron_clements.jpg', ''),
(4, 'John', 'Edward', 'Musker', 'Male', 'john_musker.jpg', ''),
(5, 'Alan', 'Irwin', 'Menken', 'Male', 'alan_menken.jpg', ''),
(6, 'Bruce', '', 'Adler', 'Male', 'bruce_adler.jpg', ''),
(7, 'Bradley', 'Caleb', 'Kane', 'Male', 'brad_kane.jpg', ''),
(8, 'Robin', 'McLauren', 'Williams', 'Male', 'robin_williams.jpg', ''),
(9, 'Lea', 'Imutan', 'Salonga', 'Female', 'lea_salonga.jpg', ''),
(10, 'Jonathan', '', 'Freeman', 'Male', 'jonathan_freeman.jpg', ''),
(11, 'Jennifer', '', 'Darling', 'Female', 'jennifer_darling.jpg', ''),
(12, 'Debi', '', 'Derryberry', 'Female', 'debi_derryberry.jpg', ''),
(13, 'Howard', 'Elliott', 'Ashman', 'Male', 'howard_ashman.jpg', ''),
(14, 'Timothy', 'Miles Bindon', 'Rice', 'Male', 'tim_rice.jpg', ''),
(15, 'Yumi', '', 'Kimura', 'Female', 'yumi_kimura.jpg', ''),
(16, 'Chieko', '', 'Baisho', 'Female', 'chieko_baisho.jpg', ''),
(17, 'Takuya', '', 'Kimura', 'Male', 'takuya_kimura.jpg', 'Kimutaku'),
(18, 'Akihiro', '', 'Maruyama', 'Male', 'akihiro_maruyama.jpg', 'Akihiro Miwa'),
(19, 'Tatsuya', '', 'Gashûin', 'Male', 'tatsuya_gashuin.jpg', ''),
(20, 'Ryûnosuke', '', 'Kamiki', 'Male', 'ryunosuke_kamiki.jpg', ''),
(21, 'Mitsunori', '', 'Isaki', 'Male', 'mitsunori_isaki.png', ''),
(22, 'Yô', '', 'Ôizumi', 'Male', 'yo_oizumi.jpg', ''),
(23, 'Akio', '', 'Ôtsuka', 'Male', 'akio_otsuka.jpg', ''),
(24, 'Daijirô', '', 'Harada', 'Male', 'daijiro_harada.jpg', ''),
(25, 'Haruko', '', 'Katô', 'Female', 'haruko_kato.jpg', ''),
(26, 'Richard', 'Percy', 'Jones', 'Male', 'dick_jones.jpg', 'Dick Jones'),
(27, 'Clifton', 'Avon', 'Edwards', 'Male', 'clifton_edwards.jpg', 'Ukulele Ike'),
(28, 'Christian', '', 'Rub', 'Male', 'christian_rub.jpg', ''),
(29, 'Walter', 'Leland', 'Catlett', 'Male', 'walter_catlett.jpg', ''),
(30, 'Charles', '', 'Judels', 'Male', 'charles_judels.jpg', ''),
(31, 'Evelyn', '', 'Venable', 'Female', 'evelyn_venable.jpg', ''),
(32, 'Frankie', '', 'Darro', 'Male', 'frankie_darro.jpg', ''),
(33, 'Stuart', '', 'Buchanan', 'Male', 'stuart_buchanan.jpg', ''),
(34, 'Thurl', 'Arthur', 'Ravenscroft', 'Male', 'thurl_ravenscroft.jpg', ''),
(35, 'Jean-Claude', 'Camille François van', 'Varenberg', 'Male', 'jean-claude_van_damme.jpg', 'Jean-Claude van Damme'),
(36, 'Donald', 'Richard', 'Gibb', 'Male', 'donald_gibb.jpg', ''),
(37, 'Leah', '', 'Ayres', 'Female', 'leah_ayres.jpg', ''),
(38, 'Norman', '', 'Burton', 'Male', 'norman_burton.jpg', ''),
(39, 'Forest', 'Steven', 'Whitaker', 'Male', 'forest_whitaker.jpg', ''),
(40, 'Roy', '', 'Chiao', 'Male', 'roy_chiao.jpg', ''),
(41, 'Philip', '', 'Chan', 'Male', 'philip_chan.jpg', ''),
(42, 'Pierre', '', 'Rafini', 'Male', '', ''),
(43, 'Yang', '', 'Sze', 'Male', 'yang_sze.jpg', 'Bolo Yeung'),
(44, 'Shun-Yin', '', 'Leung', 'Female', 'lily_leung.jpg', ''),
(45, 'Russell', 'Ira', 'Crowe', 'Male', 'russell_crowe.jpg', ''),
(46, 'Joaquin', 'Rafael', 'Phoenix', 'Male', 'joaquin_phoenix.jpg', ''),
(47, 'Connie', 'Inge-Lise', 'Nielsen', 'Female', 'connie_nielsen.jpg', ''),
(48, 'Robert', 'Oliver', 'Reed', 'Male', 'oliver_reed.jpg', ''),
(49, 'Richard', 'John', 'Harris', 'Male', 'richard_harris.jpg', ''),
(50, 'Derek', 'George', 'Jacobi', 'Male', 'derek_jacobi.jpg', ''),
(51, 'Djimon', 'Gaston', 'Hounsou', 'Male', 'djimon_hounsou.jpg', ''),
(52, 'David', '', 'Schofield', 'Male', 'david_schofield.jpg', ''),
(53, 'John', 'Morley', 'Shrapnel', 'Male', 'john_shrapnel.jpg', ''),
(54, 'Thomas', 'Clifford', 'Arana', 'Male', 'tomas_arana.jpg', 'Tomas Arana'),
(55, 'Ralf', 'Rudolf', 'Moeller', 'Male', 'ralf_moeller.jpg', ''),
(56, 'Spencer', 'Treat', 'Clark', 'Male', 'spencer_clark.jpg', ''),
(57, 'David', 'Edward Leslie', 'Hemmings', 'Male', 'david_hemmings.jpg', ''),
(58, 'Tommy', '', 'Flanagan', 'Male', 'tommy_flanagan.jpg', ''),
(59, 'Sven-Ole', '', 'Thorsen', 'Male', 'sven-ole_thorsen.jpg', ''),
(60, 'Omid', '', 'Djalili', 'Male', 'omid_djalili.jpg', ''),
(61, 'Nicholas', '', 'McGaughey', 'Male', 'nicholas_mcgaughey.jpg', ''),
(62, 'Giannina', '', 'Facio', 'Female', 'giannina_facio.jpg', ''),
(63, 'Giorgio', '', 'Cantarini', 'Male', 'giorgio_cantarini.jpg', ''),
(64, 'Thomas', 'Jeffrey', 'Hanks', 'Male', 'tom_hanks.jpg', 'Tom Hanks'),
(65, 'Thomas', 'Edward', 'Sizemore', 'Male', 'tom_sizemore.jpg', ''),
(66, 'Edward', 'Fitzgerald', 'Burns', 'Male', 'edward_burns.jpg', ''),
(67, 'Barry', 'Robert', 'Pepper', 'Male', 'barry_pepper.jpg', ''),
(68, 'Adam', 'Charles', 'Goldberg', 'Male', 'adam_goldberg.jpg', ''),
(69, 'Mark', '', 'Sinclair', 'Male', 'mark_sinclair.jpg', 'Vin Diesel'),
(70, 'Antonino', 'Giovanni', 'Ribisi', 'Male', 'antonino_ribisi.jpg', ''),
(71, 'Jeremy', '', 'Davies', 'Male', 'jeremy_davies.jpg', ''),
(72, 'Matthew', 'Paige', 'Damon', 'Male', 'matt_damon.jpg', ''),
(73, 'Edward', 'Bridge', 'Danson', 'Male', 'ted_danson.jpg', 'Ted Danson'),
(74, 'Paul', 'Edward Valentine', 'Giamatti', 'Male', 'paul_giamatti.jpg', ''),
(75, 'Dennis', '', 'Farina', 'Male', 'dennis_farina.jpg', ''),
(76, 'Joerg', '', 'Stadler', 'Male', 'joerg_stadler.jpg', ''),
(77, 'Maximilian', 'Carlo', 'Martini', 'Male', 'max_martini.jpg', ''),
(78, 'Dylan', '', 'Bruno', 'Male', 'dylan_bruno.jpg', ''),
(79, 'Anna', '', 'Maguire', 'Female', 'anna_maguire.jpg', ''),
(80, 'Leonardo', 'Wilhelm', 'DiCaprio', 'Male', 'leonardo_dicaprio.png', ''),
(81, 'Joseph', 'Leonard', 'Gordon-Levitt', 'Male', 'joseph_gordon-levitt.jpg', ''),
(82, 'Ellen', 'Grace', 'Philpotts-Page', 'Female', 'ellen_page.jpg', ''),
(83, 'Edward', 'Thomas', 'Hardy', 'Male', 'tom_hardy.jpg', 'Tom Hardy'),
(84, 'Ken', '', 'Watanabe', 'Male', 'ken_watanabe.jpg', ''),
(85, 'Dileep', 'A.', 'Rao', 'Male', 'dileep_rao.jpg', ''),
(86, 'Cillian', '', 'Murphy', 'Male', 'cillian_murphy.jpg', ''),
(87, 'Tom', '', 'Berenger', 'Male', 'tom_berenger.jpg', ''),
(88, 'Marion', '', 'Cotillard', 'Female', 'marion_cotillard.jpg', ''),
(89, 'Peter', 'William', 'Postlethwaite', 'Male', 'pete_postlethwaite.jpg', ''),
(90, 'Michael', '', 'Caine', 'Male', 'michael_caine.jpg', ''),
(91, 'Lukas', 'Daniel', 'Haas', 'Male', 'lukas_haas.jpg', ''),
(92, 'Talulah', 'Jane', 'Riley-Milburn', 'Female', 'talulah_riley.jpg', ''),
(93, 'William', 'Norman', 'Ferguson', 'Male', 'norman_ferguson.jpg', ''),
(94, 'Thornton', '', 'Hee', 'Male', 'thornton_hee.jpg', ''),
(95, 'Wilfred', '', 'Jackson', 'Male', 'wilfred_jackson.jpg', ''),
(96, 'John', 'Ryan', 'Kinney', 'Male', 'jack_kinney.jpg', 'Jack Kinney'),
(97, 'Hamilton', 'Somers', 'Luske', 'Male', 'hamilton_luske.jpg', ''),
(98, 'Benjamin', '', 'Sharpsteen', 'Male', 'ben_sharpsteen.png', ''),
(99, 'Walter', 'Elias', 'Disney', 'Male', 'walt_disney.jpg', 'Walt Disney'),
(100, 'Newt', '', 'Arnold', 'Male', 'newt_arnold.jpg', ''),
(101, 'Ridley', '', 'Scott', 'Male', 'ridley_scott.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `people_trivia`
--

CREATE TABLE `people_trivia` (
  `people_id` int(6) NOT NULL,
  `people_trivia_id` int(6) NOT NULL,
  `people_trivia_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `people_view`
-- (See below for the actual view)
--
CREATE TABLE `people_view` (
`id` int(6)
,`name` varchar(62)
,`screen_name` varchar(30)
,`trivia` mediumtext
,`movies` mediumtext
,`movie_roles` mediumtext
,`songs` mediumtext
,`song_roles` mediumtext
);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` int(6) NOT NULL,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lyrics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `title`, `lyrics`) VALUES
(1, 'Arabian Nights', 'Oh, I come from a land, from a faraway place\r\nWhere the caravan camels roam\r\nWhere it\'s flat and immense\r\nAnd the heat is intense\r\nIt\'s barbaric, but hey, it\'s home\r\n\r\nWhen the wind\'s from the east and the sun\'s from the west\r\nAnd the sand in the glass is right\r\nCome on down stop on by\r\nHop a carpet and fly\r\nTo another Arabian night\r\n\r\nArabian nights, like Arabian days\r\nMore often than not\r\nAre hotter than hot\r\nIn a lot of good ways\r\n\r\nArabian nights, \'neath Arabian moons\r\nA fool off his guard\r\nCould fall and fall hard\r\nOut there on the dunes'),
(2, 'One Jump Ahead', 'Gotta keep\r\nOne jump ahead of the breadline\r\nOne swing ahead of the sword\r\nI steal only what I can\'t afford that\'s everything\r\n\r\nOne jump ahead of the lawmen\r\nThat\'s all and that\'s no joke\r\nThese guys don\'t appreciate I\'m broke\r\nRiffraff street rat\r\n\r\nScoundrel take that just a little snack, guys\r\nRip him open, take it back, guys\r\nI can take a hint, gotta face the facts\r\nYou\'re my only friend, Abu\r\n\r\nWho? Oh, it\'s sad, Aladdin\'s hit the bottom\r\nHe\'s become a one man rise in crime\r\nI\'d blame parents, except he hasn\'t got \'em\r\nGotta eat to live, gotta steal to eat\r\n\r\nTell you all about it when I got the time\r\nOne jump ahead of the slowpokes\r\nOne skip ahead of my doom\r\nNext time gonna use a nom de plume\r\n\r\nOne jump ahead of the hitmen\r\nOne hit ahead of the flock\r\nI think I\'ll take a stroll around the block\r\nStop, thief, Vandal outrage scandal\r\n\r\nLet\'s not be too hasty\r\nStill I think he\'s rather tasty\r\nGotta eat to live, gotta steal to eat\r\nOtherwise we\'d get along\r\n\r\nWrong\r\nOne jump ahead of the hoofbeats\r\n(Vandal)\r\nOne hop ahead of the hump\r\n(Street rat)\r\nOne trick ahead of disaster\r\n(Scoundrel)\r\n\r\nThey\'re quick, but I\'m much faster\r\n(Take that)\r\nHere goes, better throw my hand in\r\nWish me happy landin\' all I gotta do is jump'),
(3, 'Friend Like Me', 'Well Ali Baba had them forty thieves\r\nScheherezad-ie had a thousand tales\r\nBut master you in luck \'cause up your sleeves\r\nYou got a brand of magic never fails\r\nYou got some power in your corner now\r\nSome heavy ammunition in your camp\r\nYou got some punch, pizzazz, yahoo and how\r\nSee all you gotta do is rub that lamp\r\nAnd I\'ll say\r\n\r\nMister Aladdin, sir\r\nWhat will your pleasure be?\r\nLet me take your order\r\nJot it down\r\nYou ain\'t never had a friend like me\r\nNo no no\r\n\r\nLife is your restaurant\r\nAnd I\'m your maitre d\'\r\nC\'mon whisper what it is you want\r\nYou ain\'t never had a friend like me\r\n\r\nYes sir, we pride ourselves on service\r\nYou\'re the boss\r\nThe king, the shah\r\nSay what you wish\r\nIt\'s yours! True dish\r\nHow about a little more Baklava?\r\n\r\nHave some of column \"A\"\r\nTry all of column \"B\"\r\nI\'m in the mood to help you dude\r\nYou ain\'t never had a friend like me\r\n\r\nCan your friends do this?\r\nDo your friends do that?\r\nDo your friends pull this out their little hat?\r\nCan your friends go, poof?\r\nWell, looky here\r\nCan your friends go, Abracadabra, let \'er rip\r\nAnd then make the sucker disappear?\r\n\r\nSo doncha sit there slack jawed, buggy eyed\r\nI\'m here to answer all your midday prayers\r\nYou got me bona fide, certified\r\nYou got a genie for your chare d\'affaires\r\nI got a powerful urge to help you out\r\nSo what-cha wish? I really wanna know\r\nYou got a list that\'s three miles long, no doubt\r\nWell, all you gotta do is rub like so - and oh\r\n\r\nMister Aladdin, sir, have a wish or two or three\r\nI\'m on the job, you big nabob\r\nYou ain\'t never had a friend, never had a friend\r\nYou ain\'t never had a friend, never had a friend\r\nYou ain\'t never had a friend like me\r\nYou ain\'t never had a friend like me, hah!'),
(4, 'Prince Ali', '(Make way for Prince Ali!)\r\n(Say hey! It\'s Prince Ali!)\r\n\r\nHey! Clear the way in the old bazaar\r\nHey you! Let us through!\r\nIt\'s a bright new star!\r\nOh come, be the first on your block to meet his eye!\r\n\r\nMake way! Here he comes!\r\nRing bells! Bang the drums!\r\nOh! You\'re gonna love this guy!\r\n\r\nPrince Ali! Fabulous he!\r\nAli Ababwa\r\nGenuflect, show some respect, down on one knee!\r\nNow, try your best to stay calm\r\nBrush up your Sunday salaam\r\nThen come and meet his spectacular coterie\r\n\r\nPrince Ali!\r\nMighty is he!\r\nAli Ababwa\r\nStrong as 10 regular men, definitely!\r\n(He faced the galloping hordes)\r\n(A hundred bad guys with swords)\r\nWho sent those goons to their lords?\r\nWhy, Prince Ali\r\n\r\n(He\'s got 75 golden camels)\r\nDon\'t they look lovely, June?\r\n(Purple peacocks, he\'s got 53)\r\nFabulous Harry, I love the feathers!\r\nWhen it comes to exotic-type mammals\r\n(Has he got a zoo?)\r\n(I\'m telling you, it\'s a world-class menagerie)\r\n\r\nPrince Ali! Handsome is he, Ali Ababwa\r\nThat physique! How can I speak, weak at the knee\r\nWell, get on out in that square\r\nAdjust your veil and prepare\r\nTo gawk and grovel and stare at Prince Ali!\r\n\r\nHe\'s got 95 white Persian monkeys\r\n(He\'s got the monkeys, let\'s see the monkeys)\r\nAnd to view them he charges no fee(He\'s generous, so generous)\r\nHe\'s got slaves, he\'s got servants and flunkies\r\n(Proud to work for him!)\r\nThey bow to his whim love serving him\r\nThey\'re just lousy with loyalty to Ali! Prince Ali!\r\n\r\nPrince Ali!\r\nAmorous he! Ali Ababwa\r\nHeard your princess was a sight lovely to see\r\nAnd that, good people, is why he got dolled up and dropped by\r\n(With 60 elephants, llamas galore\r\nWith his bears and lions\r\nA brass band and more\r\nWith his forty fakirs, his cooks, his bakers\r\nHis birds that warble on key\r\nMake way for Prince Ali!)'),
(5, 'A Whole New World', '[Intro: Jasmine & Aladdin ]\r\nHow are you doing that?\r\nIt\'s a magic carpet\r\nI-it\'s lovely...\r\nYou don\'t...you don\'t wanna go for a ride, do you?\r\nWe could get out of the palace, see the world\r\nIs it safe?\r\nSure, do you trust me?\r\nWhat?\r\nDo you trust me?\r\nYes...\r\n\r\n[Verse 1: Aladdin]\r\nI can show you the world\r\nShining, shimmering, splendid\r\nNow tell me, princess, now when did\r\nYou last let your heart decide?\r\n\r\nI can open your eyes\r\nTake you wonder by wonder\r\nOver, sideways and under\r\nOn a magic carpet ride\r\n\r\n[Refrain 1: Aladdin]\r\nA whole new world\r\nA new fantastic point of view\r\nNo one to tell us, \"no\"\r\nOr where to go\r\nOr say we\'re only dreaming\r\n\r\n[Refrain 2: Jasmine, (Aladdin)]\r\nA whole new world\r\nA dazzling place I never knew\r\nBut when I\'m way up here\r\nIt\'s crystal clear\r\nThat now I\'m in a whole new world with you\r\n(Now I\'m in a whole new world with you)\r\n\r\n[Verse 2: Jasmine]\r\nUnbelievable sights\r\nIndescribable feeling\r\nSoaring, tumbling, freewheeling\r\nThrough an endless diamond sky\r\n\r\n[Refrain 3: Jasmine, (Aladdin)]\r\nA whole new world\r\n(Don\'t you dare close your eyes)\r\nA hundred thousand things to see\r\n(Hold your breath; it gets better)\r\nI\'m like a shooting star\r\nI\'ve come so far\r\nI can\'t go back to where I used to be\r\n\r\n[Refrain 4: Aladdin with Jasmine, (Jasmine)]\r\nA whole new world\r\n(Every turn, a surprise)\r\nWith new horizons to pursue\r\n(Every moment, red-letter)\r\nI\'ll chase them anywhere\r\nThere\'s time to spare\r\nLet me share this whole new world with you\r\n\r\n[Refrain 5: Aladdin, Jasmine]\r\nA whole new world\r\n(A whole new world)\r\nThat\'s where we\'ll be\r\n(That\'s where we\'ll be)\r\nA thrilling chase\r\n(A wondrous place)\r\nFor you and me'),
(6, '世界の約束 (Sekai no Yakusoku)', '世界の約束\r\n涙の奥にゆらぐほほえみは\r\n時の始めからの世界の約束\r\n \r\nいまは一人でも二人の昨日から\r\n今日は生まれきらめく\r\n初めて会った日のように\r\n \r\n思い出のうちにあなたはいない\r\nそよかぜとなって頬に触れてくる\r\n \r\n木漏れ日の午後の別れのあとも\r\n決して終わらない世界の約束\r\n \r\nいまは一人でも明日は限りない\r\nあなたが教えてくれた\r\n夜にひそむやさしさ\r\n \r\n思い出のうちにあなたはいない\r\nせせらぎの歌にこの空の色に\r\n花の香りにいつまでも生きて');

-- --------------------------------------------------------

--
-- Table structure for table `song_keywords`
--

CREATE TABLE `song_keywords` (
  `song_id` int(5) NOT NULL,
  `keyword` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_keywords`
--

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES
(6, 'promise'),
(6, 'world');

-- --------------------------------------------------------

--
-- Table structure for table `song_media`
--

CREATE TABLE `song_media` (
  `song_media_id` int(6) NOT NULL,
  `song_id` int(6) NOT NULL COMMENT 'is the FK',
  `s_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_link_type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'audio and video are two possible values'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_media`
--

INSERT INTO `song_media` (`song_media_id`, `song_id`, `s_link`, `s_link_type`) VALUES
(1, 1, 'https://www.youtube.com/watch?v=lIYL-PQa010', 'video'),
(2, 2, 'https://www.youtube.com/watch?v=5VdZewCFyfg', 'video'),
(3, 3, 'https://www.youtube.com/watch?v=Qx91ff77yzM', 'video'),
(4, 4, 'https://www.youtube.com/watch?v=mT_8FAMsmCM', 'video'),
(5, 5, 'https://www.youtube.com/watch?v=qJJog4BJrUw', 'video'),
(6, 6, 'https://www.youtube.com/watch?v=jHYd3HiLWOg', 'video');

-- --------------------------------------------------------

--
-- Table structure for table `song_people`
--

CREATE TABLE `song_people` (
  `song_id` int(6) NOT NULL,
  `people_id` int(6) NOT NULL,
  `role` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `song_people`
--

INSERT INTO `song_people` (`song_id`, `people_id`, `role`) VALUES
(1, 6, 'singer'),
(1, 13, 'lyricist'),
(2, 7, 'singer'),
(2, 14, 'lyricist'),
(3, 8, 'singer'),
(3, 13, 'lyricist'),
(4, 8, 'singer'),
(4, 13, 'lyricist'),
(5, 7, 'singer'),
(5, 9, 'singer'),
(5, 14, 'lyricist'),
(6, 15, 'lyricist'),
(6, 16, 'singer');

-- --------------------------------------------------------

--
-- Table structure for table `song_trivia`
--

CREATE TABLE `song_trivia` (
  `song_id` int(6) NOT NULL,
  `song_trivia_id` int(6) NOT NULL,
  `song_trivia_name` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `song_view`
-- (See below for the actual view)
--
CREATE TABLE `song_view` (
`song_id` int(6)
,`title` varchar(80)
,`media` mediumtext
,`people` mediumtext
,`roles` mediumtext
,`movies` mediumtext
);

-- --------------------------------------------------------

--
-- Structure for view `movie_view`
--
DROP TABLE IF EXISTS `movie_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `movie_view`  AS  select `movies`.`movie_id` AS `movie_id`,`movies`.`native_name` AS `native_name`,`movie_data`.`country` AS `country`,`movie_data`.`language` AS `language`,`movie_numbers`.`running_time` AS `running_time`,group_concat(distinct `movie_keywords`.`keyword` separator ', ') AS `keywords`,group_concat(distinct `movie_trivia`.`trivia` separator ', ') AS `trivia`,group_concat(distinct `movie_media`.`movie_media_id` separator ', ') AS `media`,group_concat(distinct `movie_song`.`song_id` separator ', ') AS `songs`,group_concat(distinct `movie_anagrams`.`anagram` separator ', ') AS `anagrams` from (((((((`movies` left join `movie_data` on(`movies`.`movie_id` = `movie_data`.`movie_id`)) left join `movie_numbers` on(`movies`.`movie_id` = `movie_numbers`.`movie_id`)) left join `movie_keywords` on(`movies`.`movie_id` = `movie_keywords`.`movie_id`)) left join `movie_trivia` on(`movies`.`movie_id` = `movie_trivia`.`movie_id`)) left join `movie_media` on(`movies`.`movie_id` = `movie_media`.`movie_id`)) left join `movie_song` on(`movies`.`movie_id` = `movie_song`.`movie_id`)) left join `movie_anagrams` on(`movies`.`movie_id` = `movie_anagrams`.`movie_id`)) group by `movies`.`movie_id` ;

-- --------------------------------------------------------

--
-- Structure for view `people_view`
--
DROP TABLE IF EXISTS `people_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `people_view`  AS  select `people`.`id` AS `id`,replace(concat(`people`.`first_name`,' ',`people`.`middle_name`,' ',`people`.`last_name`),'  ',' ') AS `name`,`people`.`screen_name` AS `screen_name`,group_concat(distinct `people_trivia`.`people_trivia_name` separator ', ') AS `trivia`,group_concat(distinct `moviepeople`.`movies` order by `moviepeople`.`movie_id` ASC separator ', ') AS `movies`,`movieroles`.`movie_roles` AS `movie_roles`,group_concat(distinct `songpeople`.`title` order by `songpeople`.`song_id` ASC separator ', ') AS `songs`,`songroles`.`song_roles` AS `song_roles` from (((((`people` left join `people_trivia` on(`people`.`id` = `people_trivia`.`people_id`)) left join (select `movie_people`.`people_id` AS `people_id`,`movies`.`movie_id` AS `movie_id`,concat(`movies`.`native_name`,' (',`movies`.`english_name`,') ',`movies`.`year_made`) AS `movies` from (`movies` join `movie_people` on(`movies`.`movie_id` = `movie_people`.`movie_id`))) `moviepeople` on(`people`.`id` = `moviepeople`.`people_id`)) left join (select `movie_people`.`movie_id` AS `movie_id`,`movie_people`.`people_id` AS `people_id`,group_concat(`movie_people`.`role` order by `movie_people`.`movie_id` ASC separator ', ') AS `movie_roles` from `movie_people` group by `movie_people`.`people_id`) `movieroles` on(`people`.`id` = `movieroles`.`people_id`)) left join (select `song_people`.`people_id` AS `people_id`,`songs`.`song_id` AS `song_id`,`songs`.`title` AS `title` from (`songs` join `song_people` on(`songs`.`song_id` = `song_people`.`song_id`))) `songpeople` on(`people`.`id` = `songpeople`.`people_id`)) left join (select `song_people`.`song_id` AS `song_id`,`song_people`.`people_id` AS `people_id`,group_concat(`song_people`.`role` order by `song_people`.`song_id` ASC separator ', ') AS `song_roles` from `song_people` group by `song_people`.`people_id`) `songroles` on(`people`.`id` = `songroles`.`people_id`)) group by `people`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `song_view`
--
DROP TABLE IF EXISTS `song_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `song_view`  AS  select `songs`.`song_id` AS `song_id`,`songs`.`title` AS `title`,group_concat(distinct `song_media`.`song_media_id` separator ', ') AS `media`,group_concat(distinct `songpeople`.`name` order by `songpeople`.`people_id` ASC separator ', ') AS `people`,group_concat(`songpeople`.`role` order by `songpeople`.`people_id` ASC separator ', ') AS `roles`,group_concat(distinct `songmovie`.`movie` order by `songmovie`.`movie_id` ASC separator ', ') AS `movies` from (((`songs` left join `song_media` on(`songs`.`song_id` = `song_media`.`song_id`)) left join (select `song_people`.`people_id` AS `people_id`,`song_people`.`song_id` AS `song_id`,replace(concat(`people`.`first_name`,' ',`people`.`middle_name`,' ',`people`.`last_name`),'  ',' ') AS `name`,`song_people`.`role` AS `role` from (`people` join `song_people` on(`people`.`id` = `song_people`.`people_id`)) order by `song_people`.`people_id`) `songpeople` on(`songs`.`song_id` = `songpeople`.`song_id`)) left join (select `movies`.`movie_id` AS `movie_id`,concat(`movies`.`native_name`,' (',`movies`.`english_name`,') ',`movies`.`year_made`) AS `movie`,`movie_song`.`song_id` AS `song_id` from (`movies` join `movie_song` on(`movies`.`movie_id` = `movie_song`.`movie_id`))) `songmovie` on(`songs`.`song_id` = `songmovie`.`song_id`)) group by `songs`.`song_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_anagrams`
--
ALTER TABLE `movie_anagrams`
  ADD PRIMARY KEY (`movie_id`,`anagram`);

--
-- Indexes for table `movie_data`
--
ALTER TABLE `movie_data`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD PRIMARY KEY (`movie_id`,`keyword`);

--
-- Indexes for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD PRIMARY KEY (`movie_media_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movie_numbers`
--
ALTER TABLE `movie_numbers`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_people`
--
ALTER TABLE `movie_people`
  ADD PRIMARY KEY (`movie_id`,`people_id`,`role`),
  ADD KEY `people_id` (`people_id`);

--
-- Indexes for table `movie_quotes`
--
ALTER TABLE `movie_quotes`
  ADD PRIMARY KEY (`movie_quote_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movie_song`
--
ALTER TABLE `movie_song`
  ADD PRIMARY KEY (`movie_id`,`song_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `movie_trivia`
--
ALTER TABLE `movie_trivia`
  ADD PRIMARY KEY (`movie_id`,`trivia`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `people_trivia`
--
ALTER TABLE `people_trivia`
  ADD PRIMARY KEY (`people_trivia_id`),
  ADD KEY `people_id` (`people_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `song_keywords`
--
ALTER TABLE `song_keywords`
  ADD PRIMARY KEY (`song_id`,`keyword`);

--
-- Indexes for table `song_media`
--
ALTER TABLE `song_media`
  ADD PRIMARY KEY (`song_media_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Indexes for table `song_people`
--
ALTER TABLE `song_people`
  ADD PRIMARY KEY (`song_id`,`people_id`,`role`),
  ADD KEY `people_id` (`people_id`);

--
-- Indexes for table `song_trivia`
--
ALTER TABLE `song_trivia`
  ADD PRIMARY KEY (`song_trivia_id`),
  ADD KEY `song_id` (`song_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1022;

--
-- AUTO_INCREMENT for table `movie_media`
--
ALTER TABLE `movie_media`
  MODIFY `movie_media_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `movie_quotes`
--
ALTER TABLE `movie_quotes`
  MODIFY `movie_quote_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `people_trivia`
--
ALTER TABLE `people_trivia`
  MODIFY `people_trivia_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `song_media`
--
ALTER TABLE `song_media`
  MODIFY `song_media_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `song_trivia`
--
ALTER TABLE `song_trivia`
  MODIFY `song_trivia_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_anagrams`
--
ALTER TABLE `movie_anagrams`
  ADD CONSTRAINT `movie_anagrams_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_data`
--
ALTER TABLE `movie_data`
  ADD CONSTRAINT `movie_data_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD CONSTRAINT `movie_keywords_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD CONSTRAINT `movie_media_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_numbers`
--
ALTER TABLE `movie_numbers`
  ADD CONSTRAINT `movie_numbers_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_people`
--
ALTER TABLE `movie_people`
  ADD CONSTRAINT `movie_people_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_people_ibfk_2` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_quotes`
--
ALTER TABLE `movie_quotes`
  ADD CONSTRAINT `movie_quotes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_song`
--
ALTER TABLE `movie_song`
  ADD CONSTRAINT `movie_song_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_song_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_trivia`
--
ALTER TABLE `movie_trivia`
  ADD CONSTRAINT `movie_trivia_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `people_trivia`
--
ALTER TABLE `people_trivia`
  ADD CONSTRAINT `people_trivia_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song_keywords`
--
ALTER TABLE `song_keywords`
  ADD CONSTRAINT `song_keywords_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song_media`
--
ALTER TABLE `song_media`
  ADD CONSTRAINT `song_media_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song_people`
--
ALTER TABLE `song_people`
  ADD CONSTRAINT `song_people_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `song_people_ibfk_2` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song_trivia`
--
ALTER TABLE `song_trivia`
  ADD CONSTRAINT `song_trivia_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
