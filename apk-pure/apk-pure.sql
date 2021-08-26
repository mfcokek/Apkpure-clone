-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 May 2019, 15:14:48
-- Sunucu sürümü: 10.1.38-MariaDB
-- PHP Sürümü: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `apk-pure`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anket`
--

CREATE TABLE `anket` (
  `anket_id` int(11) NOT NULL,
  `cevap` varchar(255) NOT NULL,
  `cevap_sayi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `anket`
--

INSERT INTO `anket` (`anket_id`, `cevap`, `cevap_sayi`) VALUES
(1, 'Evet', 8),
(2, 'Hayır', 8),
(3, 'Kararsızım', 8);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anket_kullanici`
--

CREATE TABLE `anket_kullanici` (
  `anket_kul_id` int(11) NOT NULL,
  `kul_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `anket_kullanici`
--

INSERT INTO `anket_kullanici` (`anket_kul_id`, `kul_id`) VALUES
(1, 3),
(2, 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE `icerik` (
  `icerik_id` int(11) NOT NULL,
  `icerik_ismi` varchar(255) NOT NULL,
  `icerik_aciklama` text NOT NULL,
  `icerik_link` varchar(255) NOT NULL,
  `icerik_kategori_id` int(11) NOT NULL,
  `icerik_foto` varchar(255) NOT NULL,
  `icerik_foto_2` varchar(255) NOT NULL,
  `tarih` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`icerik_id`, `icerik_ismi`, `icerik_aciklama`, `icerik_link`, `icerik_kategori_id`, `icerik_foto`, `icerik_foto_2`, `tarih`) VALUES
(1, 'Messenger ', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'messanger.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(2, 'Call of Duty', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'call.jpg', 'foto2.jpg', '2019-05-10 04:07:19'),
(3, 'Whatsapp', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'whats.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(4, 'Youtube', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'you.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(5, 'faceboook', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'face.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(6, 'instagram', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'ins.jpg', 'foto2.jpg', '2019-05-10 04:07:19'),
(7, 'Roblox', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'apkbox.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(8, 'Twitter', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'twitter.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(10, 'Minecraft', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'mine.jpg', 'foto2.jpg', '2019-05-10 04:07:19'),
(14, 'Messenger ', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'messanger.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(15, 'Call of Duty', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'call.jpg', 'foto2.jpg', '2019-05-10 04:07:19'),
(16, 'Whatsapp', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'whats.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(17, 'Youtube', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'you.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(18, 'faceboook', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'face.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(19, 'instagram', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'ins.jpg', 'foto2.jpg', '2019-05-10 04:07:19'),
(21, 'LuluBox', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'lulu.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(22, 'Apk', '* MESAJ GÖNDERİN - Telefon numarası alıp vermeyi bırakın, bir mesaj göndermeniz yeterli. Tüm cihazlarda kusursuz çalışır.<br>* İFADE BIRAKIN - Kendinizi daha iyi ifade etmek için komik bir çıkartma ekleyin, bir dans GIF&#39;i gönderin ve ifade simgelerini kullanın.<br>* FOTOĞRAF VE VİDEO PAYLAŞIN - Messenger Kamera ile anı yakalayın, bir filtre veya çiziktirme ekleyin, ardından arkadaşlarınıza gönderin ya da Hikayelerde paylaşın.<br>* GRUBU TOPARLAYIN - Bir araya gelmek için anketlerle planlar yapın, konumunuzu paylaşın, faturayı bölüşün ve çok daha fazlasını yapın.<br>* BİR ARAMAYA VEYA GÖRÜNTÜLÜ SOHBETE KATILIN - Bir arama veya görüntülü grup sohbeti** ile istediğiniz yerde, istediğiniz zaman takılın. Filtreleri kullanmak isteğe bağlı :) **Aramalar Wi-Fi üzerinden ücretsizdir, aksi durumda standart veri ücretleri geçerlidir.<br>* SESLİ MESAJ GÖNDERİN - Mesajlaşmak yetmediğinde, kayıt düğmesine basın ve konuşun, şarkı söyleyin ya da haykırın.<br>* GÜVENLE VE KOLAYCA PARA GÖNDERİN (sadece ABD, İngiltere ve Fransa içinde) - Banka kartınızı veya PayPal* hesabınızı ekleyerek uygulama üzerinden arkadaşlarınızla para alışverişi yapın. *PayPal yalnızca ABD&#39;de kullanılabilmektedir.<br>* KONUMUNUZU PAYLAŞIN - Bir buluşma noktası önerin veya sadece birkaç dokunuşla konumunuzu paylaşarak arkadaşlarınıza nerede olduğunuzu söyleyin.<br>* İŞLETMELERLE SOHBET EDİN - Rezervasyon yapmak, müşteri desteği almak, fırsatlar bulmak ve daha fazlası için en sevdiğiniz işletmelerle kolayca bağlantı kurun.<br>* ARKADAŞLARINIZLA OYUNLAR OYNAYIN - Arkadaşlarınıza meydan okuyun, lider sıralamalarında yükselin ve bir sonraki favori oyununuzu keşfedin.<br>* SMS MESSENGER&#39;A GELİYOR - Artık iletişimde kalmak için birden fazla uygulama açmanıza gerek yok. SMS ve Messenger için tek bir uygulama kullanın.', 'https://apkpure.com/tr/facebook-messenger/com.facebook.orca/download?from=details', 2, 'apk.png', 'foto2.jpg', '2019-05-10 04:07:19'),
(23, 'PUBG Mobile', 'güzel bir Battle Royale Oyyunu', 'asdf', 2, 'pubg.jpg', 'foto2.jpg', '2019-05-10 04:19:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_adi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_adi`) VALUES
(1, 'Aksiyon'),
(2, 'Macera'),
(3, 'Sosyal'),
(4, 'Bulmaca'),
(5, 'Eğitim');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_pass`) VALUES
(3, 'mfcokek', 'mfcokek@gmail.cba', '123'),
(4, 'mfcokek1', 'mfcokek@gmail.aaa', '123'),
(5, 'b1fona', 'ordulu_abdurrahman@windowslive.com', '123456789'),
(6, 'b1fona', 'mfcokek@gmail.qwe', '123'),
(7, 'mfcokek', 'ordulu_abdurrahman@windowslive.123', '123'),
(8, 'sedat', 'mfcokek@gmail.cod', '123'),
(9, 'ahmetk', 'muratahmetkorkmaz@hotmail.com', '123'),
(10, 'baba', 'baba@as.1', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorum`
--

CREATE TABLE `yorum` (
  `yorum_id` int(11) NOT NULL,
  `icerik_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `yorum_icerik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yorum`
--

INSERT INTO `yorum` (`yorum_id`, `icerik_id`, `user_id`, `yorum_icerik`) VALUES
(21, 2, 8, 'sdfg'),
(22, 2, 8, 'asdfasdf'),
(23, 2, 8, 'asdfa'),
(24, 2, 8, 'fasdfasdf'),
(25, 2, 8, 'asdfasdf'),
(26, 2, 8, 'asdfasdf'),
(27, 2, 8, 'asdfasdf'),
(28, 2, 8, 'asdfadsf'),
(29, 2, 8, 'asdfasdfasdf'),
(30, 2, 8, 'asdfasdf'),
(31, 3, 8, 'bu bir yorumdur..'),
(32, 2, 3, 'Bu bir yorumdur'),
(33, 1, 3, 'adsfasdf'),
(34, 23, 0, 'asdfasdf'),
(35, 23, 0, 'asdfasd'),
(36, 23, 0, 'fasdfasdf'),
(37, 1, 0, 'asdfasdf'),
(38, 1, 0, 'asdfasdf'),
(39, 23, 0, 'sfsdfsdfg'),
(40, 23, 0, ''),
(41, 1, 6, 'bu bir yorum'),
(42, 1, 3, ''),
(43, 1, 3, '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `anket`
--
ALTER TABLE `anket`
  ADD PRIMARY KEY (`anket_id`);

--
-- Tablo için indeksler `anket_kullanici`
--
ALTER TABLE `anket_kullanici`
  ADD PRIMARY KEY (`anket_kul_id`);

--
-- Tablo için indeksler `icerik`
--
ALTER TABLE `icerik`
  ADD PRIMARY KEY (`icerik_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Tablo için indeksler `yorum`
--
ALTER TABLE `yorum`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `anket`
--
ALTER TABLE `anket`
  MODIFY `anket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `anket_kullanici`
--
ALTER TABLE `anket_kullanici`
  MODIFY `anket_kul_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `icerik`
--
ALTER TABLE `icerik`
  MODIFY `icerik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `yorum`
--
ALTER TABLE `yorum`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
