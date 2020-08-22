-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Anamakine: localhost
-- Üretim Zamanı: 26 Kas 2017, 07:21:26
-- Sunucu sürümü: 5.6.13
-- PHP Sürümü: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `stok`
--
CREATE DATABASE IF NOT EXISTS `stok` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `stok`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE IF NOT EXISTS `ayarlar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sayfaBaslik` varchar(255) NOT NULL,
  `copright` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `sayfaBaslik`, `copright`) VALUES
(1, 'Cihan | Stok Takip Sistemi v1.0', '<a href="">Php Stok Takip Sistemi</a>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `depolar`
--

CREATE TABLE IF NOT EXISTS `depolar` (
  `depoID` int(11) NOT NULL AUTO_INCREMENT,
  `depoAdi` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`depoID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=6 ;

--
-- Tablo döküm verisi `depolar`
--

INSERT INTO `depolar` (`depoID`, `depoAdi`) VALUES
(2, 'Sanayii'),
(3, 'Çarşı'),
(4, 'Dükkan'),
(5, 'kola deposu');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adsoyad` varchar(255) CHARACTER SET latin1 NOT NULL,
  `kullaniciadi` varchar(225) CHARACTER SET latin1 NOT NULL,
  `sifre` varchar(25) CHARACTER SET latin1 NOT NULL,
  `yonetici` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=2 ;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `adsoyad`, `kullaniciadi`, `sifre`, `yonetici`) VALUES
(1, 'Cihan Soylu', 'admin', '1', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE IF NOT EXISTS `urunler` (
  `urunID` int(11) NOT NULL AUTO_INCREMENT,
  `urunAdi` varchar(355) COLLATE utf8_turkish_ci NOT NULL,
  `urunBarkod` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `urunStokKodu` varchar(30) COLLATE utf8_turkish_ci NOT NULL,
  `urunAdet` int(30) NOT NULL,
  `Depo` int(11) NOT NULL,
  PRIMARY KEY (`urunID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci AUTO_INCREMENT=4 ;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`urunID`, `urunAdi`, `urunBarkod`, `urunStokKodu`, `urunAdet`, `Depo`) VALUES
(1, 'asdasdas', '4169184864684', 'asdasdasd', 100000, 4),
(2, 'asdasdas', '4169184864684w', 'asdasdasd', 123123, 2),
(3, 'Ürün Adı', 'URUN001', 'STOKKODU', 1996, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
