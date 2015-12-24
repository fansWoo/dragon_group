-- phpMyAdmin SQL Dump
-- version 4.0.10.9
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 建立日期: 2015-12-24: 14:05:43
-- 伺服器版本: 5.6.26
-- PHP 版本: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `fanswoo_com_dragon_group`
--

-- --------------------------------------------------------

--
-- 資料表結構 `fs_advertising`
--

CREATE TABLE IF NOT EXISTS `fs_advertising` (
  `advertisingid` mediumint(8) NOT NULL,
  `uid` mediumint(8) NOT NULL,
  `title` char(100) NOT NULL,
  `href` char(100) NOT NULL,
  `content` text NOT NULL,
  `picids` char(100) NOT NULL,
  `classids` char(100) NOT NULL,
  `prioritynum` mediumint(8) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  UNIQUE KEY `advertisingid` (`advertisingid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `fs_class`
--

CREATE TABLE IF NOT EXISTS `fs_class` (
  `classid` mediumint(8) NOT NULL,
  `classname` char(40) NOT NULL,
  `slug` char(40) NOT NULL DEFAULT '',
  `content` char(200) NOT NULL,
  `uid` mediumint(8) NOT NULL,
  `amountnum` mediumint(4) NOT NULL DEFAULT '0',
  `modelname` char(32) NOT NULL DEFAULT '',
  `classids` char(100) NOT NULL,
  `prioritynum` mediumint(8) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `classid` (`classid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_class`
--

INSERT INTO `fs_class` (`classid`, `classname`, `slug`, `content`, `uid`, `amountnum`, `modelname`, `classids`, `prioritynum`, `updatetime`, `status`) VALUES
(528518, '專業諮詢', 'df036cd3', '', 528502, 0, 'note', '', 0, '2015-09-17 17:32:59', 1),
(528618, '醫療美容', '35786c51', '', 528502, 0, 'note', '', 0, '2015-09-17 17:28:08', 1),
(528622, '案例分享', 'cases', '', 528502, 0, 'pager', '', 0, '2015-12-17 17:18:04', 1),
(528623, '整形外科', '021e5f22', '', 528502, 0, 'showpiece', '', 10, '2015-12-24 19:17:00', 1),
(528624, '健康管理', '57e5d136', '', 528501, 0, 'showpiece', '', 0, '2015-12-17 15:36:22', 1),
(528625, '抗老化', '5d9f1190', '', 528501, 0, 'showpiece', '', 0, '2015-12-17 15:36:32', 1),
(528626, '美肌保養', '7e13d1d1', '', 528501, 0, 'showpiece', '', 0, '2015-12-17 15:36:45', 1),
(528627, '微整形', '92bebf88', '', 528501, 0, 'showpiece', '', 0, '2015-12-17 15:37:01', 1),
(528628, '微整形', '7816', '', 528502, 0, 'note', '', 0, '2015-12-23 16:32:21', 1),
(528629, '健康管理', '45612', '', 528502, 0, 'note', '', 0, '2015-12-23 16:32:46', 1),
(528630, '整形外科', 'grtt', '', 528502, 0, 'note', '', 0, '2015-12-23 16:33:29', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `fs_contact`
--

CREATE TABLE IF NOT EXISTS `fs_contact` (
  `contactid` mediumint(8) NOT NULL,
  `username` char(100) NOT NULL,
  `email` char(100) CHARACTER SET latin1 NOT NULL,
  `phone` char(100) CHARACTER SET latin1 NOT NULL,
  `company` char(100) NOT NULL,
  `content` text NOT NULL,
  `status_process` int(11) NOT NULL,
  `classtype` char(100) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  UNIQUE KEY `contactid` (`contactid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_contact`
--

INSERT INTO `fs_contact` (`contactid`, `username`, `email`, `phone`, `company`, `content`, `status_process`, `classtype`, `updatetime`, `status`) VALUES
(1, 'Mimi Chang', 'mimi@fanswoo.com', '0912345678', '', 'Hello!', 1, '', '2015-09-17 16:06:21', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `fs_note`
--

CREATE TABLE IF NOT EXISTS `fs_note` (
  `noteid` mediumint(8) unsigned NOT NULL,
  `uid` mediumint(8) NOT NULL DEFAULT '0',
  `title` char(50) NOT NULL DEFAULT '',
  `username` char(30) NOT NULL DEFAULT '',
  `picids` char(100) DEFAULT NULL,
  `classids` char(100) DEFAULT NULL,
  `modelname` char(100) DEFAULT NULL,
  `viewnum` mediumint(8) DEFAULT NULL,
  `replynum` mediumint(8) DEFAULT NULL,
  `prioritynum` mediumint(8) DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `noteid` (`noteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_note`
--

INSERT INTO `fs_note` (`noteid`, `uid`, `title`, `username`, `picids`, `classids`, `modelname`, `viewnum`, `replynum`, `prioritynum`, `updatetime`, `status`) VALUES
(1, 528501, '最新消息標題', '', '', '528518', 'note', 0, 0, 0, '2015-08-30 20:35:41', 1),
(2, 528501, '最新消息標題', '', '', '528518', 'note', 0, 0, 0, '2015-09-17 16:55:01', 1),
(3, 528501, '最新消息標題', '', '', '528618', 'note', 0, 0, 0, '2015-09-17 18:58:29', 1),
(4, 528501, '最新消息標題', '', '', '528518', 'note', 0, 0, 0, '2015-09-18 09:34:04', 1),
(5, 528501, '最新消息標題', '', '', '528618', 'note', 0, 0, 0, '2015-09-18 09:34:15', 1),
(6, 528501, '最新消息標題', '', '', '528518', 'note', 0, 0, 0, '2015-09-18 09:34:42', 1),
(7, 528502, 'This is Lorem Ipsum,Lorem Ipsum', '', '', '', 'note', 0, 0, 0, '2015-12-23 12:03:10', 1),
(8, 528502, 'This is Lorem Ipsum,Lorem Ipsum', '', '', '', 'note', 0, 0, 0, '2015-12-23 12:04:38', 1),
(9, 528502, 'This is Lorem Ipsum,Lorem Ipsum', '', '', '', 'note', 0, 0, 0, '2015-12-23 12:04:53', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `fs_note_field`
--

CREATE TABLE IF NOT EXISTS `fs_note_field` (
  `noteid` mediumint(8) NOT NULL,
  `content` text NOT NULL,
  UNIQUE KEY `noteid` (`noteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_note_field`
--

INSERT INTO `fs_note_field` (`noteid`, `content`) VALUES
(1, '<img src="http://localhost/dragon_group/app/pic/00/00/00/03-35a0fdc9ca9d7a35.jpg" style="font-family: ''Noto Sans CJK TC'', ''LiHei Pro'', 儷黑體, sans-serif; border: 0px; display: block; margin: 20px auto; border-radius: 5px; color: rgb(0, 0, 0); font-size: medium; line-height: 19.2px;" />\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，不斷更新醫療器材以及聘請優良的醫師來為大家服務，近年來更配合政府的免費健康服務，提供多元化的免費醫療檢查，歡迎大家多多利用，平時多關心家人及朋友的健康，並長期做運動來保健身體。您的支持與認同就是龍安最大的原動力。</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n'),
(2, '<img src="http://localhost/dragon_group/app/pic/00/00/00/03-35a0fdc9ca9d7a35.jpg" style="font-family: ''Noto Sans CJK TC'', ''LiHei Pro'', 儷黑體, sans-serif; border: 0px; display: block; margin: 20px auto; border-radius: 5px; color: rgb(0, 0, 0); font-size: medium; line-height: 19.2px;" />\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，不斷更新醫療器材以及聘請優良的醫師來為大家服務，近年來更配合政府的免費健康服務，提供多元化的免費醫療檢查，歡迎大家多多利用，平時多關心家人及朋友的健康，並長期做運動來保健身體。您的支持與認同就是龍安最大的原動力。</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n'),
(3, '<img src="http://localhost/dragon_group/app/pic/00/00/00/03-35a0fdc9ca9d7a35.jpg" style="font-family: ''Noto Sans CJK TC'', ''LiHei Pro'', 儷黑體, sans-serif; border: 0px; display: block; margin: 20px auto; border-radius: 5px; color: rgb(0, 0, 0); font-size: medium; line-height: 19.2px;" />\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，不斷更新醫療器材以及聘請優良的醫師來為大家服務，近年來更配合政府的免費健康服務，提供多元化的免費醫療檢查，歡迎大家多多利用，平時多關心家人及朋友的健康，並長期做運動來保健身體。您的支持與認同就是龍安最大的原動力。</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n'),
(4, '<img src="http://localhost/dragon_group/app/pic/00/00/00/03-35a0fdc9ca9d7a35.jpg" style="font-family: ''Noto Sans CJK TC'', ''LiHei Pro'', 儷黑體, sans-serif; border: 0px; display: block; margin: 20px auto; border-radius: 5px; color: rgb(0, 0, 0); font-size: medium; line-height: 19.2px;" />\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，不斷更新醫療器材以及聘請優良的醫師來為大家服務，近年來更配合政府的免費健康服務，提供多元化的免費醫療檢查，歡迎大家多多利用，平時多關心家人及朋友的健康，並長期做運動來保健身體。您的支持與認同就是龍安最大的原動力。</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n'),
(5, '<img src="http://localhost/dragon_group/app/pic/00/00/00/03-35a0fdc9ca9d7a35.jpg" style="font-family: ''Noto Sans CJK TC'', ''LiHei Pro'', 儷黑體, sans-serif; border: 0px; display: block; margin: 20px auto; border-radius: 5px; color: rgb(0, 0, 0); font-size: medium; line-height: 19.2px;" />\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，不斷更新醫療器材以及聘請優良的醫師來為大家服務，近年來更配合政府的免費健康服務，提供多元化的免費醫療檢查，歡迎大家多多利用，平時多關心家人及朋友的健康，並長期做運動來保健身體。您的支持與認同就是龍安最大的原動力。</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n'),
(6, '<img src="http://localhost/dragon_group/app/pic/00/00/00/03-35a0fdc9ca9d7a35.jpg" style="font-family: ''Noto Sans CJK TC'', ''LiHei Pro'', 儷黑體, sans-serif; border: 0px; display: block; margin: 20px auto; border-radius: 5px; color: rgb(0, 0, 0); font-size: medium; line-height: 19.2px;" />\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，不斷更新醫療器材以及聘請優良的醫師來為大家服務，近年來更配合政府的免費健康服務，提供多元化的免費醫療檢查，歡迎大家多多利用，平時多關心家人及朋友的健康，並長期做運動來保健身體。您的支持與認同就是龍安最大的原動力。</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>'),
(7, '<span style="color: rgb(0, 0, 0); font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; font-size: 14px; letter-spacing: 2px; line-height: 22px;">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</span>'),
(8, '<span style="color: rgb(0, 0, 0); font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; font-size: 14px; letter-spacing: 2px; line-height: 22px;">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</span>'),
(9, '<br />\r\n<span style="font-family:arial;"><span style="color: rgb(0, 0, 0); font-size: 14px; letter-spacing: 2px; line-height: 22px;"><img alt="" src="http://localhost/dragon_group/app/pic/00/00/00/06-ca837e06e7d741b5.jpg" /><br />\r\n<br />\r\nSed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</span></span><span style="color: rgb(0, 0, 0); font-family: arial; font-size: 14px; letter-spacing: 2px; line-height: 22px;">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</span>');

-- --------------------------------------------------------

--
-- 資料表結構 `fs_pager`
--

CREATE TABLE IF NOT EXISTS `fs_pager` (
  `pagerid` mediumint(8) unsigned NOT NULL,
  `uid` mediumint(8) NOT NULL,
  `username` char(30) NOT NULL,
  `title` char(100) NOT NULL,
  `slug` char(100) NOT NULL,
  `href` char(100) NOT NULL,
  `classids` char(100) NOT NULL,
  `target` int(1) NOT NULL,
  `viewnum` mediumint(8) NOT NULL,
  `prioritynum` mediumint(8) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`pagerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_pager`
--

INSERT INTO `fs_pager` (`pagerid`, `uid`, `username`, `title`, `slug`, `href`, `classids`, `target`, `viewnum`, `prioritynum`, `updatetime`, `status`) VALUES
(1, 528502, '', '案例分享', 'aceade27', '', '528622', 0, 0, 0, '2015-11-06 13:58:51', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `fs_pager_field`
--

CREATE TABLE IF NOT EXISTS `fs_pager_field` (
  `pagerid` mediumint(8) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`pagerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_pager_field`
--

INSERT INTO `fs_pager_field` (`pagerid`, `content`) VALUES
(1, '<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">服務項目<br />\r\n我們已經在地服務將近20年，長期以來不斷照護著大直地區的居民，我們秉持著關懷的心與專業的技術，不斷更新醫療器材以及聘請優良的醫師來為大家服務，近年來更配合政府的免費健康服務，提供多元化的免費醫療檢查，歡迎大家多多利用，平時多關心家人及朋友的健康，並長期做運動來保健身體。您的支持與認同就是龍安最大的原動力。</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n\r\n<p style="font-family: ''Times New Roman'', ''LiHei Pro'', 儷黑體, sans-serif; margin: 0px 0px 10px; padding: 0px; font-size: 14px; line-height: 22px; letter-spacing: 2px; color: rgb(0, 0, 0);">Sed id dolor. In hac habitasse platea dictumst. Maecenas diam ligula, vulputate vitae, mollis at, ullamcorper non, velit. Donec in velit. Sed lacus nisl, vestibulum sed, vehicula et, commodo eu, ligula. Duis vel lacus. In tincidunt. Vestibulum elit. Praesent hendrerit. Suspendisse venenatis.</p>\r\n');

-- --------------------------------------------------------

--
-- 資料表結構 `fs_pic`
--

CREATE TABLE IF NOT EXISTS `fs_pic` (
  `picid` mediumint(8) NOT NULL,
  `uid` mediumint(8) NOT NULL,
  `title` char(100) NOT NULL,
  `filename` char(100) NOT NULL,
  `size` mediumint(8) NOT NULL,
  `type` char(32) NOT NULL,
  `md5` char(16) NOT NULL,
  `classids` char(100) NOT NULL,
  `thumb` char(100) NOT NULL,
  `prioritynum` mediumint(8) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  UNIQUE KEY `picid` (`picid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_pic`
--

INSERT INTO `fs_pic` (`picid`, `uid`, `title`, `filename`, `size`, `type`, `md5`, `classids`, `thumb`, `prioritynum`, `updatetime`, `status`) VALUES
(3, 528501, 'pic.jpg', 'pic.jpg', 48892, 'image/jpeg', '35a0fdc9ca9d7a35', '', 'w50h50,w300h300,w600h600', 0, '2015-09-18 09:40:44', 1),
(4, 528501, '04.jpg', '04.jpg', 37952, 'image/jpeg', '042727dc100e9028', '', 'w50h50,w300h300,w600h600', 0, '2015-12-17 16:44:03', 1),
(5, 528502, 'pic.jpg', 'pic.jpg', 275665, 'image/jpeg', 'bfa380439fb7eb73', '', 'w50h50,w300h300,w600h600', 0, '2015-12-24 13:37:05', 1),
(6, 528502, 'pic.jpg', 'pic.jpg', 275665, 'image/jpeg', 'ca837e06e7d741b5', '', 'w50h50,w300h300,w600h600', 0, '2015-12-24 14:57:03', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `fs_sessions`
--

CREATE TABLE IF NOT EXISTS `fs_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_id` (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_sessions`
--

INSERT INTO `fs_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('0fa0daabeee060108ef3bb69aa8ce6f9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415425109, ''),
('16453d17b059ead7fd00f43fd96f8830', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415424383, ''),
('167e7c94e1003a6eafe7d6f70c71965a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415423735, ''),
('1cd7067f2b9a8a3033ecb1bd7a384a91', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415424502, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('26d0056fd79217d7b8dd9f378d8de467', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415418447, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('2ff895ab3c6a62feb8e74476d1d34ead', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415418437, ''),
('33698f973e134b4a782f377e91bf6195', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415423735, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('45716e1319882f30c5606ff27c6be37d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415425109, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('46f4b0f5c47343e3ab8a616e51c3672c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415424393, ''),
('55e646a97690beb453e88a715fe4d2d7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415424383, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('590771e3cab6be5256d3cbf9a8ac3293', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415424393, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('6ace5af3e892b96994cb2b647c0a6347', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415418447, ''),
('77d4d6b7ff077b8125b5a316c970363e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415423746, ''),
('8b5c1d333c1afdc7b25cf0ea7292309c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415424393, ''),
('8d3d25eb6ccff5e7fb7a2fe35e868307', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415418759, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('95de76f8b685a68b0faed2012188397f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415422189, ''),
('98da793e9583144535a678d5dc39631e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415418787, ''),
('a3c32d62c96f5a2bcdee743350f93704', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415424502, ''),
('c4e8c1468c5506056b1e7e2e03bf077e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415418759, ''),
('c823e1199676f48fe3399c716932385f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415418743, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('cd28cb0c9a118af5f1018a625440e7a1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415425109, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('d773b4bc0f5e02b9d32a26741d758f12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415418743, ''),
('d78f4018f2e5fb1de83e92ee5ead8520', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415423746, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('fc8a59f602d2d5c2b02d6ee507f9e722', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415423068, ''),
('98dc9cc36a60877b782f6449c7c798a3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415876555, ''),
('58982ff38fe8add915fd1adbfd480cc6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1415876555, 'a:1:{s:9:"user_data";s:0:"";}'),
('b7264337f9dec72e81acc371202698e1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416018858, ''),
('817d581a82e8ee5b5e5411c81b28122b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416018858, ''),
('f5fb459e3b956c9571f70b9df2cc38a5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.111 Safari/537.36', 1416018858, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('899e022464798ad69c9c79e23205d157', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; MAMIJS; rv:11.0) like Gecko', 1416377353, ''),
('512b68e09b5531e405d594d56f7cd2c1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; MAMIJS; rv:11.0) like Gecko', 1416377353, ''),
('dae229332e984cace410a8a53b13daa0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; MAMIJS; rv:11.0) like Gecko', 1425103707, 'a:1:{s:3:"uid";s:6:"528501";}'),
('cfab14d6dbff271ec38d3aa1414804a9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36', 1416385775, ''),
('a61b328b865836ebfa5706c54da017e8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36', 1416385775, ''),
('2afaa1d7f5b751d4e8892e6cc0cc30de', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36', 1416385775, ''),
('2ca5ff6af8fddc48dea3383734aba7bb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36', 1416385775, ''),
('d023566675b01d6a37f4292d6ab156ef', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36', 1416385775, ''),
('f35698d9590450588d797fd34812cd62', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36', 1416385775, ''),
('15cceb1a7b9e423a7bb4aed2267f8a94', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36', 1416385775, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('0d41ffff36533c41737ea2e57426e8aa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36', 1416557773, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('3e9e59417f30da1e20fc3fc283ec0318', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36', 1416560574, ''),
('b3502ef3a097378eda46f8208308dbd1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36', 1416560574, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('fa384b2322dad8cba6ebcd1adc5a15b9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.65 Safari/537.36', 1416762412, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('c8db4c4791486904cbea19b284ef3764', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1417010480, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('ee47e632c83db821989781d1ab138e55', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1417437246, ''),
('7ccffc0128ff1e82f109cabea1d75223', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1417440278, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('0c3fe2a18dbceedca779ac49cba2b488', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1417442659, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('a436896c85fce8f55b091ec498e71e3c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1417691818, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('5008633a4d5ab058b36e1b2250b5ec9e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1418466483, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('a533936c065f355457c9b29bc0fb480a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:34.0) Gecko/20100101 Firefox/34.0', 1418574117, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('272d4fe5559370d5a7f12b786c526334', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1418712836, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('db06ee64119e0d4a7f399f6b6d44ecd5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1418788056, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('d7beea8a8018e2db6fe9184b3c5bf7d3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1418832151, ''),
('f6f14138442ab183f8185ea6d4901814', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1418887752, ''),
('19f4d099f692d7a95312b23f597baf19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1418887752, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('8aa52e6136ebd770d5d748efe00f8c61', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1419690683, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('0be965b6dac28aee06df2950c2ec7a56', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1419823651, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('69349035722651eb201a1d6d4d5067c0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1419838323, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('364410134e9570a519dbafb4292b8e32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1419908688, ''),
('e4e4f21d363e51fa032115a6e63d70f1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1419908689, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('141ecf33016852fe8e7c5cfb450623e8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1420125533, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('bc18a3f3a9f419b6797a1aaada18302a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1420514073, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('a75499287530aac56ab023b8eff1a52e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1420628887, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('575546c1971af1f2bbd1ca64105a1616', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1420632175, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('6455beb395357cf89f27621ba01514ee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1420716040, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('cde4d1072ab56c37cd5e6f738dad4cb8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1421086189, ''),
('a943853fe5d612400a12d57bc79ed14c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1421127016, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('48b5e9b27bea80462f5f6f729448273f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1421138001, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('fa59a9a2597eb2a489313863f9e51c8f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1421138130, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('3de0c901317575de5f5b3f98c4b5590f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1421159994, ''),
('b8a219684c624c0a648a0b9b501b4abf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1421169250, ''),
('e503fc0a41a94fece1f670d44d47ed27', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1421174789, ''),
('306c7e502325730545a56b9a9c8285b4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1421175353, ''),
('9f89d46db234580da60d27849faf39cd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1421176129, ''),
('8977dcccd35fdb9f1d6e6df23c6c8e1b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1421270093, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('19e1d79873445fcba0d6f1280c11f055', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1421396580, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('85ce07fef330bdb020424d0947789309', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1421420980, ''),
('4f9a471c51d4d743dff65f65f0925891', '127.0.0.1', 'Mozilla/5.0 (Linux; Android 4.2.2; GT-I9505 Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.59 Mobi', 1421436881, ''),
('98b2e7c6e6c574048080d4403434de84', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1421436904, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('40a5c8b53a17fe393eba24061b2178ca', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1421682540, ''),
('fa6e17195fd966cda8a6773c1882f474', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1421687193, ''),
('1b6f02710ba520e190667cfd5a96422c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1421688333, ''),
('9bfa341c7a6c48eb6488a85fcd10d5fb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1421689888, ''),
('c75b13122e87c706642224598eef08f9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1421694433, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('28e78eb1385c341f02b59acbcbc223a8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1421934209, ''),
('a5a330530b60c9cabd6dd286d893015f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1421994616, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('4caf69cbcbf135fa91a4344b71cb59d9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1422008558, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('fa998a02f162bb59ef55373f60fe51de', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1422092368, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('90435b9a756ef4b6c12e52ac7e403ed9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1422180459, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('1442394280ef2f2b0a3ced98de7020f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1422243887, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('5de37dac3291eb46b06e7768178bdb13', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.99 Safari/537.36', 1422244594, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('b845f17512969ce136889fdaf6c4c2e5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', 1422247274, ''),
('c12f5121bf161a20864da4c67ffb7df7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', 1422247284, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('1fbe1d08d15efc90b1fa66bd81f292b7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.91 Safari/537.36', 1422269981, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('05f088f32f833d804b67deb459bf1739', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', 1422605968, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('c8f8ee6fcd9eb66acadc8ca22d5f7c80', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', 1422609634, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('f01ca3dcb114f900487206482b772e9e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', 1422609877, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('bd756e3891ec5480e2a386807a17f02e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', 1422642189, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('9cb2dd529c3f2891816758d827d0e4a4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', 1422874389, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('aa80678f7e7e4751639368c4c88ea8f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.93 Safari/537.36', 1423031324, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('4ec105a8bcbc8ecf14eda980641a071a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.94 Safari/537.36', 1423123987, ''),
('21cd2181100ce217d80e1d1f94de22dc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.94 Safari/537.36', 1423126669, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('b26c8318e5ab897eae8b3c1118c284d9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423325923, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('7849fb71d0a2cc51200c0f36c439c17c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423372485, 'a:1:{s:9:"user_data";s:0:"";}'),
('b552576bcc7ee024d06aed833a7ee6d9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423453908, ''),
('c1a0bd1b9a9485d5bebf7f2ab09bec14', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423457078, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('e27079a428af63b0a0dd398139f1e2b8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423490544, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('08e0c26239a7a7ce05a1b1c512d172e3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423544765, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('61ddea20f8e9f41f430adad9d2332bcf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423548394, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('66f02987fb066695e2d264b7b2e3c57a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423635639, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('2cc9d7ba5667474462db92a58c01d9c3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423648797, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('4f4b481cc161007cf64ec07fcdc634a5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423658640, ''),
('e56ba988bacf86c6606b5f42aa031287', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423727786, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('c347921c96671bf94df065287907f271', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423740019, ''),
('6336803107be8f0a899ad5ec501e2006', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423745007, ''),
('04814696da4588ef0ffb46cc4aa82adf', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423747439, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('7cbfc532afb26808aaa816a447bfc414', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423751903, ''),
('64dfe4443fa6f632a1bc16b8bf860e98', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423753162, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('01621011b54e6dc80e0a754f01803353', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423754290, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('3e7838296c5a1a8b6321433c5632ae19', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423770801, ''),
('30eda8405cf6c66a5f457ce72c976283', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423802647, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('c8123186e695894d1242af3641fe121a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423816459, ''),
('719067b01aab58b6fecb36b4b1f908bd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1423821273, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('c48a776f6ba8f30ed4270dd51accc9b8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1424206344, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('c955af9254999def0dc4a63a31b56b94', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1424210127, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('a9a7c7f1d94eb5430d33448ad1f66172', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', 1424267875, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('eee766faffcc07333fb8ac9ab1c9f5d9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424438733, ''),
('b7ee4e41edc947abb75387a24e9e9d90', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424438733, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('9710c78ea71c090e8507a616e02d9708', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424594293, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('03a2a1945c0158150289b1b06e27e304', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424788136, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('c27c687d9278fff8ea33b80bee48b38e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424793132, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('646d0b7c91f19ae1b801863ec62bcd24', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424842965, ''),
('9a8d3561dbf6abcbafed2cee9e38f7be', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424843179, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('10e4d5b22a165f7847ad533c48d612a5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424890989, ''),
('f8b51f615f0a0f03af9b840663637bd8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424898931, ''),
('f44c646f0168aecbef4719feb7633ba4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424898945, ''),
('82afd40e7e9a26a5489368c7f57632fc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424898945, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('4fe6b402f702b106dec9e6a69c42cc02', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424990811, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('76aef7f34752571dc3b7ed24ecae1565', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1424991058, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('577c0928277e9955f6267712f69a2330', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425017787, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('621244382356109a6530b73fe2d6496e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425018806, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('0f5d5df52dce80f0e9248128524427ca', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425105737, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('faff77415d9ffba507274a9b9ab923a9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425105943, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('3651db34edf4b3df04fb5885a9e2700e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425108571, 'a:1:{s:3:"uid";s:6:"528503";}'),
('13c70bc79daa8ef52257b003d42433b8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425108590, ''),
('79936404fd9bbad88f4730c0775b2220', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425264441, ''),
('f16fb530748606a36d810d8fb2f30010', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425266299, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('dd03e56aeed1ab9c6549d3ee6f3caf63', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425287403, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('f18148ab024ece3701517277d9be90c5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425317396, ''),
('1041cbcc62723586e9fe9b11a55e9c9c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425317852, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('8ec9e7ceed928915d1613d9bd9859df3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425339054, ''),
('a42a37c2be7137e1293442edf1788e92', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425368921, ''),
('17e505dcbefcd38ecef5d8c4a5868c84', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425401819, ''),
('f2d5cb3b2a825155b667bb6b1923c5b3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425401819, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('3a11352307195cb3fbb3d339b8f0e240', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425463381, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('108a49a3c36812cb809e0412ea95c2dc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425629482, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('7320624ee03f5933ce9b45df6bf40b9d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425836972, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('1737f4cc47da40147bc939d02a9f2da6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425843505, ''),
('86da5df0b3a95188647e1c37e39b2e12', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425845035, ''),
('d2e9722a61b6cafb233da60ad28968d0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425881574, ''),
('d94b82a8f96a7d4342ef4e85fb08ae32', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425889735, ''),
('77e515a9505cde07304889fa52178248', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425907260, ''),
('78739f1a4874fc7cc901dda0cd9fc8d3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425918671, ''),
('436c3421d4dedc0539883e72d116fd54', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425953597, ''),
('1a2c66ab5faebda22780719725d2606e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425953598, ''),
('a775a2d393d3bec25491719bc0453a76', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425954747, ''),
('a8cbf6d1194753cb0b847b782112daba', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425957288, ''),
('8c4966b8943fe91c95d5e986f8c61304', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425957289, ''),
('f5e6ac5d0c529d4a46f892f09e471a0e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425957290, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('cff5db3038945a4043f7d2491129dfc0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425962179, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('b2949fd6838e533c5e7ad914607d2038', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425962862, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('731a686c36d0fcda806941f67192063c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425968023, ''),
('296b967b9fd658d445ff0b64e7fbaead', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425968410, ''),
('6035f85889ce6e473511db5228b91b9e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425968956, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('0e09504305d95c68e1486ba11826d94b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425970265, ''),
('9533c51558b83e31072b1253de915281', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 1426155950, ''),
('54f394a29c2f9036b6a384d26b31cf52', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 1426155950, ''),
('ffe97af230c092b3c5b96641b3647324', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 1426157068, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('c8a88dbc2f7ed4b06f73e0d682598749', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', 1426307394, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('f6fd8f24b3b2a8a75140533aaca29819', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.3 Safari/537.36', 1426315784, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('9583098cef4590bb79daf216f7e8acda', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.3 Safari/537.36', 1426329983, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('6c9acbf73dcbbeefc56ff18272df362a', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.3 Safari/537.36', 1426330188, 'a:1:{s:9:"user_data";s:0:"";}'),
('bc8a8a3764bf9d147a1863cd57ddf2f3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.3 Safari/537.36', 1426330192, ''),
('5faaaac0236d1c4ad39cfe61996b52c0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.3 Safari/537.36', 1426331449, ''),
('d7c329ee7bb78c8227bc046727344694', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.3 Safari/537.36', 1426331893, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('d73e8ac7729b33e156bd40148da595a1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.3 Safari/537.36', 1426332748, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('a6e5f6d58ccefcf85e5926e65a9f3480', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2331.4 Safari/537.36', 1426350625, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528503";}'),
('c3af1a4bf0e169e97fe5c125594e500c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.2 Safari/537.36', 1426400193, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('3ce5075791cbbb782db3d537ef6f7d6e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426430484, ''),
('85a4984d115705f9268c8ca76b72eab6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426441955, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('90043407160847f00e0d31cdd334b4db', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426445224, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('c92b5db0d1394159f4965cc8da29c8d9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426448617, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('d2a97acc973af95dcda52730693f99c5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426448789, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('4d7622d6d07a5fffe11e2d23bd5e7679', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426450380, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('c3b1795d44ed956e990e20c7447548ab', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426451106, 'a:1:{s:9:"user_data";s:0:"";}'),
('5f26bb0c68e4648a35a928d585a2a1a3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; MAMIJS; rv:11.0) like Gecko', 1426455974, 'a:1:{s:9:"user_data";s:0:"";}'),
('1a2f78d7d37d1349798d1f62064f9063', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426506133, ''),
('335560b127c4cc4e9e13bad1f64572d1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426528763, ''),
('95d5498b3498e5431bcc756df2ab1daa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426672535, ''),
('11360f28dccb3fee9e7e33649281c1da', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426691630, ''),
('296d271886ad76ba4d07be087bbb496d', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426745998, ''),
('d95ed59fb1e117e858f46709bfc726bb', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426793718, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('653d7195d273183bea6e9bdc7943c488', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426831855, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('d703f2ed3d4cb7c0329aa687af336b8e', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426843609, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('7e962baf8df7e66ce126e544067192e9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426955338, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('dd93ab829112c3d93da884e060a5b414', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426963690, ''),
('159d99f81de09eb569e4ffb535fff88f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2332.4 Safari/537.36', 1426963724, ''),
('95bcd06a62cdfb4fd6c99db003fa8df9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2338.2 Safari/537.36', 1427004126, 'a:1:{s:9:"user_data";s:0:"";}'),
('867a75c820119bbf80f32e1b148ffb98', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2338.2 Safari/537.36', 1427028646, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('e59d780b9279637cc2b29c128c1f79cc', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2338.2 Safari/537.36', 1427095803, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('dd796e0383ad3300c930998c026cfbe7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2338.2 Safari/537.36', 1427095947, 'a:1:{s:9:"user_data";s:0:"";}'),
('fd9c31d7663c587af296cb66eaad67ce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2338.2 Safari/537.36', 1427129913, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('186bbdddd8bbbe7dab1f41686394a335', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2338.2 Safari/537.36', 1427130096, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('36fbab3c3e73faac0516a809e06b184f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2338.2 Safari/537.36', 1427193968, ''),
('0228f7234ac4f2e1d327cd91c7f79c84', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2342.2 Safari/537.36', 1427195373, ''),
('113e4524d90fc1e54d3a1d8f12d4c5ce', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2342.2 Safari/537.36', 1427195374, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('e21a84c28a8b22ea7d6317758a145222', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2342.2 Safari/537.36', 1427226580, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528510";}'),
('8fbe7fad6fe0e0ab100b89ef743adc6c', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2342.2 Safari/537.36', 1427282123, ''),
('7bde1e1ffc87c2831e8965ce849c3cec', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2342.2 Safari/537.36', 1427282123, ''),
('b6b6f68ac431794e1ff877f3e21cb3d9', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2347.0 Safari/537.36', 1427553083, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('e975d459b9efd407c56b581121bd4861', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2347.0 Safari/537.36', 1427711651, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528511";}'),
('db1a21bcd4a79ead4bdb99f62a43219c', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2347.0 Safari/537.36', 1427715957, ''),
('30b07da3f3c3b6c5886627fb342e419c', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2352.0 Safari/537.36', 1428033011, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('112ae06488ebd429784a4871154dc52e', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2352.0 Safari/537.36', 1428047756, ''),
('f4b68eaf8a4e3b0819b541c7ebf4c3ca', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2355.0 Safari/537.36', 1428082425, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('46c4ee0088d6b65a29441e6087e63a94', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2355.0 Safari/537.36', 1428345399, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('f4dc494e18fe784ac80e77636ea0b3c1', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; MAMIJS; rv:11.0) like Gecko', 1428348153, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('f0121e6d92cef3e7b6dc2f3cce4230d7', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2355.0 Safari/537.36', 1428349401, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528511";}'),
('7504d967e9ab24ca8ed3713b1c2f5991', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2355.0 Safari/537.36', 1428433842, ''),
('621544c33391561ccb7483f07c36f37b', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2355.0 Safari/537.36', 1428445452, ''),
('f9f308927af776b341e589f3778f62ca', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2355.0 Safari/537.36', 1428477474, 'a:1:{s:9:"user_data";s:0:"";}'),
('fc715bf7cc51d9818084a7172299a9fd', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2355.0 Safari/537.36', 1428559118, ''),
('264a4f5b2f4325af91222c3efbc1ad72', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2355.0 Safari/537.36', 1428603023, ''),
('4e9f2c64987d79ee320273aea9bb1298', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2355.0 Safari/537.36', 1428608369, ''),
('71ffcc74f26744ee70076dcbfdb25188', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2362.0 Safari/537.36', 1428614231, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('65154a1dfde7528da7614381b1cdc885', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2362.0 Safari/537.36', 1428649614, ''),
('2445937b770d84c3222de5b3d5fd7ec3', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2362.0 Safari/537.36', 1428650528, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528512";}'),
('03c23e2f39104733899f5ef8ba3b7da4', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2364.0 Safari/537.36', 1428783136, ''),
('91b69bd04d069833852bc65fbf69579c', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2366.0 Safari/537.36', 1428835147, ''),
('6fae4af2f0708bea99a546564f00fb76', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2366.0 Safari/537.36', 1428839056, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('7fff1520b35e2f0c99d9c2b4220b3d39', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2366.0 Safari/537.36', 1428903745, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('9b9ec5007d94059bd5202862a80f5ea0', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2366.0 Safari/537.36', 1428995181, '');
INSERT INTO `fs_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('07fdaceccebb7311a595414a9bf0922b', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2368.0 Safari/537.36', 1429029870, ''),
('66bc9367d1874101de5c95756981aafa', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2369.0 Safari/537.36', 1429083923, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('46101061f42548d34c24614f0483c82f', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2369.0 Safari/537.36', 1429087624, ''),
('5889e526e0f6a02818061986943df4a6', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2369.0 Safari/537.36', 1429088140, ''),
('7ac6211f81b730d11eed11eba1f2099d', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2369.0 Safari/537.36', 1429088685, ''),
('be9dd11b48ab94b06bfa8441c46373c2', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2369.0 Safari/537.36', 1429105563, ''),
('fd78d8d461ac645b85b1b2e2db9ec8f5', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2369.0 Safari/537.36', 1429120258, ''),
('72b0793025602ab6686bc18e30a4ea52', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2369.0 Safari/537.36', 1429120259, ''),
('fc752be1b2a7b07e89390d214855bc23', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2369.0 Safari/537.36', 1429120778, ''),
('51b5a5d295e6d690fb463bf97484eeb4', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2369.0 Safari/537.36', 1429170512, ''),
('9891578d40ca5f977bbbcf19ed755379', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2369.0 Safari/537.36', 1429170512, ''),
('1292434b1a5ce814511330fdaddb58dd', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2374.0 Safari/537.36', 1429424271, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('c00bcb37bb8f68dd374f689fcee4ebed', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2374.0 Safari/537.36', 1429461012, ''),
('271c3e5ae7995173c234c561d5586710', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2374.0 Safari/537.36', 1429461012, ''),
('4e9d483294a898340f7a67aabdce2cfd', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2374.0 Safari/537.36', 1429517140, ''),
('91373abe440f5f495bda0ed1d0494a93', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2374.0 Safari/537.36', 1429585648, ''),
('37b8f9ca0f6172aa3aad0ff4d8709508', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2374.0 Safari/537.36', 1429645306, ''),
('5a1ad152fdf0a61fa4c1d29da4b7f995', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2374.0 Safari/537.36', 1429645306, ''),
('3a0d5a236d6610222166f5959c63bb07', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2374.0 Safari/537.36', 1429648399, ''),
('04506d6c308af18734276412a1c39726', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2374.0 Safari/537.36', 1429648399, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('74806a1dd939afc0a3701cca25189cf7', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2374.0 Safari/537.36', 1429707335, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('4204dfb5595abaa191f14a5a7896cc06', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2374.0 Safari/537.36', 1429841037, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('264839d64e9ab7e6b938e2db141eed56', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2381.0 Safari/537.36', 1429931348, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('26fa45e415fbb1bc954f30d5bce27af8', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2381.0 Safari/537.36', 1429969279, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('9ac1048fbbe8387f5da51209aaed4185', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2381.0 Safari/537.36', 1430134463, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('01c8397ca2577dc181d4d0718aedd168', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2381.0 Safari/537.36', 1430200923, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('b3bec8068b329bf1ea81cf4aa0da9d48', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2384.4 Safari/537.36', 1430230958, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('7c8502dfd173c01d1340a05281e34ece', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2384.4 Safari/537.36', 1430240982, ''),
('6b5fb55508f98c9a056b7c2280a605fe', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2384.4 Safari/537.36', 1430245122, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('3e28bd0dc36b6124b1e5acf340af2743', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2384.4 Safari/537.36', 1430327692, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('2d9b378f9cda3c989d2f23593c223cc2', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2384.4 Safari/537.36', 1430372955, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('dea0fd1e4eabd1ca6dc38baa6b09f5cc', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2389.0 Safari/537.36', 1430627789, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('3d4a7df66aafa322af2d1ded196798c2', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2389.0 Safari/537.36', 1430726046, ''),
('ebf455028b49b1ce2da0bdc7e55eafc6', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2389.0 Safari/537.36', 1430726047, ''),
('456c5369a3081a4d27746a05daed84d9', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2389.0 Safari/537.36', 1430746290, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('fc27464b5b8d92534df16c2971b1465b', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2389.0 Safari/537.36', 1430815788, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('3f32f8e5fdc9b8ddbb6cdba7b69cb256', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2395.5 Safari/537.36', 1431244456, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('7278d02e8baafeb5eb0b178ce94f0597', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2395.5 Safari/537.36', 1431255367, ''),
('6b3f26ee6a29fa39f7d0ce498060188b', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2395.5 Safari/537.36', 1431255413, ''),
('f5437e02d2f073cbb0c354106e66ff97', '39.9.36.63', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2395.5 Safari/537.36', 1431370117, ''),
('799bdbbf7805b242f27a7b8d0f50e91a', '118.168.223.40', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', 1431394438, ''),
('b69cee22b8ccc2cbc9e3573e26d14f02', '118.163.98.241', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', 1431406774, ''),
('b4c2da92870ac1d711e4a7daad7a1724', '118.163.98.241', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.1; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; ', 1431424606, ''),
('eabc0a9ba2945a22c41e3088f1fe041f', '118.163.98.241', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36', 1431672163, ''),
('ecc12cbe670f84f1e70224b1a51146e2', '220.136.43.205', 'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko', 1432029021, ''),
('ea882a83d9c2856df7fac055e2657c7d', '220.136.43.205', 'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko', 1432273372, ''),
('d7cd67a995718ed2b2769336538b5990', '123.194.115.138', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; ASU2JS; rv:11.0) like Gecko', 1432306205, ''),
('33558ccf6d288d91569e37b38a512a87', '123.194.115.138', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; Trident/7.0; ASU2JS; rv:11.0) like Gecko', 1432306351, ''),
('481d661eaa0eff271d302d9097e6722f', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1433450809, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('5ac77e86ab3fad35d1eabfeaa3434aee', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1433452263, ''),
('6f3c123b15b7fe12b73cc1fabc550cf7', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1433473595, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('116aedc490efb0f1b952d959a0a10317', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1433477925, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('bf480a7a841944a1423e294f0e5ab622', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.81 Safari/537.36', 1434021880, 'a:1:{s:9:"user_data";s:0:"";}'),
('f27ca5214e03df9249d9c018b634663f', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434203783, ''),
('15e62af83baeaf0e48c96c3edb6e7122', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434203811, ''),
('8b0c65a7f8911644b3ee18fdbcfa9173', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; MAMIJS; rv:11.0) like Gecko', 1434204952, ''),
('441a2a132c729302618f5f1d0e8280bb', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434250296, ''),
('5aac96622c19db870a94f8e433993a15', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434253548, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('d06ba1806356ee99a711ffeff4032f91', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434323101, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('f0840eeca775ad6d991970ca6d5732ba', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434464512, ''),
('908e3a8e7662f80bf0e89c4983d8a5e5', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434468124, ''),
('fc353651a5b3d98a6cbf7e753ca56884', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434468230, ''),
('659e12a90056172b2229dd4f32df6732', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434468232, ''),
('bc479ec0811990b9038230311f4e031d', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434468233, ''),
('874c27575493b61eeac72c8fd111045e', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434468249, ''),
('241804fbf458ce961c6d6b272178be2a', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434473101, ''),
('0cf8f363a4ed65dc9a7b81f398df0041', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434476170, ''),
('276262bc7cbbf0be2ba4c467e6e69fc6', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434476945, ''),
('57657c1d8c9354eeee89036d7072dbc1', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434490227, ''),
('f870b9d494e58503dbf2b10f28554ac2', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434492293, ''),
('14005bcfae64422aa4dad90c38dfbe10', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434526159, ''),
('61ee39f00d5d496a026905bd6120da1a', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434527289, ''),
('7f10618f928449449f3537fdda903b5b', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434619657, ''),
('6f5294356fdfa75427654e4326eca1e2', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434625510, ''),
('76d4392c199c80b6609d897259ad2059', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434625635, ''),
('0415f4116bb9b522a1f65f4b0102af35', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434632498, ''),
('6bdcabfe7c906c937129dd18eb94a5ce', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434657227, ''),
('90676e6a5069dee8710482e9fc95a99c', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434810319, ''),
('ab69ce832c491f6101709122b670b486', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434843302, ''),
('1d6fb7037269bfa3beba4cc1bd37f85e', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', 1434936538, ''),
('bd393337093ffb90f7aa667ebe2c87ea', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36', 1435034251, ''),
('dc99662b77745bada931b8fa53c2c910', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36', 1435066963, ''),
('cef823b71c939d8c927d2d158e5f5fa7', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36', 1435111856, ''),
('fc5f583e857031d382d84e389b12a551', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36', 1435111872, ''),
('5c84e565114359c5e62afd9f23729aaa', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36', 1435381056, ''),
('801d7a2d2daa84667d642789f9364946', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36', 1435647129, ''),
('ba933ba5114d7d8a179122e6d5b6cffb', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36', 1435919574, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('b52942ee02c9d450da74e9de8f3dd0c0', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36', 1435951587, ''),
('17fff30c369ffd925ddaac70d5a46b02', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36', 1436343533, ''),
('240e926374b79dda2dc9d7b92e2f5e1e', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.132 Safari/537.36', 1436346175, 'a:1:{s:9:"user_data";s:0:"";}'),
('7a49c0aa7e4a60b1761c3341a6824645', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.132 Safari/537.36', 1436760130, ''),
('75ffbf6d6063b9b11758114749edec41', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.132 Safari/537.36', 1436783474, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('9012358ae20948b3abc52013c048aa5e', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.132 Safari/537.36', 1436864963, ''),
('edff4bd9813254ea2b5efd6743ddc553', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.132 Safari/537.36', 1436923870, 'a:1:{s:9:"user_data";s:0:"";}'),
('a5287d6f501a3a106eed83fe62b66df8', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; MASBJS; rv:11.0) like Gecko', 1436940070, ''),
('184a829ab7669f97a304734da4422ee8', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.6 Safari/537.36', 1436945703, ''),
('db409ed953f1cca19903d0e554bfef08', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 1436950180, ''),
('3b72a0d8a3a5502d41100040f8ebcd06', '110.26.186.234', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 1436986578, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('1375e2b358390752f8965e5a64327ea8', '101.14.132.63', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 Safari Line/', 1437039609, ''),
('d238808aebe095d94979cdd640bc0b48', '114.36.240.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.132 Safari/537.3', 1437062031, ''),
('00c64d96be1cb8803b00c81891b381b6', '111.80.25.46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 Safari Line/5', 1437062643, ''),
('8d33a775509f93a4c4e395f639cd7264', '49.219.185.168', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12B466 Safari Lin', 1437064633, ''),
('7c54f6a33ad207f5fe38a93ad5208c2d', '140.118.22.165', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 1437119559, ''),
('0eb26a4db6685dddaa4d2ff06465e079', '1.200.128.75', 'Mozilla/5.0 (Linux; Android 5.0.1; SAMSUNG GT-I9500 Build/LRX22C) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/', 1437122815, ''),
('a949dc1a9fb89201a1e965a80abde49e', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2457.0 Safari/537.36', 1437124325, ''),
('2f7b4cb6ff19e1246c70709f5afab2ae', '61.230.116.23', 'Mozilla/5.0 (iPad; CPU OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 Safari/60', 1437150519, ''),
('fd433f6e3b77b317fe566c3ea7500093', '223.136.233.253', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 ', 1437214400, ''),
('e67a2051ab61781cd8860f0e2f5d9fd4', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2457.0 Safari/537.36', 1437354160, ''),
('0e5b94ee2f56f8ca9a1f5826c7d84fb4', '1.165.125.77', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/600.7.12 (KHTML, like Gecko) Version/8.0.7 Safari/600.7.12', 1437363614, ''),
('0c351b1702d84a73768ad1260b9f136b', '1.165.125.77', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B410 ', 1437363614, ''),
('cee461d0353be6424dcc37c9c707b9ee', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 1437365692, ''),
('6a6b468cadaa31743eab8f167bbcc655', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 1437371805, ''),
('8b6dbec1467a8ab6b021509a88170a43', '123.193.98.30', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.3', 1437380189, ''),
('74decac6a23f75dff074887c96024c59', '110.28.85.204', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 1437398280, ''),
('123990b8793ae2eed045883fe8e7ad71', '61.224.160.193', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/600.7.12 (KHTML, like Gecko) Version/8.0.7 Safari/600.7.12', 1437441472, ''),
('930cab49c7dd6f9eda595a0a4435c7f4', '39.9.23.179', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H143 ', 1437483001, ''),
('4f00532a65a6a4c7c2fd45deaa0b51b1', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 1437531848, ''),
('d9bf57a00a07f99a9dd4d7b9231025f0', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1437532082, ''),
('5e9d3627f56625499af504e1ce0ebaa3', '::1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/534.57.2 (KHTML, like Gecko) Version/5.1.7 Safari/534.57.2', 1437532092, ''),
('01aecd9c97540f7f0b060f5c4f7dbb36', '1.164.213.131', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.3', 1437539412, ''),
('2bd95ff89b9c454a21c00e2f4d8ffed2', '173.252.88.186', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1437539596, ''),
('f82819aae64ee23eda93b1ad1f7aff2a', '117.19.99.134', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 [FBAN/Messen', 1437539611, ''),
('f56b6d09d969ea728360bc6a87fbe138', '111.70.221.102', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12F70 [FBAN/Messeng', 1437539622, ''),
('807381e505c9fd286d8d07c97a8de6a7', '101.14.195.208', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Mobile/12D508 [FBAN/Messen', 1437543119, ''),
('787155898cb1aa23b0958a0cb6991b2f', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2461.3 Safari/537.36', 1437617784, ''),
('37d1785d0083b3de9d8bd6b8d869c344', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 1437644757, ''),
('3789ecbf9e099a4caad81673bd4e46cc', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36', 1437645068, ''),
('95c43e219ab1d0e33b0605bc34d696cc', '39.13.142.90', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 1437664071, ''),
('e9114ac4746175a98d2b2c1c54c4f4c5', '111.81.221.102', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12F70 S', 1437668576, ''),
('088acdf410c8da5554a71f6a7ff8b235', '111.184.35.162', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.89 Safari/537.36', 1437724994, ''),
('4e17883eb07c51da744851b6a5c9cb46', '61.223.253.202', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B410 ', 1437726322, ''),
('ba7434d379aa7cfcce5c6737fd705c04', '101.13.53.86', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_2 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12D508 ', 1437764171, ''),
('ca40dda99a8bbb255db0dd515bb6b56b', '101.8.3.206', 'Mozilla/5.0 (Linux; U; Android 4.1.2; zh-tw; GT-I9100 Build/JZO54K) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 M', 1437812282, ''),
('0a3aea6eb263bbc9f590e8190d743913', '61.228.88.26', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36', 1437887209, ''),
('584feb0a71176b129e38e3fcb8df74ef', '39.12.58.88', 'Mozilla/5.0 (Linux; Android 5.0; SM-G900I Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobil', 1437898088, ''),
('760d42e054fab6b506f1ad5d37a44c5c', '::1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36', 1437958420, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('79b8c0e9dc05b0d52da0ade85b2e741b', '61.224.167.196', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_4) AppleWebKit/600.7.12 (KHTML, like Gecko) Version/8.0.7 Safari/600.7.12', 1438072402, ''),
('0612946b07edc5ad121454cbbfda666c', '61.224.167.196', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12B410 ', 1438072403, ''),
('e992c33b909c590fd9f24598cdc17503', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438197661, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('2b010a6acc03620e424b25d0c208f7f7', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438197676, ''),
('38d67a7ccdc4000fb78058e2daebf7b8', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438198344, ''),
('932998d373e6e1250e7f586d79f68a1a', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438277239, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('a6f86f59e57284a0dd6180fa95d9792d', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438282410, ''),
('b36176bbfbe00012ea267ba104a053e4', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438284231, ''),
('07397526b70a2dd33773532dbeac5fd8', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438339656, ''),
('36114e463b74a9616070cda91d88c72d', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438433961, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('3f830e3fc2d76f4dbb075ff059309a45', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438453087, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('34ebc1d8cc585bb390ed0a33a2b05fb1', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1438530386, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('9a2ff61e1d49cd391fab08b01501cd28', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438531879, ''),
('92f26b60013b2c66f87fd391989dc043', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1438533758, ''),
('a6a5798166d79b980b25b1723a753321', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438534797, ''),
('922d924bdb2652612ec5e79d98ab81bc', '::1', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.5 Chrome/28.0.', 1438534807, ''),
('5497685991ae51ffa0baff9e448e63f7', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438535020, ''),
('38a5f8e28f5b64afa03ba5ee8c9db7da', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1438535190, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('8438b6210b21d1a32a9eb6a1816f29ca', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438547987, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('4ce7dbbf2422ef779f581bcb163fc192', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1438548001, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('002091e4f592038f172aa1241ee4a64f', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438549252, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('5ca46c9af178eb19c994708bc4af07cb', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1438549264, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('ad693590d27ef6c46add0ed1e8190a22', '::1', 'Mozilla/5.0 (Linux; Android 4.4.2; GT-I9505 Build/JDQ39) AppleWebKit/537.36 (KHTML, like Gecko) Version/1.5 Chrome/28.0.', 1438549499, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('0d752d688d463ebbf01dad2c8b0b1f22', '::1', 'Mozilla/5.0 (Linux; Android 4.3; Nexus 7 Build/JSS15Q) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2307.2 Safari/', 1438549511, ''),
('e850900efb8eece3d55a0d90f12fc741', '::1', 'Mozilla/5.0 (Linux; U; Android 4.1; en-us; GT-N7100 Build/JRO03C) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mob', 1438549520, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('762055860cfa87a7ef888831d74bff5d', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1438549525, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('a5d9ff885b85a8a9ea3bb7f3f747f7a1', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438550876, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('d53a74b9341b56511c5d6738aa48349f', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1438550883, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('8c0e34fd85975f621a228e0847e432c0', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1438551383, ''),
('47c96edbc21d3be3be1b42ec45e5a41c', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438551650, ''),
('b198c1754807ea8ff225b22ca82c7a26', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1438551656, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('a9db7f9e2976a9f5b85f797e530778a4', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438590923, ''),
('0ba66fd99b50cbc40c2152df1658990d', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438612782, ''),
('94c5f833fb16c5fbd6f12cf0cfb17591', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438702001, ''),
('7ef1b62fce1697a45f0d4ca9882fdc3f', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438704047, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('c4759474f2f2c1d025d40e161d9cb98d', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438789759, ''),
('e66a3c398a0b13e8e4c5f60d83369df8', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438872464, ''),
('b99f8e37624c11f98a64ed829bbcd3be', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438884188, ''),
('b3f08a66c6a5a950861f92868a8fbd55', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1439052899, ''),
('c007d6de9ca51150cc0f8057f69de6c5', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1439144785, ''),
('0f9029cfe79c896e87e015c160089e78', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1439144966, ''),
('5a029f94fce80b978d40358f9367ac54', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1439180848, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('c495fb8e12acc89f57364b6e126e7356', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1439192571, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('a03ac39a892d4d78255bc1a568af20d2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1439457823, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('764f79899c6b98f1abb04ab550b99907', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1439744371, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('d14cd2d70efbdc998d8a819794e0dc0a', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1439800168, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('d9b095a531b9b39b8eb47a5a654f0f72', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1439802009, ''),
('311b3888cf3b7a20524a3ae1c04fe948', '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1440959206, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('ba0cb329dbebe91cac270ba2bf85f541', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1440990096, 'a:1:{s:9:"user_data";s:0:"";}'),
('363bd7777f64c765ac1bebc21673ea69', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1441180227, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('289d051595a43a77b00f574294e4c9b9', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1441685091, ''),
('8c1f0e32cc12f04b9296f49ffc091780', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1441685092, ''),
('358c05b4442b9c06cbe593df2dfafa82', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1441685102, ''),
('2fa2b8d23d21e057626a6cc82dd40fbb', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1441970507, ''),
('57bdab54c05c86d690d1d87a9699e736', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1442219536, ''),
('a076afbe38484059b0f86f41b142ea99', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1442458078, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('c1062afd6da015106b3da356037218ae', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1442458078, ''),
('a1d58f64b3d9ef9835a438db5f8faf72', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1442473437, 'a:1:{s:9:"user_data";s:0:"";}'),
('0169a06a9ff3dbd56ef835ce51a1a52a', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1442473440, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('77b4f2c683a200d0c9c191edcc301f6c', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1442475455, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('230474dcbe4fc71aa129bb892438f4cc', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1442475485, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('06a47ce7da2103def49bd47021e38500', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1442475676, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('71e96081be4c5dc39687cde8aa0222f0', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1442475699, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('f31ee4d037d62fa4c87e6cc9ed86b8df', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1442475723, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('987c6edd6358554c53abfdcaa4ecb417', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1442475741, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('3ac70329522939dbcc388e712c5bd517', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1442475747, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('7aec8e23bab01482905037ce729f7906', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1442486211, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('82ecb91d9b386f47244b3549dfdc1ceb', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1442486412, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('4f18ce4ad0876cd641ab68cb49780d47', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1442489103, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('d75e31e13464c8667e0c361d8047441b', '223.136.5.188', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_4_1 like Mac OS X) AppleWebKit/600.1.4 (KHTML, like Gecko) Version/8.0 Mobile/12H32', 1442490465, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('ece6cb4f54ba5cd95e7078d8ffc7e230', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1442538194, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('061b1ad9a5c152b7845b7f63fb852ee7', '117.19.2.203', 'Mozilla/5.0 (Linux; Android 4.4.2; SGH-N075T Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.96 Mo', 1442539804, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('f4886819d265a5dc3de3b028c65d6070', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1442540386, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('c757b1fa76e8d4691be8d5af42f569e1', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1446788796, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('2645814b1d0559c316b26302375b2ab4', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1446789901, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('acda087d5ec252fcbb3873b14eadc30e', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1446789946, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('5b087de7d0e0d4fa8705d27cbb0bdb75', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1446792388, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('b11fffad98f9263c061f5987e650e48e', '66.102.7.170', 'Google favicon', 1446952373, ''),
('9ba2a8bac8c33e3acc3dbe90bae8cc86', '66.102.7.156', 'Google favicon', 1446952374, ''),
('c93a52c1d7e46b9c1ca10a34c3020ca0', '220.133.38.69', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1446988888, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('96a32b4b7cba963ff67726ae1d49cf0c', '219.71.107.253', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_0_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13A452 [FBAN/FBI', 1447007669, ''),
('ed450f5ace05998defae6cc3eaf0f169', '66.102.7.170', 'Google favicon', 1447044607, ''),
('d70eaa9be1b00e212f7f4bf9f6258f00', '66.102.7.156', 'Google favicon', 1447044608, ''),
('526f4dbd3c6b1504692166341e318b1a', '114.25.234.253', 'Mozilla/5.0 (Windows NT 6.1; Trident/7.0; rv:11.0) like Gecko', 1447059942, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('7bccba4955ec977ff7a28d295ffd6189', '220.133.138.76', 'Mozilla/5.0 (iPhone; CPU iPhone OS 8_0 like Mac OS X) AppleWebKit/600.1.3 (KHTML, like Gecko) Version/8.0 Mobile/12A4345', 1447120288, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('bc85fa3ae9ffb658c2b026747a3ee36a', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1447120369, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('952a82d5268c102004bfdaa54052afe8', '66.102.7.170', 'Google favicon', 1447133474, ''),
('12f5b41bc954d6331fded6714112486c', '66.102.7.156', 'Google favicon', 1447133474, ''),
('7523d86b70c01c80704dad939f72fd11', '27.247.79.194', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1447175257, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('844b61be6cce257e25dde6c4e0ea0d4e', '66.102.7.156', 'Google favicon', 1447254283, ''),
('5cb7a2c9cb11b3369dc331ca3bd6d832', '66.102.7.170', 'Google favicon', 1447254283, ''),
('011075f1ab16cebcb55f09d9e33e7458', '66.102.7.156', 'Google favicon', 1447341069, ''),
('c38637e9a8e1609efd3b3efbbec3d1e9', '66.102.7.163', 'Google favicon', 1447341069, ''),
('4d48d6cf134e5a3c91b466c343894c03', '220.133.138.76', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36', 1447379536, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('a8b817877319060ae0e60296713241a5', '66.102.7.163', 'Google favicon', 1447545209, ''),
('62a9ee69c886bf2808d5c874607ddcaa', '66.102.7.156', 'Google favicon', 1447545211, ''),
('6bcf626f30f14a3e3d6a43e705211c83', '66.220.156.117', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1447587587, ''),
('dff52a7fac10e549b004201cc0e84e06', '66.220.156.117', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1447587588, ''),
('700c96199ae7a18bc171b2c80af62259', '66.102.7.170', 'Google favicon', 1447651184, ''),
('3180b4bafb11f0ae447da8982e1c4ba5', '66.102.7.156', 'Google favicon', 1447651184, ''),
('a00f76e61ffd6ce177bbf0c44f7f9c9c', '220.133.38.69', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36', 1447651557, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('cc15dc84d95e305d8de9faff9776f7f9', '114.25.238.80', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36', 1447749271, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('7e4ca30093ac38a4cc3d50577ae8d11f', '59.124.185.162', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.132 Safari/537.36', 1447985881, ''),
('58ba320d625dd5c8e918dc9ff9528502', '66.249.84.214', 'Google favicon', 1448382936, ''),
('7280dd89f4852092f3af439566f1d5ec', '66.249.84.210', 'Google favicon', 1448382937, ''),
('2b14d437a1adf475a3cc6e722e2066b3', '122.116.80.252', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:42.0) Gecko/20100101 Firefox/42.0', 1448437558, ''),
('b3e756e88f9bb62e8c4de33cb2de6efb', '66.220.156.109', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1448437558, ''),
('e0f78729a8fa962a0fe20d3360e72bd8', '66.220.156.109', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1448437559, ''),
('b4ab5e0edb15898b9400b80f6a1d7f36', '66.249.80.19', 'Google favicon', 1448689851, ''),
('729a42cf97027352ba13ed49b81904d2', '66.249.80.19', 'Google favicon', 1448689851, ''),
('dc08867ec56bae975692cb2e2eb80b5a', '66.249.80.19', 'Google favicon', 1448782584, ''),
('9e3d2a98beb87c8d238f7412cab9cd0c', '66.249.80.19', 'Google favicon', 1448782584, ''),
('b44f053c628e22543d3a322e0a829304', '66.249.80.1', 'Google favicon', 1448849081, ''),
('a3c667b7a0d9f88288cbe0474ac18a57', '66.249.80.1', 'Google favicon', 1448849081, ''),
('9c630a539040243193127cb7341635e9', '66.249.80.19', 'Google favicon', 1448953224, ''),
('b7d947cd11c284c65adf02bc8b885c86', '66.249.80.19', 'Google favicon', 1448953225, ''),
('27a67f478732332dd0ea37a0f7c13588', '66.249.84.206', 'Google favicon', 1448966619, ''),
('df18e4524683f2f8a9331c3e2d942888', '66.249.84.214', 'Google favicon', 1448966619, ''),
('10dfbcfea69e6781c76c8231fbc684d8', '180.204.146.153', 'Mozilla/5.0 (Linux; Android 4.4.4; SM-G530Y Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/33.0', 1449036333, ''),
('608716f918d477dcb3db37f61047306e', '66.249.80.10', 'Google favicon', 1449039761, ''),
('36ff97673f39ebe5b2a98b23299ca709', '66.249.80.19', 'Google favicon', 1449039762, ''),
('e7a618caa714c598c18858de6d0d8a69', '66.249.88.48', 'Google favicon', 1449124135, ''),
('829bcf4f1f44c3604552797c9ee7d2a8', '66.249.88.59', 'Google favicon', 1449124135, ''),
('6f7461e3e3282e92376430a3164bc228', '66.249.80.19', 'Google favicon', 1449198085, ''),
('9cc9289635d9f614c9c52a1a69275f53', '66.249.80.19', 'Google favicon', 1449198085, ''),
('f719775e46f1b66c51f3fee8f123ddc9', '173.252.114.113', '0', 1449285307, ''),
('6f3d48b7cd0ba6a6f5152ab9b1aadbf4', '173.252.114.113', '0', 1449285308, ''),
('1e8373069830d8a74136b9bb8ee14255', '111.243.56.69', 'Mozilla/5.0 (Linux; Android 4.4.2; LG-D802 Build/KOT49I.D80220c) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490', 1449320516, ''),
('8ab18a8b46050d1560c66f71747eb1a5', '173.252.88.185', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1449320517, ''),
('f178c3f532a0f946a94dc0a920d230f2', '173.252.88.185', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1449320518, ''),
('8351f6e7e65395cf223c689db1b7dc7d', '66.249.80.10', 'Google favicon', 1449385357, ''),
('b7fb99504e166494ba27c2fd4908a05a', '66.249.80.10', 'Google favicon', 1449385357, ''),
('b1d09f23c8dad6f1e0bf906518cb6cf3', '114.25.228.54', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.73 Safari/537.36', 1449483101, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('b146d930baa01b59d94facb128edb440', '66.249.80.10', 'Google favicon', 1449494615, ''),
('567c91ed3aa80e27c4c277de7d6acef6', '66.249.80.10', 'Google favicon', 1449494615, ''),
('6d4a2f764c3a8225e8a55bf459e82412', '114.25.237.235', 'Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; Touch; rv:11.0) like Gecko', 1449556292, ''),
('f474341429d84bdf854567a9bee534c8', '114.25.237.235', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64; Trident/7.0; Touch; rv:11.0) like Gecko', 1449556293, ''),
('6fba010eafa492cae8a4f20f01e018c8', '123.192.211.198', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/601.3.9 (KHTML, like Gecko) Version/9.0.2 Safari/601.3.9', 1449803911, ''),
('9437fed44d2c8f598db2a8e6f6ba3561', '66.249.80.10', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20110814 Firefox/6.0 Google Favicon', 1449997360, ''),
('42ecbc18f98e69977c684eb9a55ed240', '66.249.80.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20110814 Firefox/6.0 Google Favicon', 1449997360, ''),
('0666f71233f9313e0f00a83a2634046b', '220.136.112.129', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', 1450077755, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('097a298b4af8a07a3f988b574fe432af', '114.37.105.201', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_2 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13C75 [FBAN/FBIOS;', 1450114876, '');
INSERT INTO `fs_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('d81cd6c4efa13de09c3ea25472af01de', '220.136.115.88', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', 1450147763, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('a988670a2ab46d356986a7c98168fe8b', '173.252.105.116', '0', 1450149517, ''),
('63a77785f56a2589b4ebc6ad8d3064e1', '173.252.105.116', '0', 1450149518, ''),
('29ab3b707b4fd28d4bb67dd41947f67a', '66.249.80.19', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20110814 Firefox/6.0 Google Favicon', 1450151422, ''),
('5a1433fbc1547496c9a9bc2ee8fd3fbf', '66.249.80.1', 'Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20110814 Firefox/6.0 Google Favicon', 1450151422, ''),
('e926405b743d8a99d392a5ce908a05de', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', 1450336502, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528501";}'),
('344915d77749275d881b761a157145ce', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450342844, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('563ea4b3a5a12079f1933cbe6f4917c9', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', 1450346765, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('894a754bd6f9cc9e0dca316b328c5d31', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450350271, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('b896738b64b87d6b1cafe250011ee39f', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', 1450350345, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('8584cc812ea1545dbb5b6f7d807ff2b7', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450350552, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('1c0377decf61c8e37ac92ab04066dc8a', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', 1450350556, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('c7e5d8a2910caae1f68b937e0fade3d6', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450354447, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('d6dca2dd545b6dfcaa4d1a83242bd31b', '::1', 'Mozilla/5.0 (iPad; CPU OS 7_0_4 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11B554a Safar', 1450354464, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('b8c10da93f69e47f4b93ebe9abcc957e', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450354928, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('59ecd325c12330cebbfc0be829860157', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', 1450356546, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('d2482d0c24d67bde8d1e15b4ba846d02', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450356563, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('fed79b5f923fae59e04d25e51220acae', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', 1450357026, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('7ccd9f2afca4806c5a930860a9adc282', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450358132, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('2c668b31133cddd6af91851d66343cae', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.80 Safari/537.36', 1450358187, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('780384bbe041ad2cf20ea06d261f44a1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450841478, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('04106610fec3128dc1388140bfa6764d', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450935963, ''),
('e74727ef13fd1793b264eec13cf36157', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450935968, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('ccce0bdff0f2610c97bae59745a1187f', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450936199, ''),
('5e57c52ea2358e5196aa1e3750f7d5f2', '::1', 'Mozilla/5.0 (iPad; CPU OS 7_0_4 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11B554a Safar', 1450936203, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('257d39de476a2dbc12c13f536c148ca2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450936606, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('ee6cff013227c0996c3eb45c0aecefe0', '::1', 'Mozilla/5.0 (iPad; CPU OS 7_0_4 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11B554a Safar', 1450936828, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('a41c29ce7fffb8c173c447e5375abbf5', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450938860, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('654ff2c55d230ca45071d4dfeb01d9db', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450939378, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('1c4f646d734d4d8244b90f860a288692', '::1', 'Mozilla/5.0 (iPad; CPU OS 7_0_4 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11B554a Safar', 1450939905, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('a20cc7f5033154ee83b94966cfac708a', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450940192, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('d5218ea7146e00f34cf3a922f31d21a6', '::1', 'Mozilla/5.0 (iPad; CPU OS 7_0_4 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11B554a Safar', 1450940247, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('26217079768e95667215b2069413c7bc', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450940314, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('593074bd83ae68e09c954b1297691dca', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450941309, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('609b14812e073cf6e00f38b93c347ec9', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450947385, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('3e08ddbc0c7c7dd5fd6f8a7a1b1dc3c5', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450947494, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('49c6f5ae14c20d897e2f7ed4ad5175ae', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450948776, ''),
('f0dc60b1467204ecc876610d86031408', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450948777, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('04effab2fede4ad84bb00dd7784d7ff0', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450948836, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('e79a34fd2b728aa87fe30ff6abf5c87f', '::1', 'Mozilla/5.0 (iPad; CPU OS 7_0_4 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11B554a Safar', 1450949288, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('f7a022133f50ed538e693282cfad8382', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450950028, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('ee9ca07ee08e45611993ef06a3e31ca0', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450952722, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('9749d672f6107d119bf6f6e7f484b8df', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450952760, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('d827fb880a9740f1ce97aa7480b40f1f', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450953167, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('c3977efdf8f9e460adaef1e0d171cf04', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450953232, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('c26306d20d4424bb59cc05466f27e2a0', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450953382, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('792990306987e189ee7c4facad13a86d', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450953439, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('d9a13e4290bb810c61168a16ca5b2e2e', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450953607, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('4ce4718967b7abd9964529d6784737e9', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450953635, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('975480d1b1fb0464077831fdfa1fc1cc', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450953914, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('39f0bcad51bfc798522040a16f148300', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450954050, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('aa2f801f4c83614f8e891c5fe256fa93', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450954490, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('d52ab779bd1860f240b5d0824e8c1e0d', '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile', 1450955295, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}'),
('97f5f9921b35713e0457dea32cc64125', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36', 1450955315, 'a:2:{s:9:"user_data";s:0:"";s:3:"uid";s:6:"528502";}');

-- --------------------------------------------------------

--
-- 資料表結構 `fs_setting`
--

CREATE TABLE IF NOT EXISTS `fs_setting` (
  `keyword` char(32) NOT NULL,
  `value` text NOT NULL,
  `modelname` char(32) NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_setting`
--

INSERT INTO `fs_setting` (`keyword`, `value`, `modelname`, `status`) VALUES
('website_name', 'fansWoo 瘋沃科技', '', 1),
('website_logo', 'app/img/logo.png', '', 1),
('website_email', 'service@fanswoo.com', '', 1),
('website_metatag', '網頁設計、fansWoo design,網頁設計,網站設計,網頁設計公司,台北網頁設計,瘋沃網頁設計\r\n中小型企業形象網站網頁設計瘋沃科技網頁設計公司提供最優質的網頁設計、網站架設、多媒體網頁設計等多項服務. 我們的客戶來自於各行各業，以最全面性的服務來滿足您對於網頁設計的需求', '', 1),
('website_script_plugin_custom', '', '', 1),
('website_script_plugin_ga', '', '', 1),
('website_script_plugin_fb', '', '', 1),
('website_title_name', 'fansWoo 瘋沃科技', '', 1),
('website_title_introduction', '網站測試中', '', 1),
('smtp_email', 'service@fanswoo.com', 'smtp', 1),
('smtp_password', '1234qwera', 'smtp', 1),
('smtp_ssl_checkbox', '1', 'smtp', 1),
('smtp_account', 'yi@fanswoo.com', 'smtp', 1),
('smtp_host', 'smtp.gmail.com', 'smtp', 1),
('smtp_username', 'fansWoo', 'smtp', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `fs_showpiece`
--

CREATE TABLE IF NOT EXISTS `fs_showpiece` (
  `showpieceid` mediumint(8) NOT NULL,
  `uid` mediumint(8) NOT NULL,
  `name` char(32) NOT NULL,
  `price` mediumint(10) NOT NULL,
  `mainpicids` char(100) NOT NULL,
  `classids` char(100) NOT NULL,
  `content` text NOT NULL,
  `content_specification` text NOT NULL,
  `barcode` text NOT NULL,
  `synopsis` text NOT NULL,
  `picids` char(100) NOT NULL,
  `color` char(100) NOT NULL,
  `prioritynum` mediumtext NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  UNIQUE KEY `showpieceid` (`showpieceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_showpiece`
--

INSERT INTO `fs_showpiece` (`showpieceid`, `uid`, `name`, `price`, `mainpicids`, `classids`, `content`, `content_specification`, `barcode`, `synopsis`, `picids`, `color`, `prioritynum`, `updatetime`, `status`) VALUES
(1, 528502, '雙眼皮手術', 0, '', '528623', '<br />\r\n<span style="font-size:250%;"><strong>*</strong></span><br />\r\n根據統計，<span style="color:#dd7824;">美國每一年,&nbsp;約有300,000&nbsp;人作了眼睛的美容手術。</span>眼皮手術被認為是超過35歲以上，被詢問及執行的整容手術。因為眼睛外形以及眼袋占了人類面部表情的絕大部分。因此人們經常在決定接受拉皮手術前，先考慮作眼皮手術。<br />\r\n<br />\r\n<span style="color:#dd7824;">龍安診所量身定制眼部整形手術，不僅考慮到臉部五官和諧，讓你擁有自然、理想的眼形</span><br />\r\n<br />\r\n東方人的眼皮，因為圖中黃色的脂肪層位置過於向下延伸所以造成雙眼皮形成不易，而不論何種手術方式就是像圖中黃線所示，讓這兩個地方連結在一起來形成一個皺摺&nbsp;(雙眼皮)<br />\r\n<br />\r\n<strong><span style="font-size:120%;"><span style="color:#96601c;">手術方法</span></span><br />\r\n<br />\r\n縫合法</strong><br />\r\n透過三到四個小切口，利用不可吸收縫線將提眼肌膜固定於皮下組織，形成雙眼皮。優點是術後腫脹少、復原快，缺點是僅適用年輕、眼皮薄的客人，如果體質不易形成疤痕者，雙眼皮會隨著歲月變淺、變窄。<br />\r\n&nbsp;<br />\r\n<strong>切開法</strong><br />\r\n沿著雙眼皮線完全切開，類似的縫線固定方式。優點是疤痕為整條形成，而非三點，效果較能長久持續，而且不論皮膚、脂肪、肌肉鬆弛均能處理，二次手術也多需採用此種方式。缺點是手術造成的傷害較大，術後的復原較久，有時會因為術後的照顧、客人的體質、傷口的發炎、醫師的技巧，造成ㄧ些不可抗拒的不盡理想的結果。所幸，大部分的併發症，有經驗的醫師多能處理善後。&nbsp;<br />\r\n&nbsp;<br />\r\n<strong>迷你切口</strong><br />\r\n中央部份有一個一公分長的切開式傷口，以切開式的手術方法進行，內外側再各用一針縫合式的方法，來加強並修飾線條。可說是綜合上述兩種方式的優點，復原比切開式方法快速，效果維持較單純縫合法久，缺點是比較無法處理所有的二次手術。<br />\r\n&nbsp;<br />\r\n<strong>訂書針雙眼皮</strong><br />\r\n為連續縫合式雙眼皮手術的一種，原本發表的日本醫師，會使用一種特製的縫針，來進行手術，但是後來大家發現其實影響不大。許多人會以為連續縫合的方式，會很不腫，恢復很快，事實不然。因為連續縫合，血液回流被阻斷的更多，所以腫脹程度有時會因個人差異，有可能會相當久。<br />\r\n&nbsp;<br />\r\n<strong>無痕雙眼皮手術</strong><br />\r\n這一個方法，學術界並沒有，所以應該指的是從眼皮內側，就是眼結膜切開傷口，由內部來進行雙眼皮手術。但是因為縫線的打結點太靠近眼結膜，有時會造成眼睛的不適。<br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;', '', '', '', '4', '', '0', '2015-12-24 20:12:39', 1),
(3, 528501, '埋線拉提', 0, '', '528627', '', '', '', '', '', '', '0', '2015-12-17 16:12:07', 1),
(2, 528502, '鈴鐺線拉提', 0, '', '528623', '<br />\r\n<span style="font-size:300%;">*</span>\r\n<div style="text-align: center;"><span style="color:#96601c;"><strong><span style="font-size:150%;">詩立愛鈴鐺線拉提</span></strong></span></div>\r\n<br />\r\n鈴鐺線拉提是一種微創拉皮術，手術只需局部麻醉，安全性高。手術一開始會於髮際線後方兩公分處開出約1.5CM左右的微創傷口(傷口隱密不易被察覺)。利用約1.5CM的傷口將塑形線固定在深層筋膜，再將特殊塑線材拉緊欲改善的部位並固定線材，達到積極改善鬆弛下垂的目的。<br />\r\n<br />\r\n<br />\r\n<span style="font-size: 39px; line-height: 62.4px;">*</span><br />\r\n<span style="color:#96601c;"><span style="font-family:微軟正黑體;"><span style="font-size:120%;"><strong>特點</strong></span></span></span><br />\r\n<br />\r\n<strong>非手術性:</strong> &nbsp;非手術性的療程，只需局部麻醉。<br />\r\n<br />\r\n<strong>快速 :</strong> &nbsp;療程時間約1小時。<br />\r\n<br />\r\n<strong>即時效果 : </strong>&nbsp;立即見效。<br />\r\n<br />\r\n<strong>恢復期短 :</strong> &nbsp;恢復期約一週。<br />\r\n<br />\r\n<strong>安全性 :</strong> &nbsp;獲美國食品藥物管理局(FDA)及歐洲藥品評鑑局(CE)及台灣衛福部核准三重認證。<br />\r\n<br />\r\n<strong>效果持久 :&nbsp;</strong>由於圓錐和線的設計強韌和持久度佳。LIFT(大鈴鐺線)&nbsp;3~5年，SOFT(小鈴鐺線、圓錐線) 1~2年。<br />\r\n<br />\r\n<strong>降低不舒適性 :</strong>&nbsp;線的厚度上是很細，圓錐體的設計既軟又圓，大大降低針扎感。<br />\r\n<br />\r\n<strong>適應症 :</strong> &nbsp;30~35歲下垂程度明顯之肌膚狀況<br />\r\n<br />\r\n<strong>適應部位 :</strong> &nbsp;眉形拉提/眼尾下垂/法令紋/嘴邊肉/蘋果肌下垂/雙下巴/雞脖子/下顎線V-line拉提<br />\r\n<br />\r\n<br />\r\n<span style="color:#96601c;"><span style="font-size:120%;"><strong>術前準備</strong></span></span><br />\r\n<br />\r\n１．心臟疾病者、懷孕婦女、癌症患者、具糖尿病/蟹足腫/紅斑性狼<a href="http://homepage.vghtpe.gov.tw/~air/htm/disease01.html">瘡</a>等體質、免疫系統功能異常者、硬皮症、淋巴性水腫、泡疹或嚴重皮膚病者需由醫師評估是否適合本療程。<br />\r\n<br />\r\n２．治療前2週暫緩執行任何雷射、換膚或A酸等治療；前3個月停止服用口服A酸。<br />\r\n<br />\r\n３．如治療部位有開放性傷口、皮膚感染、發炎中、乾癢不適、曬傷、濕疹、毛囊炎、長期使用類固醇/非類固醇/消炎性止痛藥物者或精神心智狀 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;況不佳者暫不執行療程，需經醫師評估。<br />\r\n<br />\r\n４．治療部位如有人工填充物或近１個月內有注射微整填充物，需經醫師評估。<br />\r\n<br />\r\n<br />\r\n<span style="color:#96601c;"><strong><span style="font-size:120%;">術後照顧</span></strong></span><br />\r\n<br />\r\n１．術後泛紅、腫脹、搔癢、緊繃感等現象可冰敷減緩不適。勿過度揉捏治療部位。<br />\r\n<br />\r\n２．術後兩週內勿做臉部大動作和表情，如大笑、張大口；勿食用過硬食物，如堅果類、口香糖。<br />\r\n<br />\r\n３．術後兩週內勿做牙科治療、臉部美容療程光療和按摩、三溫暖、游泳、劇烈運動及勿趴睡請仰睡<br />\r\n<br />\r\n４．術後一週內勿抽菸、喝酒；不吃麻辣重口味食物和食用海鮮。<br />\r\n<br />\r\n５．隨時保持傷口及周圍清潔乾燥。<br />\r\n<br />\r\n６．術後一週內盡量不上妝。<br />\r\n<br />\r\n７．術後一週內遵照醫師指示服用及塗抹消炎藥物。<br />\r\n<br />\r\n８．治療成效會因個人膚況不同而有所差異。<br />\r\n<br />\r\n<br />\r\n<span style="font-size:120%;"><span style="color:#96601c;"><strong>二至三年後，可再做二次拉提&nbsp;</strong></span></span><br />\r\n<br />\r\n<br />\r\n&nbsp;', '', '', '', '', '', '0', '2015-12-24 20:01:43', 1),
(4, 528502, '脂肪填補(臉部雕塑)', 0, '', '528623', '<br />\r\n脂肪是人體的組織，由身體某部位取出，再移植到他處不會有排斥的問題，且可存活及成長，是安全又能掘凸補凹、兩全其美的好方法。<br />\r\n<br />\r\n原理為抽取身體內多餘的脂肪，經細胞優化與高純度生長因子添加處理，注射到所需部位，利用自體脂肪做填充物，填補顏面上先天或後天的凹陷或不足，達到豐盈拉提的效果，因是採自體的脂肪，故不易產生任何排斥或不良反應，針對臉部的填充通常一次就能達到理想效果，只有極少部分人，會需要再次補加強，以達到完美的效果。　<br />\r\n<br />\r\n<strong>凹陷的修正</strong> - 如夫妻宮、太陽穴、眼袋、下巴、蘋果肌、豐額、臉頰凹陷、疤痕凹陷。<br />\r\n<br />\r\n<strong>皺紋的改善</strong> - 如皺眉紋、法令紋等。<br />\r\n<br />\r\n<br />\r\n<span style="color:#96601c;"><strong><span style="font-size:120%;">術前須知</span></strong></span><br />\r\n<br />\r\n１．兩週前請停用含阿斯匹林成分藥物。<br />\r\n<br />\r\n２．治療前請告知醫師目前正在使用的所有藥物及過往治療病史。<br />\r\n<br />\r\n<br />\r\n<strong style="color: rgb(150, 96, 28); line-height: 20.8px;"><span style="font-size: 15.6px;">術後照顧</span></strong><br />\r\n<br />\r\n１．治療後３天內可適度冰敷注射部位，並避免用力壓迫。<br />\r\n<br />\r\n２．治療後兩個月內請避免至高溫場所，以免傷口未癒合完全，而造成感染。<br />\r\n<br />\r\n３．治療後請維持正常生活作息，勿食用刺激性食物。<br />\r\n<br />\r\n&nbsp;', '', '', '', '', '', '0', '2015-12-24 20:05:31', 1),
(5, 528502, '眼袋手術', 0, '', '528623', '<br />\r\n<br />\r\n<span style="font-size:250%;"><strong>*</strong></span><br />\r\n<br />\r\n東方人的外貌，最早呈現老態的部位就是眼袋的部分，除了少部分人因為遺傳體質，從小就有眼袋外，大部分的人都是20、30歲以後，下眼袋才逐漸長出來，一旦有了眼袋，不僅看起來沒有精神，有會讓人顯得老氣橫秋，不過，只要動刀在下眼瞼把脂肪拿掉，就可以讓外表看起來年輕許多。<br />\r\n<br />\r\n<strong style="font-size: 32.5px; line-height: 52px;">*</strong><br />\r\n<br />\r\n<span style="color:#96601c;"><span style="font-size:120%;"><strong>內開式眼袋手術</strong></span></span><br />\r\n<br />\r\n手術時間約30分鐘，適合眼袋形成以眼眶的脂肪為主的年輕人，眼皮彈性佳或肌肉與皮膚沒有鬆弛下垂者，可從眼瞼內抽除眼袋內脂肪，從外在看不出疤痕；此手術因為由眼瞼內結膜切開，優點是恢復期短，但是只適合沒有眼皮鬆弛的眼袋者。<br />\r\n<br />\r\n&nbsp;<strong style="font-size: 32.5px; line-height: 52px;">*</strong><br />\r\n<br />\r\n<span style="line-height: 20.8px; color: rgb(150, 96, 28);"><span style="font-size: 15.6px;"><strong>外開式眼袋手術</strong></span></span><br />\r\n<br />\r\n手術時間約一小時。眼袋的形成主要原因是下眼瞼筋膜鬆弛，造成眼眶脂肪的凸出。所以單純抽去眼部脂肪，已經普遍不被目前的整形外科醫師認同。現在多是將脂肪塞回眼眶內，並加強縫緊肌膜；或是將多餘凸出的脂肪，鋪到淚溝處來改善凹陷。有時如果淚溝的凹陷太嚴重，眼眶內脂肪不夠，還需要再由其他地方提供自體脂肪，才會有個滿意的結果。<br />\r\n<br />\r\n<span style="font-size:250%;"><strong>*</strong></span><br />\r\n<br style="line-height: 20.8px;" />\r\n<br style="line-height: 20.8px;" />\r\n<br />\r\n<br />\r\n&nbsp;', '', '', '', '', '', '0', '2015-12-24 20:19:35', 1),
(6, 528502, '隆鼻手術', 0, '', '528623', '<br />\r\n鼻子位於臉的正中心，也是全臉最突出的位置，要有精緻的五官比例，鼻型是重要的關鍵在面相學上，好看的鼻子與「財運」是息息相關的。<br />\r\n<br />\r\n<strong><span style="font-size:250%;">*</span><br />\r\n<span style="color:#96601c;">常見的隆鼻手術分為：</span></strong><br />\r\n<br />\r\n韓式隆鼻、日式隆鼻、美式隆鼻、兩段式隆鼻、耳朵軟骨、鼻中隔軟骨、肋骨軟骨、異體軟骨、矽膠、Gore-Tex、卡麥拉．．．到底有多少種隆鼻手術啊？<br />\r\n<br />\r\n手術傷口而言，就是開放式及封閉式兩種，開放式的傷口就是在鼻中柱的地方會有一條連接兩側的傷口，封閉式則在鼻孔內，單側或是兩側。<br />\r\n<br />\r\n<span style="color:#96601c;"><strong>植入物的材料而言分為以下二種:&nbsp;</strong></span><br />\r\n<br />\r\n&nbsp;\r\n<table align="center" border="1" cellpadding="0" cellspacing="0" style="width:95%;" width="95%">\r\n	<tbody>\r\n		<tr>\r\n			<td style="width: 25%; height: 27px; text-align: center;"><br />\r\n			<strong>耳朵軟骨</strong><br />\r\n			&nbsp;</td>\r\n			<td style="width: 30%; height: 27px; text-align: center;"><strong>鼻中隔軟骨</strong></td>\r\n			<td style="height: 27px; text-align: center;"><strong>肋骨軟骨</strong>&nbsp;<strong>(</strong><strong>自體 或異體)</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><strong>傷口</strong></td>\r\n			<td style="text-align: center;">耳前或耳後</td>\r\n			<td style="text-align: center;">鼻腔內鼻中隔上</td>\r\n			<td style="text-align: center;">前胸</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><strong>特性</strong></td>\r\n			<td style="text-align: center;">最軟、有彈性</td>\r\n			<td style="text-align: center;">較硬</td>\r\n			<td style="text-align: center;">最硬</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><strong>來源</strong></td>\r\n			<td style="text-align: center;">左右耳，有一定可以取出的量</td>\r\n			<td style="text-align: center;">取出量略多於耳軟骨</td>\r\n			<td style="text-align: center;">幾乎可以說是沒有限制，但是年齡的影響也較大</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><strong>用途</strong></td>\r\n			<td style="text-align: center;">多用於鼻頭的造型設計</td>\r\n			<td style="text-align: center;">多用於鼻頭、鼻樑的支撐支架</td>\r\n			<td style="text-align: center;">片狀可用於支撐支架，切碎後可用於鼻樑之加高</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><strong>弱點</strong></td>\r\n			<td style="text-align: center;">無法提供過大的支撐力</td>\r\n			<td style="text-align: center;">取得技術較難，鼻尖的塑形較不柔軟</td>\r\n			<td style="text-align: center;">取得技術較難，而且前胸有疤痕，被吸收率前兩者，有彎曲(warping)的機會</td>\r\n		</tr>\r\n		<tr>\r\n			<td style="text-align: center;"><strong>優點</strong></td>\r\n			<td style="text-align: center;">鼻頭造型有彈性，適合皮膚較薄者</td>\r\n			<td style="text-align: center;">支撐力夠強，可以讓皮膚較厚者得到較大改善</td>\r\n			<td style="text-align: center;">支撐力超強，是男性及非常朝天鼻的較佳選擇</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<br />\r\n<br />\r\n<span style="color:#96601c;"><strong><span style="font-size:120%;">鼻頭手術</span></strong></span><br />\r\n<br />\r\n東方人的鼻翼較易於因過度外擴而有鼻孔過大，所以接受鼻翼鼻孔整型手術者幾乎都是為了要縮鼻翼、縮鼻孔。鼻翼過度外擴會造成鼻孔過大，且破壞鼻翼、鼻頭、鼻樑和鼻根之間的和諧比例，藉由切除部分的兩側鼻翼來改善外擴的鼻翼，進而改善鼻孔形狀。鼻頭整型手術主要是通過手術的方式糾正先天和後天的鼻頭不正或者是鼻頭肥大。鼻頭過大、過小、角度過度向上或下垂都可藉由手術改善美觀。<br />\r\n<br />\r\n<span style="color:#96601c;"><strong><span style="font-size:120%;">常見鼻形問題</span></strong></span><br />\r\n<br />\r\n<span style="color:#000000;"><span style="font-size:120%;"><span style="font-size:250%;">*</span></span></span><br />\r\n<strong>改善方法<br />\r\n<br />\r\n★蒜頭鼻、蓮霧鼻&nbsp;</strong><br />\r\n&nbsp;因為鼻翼軟骨肥大造成鼻頭過大。改善方法是將鼻翼軟骨的上緣切除，讓鼻頭變小。<br />\r\n<br />\r\n<strong style="line-height: 20.8px;">★</strong><strong>無鼻尖和鼻頭</strong><br style="line-height: 20.8px;" />\r\n用自體的耳軟骨移植到鼻頭，甚至鼻中柱前面來撐起鼻頭，讓鼻頭更立體更自然。<br />\r\n<br />\r\n<strong style="line-height: 20.8px;">★</strong><strong>提高鼻頭</strong><br style="line-height: 20.8px;" />\r\n&nbsp;對縫鼻中格軟骨，可以再加上鼻中膈軟骨，藉以撐起鼻頭，使鼻頭更立體，同時使鼻孔形狀更漂亮。<br />\r\n<br />\r\n<strong style="line-height: 20.8px;">★</strong><strong>鷹勾鼻</strong><br />\r\n鼻尖過長或下垂。改善方法是將過長的鼻翼軟骨、鼻中膈軟骨切除。<br />\r\n<br />\r\n<strong>★獅子鼻</strong><br />\r\n&nbsp;鼻翼較有過度外擴，造成鼻孔過大。改善方法是透過「縮鼻翼」、「縮鼻孔」的鼻孔整型手術<br />\r\n<br />\r\n<strong style="line-height: 20.8px;">★</strong><strong>朝天鼻</strong><br />\r\n鼻孔向上。改善方法是克服鼻子皮膚張力來增加鼻子的長度，並用自體軟骨來矯正鼻尖及朝天的鼻孔。(縮鼻翼分別:內縮、外縮)<br />\r\n<br />\r\n<strong>★歪鼻</strong><br />\r\n&nbsp;根據不同的歪斜方向有分為「Ｃ型」「Ｓ型」及「側斜型」歪鼻。改善方法是依不同的歪斜方向來矯正鼻骨、鼻中膈軟骨、鼻翼軟骨和上鼻側軟骨。<br />\r\n<br />\r\n<span style="color:#96601c;"><strong><span style="font-size:120%;">我該選擇何種隆鼻手術？</span></strong></span><br />\r\n<br />\r\n沒有哪一種隆鼻手術方式是最好的，只有你適合哪一種隆鼻手術。<br />\r\n讓熟悉各種隆鼻方式的醫師來為您選擇，您該進行何種手術。<br />\r\n<br />\r\n<br />\r\n&nbsp;', '', '', '', '', '', '0', '2015-12-24 20:41:59', 1),
(7, 528502, '下巴整形', 0, '', '528623', '<div style="text-align: center;"><span style="color:#96601c;"><strong><span style="font-size:200%;">下巴決定臉型</span></strong></span></div>\r\n<br />\r\n下巴可以決定一個人的臉型，下巴內縮或過短，會讓人留下顴骨過高或雙頰過寬的印象，如果擁有尖而精緻的完美下巴比例，會有縮小臉部的視覺效果。<br />\r\n<br />\r\n<strong><span style="font-size:250%;">*</span></strong><br />\r\n短下巴或下巴內縮的人，脖子看起來就會比較短，臉也會看起來比較短比較圓，而且視覺效果也會顯得嘴巴突出。(如圖一)<br />\r\n<br />\r\n<br />\r\n&nbsp;<br />\r\n<strong><span style="font-size:120%;"><span style="color:#96601c;">改善短下巴的方式:</span></span><br />\r\n<br />\r\n永久 : </strong>使用卡麥拉墊下巴手術(可加自體脂肪會更自然)<br />\r\n<br />\r\n<strong>有時效性 : </strong>水微晶、微晶瓷、玻尿酸...注射<br />\r\n<br />\r\n<br />\r\n<br />\r\n<strong style="line-height: 20.8px;"><span style="font-size: 15.6px;"><span style="color: rgb(150, 96, 28);">完美下巴比例:</span></span></strong><br />\r\n<br />\r\n<strong style="line-height: 20.8px;"><span style="font-size: 15.6px;"><span style="font-size:250%;">*</span></span></strong><br />\r\n<br />\r\n1. 下巴要比眉間垂直線突出3MM<br />\r\n2. 鼻頭和下巴間放一把尺時，下嘴唇應略微碰到尺<br />\r\n3. 從側面看時，下巴要比從人中到下巴的垂直線突出<br />\r\n4. 嘴巴與下巴連接部位需成為S曲線<br />\r\n5. 將臉劃分上、中下比例應成為1:1:1<br />\r\n<br />\r\n<br />\r\n<strong style="line-height: 20.8px;"><span style="font-size: 15.6px;"><span style="color: rgb(150, 96, 28);">墊下巴的材質:</span></span></strong><br />\r\n<br />\r\n<span style="line-height: 20.8px;">1.&nbsp;</span>傳統的矽膠材質(缺點:線條不順)<br />\r\n<span style="line-height: 20.8px;">2.&nbsp;</span>傳統的人工骨材質(缺點:下巴太寬不夠秀氣)<br />\r\n<span style="line-height: 20.8px;">3.&nbsp;</span>卡麥拉(線條漂亮、較不易位、觸感佳、自然度高)<br />\r\n&nbsp;<br />\r\n<br />\r\n<br />\r\n&nbsp;', '', '', '', '', '', '0', '2015-12-24 20:51:09', 1),
(8, 528502, '隆乳手術', 0, '', '528623', '<div style="text-align: center;"><strong><span style="font-size:150%;"><span style="color:#96601c;">擁有飽滿事業線不是夢</span></span></strong><br />\r\n&nbsp;</div>\r\n隆胸手術分為假體豐胸與自體脂肪豐胸兩大主流，常見假體隆胸為鹽水袋、果凍矽膠，果凍矽膠又分為:光滑面、絨毛面。目前台灣很少見的合併手術「自體脂肪+果凍矽膠」，效果非常的好，但相對的價位也比較高，優點是結合自體肪脂的柔軟觸感並雕塑身型，及果凍矽膠可一次升級好幾個罩杯的效果，最重要的是不需要按摩。<br />\r\n<br />\r\n<strong><span style="font-size:250%;">*</span></strong><br />\r\n&nbsp;\r\n<div><strong>自體脂肪: </strong><br />\r\n<br />\r\n自體脂肪是一種天然填充劑，使用患者本身的脂肪，抽出後經過提煉及純化後再注射進乳房內，來源取得方便，使用它注射隆胸所留下的疤痕非常微小，又能改善假體隆胸的不自然異物感。 自體脂肪移植豐胸術後胸部會有像MC時般的腫脹感，而自體脂肪臉部移植部位術後同樣會有腫脹感，而抽脂部位會有些腫痛，視個人情況約一至兩三周逐漸消腫緩解，可以由醫師評估個人狀況給予塑身衣輔助修復消腫。自體脂肪隆乳外觀及觸感與乳房組織相似，自然柔軟，隆乳的同時又可以去除身體多餘的脂肪，達到雕塑身型的效果，一舉兩得，胸部幾乎無痛感無疤痕。</div>\r\n<br />\r\n<strong>果凍矽膠：</strong><br />\r\n<br />\r\n適合想一次升級較多罩杯，且身上無多餘脂肪可移植者，術後需配合按摩。但近年來，自體脂肪隆胸有逐漸超越的趨勢，一般來說，果凍矽膠的觸感會優於傳統的鹽水袋，那麼光滑面與絨毛面的觸感是否有差異呢&nbsp;?其實光滑面的果凍矽膠於彎腰時比較不易產生皺折，相較於絨毛面，光滑面的觸感比較軟Ｑ接近真乳，但術後三個月需要不斷的按摩，必免莢膜孿縮。而絨毛面的優點就是手術過程短恢復快，術後的腫脹或瘀血也會跟著少很多，還有術後較無疼痛感且不需按摩，缺點就是觸感較光滑面不佳球感較重。<br />\r\n<br />\r\n<strong>自體+果凍矽膠(合併手術)：</strong><br />\r\n<br />\r\n適合想一次升級較多罩杯，又想要有自然柔軟的效果，最重要的是不需要按摩。這種手術在韓國很常見，但台灣很少醫生會做，手術需要花費很多時間，且價位較高。但優點是它結合了二者的優點，排除二者的缺點，自體脂肪最多可升級到一個半的罩杯，不能改變胸部的形狀，但又有雕塑身型的好處。果凍矽膠可一次升級較多的罩杯，但術後需要按摩。現在很多客人在詢問此項手術，相信未來隆乳的客人大部份會選擇這種方式。<br />\r\n<br />\r\n<br />\r\n<span style="font-size:150%;"><span style="color:#96601c;"><strong>光滑面和絨毛面如何選擇呢?</strong></span></span><br />\r\n<br />\r\n若放的是絨毛面，術後不必按摩，而光滑面義乳則較須按摩絨毛面表面與周邊組織黏附性較好較不容易產生莢膜攣縮，大多是客人因選擇特定乳房外觀(如水滴型)才需絨毛面義乳因為較容易維持特定的外型，所以術後不需要按摩;&nbsp;若放光滑面的，按摩便十分重要。按摩除了能讓乳房柔軟、不變硬之外，還可讓外形更自然。<br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;', '', '', '', '', '', '0', '2015-12-24 20:56:49', 1),
(9, 528502, 'z波黃金脂雕Ultra-Z(抽脂/體雕)', 0, '', '528623', '<div style="text-align: center;"><span style="font-size:150%;"><strong><span style="color:#96601c;">擁有人魚線/馬甲線不是夢</span></strong></span><br />\r\n&nbsp;</div>\r\n\r\n<div>Ｚ波黃金脂雕又稱超音波溶脂，主要是利用高頻率的超音波快速震盪作用，在不傷害神經和血管的條件下將脂肪細胞膜碎解，將脂肪乳麋化再利用抽吸管抽出，比起傳統抽脂將結構完整的脂肪強力吸出，對神經血管的傷害降低了許多，手術的出血量控制到更低，抽出物中幾乎都是脂肪,&nbsp;術後不但恢復期縮短，之後的表面凹凸不平和局部鬆弛的情形也大幅降低許多。對於比較硬的纖維化脂肪：例如背部及臀部，以及曾經做過抽脂手術仍有殘餘脂肪需要處理的部位，也能有效地軟化並震碎脂肪組織，達到更好的抽脂效果。<br />\r\n<br />\r\n<strong>Z波黃金脂雕的優點</strong><br />\r\n<br />\r\n1. &nbsp;安全性高：針對脂肪細胞乳化，不傷害重要神經及血管<br />\r\n2. &nbsp; 低疼痛感、 低出血及其他傷害<br />\r\n3. &nbsp; 術後復原期短<br />\r\n4. &nbsp;手術同時緊緻肌膚&nbsp;<br />\r\n5. &nbsp; 局部雕塑效果佳<br />\r\n&nbsp;</div>\r\n', '', '', '', '', '', '0', '2015-12-24 20:58:43', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `fs_user`
--

CREATE TABLE IF NOT EXISTS `fs_user` (
  `uid` mediumint(8) NOT NULL,
  `email` char(32) NOT NULL,
  `username` char(32) NOT NULL,
  `picids` char(100) NOT NULL,
  `groupids` char(100) NOT NULL,
  `updatetime` datetime NOT NULL,
  `status` int(1) NOT NULL,
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_user`
--

INSERT INTO `fs_user` (`uid`, `email`, `username`, `picids`, `groupids`, `updatetime`, `status`) VALUES
(528501, 'service@fanswoo.com', '系統管理員', '', '1', '2015-08-15 17:53:45', 1),
(528504, 'test@fanswoo.com', 'test@fanswoo.com', '', '100', '2015-08-16 20:18:38', 1),
(528503, 'admin2@fanswoo.com', '一般管理員', '', '3', '2015-08-16 01:24:52', 1),
(528502, 'admin@fanswoo.com', '總管理員', '', '2', '2015-08-16 01:14:03', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `fs_user_field_shop`
--

CREATE TABLE IF NOT EXISTS `fs_user_field_shop` (
  `uid` mediumint(8) NOT NULL,
  `receive_name` char(100) DEFAULT '',
  `receive_phone` char(100) NOT NULL DEFAULT '',
  `receive_address` char(100) NOT NULL DEFAULT '',
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_user_field_shop`
--

INSERT INTO `fs_user_field_shop` (`uid`, `receive_name`, `receive_phone`, `receive_address`) VALUES
(528501, 'test', 'test', 'test'),
(528502, '', '', ''),
(528504, '', '', ''),
(528503, '', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `fs_user_group`
--

CREATE TABLE IF NOT EXISTS `fs_user_group` (
  `groupid` mediumint(8) NOT NULL,
  `groupname` char(40) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_user_group`
--

INSERT INTO `fs_user_group` (`groupid`, `groupname`, `status`) VALUES
(1, '系統管理員', 1),
(100, '一般會員', 1),
(2, '總管理員', 1),
(3, '一般管理員', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `fs_user_verification`
--

CREATE TABLE IF NOT EXISTS `fs_user_verification` (
  `uid` mediumint(8) NOT NULL,
  `email` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `password_salt` char(6) NOT NULL,
  `password_key` char(32) NOT NULL,
  `change_email_key` char(6) NOT NULL,
  `change_email_updatetime` datetime NOT NULL,
  `facebookid` mediumint(12) NOT NULL,
  `googleid` mediumint(12) NOT NULL,
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `fs_user_verification`
--

INSERT INTO `fs_user_verification` (`uid`, `email`, `password`, `password_salt`, `password_key`, `change_email_key`, `change_email_updatetime`, `facebookid`, `googleid`) VALUES
(528501, 'service@fanswoo.com', 'f3ebc5fbce456c6f185f419c62461602', '0f7d26', '1234qwera', '53B9E1', '2015-04-10 23:00:53', 0, 0),
(528503, 'admin2@fanswoo.com', 'b2b5410b5f94eea7feff94aab7ba763e', 'f3ab44', '12345678', '', '0000-00-00 00:00:00', 0, 0),
(528502, 'admin@fanswoo.com', 'caf77603f131efe6b052eba84f65ff9d', 'db5afb', '12345678', '', '0000-00-00 00:00:00', 0, 0),
(528504, 'test@fanswoo.com', '4476e1b3311ef7703d03d8b7ec4d503c', '4da76f', '12345678', '', '0000-00-00 00:00:00', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
