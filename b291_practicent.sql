create table ogrenciler(
	id int PRIMARY key,
	isim varchar(30),
	adres varchar(50),
	sinav_notu int);
	
--tabloma veri ekleme
insert INTO ogrenciler values(1,'Betul Kuyucu','Istanbul',80);--tek bir deger eklencekse


INSERT INTO ogrenciler (id,isim,adres,sinav_notu) values 
        (2,'Zeki Bey','Izmir', 90),
        (3,'Cemal Dogan','Trabzon',65),
        (4,'Mirac','Bursa',45),
        (5,'Yavuz Bal','Antalya',55);
		
Insert into ogrenciler(id,isim,sinav_notu)values
(6,'Bilal Degirmen',95),
(7,'Fahri Ersoz',92);
		

SELECT adres from ogrenciler;
select * from ogrenciler;

-- SORU1: ogrenciler tablosundaki id ve isim bilgileri ile tum recordlari getirelim :
select id,isim from ogrenciler;

-- SORU2: Sinav notu 80'den buyuk olan ogrencilerin tum bilgilerini listele
select * from ogrenciler where sinav_notu>80;

insert into ogrenciler values(8,'Ali Can','Ankara',45);
-- SORU3: Adresi Ankara olan ogrencilerin tum bilgilerini listele
select * from ogrenciler where adres='Ankara';

-- SORU4: Sinav notu 80 ve adresi Istanbul olan ogrenci ismini listele
select isim from ogrenciler where sinav_notu=80 and adres='Istanbul';

-- SORU5: Sinav notu 55 veya 100 olan ogrencilerin tum bilgilerini listele
INSERT INTO ogrenciler VALUES (9,'İrfan Canan','Adana',100);
select * from ogrenciler where sinav_notu=55 or sinav_notu=100;

select * from ogrenciler where sinav_notu in(55,100,0);

INSERT INTO ogrenciler VALUES (10,'Ömer Faruk','Adana',70);
-- SORU6: Sinav notu 65 ve 85 arasinda olan ogrencilerin tum bilgilerini listele
select * from ogrenciler where sinav_notu between 65 and 85;

-- SORU7: id'si 3 ve 5 arasinda olmayan ogrencilerin isim ve sinav notu listele
select id,isim,sinav_notu from ogrenciler where id not between 3 and 5;
		
-- SORU8: En yuksek sinav puani nedir
select max(sinav_notu) as max_sinav_notu from ogrenciler;

-- SORU9: Izmir'de yaşayan ve sınav notu 50'den yuksek olan öğrencilerin listesi:
select * from ogrenciler where adres='Izmir' and sinav_notu>50;

-- SORU10: Öğrenci sayısı ve ortalama sınav notu:
select count(*) as top_ogr_sayisi ,round(avg(sinav_notu),1) as ort_sinav_notu from ogrenciler;

-- SORU11: sinav_notu 55 olan satiri siliniz	
delete from ogrenciler where sinav_notu=55;
		
-- SORU12: ismi Derya Soylu veya Cemal Dogan olan satirlari siliniz
delete from ogrenciler where isim='Derya Soylu' or isim='Cemal Dogan';
delete from ogrenciler where isim in('Derya Soylu','Cemal Dogan');

-- SORU13 : Ogrenciler tablosunn icerigini siliniz
delete from ogrenciler;
truncate table ogrenciler;

--SORU14 : Ogrenciler Tablosunu siliniz

drop table ogrenciler;