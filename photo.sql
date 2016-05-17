-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 May 2016, 16:31:34
-- Sunucu sürümü: 10.1.10-MariaDB
-- PHP Sürümü: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `photo`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `tags` varchar(80) CHARACTER SET latin1 NOT NULL,
  `owner_id` int(11) NOT NULL,
  `shareable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `album`
--

INSERT INTO `album` (`id`, `name`, `tags`, `owner_id`, `shareable`) VALUES
(1, 'Album One', 'First Albumxt', 1, 1),
(3, 'Album Three', 'Third Album', 2, 1),
(5, 'kivancAlbum', 'Benim Albümüm', 1, 0),
(6, 'aa', 'Second Album', 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `friends`
--

CREATE TABLE `friends` (
  `userOne` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `oFN` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `oLN` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `userTwo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tFN` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `tLN` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `friends`
--

INSERT INTO `friends` (`userOne`, `oFN`, `oLN`, `userTwo`, `tFN`, `tLN`, `state`) VALUES
('cc', 'agahah', 'ahah', 'zz', 'reafdssa', 'Eren', 'wait'),
('kivanc', 'Kıvanç', 'Eren', 'cc', 'agahah', 'ahah', 'done'),
('kivanc', 'Kıvanç', 'Eren', 'tt', 'jamiroquai', 'jay kay', 'wait'),
('qq', 'reafdssa', 'fdasfa', 'cc', 'agahah', 'ahah', 'done'),
('qq', 'reafdssa', 'fdasfa', 'kivanc', 'Kıvanç', 'Eren', 'done'),
('tt', 'jamiroquai', 'jay kay', 'zz', 'reafdssa', 'Eren', 'wait'),
('zz', 'reafdssa', 'Eren', 'cc', 'agahah', 'ahah', 'wait');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1462131430),
('m130524_201442_init', 1462131432);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `caption` varchar(80) NOT NULL,
  `alt_text` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `photos`
--

INSERT INTO `photos` (`id`, `album_id`, `filename`, `caption`, `alt_text`) VALUES
(1, 1, '1462531749.png', 'Butterfly', 'lsafdfads'),
(10, 1, '1463232028.png', '213eqfaSjokz', 'fdas'),
(27, 5, '1463316161.png', '213eqfa', 'wqeqw'),
(28, 5, '1463316178.png', 'afa', 'wqeqw'),
(29, 3, '1463348352.png', '213eqfa', 'Water is water.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `username`, `firstname`, `lastname`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kivanc', 'Kıvanç', 'Eren', 'ONBK1-PoBEF6yNjD_oxfZr9RpwP-1T4-', '$2y$13$laQMJPYjAbsdjUuhqxWSLOFvnGVJ4MfLT9GfbqZe5mmldZzJSUWFS', NULL, 'k@k.com', 10, 1462211952, 1462211952),
(2, 'cc', 'agahah', 'ahah', 'vBl8XfEkmdREQHxwVjdtt60kGn1YUJGN', '$2y$13$3xpFMmTTYUOKBiy2.QGL2.erCywRB/cPcY1ay7Y1bVvJylzO5g0RS', NULL, 'ff@ddasf.comcc', 10, 1462211960, 1462211960),
(3, 'tt', 'jamiroquai', 'jay kay', 'hZqTDZ1pw-_FMYEmrL1mvHgM0MuV-7xq', '$2y$13$vNxGk1CYkNlmimUClInsne/SZ4eLlSFdDyLwK9sgVf7m4ufcmvzFO', NULL, 'ff@ddasf.comt', 10, 1462219097, 1462219097),
(5, 'qq', 'reafdssa', 'fdasfa', 'XmRKkTSDcQRt4P5bedbeL4KGWivTDXBf', '$2y$13$eOzFKRkvzND6Ue08KN8JpOcK78XjdoWCxe.3VFK3ov3W3oIMvfgHG', NULL, 'ff@ddasf.comq', 10, 1463230147, 1463230147),
(6, 'zz', 'reafdssa', 'Eren', 'CdubibPdchCFpDx-trglnCbds0q6EBt0', '$2y$13$eykgi0NiGvrZk2Hr6k0fXO3BDb3RR6usebMdS1PsSHL3Q3DHTx6ei', NULL, 'ff@ddazzsf.com', 10, 1463341465, 1463341465);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yetki`
--

CREATE TABLE `yetki` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `surname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `yetki`
--

INSERT INTO `yetki` (`id`, `username`, `name`, `surname`) VALUES
(5, 'cc', 'agahah', 'ahah');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_id` (`owner_id`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`userOne`,`userTwo`),
  ADD KEY `friends_ibfk_2` (`userTwo`);

--
-- Tablo için indeksler `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Tablo için indeksler `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_ibfk_1` (`album_id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Tablo için indeksler `yetki`
--
ALTER TABLE `yetki`
  ADD PRIMARY KEY (`id`,`username`),
  ADD KEY `yetki_ibfk_2` (`username`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Tablo için AUTO_INCREMENT değeri `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`userTwo`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `friends_ibfk_3` FOREIGN KEY (`userOne`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `yetki`
--
ALTER TABLE `yetki`
  ADD CONSTRAINT `yetki_ibfk_1` FOREIGN KEY (`id`) REFERENCES `album` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `yetki_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
