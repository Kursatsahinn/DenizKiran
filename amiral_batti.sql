-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Oca 2024, 17:27:29
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `amiral_batti`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `K_ID` int(11) NOT NULL,
  `K_Adi` varchar(100) NOT NULL,
  `K_Sifre` varchar(100) NOT NULL,
  `K_Tip` int(11) NOT NULL,
  `K_Tarih` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`K_ID`, `K_Adi`, `K_Sifre`, `K_Tip`, `K_Tarih`) VALUES
(2, 'ec.chill', 'bZCBrvOagVW7JT1W4mpU6/g8raQt5Kq7n2GtjSNe1WFP3G4VuWzq/wCtVC9YPGdYedhEAsRg/7MFsPkU6dKMfA==', 1, '2023-12-08 18:03:46'),
(3, 'hakki_tech1', 'BIzuBlG/OFGFqxuYcJ1b2mlNIN65FZ88bCUNGYogf1O0T7IGqWNbnHcgoWR3CwR0UCNsoGdUag15sn2qa/cWyQ==', 2, '2023-12-08 19:31:07'),
(4, 'semakpln1907', 'UeHlDmOMaD4zsfiH58O5TWzs5F7cI74ZnZE31XNbVcT7pKzcbd0fJ1rA+gzzzA2hvmO588VJBLkVQ/bElkS77g==', 2, '2023-12-09 18:31:10'),
(5, 'aylin__dg1907', 'zYITukfBu8lOBFno1t67ybhG/ke9Whu1NeRknjfqaU5d1UPTTNJeFCxo1aH5YKZTDWpqHbXImLFlojM3Is/Juw==', 1, '2023-12-10 12:03:17'),
(7, 'kursat_sahinn', 'lXLLeHEXz+iaOdhhKe/+VjDPomDcxiUejgrrXL35PzChPOCBDkaEQ6PL7waAb4W1N5ku0egntll0/msD2EJIug==', 2, '2023-12-11 18:10:34'),
(10, 'halit_kilinc', 'dypzqZ2Mh6ljkatspmCg7qv9Mq656u9dp6SNAYcZbrENlfg07OuIMIRmViExSi9LGS0MSpifaWtHfesNI4Zolw==', 1, '2023-12-12 09:54:40'),
(16, 'suben_ipek46', 'EQUmB52StPEBAwGImGaR8LK9lz85NDUZdjRPG4Y5KatPBKq91OhK7brrv2Ewn/1mnA2U3wE5YVSj9nZ5hJP//g==', 1, '2023-12-14 13:37:24'),
(19, 'baris_cukurB', 'fNJsNhg80BChqwiHy6smiStjwa04XAZkgo3BcfF+RnnptctK7oi7YVszulAGRMbJBCLHn1vVLLoV/SHyjtqvZw==', 1, '2023-12-17 21:39:11'),
(22, 'sudenaz_gumus', '9stnx+y6hLezKNBr4hd3HUcPi/yaq/cBEj8V5MVxxs5Ghc7vlVlNGxov9i8iyAtXJRdDRvULSgXFuXCGPtWizA==', 2, '2023-12-21 13:25:12'),
(25, 'safa_fb1907', '5rH8iMsmzlMocGNghA5flTO+RUYEFlRx6P6XVTDcYqxSi+mKPnipIViu513kUSxXqCTVvw+mX9JDfdC5d+0USg==', 2, '2023-12-25 10:12:26'),
(26, 'batuu', 'LhE8gb33ZfbAsOFbcfJuhXkrhVHFAmlP5J7Aky7d8T9dJbXZSC1kDjmsYhRG6/Z96JYOov7+AeNhN6aumKrxkA==', 1, '2023-12-25 11:06:56');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici_tip`
--

CREATE TABLE `kullanici_tip` (
  `K_Tip` int(11) NOT NULL,
  `Tip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici_tip`
--

INSERT INTO `kullanici_tip` (`K_Tip`, `Tip`) VALUES
(1, 'Kullanıcı'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `oyun`
--

CREATE TABLE `oyun` (
  `O_ID` int(11) NOT NULL,
  `O_NickName` varchar(100) NOT NULL,
  `O_K_Adi` int(11) NOT NULL,
  `O_K_Puan` int(11) NOT NULL,
  `O_K_Hamle` int(11) NOT NULL,
  `O_K_Gemi` int(11) NOT NULL,
  `O_Tur` varchar(100) NOT NULL,
  `O_Tarih` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `oyun`
--

INSERT INTO `oyun` (`O_ID`, `O_NickName`, `O_K_Adi`, `O_K_Puan`, `O_K_Hamle`, `O_K_Gemi`, `O_Tur`, `O_Tarih`) VALUES
(1, 'kuso_sahinn', 3, 2800, 12, 3, 'Zor', '2023-12-12 12:20:19'),
(3, 'e.c.chill', 2, 3000, 10, 5, 'Zor', '2023-12-14 00:30:31'),
(4, 'Hakki_Tech', 7, 5000, 7, 4, 'Zor', '2023-12-14 13:35:53'),
(5, 'suben_ipekk', 16, 2500, 20, 0, 'Kolay', '2023-12-14 13:38:37'),
(6, 'kuso_sahinn', 3, 2350, 7, 0, 'Kolay', '2023-12-17 20:58:36'),
(8, 'Fientia', 3, 1800, 21, 1, 'Zor', '2023-12-17 22:41:17'),
(9, 'Hammal23', 19, 1500, 24, 1, 'Kolay', '2023-12-17 22:46:48'),
(10, 'baris_cukurB', 3, 1600, 21, 3, 'Orta', '2023-12-18 09:29:48'),
(11, 'Orkun_teke', 7, 1400, 25, 1, 'Zor', '2023-12-18 09:53:21'),
(12, 'Hammal234', 7, 1500, 23, 2, 'Kolay', '2023-12-18 10:35:54'),
(16, 'fatih_yaman', 21, 3700, 8, 3, 'Orta', '2023-12-19 12:24:52'),
(23, 'mavi_kalp', 7, 3500, 12, 3, 'Kolay', '2023-12-20 23:09:22'),
(24, 'tiramisucu', 22, 3000, 16, 4, 'Kolay', '2023-12-21 15:01:43'),
(25, 'suben_ipekk', 23, 1800, 20, 1, 'Zor', '2023-12-22 09:22:49'),
(26, 'SoulCriminal', 3, 1900, 19, 1, 'Zor', '2023-12-22 13:18:45'),
(27, 'semih_gencay', 3, 2250, 13, 0, 'Zor', '2023-12-22 16:22:38'),
(29, 'safa_gokpinar', 25, 1550, 22, 0, 'Zor', '2023-12-25 10:16:37'),
(30, 'Batuuu', 26, 1800, 16, 5, 'Zor', '2023-12-25 11:09:41'),
(31, 'kursat_sahinn', 7, 2700, 20, 3, 'Kolay', '2023-12-26 18:57:04'),
(32, 'LudoisBack', 7, 1600, 20, 3, 'Zor', '2023-12-26 19:00:40'),
(33, 'WIKILEAKS', 7, 1300, 25, 1, 'Zor', '2023-12-26 19:02:40'),
(35, 'xScipio', 7, 3500, 9, 6, 'Kolay', '2023-12-26 19:07:12'),
(36, 'Poseidon', 7, 2050, 17, 0, 'Zor', '2023-12-26 19:08:25'),
(37, 'Thor', 7, 2900, 20, 1, 'Kolay', '2023-12-26 19:09:11');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`K_ID`),
  ADD KEY `K_Tip` (`K_Tip`);

--
-- Tablo için indeksler `kullanici_tip`
--
ALTER TABLE `kullanici_tip`
  ADD PRIMARY KEY (`K_Tip`);

--
-- Tablo için indeksler `oyun`
--
ALTER TABLE `oyun`
  ADD PRIMARY KEY (`O_ID`),
  ADD KEY `O_K_Adi` (`O_K_Adi`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `K_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `kullanici_tip`
--
ALTER TABLE `kullanici_tip`
  MODIFY `K_Tip` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `oyun`
--
ALTER TABLE `oyun`
  MODIFY `O_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `kullanici`
--
ALTER TABLE `kullanici`
  ADD CONSTRAINT `kullanici_ibfk_1` FOREIGN KEY (`K_Tip`) REFERENCES `kullanici_tip` (`K_Tip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
