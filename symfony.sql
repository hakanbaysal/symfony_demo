-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 11 Mar 2017, 01:57:20
-- Sunucu sürümü: 5.6.28-0ubuntu0.15.04.1
-- PHP Sürümü: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `symfony`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
`id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'hakanbaysal', 'hakanbaysal', 'hakanbysl@gmail.com', 'hakanbysl@gmail.com', 1, 'eb8vjxe4epkwcgoss04wsc00kc8cc40', '$2y$13$eb8vjxe4epkwcgoss04wsOG1rwOQUwtiEzinhzFrwMTXTbPDKZwca', '2017-03-11 01:47:28', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(2, 'test', 'test', 'test@te.com', 'test@te.com', 1, 'pdp1zyk8tdwgwk0wc8sww8884g00wog', '$2y$13$pdp1zyk8tdwgwk0wc8swwussgFmkdH4XdpFKYy1SIKGDwkUz7DoDq', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(3, 'test1', 'test1', 'test2@te.com', 'test2@te.com', 1, 'n698pmp2r34gw4okkk4gowoo4c8g8o4', '$2y$13$n698pmp2r34gw4okkk4gouPAMgeb20zLcVY7878SM.ptl9nnZcMw2', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(4, 'test12', 'test12', 'test@te.co2m', 'test@te.co2m', 1, 'jt47is5ciq8cc0wgwog04w488wcc80c', '$2y$13$jt47is5ciq8cc0wgwog04uXLdrpbY88nyniM/ttpmJGkpxquomqG6', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(5, '2test12', '2test12', '2test@te.co2m', '2test@te.co2m', 1, 'bx3m7xtqva8k84kw8gwswgg4csswgwo', '$2y$13$bx3m7xtqva8k84kw8gwswel2AOelrgoN5UL.A2CaiRo8vfLMD9Bia', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(6, 'test123123', 'test123123', '123@123.com', '123@123.com', 1, '3ndkenp4dum8wcowk0c8sk8g88k44o8', '$2y$13$3ndkenp4dum8wcowk0c8seqBx94SDnwfwCqCGJsWNVRm.p7ejTBJu', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(7, '4444', '4444', '44@we.com', '44@we.com', 1, 't0al3jgkjn4s0sogskk00ow84wg444w', '$2y$13$t0al3jgkjn4s0sogskk00e5C5RQjfILUQRukDIxarK7VvPtL49kFC', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(8, 'yutr', 'yutr', 'test3@te.com', 'test3@te.com', 1, 'hfcg83s30w00cco040ows00ow4co80s', '$2y$13$hfcg83s30w00cco040owsuQqbEdjAj0OOKauOxbCoPS6k67dgaJgG', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `post`
--

CREATE TABLE IF NOT EXISTS `post` (
`id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `published_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `post`
--

INSERT INTO `post` (`id`, `title`, `body`, `published_at`) VALUES
(1, 'Başlık', 'İçerik2', '2017-03-11 10:15:00'),
(2, '2. post', '2.post içeirk', '2017-03-11 10:17:00');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `fos_user`
--
ALTER TABLE `fos_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`), ADD UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`);

--
-- Tablo için indeksler `post`
--
ALTER TABLE `post`
 ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `fos_user`
--
ALTER TABLE `fos_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `post`
--
ALTER TABLE `post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
