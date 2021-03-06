-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 11, 2014 at 05:56 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Table structure for table `addstudent`
--

CREATE TABLE IF NOT EXISTS `addstudent` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` varchar(75) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `class` int(100) NOT NULL,
  `division` varchar(4) NOT NULL,
  `roll_no` int(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=422 ;

--
-- Dumping data for table `addstudent`
--

INSERT INTO `addstudent` (`id`, `first_name`, `last_name`, `father_name`, `mother_name`, `phone`, `mobile`, `email`, `photo`, `dob`, `gender`, `class`, `division`, `roll_no`, `address`) VALUES
(17, 'abhishek', 'rbfq', 'fdr r', 'errer', '634245656', '977676665', 'erere', 'Rose1.bmp', '03/03/1997', 'male', 1, 'B', 5, ' e g hgnvhf hgh'),
(25, 'latha', 'mankeshkar', 'udi', 'uied', '93383838', '83839839', '', '', '12/08/1998', 'female', 1, 'B', 6000, 'er fere fedffv rfree'),
(29, 'ricky', 'ponting', 'ert', 'eferf', '45677743433', '33444444444', '', '', '01/10/2000', 'male', 1, 'A', 4000, 'gb ghh hty'),
(30, 'sonia', 'Gandhi', 'hsiw', 'uuei', '838383883', '8447474774', 't5656', '', '03/15/2000', 'female', 1, 'B', 33, 'dff gfgfg'),
(31, 'Mamatha ', 'Banerjee', 'mrero', 'dfd', '6474839239', '8393939393', 'eevv', '', '07/05/1950', 'female', 1, 'B', 44000, 'erv ffec d'),
(32, 'Jaya', 'Lalitha', 'diddo', 'ododoc', '7534923020', '8493030300', 'sewewe', '', '06/11/1946', 'female', 1, 'A', 1, 'tg5v fgdf'),
(34, 'Suresh', 'gopi', 'ksk', 'siei', '0432284848', '8449630928', '', '', '01/02/2002', 'male', 1, 'A', 2500, 'wse frr ffe'),
(35, 'Babu', 'Antony', 'isi', 'isoe', '868483929', '949494949', '', '', '03/09/1994', 'male', 1, 'A', 3344, '3eef  fff'),
(36, 'Saleem', 'kumar', 'yeyi', 'ss', '748493939', '939939399', '', '', '06/10/1997', 'male', 1, 'A', 10000, 'wd fdfsd'),
(69, 'Muhammed', 'sami', 'twii', 'uxh', '689990788', '997667889', '', '', '05/07/1996', 'male', 1, 'B', 5000, 'fd gg rfe'),
(70, 'Farha', 'Sadikh', 'shai', 'hsena', '3455949405', '9083409540', 'fasa', '', '02/06/1995', 'female', 1, 'B', 12, 't.m.house,mncy'),
(72, 'inzamam', 'ul haq', 'wee', 'ss', '556433333', '222445555', 'saaaa@ddsd.nn', '', '02/08/1995', 'male', 1, 'B', 5000, 'we trt rre ew'),
(73, 'Misbah', 'ul haq', 'yuwy', 'jjs', '939399393', '99595959', '', 'Tulips.jpg', '02/16/1999', 'male', 1, 'B', 2500, 'rt tt yu ere'),
(74, 'sachin', 'tendulkar', 'ramesh', 'hwhh', '888888888', '999999999', '', 'Desert2.jpg', '03/15/1995', 'male', 1, 'B', 500, 'sachin villa'),
(75, 'amithabh', 'bachan', 'bachan', 'uyyu', '77777777', '66666666', '', '', '01/22/1997', 'male', 1, 'B', 4444, 'yyn jhjy '),
(76, 'lubna', 'qasmi', 'err', 'www', '778787888888', '565565888888', 'sdw', 'Chrysanthemum1.jpg', '02/09/1998', 'female', 1, 'A', 7000, 'l mjj yy tt fr'),
(77, 'goutham', 'gambhier', 'gamamjw', 'tytyty', '6667778889', '7777555578', 'dd.kjj,uhjh', 'Lighthouse.jpg', '01/18/2000', 'male', 1, 'B', 3000, 'g nh ttt'),
(78, 'manoj', 'thivari', 'dee', '', '99999877', '88888665', 'manu@gmail.com', '', '05/19/2004', 'male', 1, 'A', 150, 'r rtr trre'),
(79, 'we', '0wewe', '0cdfe', 'sdfsdf', '3433454354', '543645656756', '534545', 'Alien_21.bmp', '03/18/2014', 'male', 1, 'B', 0, '0'),
(80, 'qasmi', 'sjwi', 'iwii', 'oo', '56666644', '454554545', 'dk@fah.com', '', '04/15/2001', 'male', 1, 'A', 750, 'ee rr'),
(81, 'adolf', 'Dravid', 'rttttr', 'ddfd', '7778', '4544', 'sdsd', '', '02/11/2014', 'male', 1, 'B', 1, 'dsdd fdfdf'),
(82, 'adolf', 'hitler', 'sdsd', 'ewewed', '33333', '78787878', 'ffff.mmm@ll.mii', '', '02/04/2014', 'male', 1, 'B', 2, 'rt tytyyt gtgtg'),
(83, 'inzamam ', 'ponting', 'chacko', '', '', '', '', '', '03/05/2014', 'male', 1, 'A', 67, 'SDRERE'),
(86, 'ertdx', 'Dravid', 'AWEDRE', 'ererwer', '45656656', '34665768', 'werertrt', '', '03/05/2014', 'male', 1, 'A', 6, 'ffdfdfdf'),
(89, 'rahul', 'dravid', 'fgfg', 'mtmt', '77676676767', '545454545', '0', '', '03/17/2004', 'male', 1, 'B', 1344, 'fff gfgf'),
(94, 'Goutham', 'gambhier', 'r34r34r', '', '', '', '', '0', '', 'male', 1, 'A', 0, ''),
(99, 'veena', 'gambhier', 'r34r34r', '', '', '', '', 'Hydrangeas.jpg', '', 'female', 1, 'A', 0, ''),
(100, 'Shakib', 'alhasan', 'sjjs', 'dsd', '988838388', '77337737', 'sad@gmail.com', 'Chrysanthemum.jpg', '03/18/1996', 'male', 1, 'B', 7000, 'e dr wqwq'),
(101, 'manvi', 'bisla', 'teye', 'gyhu', '777474774', '74747747', 'mss@wiwi.com', 'Bear.bmp', '04/16/2001', 'male', 1, 'B', 567, 'ddd gfg'),
(102, 'Goutham', 'gambhier', 'r34r34r', '', '', '', '', 'Balloon.bmp', '', 'male', 1, 'A', 0, ''),
(103, 'veena', 'bachan', '', '', '', '', '', 'Desert.jpg', '', 'female', 1, 'A', 0, ''),
(104, 'veena', 'bachan', 'ss', 'de', '8787887878', '444444442', '', 'Desert1.jpg', '04/20/1998', 'female', 1, 'B', 11000, 'er vrf rfrfrf'),
(105, 'Goutham', 'ul haq', '', '', '', '', '', 'Jellyfish.jpg', '', 'male', 1, 'A', 0, ''),
(106, 'veena', 'gambhier', 'r34r34r', '', '', '', '', 'Birthday_Cake1.bmp', '', 'female', 1, 'A', 0, ''),
(107, 'Goutham', 'ul haq', 'aduu', '', '', '', '', 'Balloon1.bmp', '', 'male', 1, 'B', 0, ''),
(110, 'megha', 'menon', 'kr menon', 'mjsj', '676', '8988', 'meg@dff.com', 'Beaver1.bmp', '03/10/2004', 'female', 1, 'B', 1, 'm.m.h.k'),
(111, 'ahmed', 'shehzad', 'fdff', 'mjff', '7878878', '6767677', 'ahm@ddd.pk', 'Hitchcock.bmp', '04/07/2004', 'male', 1, 'B', 2, 'ty ui hhg'),
(112, 'shuaib', 'alhasan', 'fdff', 'dfd', '4555', '454554545', 'ddfdfdf@ddddd.in', 'Fireworks_2.bmp', '01/18/2005', 'male', 1, 'B', 3, 'sn nn mm uu'),
(113, 'Goutham', 'ul haq', 'fdff', '', '', '', '', 'Birthday_Cake2.bmp', '', 'male', 1, 'A', 0, ''),
(116, 'brndn', 'mccullm', 'ret', 'ukj', '44883883', '84994944', 'dsf@fss.com', '', '01/09/1994', 'male', 1, 'A', 4, 'sd vvfdccd'),
(119, 'akbar', 'erer', 'tyu', 'bnu', '567767', '434343', 'dsddd@fdffd.mmm', '', '02/12/2014', 'male', 1, 'A', 5, 'ssss dfvdfdf'),
(120, 'jaques', 'kallis', 'rtrt', 'eree', '4454554545', '232332333', 'fggg,kkt@ewewe', '', '01/15/1998', 'male', 1, 'B', 6, 'we cv rt'),
(121, 'sourav', 'ganguly', 'tryry', 'xggg', '6767676767', '4434343443', 'gsdrwg.jfuj', 'Shamrock1.bmp', '05/19/1998', 'male', 1, 'A', 7, 'er ty ui op'),
(122, 'kfie', 'yrur', 'fffdfd', 'jdifdf', '575', '78348', 'jfhdhdh', '', '02/03/2014', 'male', 1, 'B', 8, 'de fr gt'),
(123, 'frog', 'tyde', 'rttt', 'yuui', '4444', '2222', 'frr', '', '01/27/1998', 'male', 1, 'A', 9, 'pond'),
(124, 'we', 'r', 'frnds', 'and', '454', '334', 'notenemeis', '', '02/18/2014', 'male', 1, 'A', 3, 'wweeww'),
(125, 'arb', 'rty', 'err', 'iop', '5678', '1234', 'ssd', '', '03/14/2005', 'male', 1, 'B', 10, 'tyyyy'),
(127, 'graham', 'gooch', 'nmm', 'vbn', '54555554343', '323232323323', 'sdaaqqq', 'Monkey_1.bmp', '04/15/1998', 'male', 1, 'A', 11, 'wee  fefe'),
(128, 'qashyh', 'juw', 'sksk', 'ytyt', '757755', '844848', 'ahm@ddd.pk', '', '02/04/2014', 'male', 1, 'A', 12, 'edww wedwe'),
(129, 'Jaya', 'kumar', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Leaf.bmp', '02/04/2014', 'female', 1, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(136, 'moin', 'khan', 'tryry', 'rereer', '65556', '774747', 'fd.edgeH', 'Sun.bmp', '02/05/2014', 'male', 1, 'A', 1, 'wwe cccff'),
(137, 'wasee', 'rre', 'erw', 'qwq', '342342', '453222', 'ssededede', 'Fireworks_1.bmp', '02/03/2014', 'male', 1, 'A', 2, 'rrrftfzde '),
(138, 'manmohan', 'singh', 'gheueu', 'trtrty', '6565683883', '747474488', 'man@meeu.fk', 'man4.jpg', '02/03/1996', 'male', 1, 'A', 1, 'as gh.delhi dffdeeexs hhtfrf'),
(139, 'uueu', 'hds', 'ghdjfhj', 'gfbh', '7348', 'diewie', 'hdj', '', '02/04/2014', 'male', 1, 'A', 0, 'qwsqsws'),
(140, 'virat', 'kohli', 'wjwu', 'judu', '78584889', '48498399', '8sdsnjdhwh', 'Monkey_2.bmp', '02/02/2014', 'male', 1, 'A', 2, 'sqws eqwew e'),
(141, 'VS Achuthanandan', ' ', 'ddsddas', 'rrer', '454545435', '465465466', 'vsabhsg@gmail.com', 'vs.jpg', '03/12/1996', 'male', 1, 'A', 3, 'ef erfere ferwer erttrvfgf gfhjukuuy'),
(143, 'neenu', 'r', 'shibu', 'anny', '852910123', '222445555', 'neenu@gmail.com', 'vs1.jpg', '02/12/2000', 'female', 1, 'B', 10, 'xdgvxfgvdg\r\ngddxfg\r\nghy'),
(146, 'Hasaw', 'Swsdwe', 'ewe', 'eyggd', '4454554545', '4434343443', 'sdfert rtrt erttr', 'Women.bmp', '01/20/2005', 'female', 1, 'A', 1, 'sece tt4rt t4wedcffg ght5 yf b'),
(147, 'aliya', 'heyw', 'uruero', 'huejk', '738219900', '335546666566', 'opfsdijkej', 'Birthday_Cake4.bmp', '03/17/2014', 'female', 1, 'A', 2, 'DSEFfvfgfdf'),
(148, 'jasmin', 'jheu', 'usdi', 'jjkjks', '7987876675656', '878478499', 'ehnsdjfh', 'David.bmp', '03/19/2014', 'female', 1, 'A', 3, 'se ererer er erere'),
(149, 'shaheu', 'uuwe', 'u8jddjkk', 'jdsdjjkd', '43434344', '4546565645', 'iwiwehw', 'Fish.bmp', '02/10/2005', 'female', 1, 'A', 4, '4ft rtter rtert'),
(150, 'rabi', 'rer', 'frtrt', 'iop', '423232426', '4786879', 'seweere', 'Dragon.bmp', '03/23/2006', 'female', 1, 'A', 5, 'erfvg gjhjuku iooioe'),
(151, 'husna', 'sherin', 'idii', 'iidd', '7823726327', '843545455', 'asdgddg', 'Hand1.bmp', '03/11/2006', 'female', 1, 'A', 6, 'SDERfff efeerer'),
(152, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 1, 'B', 7, 'rgr gtgtg juuu'),
(153, 'rabri', 'devi', 'gduww ', 'gshus', '33334454545', '233434344344', 'jjookopklk', 'Fish1.bmp', '03/14/2003', 'female', 1, 'B', 9, 'rtytyt tytyty yytyty'),
(154, 'foolan', 'devi', 'hwjewei', 'ujuwewe', '343439434', '8438439439', 'hfujdfjhan', 'Rabbit.bmp', '03/21/1996', 'female', 1, 'B', 11, 'wqewedf ee rererere'),
(155, 'sastyhwy', 'uwuewu', 'huyeuuer', 'fdfdfdf', '445554656', '577676767', 'ffrgrfrf', 'Bear1.bmp', '03/18/2014', 'male', 1, 'B', 3, 'fgrgrgr'),
(156, 'kiran', 'iei', 'yruru', 'hewe', '73892992900', '838994893949', 'hereuruerueru', 'Leaf1.bmp', '03/07/2014', 'male', 1, 'B', 33, 'dwdwd'),
(157, 'jasy', 'jheu', 'usdi', 'jjkjks', '7987876675656', '878478499', 'ehnsdjfh', 'David.bmp', '03/19/2014', 'female', 1, 'A', 3, 'se ererer er erere'),
(158, 'husna', 'DA', 'idii', 'iidd', '7823726327', '843545455', 'asdgddg', 'Hand1.bmp', '03/11/2006', 'female', 1, 'A', 6, 'SDERfff efeerer'),
(159, 'aliya', 'parveen', 'uruero', 'huejk', '738219900', '335546666566', 'opfsdijkej', 'Birthday_Cake4.bmp', '03/17/2014', 'female', 1, 'A', 2, 'DSEFfvfgfdf'),
(160, 'Jaya', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Leaf.bmp', '02/04/2014', 'female', 1, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(161, 'Uma', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Penguin.bmp', '02/04/2014', 'female', 1, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(162, 'seva', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Rabbit.bmp', '02/04/2014', 'female', 1, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(163, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 1, 'B', 7, 'rgr gtgtg juuu'),
(164, 'Jaya', 'Lalitha', 'diddo', 'ododoc', '7534923020', '8493030300', 'sewewe', '', '06/11/1946', 'female', 1, 'B', 1, 'tg5v fgdf'),
(165, 'Mamatha ', 'Banerjee', 'mrero', 'dfd', '6474839239', '8393939393', 'eevv', '', '07/05/1950', 'female', 1, 'B', 44000, 'erv ffec d'),
(166, 'sourav', 'ganguly', 'tryry', 'xggg', '6767676767', '4434343443', 'gsdrwg.jfuj', 'Shamrock1.bmp', '05/19/1998', 'male', 1, 'A', 7, 'er ty ui op'),
(167, 'faisal', 'errr', 'wded', 'eer', '454', '334', 'notenemeis', '', '02/18/2014', 'male', 1, 'A', 3, 'wweeww'),
(168, 'areef', 'rty', 'err', 'iop', '5678', '1234', 'ssd', '', '03/14/2005', 'male', 1, 'B', 10, 'tyyyy'),
(169, 'afeef', 'rty', 'err', 'iop', '5678', '1234', 'ssd', '', '03/14/2005', 'male', 1, 'B', 10, 'tyyyy'),
(170, 'shuaib', 'alhasan', 'fdff', 'dfd', '4555', '454554545', 'ddfdfdf@ddddd.in', 'Fireworks_2.bmp', '01/18/2005', 'male', 1, 'A', 3, 'sn nn mm uu'),
(171, 'moin', 'khan', 'tryry', 'rereer', '65556', '774747', 'fd.edgeH', 'Sun.bmp', '02/05/2014', 'male', 1, 'A', 1, 'wwe cccff'),
(172, 'veena', 'gambhier', 'r34r34r', '', '', '', '', 'Hydrangeas.jpg', '', 'female', 1, 'A', 0, ''),
(173, 'deepika', 'palid', 'jede', 'uidwdu', '83842349', '8932879', '8heuw', 'Chocolate_Cake1.bmp', '03/11/2014', 'female', 1, 'A', 6, 'feff'),
(174, 'devika', 'dwder', 'drwerre', 'rrggtg', '6676', '56565', 'frfg', 'Alien_1.bmp', '03/19/2014', 'female', 1, 'A', 9, 'ttgtg thth th'),
(175, 'latha', 'mankeshkar', 'udi', 'uied', '93383838', '83839839', '', '', '12/08/1998', 'female', 1, 'A', 6000, 'er fere fedffv rfree'),
(176, 'sonia', 'Gandhi', 'hsiw', 'uuei', '838383883', '8447474774', 't5656', '', '03/15/2000', 'female', 1, 'A', 33, 'dff gfgfg'),
(177, 'Misbah', 'ul haq', 'yuwy', 'jjs', '939399393', '99595959', '', 'Tulips.jpg', '02/16/1999', 'male', 1, 'A', 2500, 'rt tt yu ere'),
(178, 'manoj', 'thivari', 'dee', '', '99999877', '88888665', 'manu@gmail.com', '', '05/19/2004', 'male', 1, 'A', 150, 'r rtr trre'),
(179, 'qasmi', 'sjwi', 'iwii', 'oo', '56666644', '454554545', 'dk@fah.com', '', '04/15/2001', 'male', 1, 'A', 750, 'ee rr'),
(180, 'adolf', 'hitler', 'sdsd', 'ewewed', '33333', '78787878', 'ffff.mmm@ll.mii', '', '02/04/2014', 'male', 1, 'B', 2, 'rt tytyyt gtgtg'),
(181, 'inzamam ', 'ponting', 'chacko', '', '', '', '', '', '03/05/2014', 'male', 1, 'A', 67, 'SDRERE'),
(182, 'manoj', 'ff', 'ert', 'www', '888888888', '7777555578', 'sasasas', 'Da_Vinci.bmp', '02/04/2014', 'male', 1, 'B', 345, 'rt trt t'),
(183, 'kfie', 'yrur', 'fffdfd', 'jdifdf', '575', '78348', 'jfhdhdh', '', '02/03/2014', 'male', 1, 'B', 8, 'de fr gt'),
(184, 'arb', 'rty', 'err', 'iop', '5678', '1234', 'ssd', '', '03/14/2005', 'male', 1, 'B', 10, 'tyyyy'),
(185, 'manvi', 'bisla', 'teye', 'gyhu', '777474774', '74747747', 'mss@wiwi.com', 'Bear.bmp', '04/16/2001', 'male', 1, 'B', 567, 'ddd gfg'),
(186, 'rahul', 'dravid', 'fgfg', 'mtmt', '77676676767', '545454545', '0', '', '03/17/2004', 'male', 1, 'B', 1344, 'fff gfgf'),
(187, 'sonia', 'Gandhi', 'hsiw', 'uuei', '838383883', '8447474774', 't5656', '', '03/15/2000', 'female', 2, 'B', 33, 'dff gfgfg'),
(188, 'Mamatha ', 'Banerjee', 'mrero', 'dfd', '6474839239', '8393939393', 'eevv', '', '07/05/1950', 'female', 2, 'B', 44000, 'erv ffec d'),
(189, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 2, 'B', 7, 'rgr gtgtg juuu'),
(190, 'foolan', 'devi', 'hwjewei', 'ujuwewe', '343439434', '8438439439', 'hfujdfjhan', 'Rabbit.bmp', '03/21/1996', 'female', 2, 'B', 11, 'wqewedf ee rererere'),
(191, 'rabri', 'devi', 'gduww ', 'gshus', '33334454545', '233434344344', 'jjookopklk', 'Fish1.bmp', '03/14/2003', 'female', 2, 'B', 9, 'rtytyt tytyty yytyty'),
(192, 'latha', 'mankeshkar', 'udi', 'uied', '93383838', '83839839', '', '', '12/08/1998', 'female', 2, 'B', 6000, 'er fere fedffv rfree'),
(193, 'sonia', 'Gandhi', 'hsiw', 'uuei', '838383883', '8447474774', 't5656', '', '03/15/2000', 'female', 2, 'B', 33, 'dff gfgfg'),
(194, 'Mamatha ', 'Banerjee', 'mrero', 'dfd', '6474839239', '8393939393', 'eevv', '', '07/05/1950', 'female', 2, 'B', 44000, 'erv ffec d'),
(195, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 2, 'B', 7, 'rgr gtgtg juuu'),
(196, 'foolan', 'devi', 'hwjewei', 'ujuwewe', '343439434', '8438439439', 'hfujdfjhan', 'Rabbit.bmp', '03/21/1996', 'female', 2, 'B', 11, 'wqewedf ee rererere'),
(197, 'rabri', 'devi', 'gduww ', 'gshus', '33334454545', '233434344344', 'jjookopklk', 'Fish1.bmp', '03/14/2003', 'female', 2, 'B', 9, 'rtytyt tytyty yytyty'),
(198, 'latha', 'mankeshkar', 'udi', 'uied', '93383838', '83839839', '', '', '12/08/1998', 'female', 2, 'B', 6000, 'er fere fedffv rfree'),
(199, 'seva', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Rabbit.bmp', '02/04/2014', 'female', 2, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(200, 'Hasaw', 'Swsdwe', 'ewe', 'eyggd', '4454554545', '4434343443', 'sdfert rtrt erttr', 'Women.bmp', '01/20/2005', 'female', 2, 'A', 1, 'sece tt4rt t4wedcffg ght5 yf b'),
(201, 'jasmin', 'jheu', 'usdi', 'jjkjks', '7987876675656', '878478499', 'ehnsdjfh', 'David.bmp', '03/19/2014', 'female', 2, 'A', 3, 'se ererer er erere'),
(202, 'shaheu', 'uuwe', 'u8jddjkk', 'jdsdjjkd', '43434344', '4546565645', 'iwiwehw', 'Fish.bmp', '02/10/2005', 'female', 2, 'A', 4, '4ft rtter rtert'),
(203, 'rabi', 'rer', 'frtrt', 'iop', '423232426', '4786879', 'seweere', 'Dragon.bmp', '03/23/2006', 'female', 2, 'A', 5, 'erfvg gjhjuku iooioe'),
(204, 'husna', 'sherin', 'idii', 'iidd', '7823726327', '843545455', 'asdgddg', 'Hand1.bmp', '03/11/2006', 'female', 2, 'A', 6, 'SDERfff efeerer'),
(205, 'aliya', 'heyw', 'uruero', 'huejk', '738219900', '335546666566', 'opfsdijkej', 'Birthday_Cake4.bmp', '03/17/2014', 'female', 2, 'A', 2, 'DSEFfvfgfdf'),
(206, 'Jaya', 'Lalitha', 'diddo', 'ododoc', '7534923020', '8493030300', 'sewewe', '', '06/11/1946', 'female', 2, 'A', 1, 'tg5v fgdf'),
(207, 'lubna', 'qasmi', 'err', 'www', '778787888888', '565565888888', 'sdw', 'Chrysanthemum1.jpg', '02/09/1998', 'female', 2, 'A', 7000, 'l mjj yy tt fr'),
(208, 'veena', 'bachan', '', '', '', '', '', 'Desert.jpg', '', 'female', 2, 'A', 0, ''),
(209, 'veena', 'gambhier', 'r34r34r', '', '', '', '', 'Birthday_Cake1.bmp', '', 'female', 2, 'A', 0, ''),
(210, 'Jaya', 'kumar', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Leaf.bmp', '02/04/2014', 'female', 2, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(211, 'Hasaw', 'Swsdwe', 'ewe', 'eyggd', '4454554545', '4434343443', 'sdfert rtrt erttr', 'Women.bmp', '01/20/2005', 'female', 2, 'A', 1, 'sece tt4rt t4wedcffg ght5 yf b'),
(212, 'ricky', 'ponting', 'ert', 'eferf', '45677743433', '33444444444', '', '', '01/10/2000', 'male', 2, 'A', 4000, 'gb ghh hty'),
(213, 'Suresh', 'gopi', 'ksk', 'siei', '0432284848', '8449630928', '', '', '01/02/2002', 'male', 2, 'A', 2500, 'wse frr ffe'),
(214, 'Babu', 'Antony', 'isi', 'isoe', '868483929', '949494949', '', '', '03/09/1994', 'male', 2, 'A', 3344, '3eef  fff'),
(215, 'Saleem', 'kumar', 'yeyi', 'ss', '748493939', '939939399', '', '', '06/10/1997', 'male', 2, 'A', 10000, 'wd fdfsd'),
(216, 'qasmi', 'sjwi', 'iwii', 'oo', '56666644', '454554545', 'dk@fah.com', '', '04/15/2001', 'male', 2, 'A', 750, 'ee rr'),
(217, 'inzamam ', 'ponting', 'chacko', '', '', '', '', '', '03/05/2014', 'male', 2, 'A', 67, 'SDRERE'),
(218, 'abhishek', 'rbfq', 'fdr r', 'errer', '634245656', '977676665', 'erere', 'Monkey_11.bmp', '03/03/1997', 'male', 2, 'B', 5, ' e g hgnvhf hgh'),
(219, 'Sadikh', 'Methar', 'cma m', 's', '729290-0736', '99303828300', 'sasdere', '', '05/15/1992', 'male', 2, 'B', 10000, 'c s m alpy'),
(220, 'Muhammed', 'sami', 'twii', 'uxh', '689990788', '997667889', '', '', '05/07/1996', 'male', 2, 'B', 5000, 'fd gg rfe'),
(221, 'inzamam', 'ul haq', 'wee', 'ss', '556433333', '222445555', 'saaaa@ddsd.nn', '', '02/08/1995', 'male', 2, 'B', 5000, 'we trt rre ew'),
(222, 'Misbah', 'ul haq', 'yuwy', 'jjs', '939399393', '99595959', '', 'Tulips.jpg', '02/16/1999', 'male', 2, 'B', 2500, 'rt tt yu ere'),
(223, 'Saleem', 'kumar', 'yeyi', 'ss', '748493939', '939939399', '', '', '06/10/1997', 'male', 2, 'A', 10000, 'wd fdfsd'),
(224, 'manoj', 'thivari', 'dee', '', '99999877', '88888665', 'manu@gmail.com', '', '05/19/2004', 'male', 2, 'A', 150, 'r rtr trre'),
(225, 'qasmi', 'sjwi', 'iwii', 'oo', '56666644', '454554545', 'dk@fah.com', '', '04/15/2001', 'male', 2, 'A', 750, 'ee rr'),
(226, 'inzamam ', 'ponting', 'chacko', '', '', '', '', '', '03/05/2014', 'male', 2, 'A', 67, 'SDRERE'),
(227, 'ertdx', 'Dravid', 'AWEDRE', 'ererwer', '45656656', '34665768', 'werertrt', '', '03/05/2014', 'male', 2, 'A', 6, 'ffdfdfdf'),
(228, 'Goutham', 'gambhier', 'r34r34r', '', '', '', '', '0', '', 'male', 2, 'A', 0, ''),
(229, 'Saleem', 'kumar', 'yeyi', 'ss', '748493939', '939939399', '', '', '06/10/1997', 'male', 2, 'B', 10000, 'wd fdfsd'),
(230, 'manoj', 'thivari', 'dee', '', '99999877', '88888665', 'manu@gmail.com', '', '05/19/2004', 'male', 2, 'B', 150, 'r rtr trre'),
(231, 'qasmi', 'sjwi', 'iwii', 'oo', '56666644', '454554545', 'dk@fah.com', '', '04/15/2001', 'male', 2, 'B', 750, 'ee rr'),
(232, 'inzamam ', 'ponting', 'chacko', '', '', '', '', '', '03/05/2014', 'male', 2, 'B', 67, 'SDRERE'),
(233, 'ertdx', 'Dravid', 'AWEDRE', 'ererwer', '45656656', '34665768', 'werertrt', '', '03/05/2014', 'male', 2, 'B', 6, 'ffdfdfdf'),
(234, 'Goutham', 'gambhier', 'r34r34r', '', '', '', '', '0', '', 'male', 2, 'B', 0, ''),
(235, 'jasy', 'jheu', 'usdi', 'jjkjks', '7987876675656', '878478499', 'ehnsdjfh', 'David.bmp', '03/19/2014', 'female', 2, 'A', 3, 'se ererer er erere'),
(236, 'husna', 'DA', 'idii', 'iidd', '7823726327', '843545455', 'asdgddg', 'Hand1.bmp', '03/11/2006', 'female', 2, 'A', 6, 'SDERfff efeerer'),
(237, 'aliya', 'parveen', 'uruero', 'huejk', '738219900', '335546666566', 'opfsdijkej', 'Birthday_Cake4.bmp', '03/17/2014', 'female', 3, 'A', 2, 'DSEFfvfgfdf'),
(238, 'Jaya', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Leaf.bmp', '02/04/2014', 'female', 3, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(239, 'Uma', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Penguin.bmp', '02/04/2014', 'female', 3, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(240, 'seva', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Rabbit.bmp', '02/04/2014', 'female', 3, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(241, 'latha', 'mankeshkar', 'udi', 'uied', '93383838', '83839839', '', '', '12/08/1998', 'female', 3, 'B', 6000, 'er fere fedffv rfree'),
(242, 'sonia', 'Gandhi', 'hsiw', 'uuei', '838383883', '8447474774', 't5656', '', '03/15/2000', 'female', 3, 'B', 33, 'dff gfgfg'),
(243, 'Mamatha ', 'Banerjee', 'mrero', 'dfd', '6474839239', '8393939393', 'eevv', '', '07/05/1950', 'female', 3, 'B', 44000, 'erv ffec d'),
(244, 'Farha', 'Sadikh', 'shai', 'hsena', '3455949405', '9083409540', 'fasa', '', '02/06/1995', 'female', 3, 'B', 12, 't.m.house,mncy'),
(245, 'veena', 'bachan', 'ss', 'de', '8787887878', '444444442', '', 'Desert1.jpg', '04/20/1998', 'female', 3, 'B', 11000, 'er vrf rfrfrf'),
(246, 'megha', 'menon', 'kr menon', 'mjsj', '676', '8988', 'meg@dff.com', 'Beaver1.bmp', '03/10/2004', 'female', 3, 'B', 1, 'm.m.h.k'),
(247, 'neenu', 'r', 'shibu', 'anny', '852910123', '222445555', 'neenu@gmail.com', 'vs1.jpg', '02/12/2000', 'female', 3, 'B', 10, 'xdgvxfgvdg\r\ngddxfg\r\nghy'),
(248, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 3, 'B', 7, 'rgr gtgtg juuu'),
(249, 'rabri', 'devi', 'gduww ', 'gshus', '33334454545', '233434344344', 'jjookopklk', 'Fish1.bmp', '03/14/2003', 'female', 3, 'B', 9, 'rtytyt tytyty yytyty'),
(250, 'foolan', 'devi', 'hwjewei', 'ujuwewe', '343439434', '8438439439', 'hfujdfjhan', 'Rabbit.bmp', '03/21/1996', 'female', 3, 'B', 11, 'wqewedf ee rererere'),
(251, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 3, 'B', 7, 'rgr gtgtg juuu'),
(252, 'Jaya', 'Lalitha', 'diddo', 'ododoc', '7534923020', '8493030300', 'sewewe', '', '06/11/1946', 'female', 3, 'B', 1, 'tg5v fgdf'),
(253, 'sonia', 'Gandhi', 'hsiw', 'uuei', '838383883', '8447474774', 't5656', '', '03/15/2000', 'female', 3, 'B', 33, 'dff gfgfg'),
(254, 'Mamatha ', 'Banerjee', 'mrero', 'dfd', '6474839239', '8393939393', 'eevv', '', '07/05/1950', 'female', 3, 'B', 44000, 'erv ffec d'),
(255, 'lubna', 'qasmi', 'err', 'www', '778787888888', '565565888888', 'sdw', 'Chrysanthemum1.jpg', '02/09/1998', 'female', 3, 'A', 7000, 'l mjj yy tt fr'),
(256, 'veena', 'gambhier', 'r34r34r', '', '', '', '', 'Hydrangeas.jpg', '', 'female', 3, 'A', 0, ''),
(257, 'veena', 'bachan', '', '', '', '', '', 'Desert.jpg', '', 'female', 3, 'A', 0, ''),
(258, 'veena', 'gambhier', 'r34r34r', '', '', '', '', 'Birthday_Cake1.bmp', '', 'female', 3, 'A', 0, ''),
(259, 'Jaya', 'kumar', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Leaf.bmp', '02/04/2014', 'female', 3, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(260, 'Hasaw', 'Swsdwe', 'ewe', 'eyggd', '4454554545', '4434343443', 'sdfert rtrt erttr', 'Women.bmp', '01/20/2005', 'female', 3, 'A', 1, 'sece tt4rt t4wedcffg ght5 yf b'),
(261, 'ricky', 'ponting', 'ert', 'eferf', '45677743433', '33444444444', '', '', '01/10/2000', 'male', 3, 'A', 4000, 'gb ghh hty'),
(262, 'Suresh', 'gopi', 'ksk', 'siei', '0432284848', '8449630928', '', '', '01/02/2002', 'male', 3, 'A', 2500, 'wse frr ffe'),
(263, 'Babu', 'Antony', 'isi', 'isoe', '868483929', '949494949', '', '', '03/09/1994', 'male', 3, 'A', 3344, '3eef  fff'),
(264, 'Saleem', 'kumar', 'yeyi', 'ss', '748493939', '939939399', '', '', '06/10/1997', 'male', 3, 'A', 10000, 'wd fdfsd'),
(265, 'manoj', 'thivari', 'dee', '', '99999877', '88888665', 'manu@gmail.com', '', '05/19/2004', 'male', 3, 'A', 150, 'r rtr trre'),
(266, 'qasmi', 'sjwi', 'iwii', 'oo', '56666644', '454554545', 'dk@fah.com', '', '04/15/2001', 'male', 3, 'A', 750, 'ee rr'),
(267, 'abhishek', 'rbfq', 'fdr r', 'errer', '634245656', '977676665', 'erere', 'Monkey_11.bmp', '03/03/1997', 'male', 3, 'B', 5, ' e g hgnvhf hgh'),
(268, 'afeef', 'rty', 'err', 'iop', '5678', '1234', 'ssd', '', '03/14/2005', 'male', 3, 'B', 10, 'tyyyy'),
(269, 'ahmed', 'shehzad', 'fdff', 'mjff', '7878878', '6767677', 'ahm@ddd.pk', 'Hitchcock.bmp', '04/07/2004', 'male', 3, 'B', 2, 'ty ui hhg'),
(270, 'amithabh', 'bachan', 'bachan', 'uyyu', '77777777', '66666666', '', '', '01/22/1997', 'male', 3, 'B', 4444, 'yyn jhjy '),
(271, 'arb', 'rty', 'err', 'iop', '5678', '1234', 'ssd', '', '03/14/2005', 'male', 3, 'B', 10, 'tyyyy'),
(272, 'goutham', 'gambhier', 'gamamjw', 'tytyty', '6667778889', '7777555578', 'dd.kjj,uhjh', 'Lighthouse.jpg', '01/18/2000', 'male', 3, 'B', 3000, 'g nh ttt'),
(273, 'inzamam', 'ul haq', 'wee', 'ss', '556433333', '222445555', 'saaaa@ddsd.nn', '', '02/08/1995', 'male', 3, 'B', 5000, 'we trt rre ew'),
(274, 'inzamam', 'ul haq', 'wee', 'ss', '556433333', '222445555', 'saaaa@ddsd.nn', '', '02/08/1995', 'male', 3, 'B', 5000, 'we trt rre ew'),
(275, 'kfie', 'yrur', 'fffdfd', 'jdifdf', '575', '78348', 'jfhdhdh', '', '02/03/2014', 'male', 3, 'B', 8, 'de fr gt'),
(276, 'kiran', 'iei', 'yruru', 'hewe', '73892992900', '838994893949', 'hereuruerueru', 'Leaf1.bmp', '03/07/2014', 'male', 3, 'B', 33, 'dwdwd'),
(277, 'manoj', 'ff', 'ert', 'www', '888888888', '7777555578', 'sasasas', 'Da_Vinci.bmp', '02/04/2014', 'male', 3, 'B', 345, 'rt trt t'),
(278, 'manoj', 'thivari', 'dee', '', '99999877', '88888665', 'manu@gmail.com', '', '05/19/2004', 'male', 3, 'B', 150, 'r rtr trre'),
(279, 'Misbah', 'ul haq', 'yuwy', 'jjs', '939399393', '99595959', '', 'Tulips.jpg', '02/16/1999', 'male', 3, 'B', 2500, 'rt tt yu ere'),
(280, 'Muhammed', 'sami', 'twii', 'uxh', '689990788', '997667889', '', '', '05/07/1996', 'male', 3, 'B', 5000, 'fd gg rfe'),
(281, 'megha', 'menon', 'kr menon', 'mjsj', '676', '8988', 'meg@dff.com', 'Beaver1.bmp', '03/10/2004', 'female', 3, 'B', 1, 'm.m.h.k'),
(282, 'neenu', 'r', 'shibu', 'anny', '852910123', '222445555', 'neenu@gmail.com', 'vs1.jpg', '02/12/2000', 'female', 3, 'B', 10, 'xdgvxfgvdg\r\ngddxfg\r\nghy'),
(283, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 3, 'B', 7, 'rgr gtgtg juuu'),
(284, 'rabri', 'devi', 'gduww ', 'gshus', '33334454545', '233434344344', 'jjookopklk', 'Fish1.bmp', '03/14/2003', 'female', 3, 'B', 9, 'rtytyt tytyty yytyty'),
(285, 'foolan', 'devi', 'hwjewei', 'ujuwewe', '343439434', '8438439439', 'hfujdfjhan', 'Rabbit.bmp', '03/21/1996', 'female', 3, 'B', 11, 'wqewedf ee rererere'),
(286, 'Jaya', 'Lalitha', 'diddo', 'ododoc', '7534923020', '8493030300', 'sewewe', '', '06/11/1946', 'female', 3, 'A', 1, 'tg5v fgdf'),
(287, 'lubna', 'qasmi', 'err', 'www', '778787888888', '565565888888', 'sdw', 'Chrysanthemum1.jpg', '02/09/1998', 'female', 4, 'A', 7000, 'l mjj yy tt fr'),
(288, 'veena', 'gambhier', 'r34r34r', '', '', '', '', 'Hydrangeas.jpg', '', 'female', 4, 'A', 0, ''),
(289, 'veena', 'bachan', '', '', '', '', '', 'Desert.jpg', '', 'female', 4, 'A', 0, ''),
(290, 'Hasaw', 'Swsdwe', 'ewe', 'eyggd', '4454554545', '4434343443', 'sdfert rtrt erttr', 'Women.bmp', '01/20/2005', 'female', 4, 'A', 1, 'sece tt4rt t4wedcffg ght5 yf b'),
(291, 'Sadikh', 'Methar', 'cma m', 's', '729290-0736', '99303828300', 'sasdere', '', '05/15/1992', 'male', 4, 'A', 10000, 'c s m alpy'),
(292, 'inzamam', 'ul haq', 'wee', 'ss', '556433333', '222445555', 'saaaa@ddsd.nn', '', '02/08/1995', 'male', 4, 'A', 5000, 'we trt rre ew'),
(293, 'manoj', 'thivari', 'dee', '', '99999877', '88888665', 'manu@gmail.com', '', '05/19/2004', 'male', 4, 'A', 150, 'r rtr trre'),
(294, 'inzamam ', 'ponting', 'chacko', '', '', '', '', '', '03/05/2014', 'male', 4, 'A', 67, 'SDRERE'),
(295, 'ricky', 'ponting', 'ert', 'eferf', '45677743433', '33444444444', '', '', '01/10/2000', 'male', 4, 'A', 4000, 'gb ghh hty'),
(296, 'Suresh', 'gopi', 'ksk', 'siei', '0432284848', '8449630928', '', '', '01/02/2002', 'male', 4, 'A', 2500, 'wse frr ffe'),
(297, 'Goutham', 'ul haq', '', '', '', '', '', 'Jellyfish.jpg', '', 'male', 4, 'A', 0, ''),
(298, 'Goutham', 'ul haq', 'fdff', '', '', '', '', 'Birthday_Cake2.bmp', '', 'male', 4, 'A', 0, ''),
(299, 'brndn', 'mccullm', 'ret', 'ukj', '44883883', '84994944', 'dsf@fss.com', '', '01/09/1994', 'male', 4, 'A', 4, 'sd vvfdccd'),
(300, 'akbar', 'erer', 'tyu', 'bnu', '567767', '434343', 'dsddd@fdffd.mmm', '', '02/12/2014', 'male', 4, 'A', 5, 'ssss dfvdfdf'),
(301, 'moin', 'khan', 'tryry', 'rereer', '65556', '774747', 'fd.edgeH', 'Sun.bmp', '02/05/2014', 'male', 4, 'B', 1, 'wwe cccff'),
(302, 'wasee', 'rre', 'erw', 'qwq', '342342', '453222', 'ssededede', 'Fireworks_1.bmp', '02/03/2014', 'male', 12, 'B', 2, 'rrrftfzde '),
(303, 'manmohan', 'singh', 'gheueu', 'trtrty', '6565683883', '747474488', 'man@meeu.fk', 'man4.jpg', '02/03/1996', 'male', 12, 'B', 1, 'as gh.delhi dffdeeexs hhtfrf'),
(304, 'uueu', 'hds', 'ghdjfhj', 'gfbh', '7348', 'diewie', 'hdj', '', '02/04/2014', 'male', 12, 'B', 0, 'qwsqsws'),
(305, 'virat', 'kohli', 'wjwu', 'judu', '78584889', '48498399', '8sdsnjdhwh', 'Monkey_2.bmp', '02/02/2014', 'male', 12, 'B', 2, 'sqws eqwew e'),
(306, 'VS Achuthanandan', ' ', 'ddsddas', 'rrer', '454545435', '465465466', 'vsabhsg@gmail.com', 'vs.jpg', '03/12/1996', 'male', 12, 'B', 3, 'ef erfere ferwer erttrvfgf gfhjukuuy'),
(307, 'aliya', 'parveen', 'uruero', 'huejk', '738219900', '335546666566', 'opfsdijkej', 'Birthday_Cake4.bmp', '03/17/2014', 'female', 12, 'A', 2, 'DSEFfvfgfdf'),
(308, 'Jaya', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Leaf.bmp', '02/04/2014', 'female', 12, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(309, 'Uma', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Penguin.bmp', '02/04/2014', 'female', 12, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(310, 'seva', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Rabbit.bmp', '02/04/2014', 'female', 12, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(311, 'veena', 'gambhier', 'r34r34r', '', '', '', '', 'Hydrangeas.jpg', '', 'female', 11, 'A', 0, ''),
(312, 'deepika', 'palid', 'jede', 'uidwdu', '83842349', '8932879', '8heuw', 'Chocolate_Cake1.bmp', '03/11/2014', 'female', 11, 'A', 6, 'feff'),
(313, 'foolan', 'devi', 'hwjewei', 'ujuwewe', '343439434', '8438439439', 'hfujdfjhan', 'Rabbit.bmp', '03/21/1996', 'female', 11, 'B', 11, 'wqewedf ee rererere'),
(314, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 11, 'B', 7, 'rgr gtgtg juuu'),
(315, 'Jaya', 'Lalitha', 'diddo', 'ododoc', '7534923020', '8493030300', 'sewewe', '', '06/11/1946', 'female', 11, 'B', 1, 'tg5v fgdf'),
(316, 'Mamatha ', 'Banerjee', 'mrero', 'dfd', '6474839239', '8393939393', 'eevv', '', '07/05/1950', 'female', 11, 'B', 44000, 'erv ffec d'),
(317, 'sonia', 'Gandhi', 'hsiw', 'uuei', '838383883', '8447474774', 't5656', '', '03/15/2000', 'female', 11, 'B', 33, 'dff gfgfg'),
(318, 'Mamatha ', 'Banerjee', 'mrero', 'dfd', '6474839239', '8393939393', 'eevv', '', '07/05/1950', 'female', 11, 'B', 44000, 'erv ffec d'),
(319, 'virat', 'kohli', 'wjwu', 'judu', '78584889', '48498399', '8sdsnjdhwh', 'Monkey_2.bmp', '02/02/2014', 'male', 11, 'A', 2, 'sqws eqwew e'),
(320, 'VS Achuthanandan', ' ', 'ddsddas', 'rrer', '454545435', '465465466', 'vsabhsg@gmail.com', 'vs.jpg', '03/12/1996', 'male', 11, 'A', 3, 'ef erfere ferwer erttrvfgf gfhjukuuy'),
(321, 'sourav', 'ganguly', 'tryry', 'xggg', '6767676767', '4434343443', 'gsdrwg.jfuj', 'Shamrock1.bmp', '05/19/1998', 'male', 11, 'A', 7, 'er ty ui op'),
(322, 'shuaib', 'alhasan', 'fdff', 'dfd', '4555', '454554545', 'ddfdfdf@ddddd.in', 'Fireworks_2.bmp', '01/18/2005', 'male', 10, 'A', 3, 'sn nn mm uu'),
(323, 'shuaib', 'alhasan', 'fdff', 'dfd', '4555', '454554545', 'ddfdfdf@ddddd.in', 'Fireworks_2.bmp', '01/18/2005', 'male', 10, 'B', 3, 'sn nn mm uu'),
(324, 'jaques', 'kallis', 'rtrt', 'eree', '4454554545', '232332333', 'fggg,kkt@ewewe', '', '01/15/1998', 'male', 10, 'B', 6, 'we cv rt'),
(325, 'sastyhwy', 'uwuewu', 'huyeuuer', 'fdfdfdf', '445554656', '577676767', 'ffrgrfrf', 'Bear1.bmp', '03/18/2014', 'male', 10, 'B', 3, 'fgrgrgr'),
(326, 'kiran', 'iei', 'yruru', 'hewe', '73892992900', '838994893949', 'hereuruerueru', 'Leaf1.bmp', '03/07/2014', 'male', 10, 'B', 33, 'dwdwd'),
(327, 'manoj', 'ff', 'ert', 'www', '888888888', '7777555578', 'sasasas', 'Da_Vinci.bmp', '02/04/2014', 'male', 10, 'B', 345, 'rt trt t'),
(328, 'manvi', 'bisla', 'teye', 'gyhu', '777474774', '74747747', 'mss@wiwi.com', 'Bear.bmp', '04/16/2001', 'male', 10, 'B', 567, 'ddd gfg'),
(329, 'deepika', 'palid', 'jede', 'uidwdu', '83842349', '8932879', '8heuw', 'Chocolate_Cake1.bmp', '03/11/2014', 'female', 10, 'A', 6, 'feff'),
(330, 'devika', 'dwder', 'drwerre', 'rrggtg', '6676', '56565', 'frfg', 'Alien_1.bmp', '03/19/2014', 'female', 10, 'A', 9, 'ttgtg thth th'),
(331, 'seva', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Rabbit.bmp', '02/04/2014', 'female', 10, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(332, 'Hasaw', 'Swsdwe', 'ewe', 'eyggd', '4454554545', '4434343443', 'sdfert rtrt erttr', 'Women.bmp', '01/20/2005', 'female', 9, 'A', 1, 'sece tt4rt t4wedcffg ght5 yf b'),
(333, 'jasmin', 'jheu', 'usdi', 'jjkjks', '7987876675656', '878478499', 'ehnsdjfh', 'David.bmp', '03/19/2014', 'female', 9, 'A', 3, 'se ererer er erere'),
(334, 'shaheu', 'uuwe', 'u8jddjkk', 'jdsdjjkd', '43434344', '4546565645', 'iwiwehw', 'Fish.bmp', '02/10/2005', 'female', 9, 'A', 4, '4ft rtter rtert'),
(335, 'rabi', 'rer', 'frtrt', 'iop', '423232426', '4786879', 'seweere', 'Dragon.bmp', '03/23/2006', 'female', 9, 'B', 5, 'erfvg gjhjuku iooioe'),
(336, 'husna', 'sherin', 'idii', 'iidd', '7823726327', '843545455', 'asdgddg', 'Hand1.bmp', '03/11/2006', 'female', 9, 'B', 6, 'SDERfff efeerer'),
(337, 'aliya', 'heyw', 'uruero', 'huejk', '738219900', '335546666566', 'opfsdijkej', 'Birthday_Cake4.bmp', '03/17/2014', 'female', 9, 'B', 2, 'DSEFfvfgfdf'),
(338, 'Jaya', 'Lalitha', 'diddo', 'ododoc', '7534923020', '8493030300', 'sewewe', '', '06/11/1946', 'female', 9, 'B', 1, 'tg5v fgdf'),
(339, 'lubna', 'qasmi', 'err', 'www', '778787888888', '565565888888', 'sdw', 'Chrysanthemum1.jpg', '02/09/1998', 'female', 9, 'B', 7000, 'l mjj yy tt fr'),
(340, 'veena', 'bachan', '', '', '', '', '', 'Desert.jpg', '', 'female', 8, 'B', 0, ''),
(341, 'sourav', 'ganguly', 'tryry', 'xggg', '6767676767', '4434343443', 'gsdrwg.jfuj', 'Shamrock1.bmp', '05/19/1998', 'male', 8, 'A', 7, 'er ty ui op'),
(342, 'shuaib', 'alhasan', 'fdff', 'dfd', '4555', '454554545', 'ddfdfdf@ddddd.in', 'Fireworks_2.bmp', '01/18/2005', 'male', 8, 'A', 3, 'sn nn mm uu'),
(343, 'moin', 'khan', 'tryry', 'rereer', '65556', '774747', 'fd.edgeH', 'Sun.bmp', '02/05/2014', 'male', 8, 'A', 1, 'wwe cccff'),
(344, 'Misbah', 'ul haq', 'yuwy', 'jjs', '939399393', '99595959', '', 'Tulips.jpg', '02/16/1999', 'male', 8, 'A', 2500, 'rt tt yu ere'),
(345, 'virat', 'kohli', 'wjwu', 'judu', '78584889', '48498399', '8sdsnjdhwh', 'Monkey_2.bmp', '02/02/2014', 'male', 8, 'B', 2, 'sqws eqwew e'),
(346, 'VS Achuthanandan', ' ', 'ddsddas', 'rrer', '454545435', '465465466', 'vsabhsg@gmail.com', 'vs.jpg', '03/12/1996', 'male', 8, 'B', 3, 'ef erfere ferwer erttrvfgf gfhjukuuy'),
(347, 'sourav', 'ganguly', 'tryry', 'xggg', '6767676767', '4434343443', 'gsdrwg.jfuj', 'Shamrock1.bmp', '05/19/1998', 'male', 8, 'B', 7, 'er ty ui op'),
(348, 'deepika', 'palid', 'jede', 'uidwdu', '83842349', '8932879', '8heuw', 'Chocolate_Cake1.bmp', '03/11/2014', 'female', 8, 'A', 6, 'feff'),
(349, 'devika', 'dwder', 'drwerre', 'rrggtg', '6676', '56565', 'frfg', 'Alien_1.bmp', '03/19/2014', 'female', 8, 'A', 9, 'ttgtg thth th'),
(350, 'seva', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Rabbit.bmp', '02/04/2014', 'female', 8, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(351, 'Hasaw', 'Swsdwe', 'ewe', 'eyggd', '4454554545', '4434343443', 'sdfert rtrt erttr', 'Women.bmp', '01/20/2005', 'female', 8, 'A', 1, 'sece tt4rt t4wedcffg ght5 yf b'),
(352, 'jasmin', 'jheu', 'usdi', 'jjkjks', '7987876675656', '878478499', 'ehnsdjfh', 'David.bmp', '03/19/2014', 'female', 7, 'A', 3, 'se ererer er erere'),
(353, 'Hasaw', 'Swsdwe', 'ewe', 'eyggd', '4454554545', '4434343443', 'sdfert rtrt erttr', 'Women.bmp', '01/20/2005', 'female', 7, 'B', 1, 'sece tt4rt t4wedcffg ght5 yf b'),
(354, 'aliya', 'heyw', 'uruero', 'huejk', '738219900', '335546666566', 'opfsdijkej', 'Birthday_Cake4.bmp', '03/17/2014', 'female', 7, 'B', 2, 'DSEFfvfgfdf'),
(355, 'jasmin', 'jheu', 'usdi', 'jjkjks', '7987876675656', '878478499', 'ehnsdjfh', 'David.bmp', '03/19/2014', 'female', 7, 'B', 3, 'se ererer er erere'),
(356, 'shaheu', 'uuwe', 'u8jddjkk', 'jdsdjjkd', '43434344', '4546565645', 'iwiwehw', 'Fish.bmp', '02/10/2005', 'female', 7, 'B', 4, '4ft rtter rtert'),
(357, 'rabi', 'rer', 'frtrt', 'iop', '423232426', '4786879', 'seweere', 'Dragon.bmp', '03/23/2006', 'female', 7, 'B', 5, 'erfvg gjhjuku iooioe'),
(358, 'virat', 'kohli', 'wjwu', 'judu', '78584889', '48498399', '8sdsnjdhwh', 'Monkey_2.bmp', '02/02/2014', 'male', 7, 'A', 2, 'sqws eqwew e'),
(359, 'VS Achuthanandan', ' ', 'ddsddas', 'rrer', '454545435', '465465466', 'vsabhsg@gmail.com', 'vs.jpg', '03/12/1996', 'male', 7, 'A', 3, 'ef erfere ferwer erttrvfgf gfhjukuuy'),
(360, 'virat', 'kohli', 'wjwu', 'judu', '78584889', '48498399', '8sdsnjdhwh', 'Monkey_2.bmp', '02/02/2014', 'male', 7, 'A', 2, 'sqws eqwew e'),
(361, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 7, 'B', 7, 'rgr gtgtg juuu'),
(362, 'rabri', 'devi', 'gduww ', 'gshus', '33334454545', '233434344344', 'jjookopklk', 'Fish1.bmp', '03/14/2003', 'female', 6, 'B', 9, 'rtytyt tytyty yytyty'),
(363, 'foolan', 'devi', 'hwjewei', 'ujuwewe', '343439434', '8438439439', 'hfujdfjhan', 'Rabbit.bmp', '03/21/1996', 'female', 5, 'B', 11, 'wqewedf ee rererere'),
(364, 'Goutham', 'gambhier', 'r34r34r', '', '', '', '', '', '', 'male', 5, 'A', 0, ''),
(365, 'Goutham', 'gambhier', 'r34r34r', '', '', '', '', 'Balloon.bmp', '', 'male', 5, 'A', 0, ''),
(366, 'Goutham', 'ul haq', '', '', '', '', '', 'Jellyfish.jpg', '', 'male', 5, 'A', 0, ''),
(367, 'Goutham', 'ul haq', 'fdff', '', '', '', '', 'Birthday_Cake2.bmp', '', 'male', 3, 'A', 0, ''),
(368, 'sourav', 'ganguly', 'tryry', 'xggg', '6767676767', '4434343443', 'gsdrwg.jfuj', 'Shamrock1.bmp', '05/19/1998', 'male', 3, 'A', 7, 'er ty ui op'),
(369, 'graham', 'gooch', 'nmm', 'vbn', '54555554343', '323232323323', 'sdaaqqq', 'Monkey_1.bmp', '04/15/1998', 'male', 3, 'A', 11, 'wee  fefe'),
(370, 'virat', 'kohli', 'wjwu', 'judu', '78584889', '48498399', '8sdsnjdhwh', 'Monkey_2.bmp', '02/02/2014', 'male', 5, 'B', 2, 'sqws eqwew e'),
(371, 'VS Achuthanandan', ' ', 'ddsddas', 'rrer', '454545435', '465465466', 'vsabhsg@gmail.com', 'vs.jpg', '03/12/1996', 'male', 5, 'B', 3, 'ef erfere ferwer erttrvfgf gfhjukuuy'),
(372, 'sourav', 'ganguly', 'tryry', 'xggg', '6767676767', '4434343443', 'gsdrwg.jfuj', 'Shamrock1.bmp', '05/19/1998', 'male', 5, 'B', 7, 'er ty ui op'),
(373, 'faisal', 'errr', 'wded', 'eer', '454', '334', 'notenemeis', '', '02/18/2014', 'male', 4, 'B', 3, 'wweeww'),
(374, 'shuaib', 'alhasan', 'fdff', 'dfd', '4555', '454554545', 'ddfdfdf@ddddd.in', 'Fireworks_2.bmp', '01/18/2005', 'male', 4, 'B', 3, 'sn nn mm uu'),
(375, 'Misbah', 'ul haq', 'yuwy', 'jjs', '939399393', '99595959', '', 'Tulips.jpg', '02/16/1999', 'male', 4, 'B', 2500, 'rt tt yu ere'),
(376, 'Misbah', 'ul haq', 'yuwy', 'jjs', '939399393', '99595959', '', 'Tulips.jpg', '02/16/1999', 'male', 3, 'A', 2500, 'rt tt yu ere'),
(377, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 4, 'B', 7, 'rgr gtgtg juuu'),
(378, 'rabri', 'devi', 'gduww ', 'gshus', '33334454545', '233434344344', 'jjookopklk', 'Fish1.bmp', '03/14/2003', 'female', 4, 'B', 9, 'rtytyt tytyty yytyty'),
(379, 'foolan', 'devi', 'hwjewei', 'ujuwewe', '343439434', '8438439439', 'hfujdfjhan', 'Rabbit.bmp', '03/21/1996', 'female', 4, 'B', 11, 'wqewedf ee rererere'),
(380, 'jasy', 'jheu', 'usdi', 'jjkjks', '7987876675656', '878478499', 'ehnsdjfh', 'David.bmp', '03/19/2014', 'female', 4, 'A', 3, 'se ererer er erere'),
(381, 'husna', 'DA', 'idii', 'iidd', '7823726327', '843545455', 'asdgddg', 'Hand1.bmp', '03/11/2006', 'female', 4, 'A', 6, 'SDERfff efeerer'),
(382, 'aliya', 'parveen', 'uruero', 'huejk', '738219900', '335546666566', 'opfsdijkej', 'Birthday_Cake4.bmp', '03/17/2014', 'female', 4, 'A', 2, 'DSEFfvfgfdf'),
(383, 'Jaya', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Leaf.bmp', '02/04/2014', 'female', 6, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(384, 'Uma', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Penguin.bmp', '02/04/2014', 'female', 6, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(385, 'seva', 'Bharathi', 'eded ', 'ere', '33334343', '5555453', 'sdsdss', 'Rabbit.bmp', '02/04/2014', 'female', 6, 'A', 1, 'sss erer3rwr rrwrr mncy alpy '),
(386, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 6, 'B', 7, 'rgr gtgtg juuu'),
(387, 'Jaya', 'Lalitha', 'diddo', 'ododoc', '7534923020', '8493030300', 'sewewe', '', '06/11/1946', 'female', 6, 'B', 1, 'tg5v fgdf'),
(388, 'Mamatha ', 'Banerjee', 'mrero', 'dfd', '6474839239', '8393939393', 'eevv', '', '07/05/1950', 'female', 6, 'B', 44000, 'erv ffec d'),
(389, 'veena', 'gambhier', 'r34r34r', '', '', '', '', 'Hydrangeas.jpg', '', 'female', 6, 'A', 0, ''),
(390, 'deepika', 'palid', 'jede', 'uidwdu', '83842349', '8932879', '8heuw', 'Chocolate_Cake1.bmp', '03/11/2014', 'female', 6, 'A', 6, 'feff'),
(391, 'devika', 'dwder', 'drwerre', 'rrggtg', '6676', '56565', 'frfg', 'Alien_1.bmp', '03/19/2014', 'female', 6, 'A', 9, 'ttgtg thth th'),
(392, 'aliya', 'heyw', 'uruero', 'huejk', '738219900', '335546666566', 'opfsdijkej', 'Birthday_Cake4.bmp', '03/17/2014', 'female', 2, 'A', 2, 'DSEFfvfgfdf'),
(393, 'neenu', 'r', 'shibu', 'anny', '852910123', '222445555', 'neenu@gmail.com', 'vs1.jpg', '02/12/2000', 'female', 2, 'A', 10, 'xdgvxfgvdg\r\ngddxfg\r\nghy'),
(394, 'Hasaw', 'Swsdwe', 'ewe', 'eyggd', '4454554545', '4434343443', 'sdfert rtrt erttr', 'Women.bmp', '01/20/2005', 'female', 2, 'A', 1, 'sece tt4rt t4wedcffg ght5 yf b'),
(395, 'Hasaw', 'Swsdwe', 'ewe', 'eyggd', '4454554545', '4434343443', 'sdfert rtrt erttr', 'Women.bmp', '01/20/2005', 'female', 3, 'B', 1, 'sece tt4rt t4wedcffg ght5 yf b'),
(396, 'aliya', 'heyw', 'uruero', 'huejk', '738219900', '335546666566', 'opfsdijkej', 'Birthday_Cake4.bmp', '03/17/2014', 'female', 3, 'B', 2, 'DSEFfvfgfdf'),
(397, 'jasmin', 'jheu', 'usdi', 'jjkjks', '7987876675656', '878478499', 'ehnsdjfh', 'David.bmp', '03/19/2014', 'female', 3, 'B', 3, 'se ererer er erere'),
(398, 'shaheu', 'uuwe', 'u8jddjkk', 'jdsdjjkd', '43434344', '4546565645', 'iwiwehw', 'Fish.bmp', '02/10/2005', 'female', 3, 'B', 4, '4ft rtter rtert'),
(399, 'rabi', 'rer', 'frtrt', 'iop', '423232426', '4786879', 'seweere', 'Dragon.bmp', '03/23/2006', 'female', 3, 'B', 5, 'erfvg gjhjuku iooioe'),
(400, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 3, 'B', 7, 'rgr gtgtg juuu'),
(401, 'rabri', 'devi', 'gduww ', 'gshus', '33334454545', '233434344344', 'jjookopklk', 'Fish1.bmp', '03/14/2003', 'female', 3, 'B', 9, 'rtytyt tytyty yytyty'),
(402, 'foolan', 'devi', 'hwjewei', 'ujuwewe', '343439434', '8438439439', 'hfujdfjhan', 'Rabbit.bmp', '03/21/1996', 'female', 3, 'B', 11, 'wqewedf ee rererere'),
(403, 'hamna', 'farh', 'euierui', 'hxjsdui', '858392329', '9482382389', 'hdwyhdwyeyedh', 'Penguin.bmp', '03/23/2006', 'female', 3, 'B', 7, 'rgr gtgtg juuu'),
(404, 'rabri', 'devi', 'gduww ', 'gshus', '33334454545', '233434344344', 'jjookopklk', 'Fish1.bmp', '03/14/2003', 'female', 3, 'B', 9, 'rtytyt tytyty yytyty'),
(405, 'foolan', 'devi', 'hwjewei', 'ujuwewe', '343439434', '8438439439', 'hfujdfjhan', 'Rabbit.bmp', '03/21/1996', 'female', 2, 'B', 11, 'wqewedf ee rererere'),
(406, 'moin', 'khan', 'tryry', 'rereer', '65556', '774747', 'fd.edgeH', 'Sun.bmp', '02/05/2014', 'male', 2, 'B', 1, 'wwe cccff'),
(407, 'wasee', 'rre', 'erw', 'qwq', '342342', '453222', 'ssededede', 'Fireworks_1.bmp', '02/03/2014', 'male', 2, 'B', 2, 'rrrftfzde '),
(408, 'manmohan', 'singh', 'gheueu', 'trtrty', '6565683883', '747474488', 'man@meeu.fk', 'man4.jpg', '02/03/1996', 'male', 2, 'B', 1, 'as gh.delhi dffdeeexs hhtfrf'),
(409, 'uueu', 'hds', 'ghdjfhj', 'gfbh', '7348', 'diewie', 'hdj', '', '02/04/2014', 'male', 2, 'B', 0, 'qwsqsws'),
(410, 'virat', 'kohli', 'wjwu', 'judu', '78584889', '48498399', '8sdsnjdhwh', 'Monkey_2.bmp', '02/02/2014', 'male', 1, 'B', 2, 'sqws eqwew e'),
(411, 'VS Achuthanandan', ' ', 'ddsddas', 'rrer', '454545435', '465465466', 'vsabhsg@gmail.com', 'vs.jpg', '03/12/1996', 'male', 1, 'B', 3, 'ef erfere ferwer erttrvfgf gfhjukuuy'),
(412, 'sastyhwy', 'uwuewu', 'huyeuuer', 'fdfdfdf', '445554656', '577676767', 'ffrgrfrf', 'Bear1.bmp', '03/18/2014', 'male', 1, 'B', 3, 'fgrgrgr'),
(413, 'kiran', 'iei', 'yruru', 'hewe', '73892992900', '838994893949', 'hereuruerueru', 'Leaf1.bmp', '03/07/2014', 'male', 1, 'B', 33, 'dwdwd'),
(414, 'virat', 'kohli', 'wjwu', 'judu', '78584889', '48498399', '8sdsnjdhwh', 'Monkey_2.bmp', '02/02/2014', 'male', 1, 'B', 2, 'sqws eqwew e'),
(415, 'VS Achuthanandan', ' ', 'ddsddas', 'rrer', '454545435', '465465466', 'vsabhsg@gmail.com', 'vs.jpg', '03/12/1996', 'male', 1, 'B', 3, 'ef erfere ferwer erttrvfgf gfhjukuuy'),
(416, 'Kumar', 'sanga', 'gdw', 'HJDWH', '4343', '445', 'klfgf', 'Sun1.bmp', '03/07/2007', 'male', 1, 'A', 44, 'dsfv erferewrwer'),
(417, 'Angelo', 'Mathews', 'gwhdw', 'ejikwi', '733738', '87337', 'ghjjwdjhwdjhd', 'Bear2.bmp', '03/09/2005', 'male', 2, 'A', 77, 'tttrr'),
(418, 'jehan', 'mubarak', 'iewieq', 'jqikwsi', '7883839889', '8897876666', 'njshjsdjss', 'Earth1.bmp', '03/16/2005', 'male', 2, 'A', 22, 'edwdwdwddwdwdw'),
(419, 'parvez', 'musharaf', 'jkwk', 'jduwu', '73773773', '73838388', '7bsdsdmn', 'Hitchcock1.bmp', '03/22/2006', 'male', 1, 'A', 21, 'rtrtr  rtr tr rtrtr'),
(420, 'Parvez ', 'Maal', 'jkdwj', 'hdsdhg', '7864384888', '2332324434', 'rsdaerwerer', 'Owl.bmp', '03/02/2005', 'male', 1, 'A', 7, 'gftyb t tt rtyrtyrtyry'),
(421, '0', '0', '0', '0', '0', '0', '0', '', '0', '0', 1, '0', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` int(11) NOT NULL,
  `fee` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `class`, `fee`) VALUES
(1, 1, 100),
(2, 2, 323),
(3, 3, 300),
(4, 4, 400),
(5, 5, 500),
(6, 6, 600),
(7, 7, 700),
(8, 8, 800),
(9, 9, 900),
(10, 10, 1000),
(11, 11, 1600),
(12, 12, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `name`, `date`) VALUES
(1, 'ddgdg', '03/04/2014'),
(2, 'dcfdcd', '03/17/2014'),
(3, 'ajm', '03/10/2014'),
(4, 'sneha', '03/04/2014');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE IF NOT EXISTS `fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `month` varchar(20) NOT NULL,
  `year` year(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `student_id`, `date`, `month`, `year`) VALUES
(114, 109, '2014-03-01', 'January', 2014),
(104, 137, '2014-02-25', 'January', 2014),
(108, 136, '2014-02-19', 'January', 2014),
(70, 110, '2014-02-04', 'January', 2014),
(71, 111, '2014-02-05', 'January', 2014),
(66, 23, '2014-02-04', 'January', 2014),
(80, 29, '2014-02-23', 'January', 2014),
(79, 72, '2014-02-03', 'February', 2014),
(78, 23, '2014-02-04', 'February', 2014),
(77, 89, '2014-02-05', 'January', 2014),
(76, 78, '2014-02-03', 'January', 2014),
(75, 120, '2014-02-09', 'January', 2014),
(74, 119, '2014-02-16', 'January', 2014),
(73, 116, '2014-02-17', 'January', 2014),
(89, 70, '1970-01-01', 'January', 2014),
(81, 29, '2014-02-01', 'February', 2014),
(82, 29, '2014-03-02', 'March', 2014),
(87, 70, '1970-01-01', 'January', 2014),
(90, 70, '1970-01-01', 'January', 2014),
(91, 70, '1970-01-01', 'January', 2014),
(92, 70, '1970-01-01', 'January', 2014),
(93, 70, '1970-01-01', 'January', 2014),
(94, 70, '1970-01-01', 'January', 2014),
(95, 70, '1970-01-01', 'January', 2014),
(99, 31, '1970-01-01', 'February', 2014),
(97, 31, '1970-01-01', 'January', 2014),
(98, 72, '1970-01-01', 'January', 2014),
(100, 70, '2014-03-05', 'February', 2014),
(101, 73, '1970-01-01', 'February', 2014),
(102, 128, '2014-02-25', 'February', 2014),
(103, 109, '2014-02-25', 'February', 2014),
(109, 138, '2014-02-26', 'January', 2014),
(107, 17, '2014-02-26', 'January', 2014),
(110, 138, '2014-02-26', 'February', 2014),
(111, 138, '2014-02-26', 'March', 2014),
(112, 31, '2014-03-10', 'March', 2014),
(113, 73, '2014-03-05', 'January', 2014),
(115, 112, '2014-03-01', 'January', 2014),
(116, 121, '2014-03-01', 'January', 2014);

-- --------------------------------------------------------

--
-- Table structure for table `other_fees`
--

CREATE TABLE IF NOT EXISTS `other_fees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stud_id` int(11) DEFAULT NULL,
  `fee_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `other_fees`
--

INSERT INTO `other_fees` (`id`, `stud_id`, `fee_id`, `date`) VALUES
(1, 25, 5, '2014-02-05'),
(82, 31, 5, '2014-03-01'),
(5, 109, 5, '1970-01-01'),
(6, 104, 5, '2014-02-19'),
(7, 121, 5, '1970-01-01'),
(8, 73, 5, '2014-02-04'),
(9, 110, 5, '2014-02-17'),
(10, 111, 5, '2014-02-10'),
(11, 112, 5, '2014-02-10'),
(12, 116, 5, '2014-02-10'),
(23, 31, 6, '2014-02-05'),
(24, 70, 6, '2014-02-13'),
(25, 119, 5, '2014-02-05'),
(26, 31, 47, '2014-02-12'),
(27, 70, 47, '2014-02-14'),
(28, 31, 46, '2014-02-14'),
(29, 70, 46, '2014-02-13'),
(30, 120, 5, '1970-01-01'),
(31, 122, 5, '1970-01-01'),
(32, 122, 5, '1970-01-01'),
(33, 123, 5, '1970-01-01'),
(34, 136, 5, '1970-01-01'),
(35, 72, 6, '2014-02-25'),
(36, 72, 6, '2014-02-25'),
(37, 72, 6, '2014-02-25'),
(38, 73, 6, '2014-02-25'),
(39, 109, 6, '2014-02-25'),
(40, 110, 6, '2014-02-25'),
(41, 111, 6, '2014-02-25'),
(42, 112, 6, '2014-02-25'),
(43, 116, 6, '2014-02-25'),
(44, 119, 6, '2014-02-25'),
(45, 120, 6, '2014-02-25'),
(46, 121, 6, '2014-02-25'),
(47, 122, 6, '2014-02-25'),
(48, 123, 6, '2014-02-25'),
(49, 127, 6, '2014-02-25'),
(50, 128, 6, '2014-02-25'),
(61, 31, 50, '2014-02-26'),
(62, 70, 50, '2014-02-26'),
(63, 72, 50, '2014-02-26'),
(64, 73, 50, '2014-02-26'),
(65, 109, 50, '2014-02-26'),
(66, 110, 50, '2014-02-26'),
(67, 111, 50, '2014-02-26'),
(68, 112, 50, '2014-02-26'),
(69, 116, 50, '2014-02-26'),
(70, 119, 50, '2014-02-26'),
(71, 120, 50, '2014-02-26'),
(72, 121, 50, '2014-02-26'),
(73, 122, 50, '2014-02-26'),
(74, 123, 50, '2014-02-26'),
(75, 127, 50, '2014-02-26'),
(76, 128, 50, '2014-02-26'),
(77, 138, 5, '2014-03-01'),
(78, 138, 6, '2014-02-26'),
(79, 36, 54, '2014-03-12'),
(80, 100, 54, '2014-03-04'),
(81, 78, 5, '2014-03-03'),
(83, 241, 5, '2014-03-06'),
(84, 242, 5, '2014-03-10');

-- --------------------------------------------------------

--
-- Table structure for table `other_fee_types`
--

CREATE TABLE IF NOT EXISTS `other_fee_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=211 ;

--
-- Dumping data for table `other_fee_types`
--

INSERT INTO `other_fee_types` (`id`, `name`, `amount`, `due_date`) VALUES
(56, 'PTA', 750, '03/31/2014'),
(50, 'eee', 555, '02/05/2014'),
(52, 'PTA', 750, '03/31/2014'),
(57, 'IEEE', 2500, '03/15/2014'),
(58, 'yg8igtyi', 5656, '03/03/2014');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
