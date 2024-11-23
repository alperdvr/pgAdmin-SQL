CREATE TABLE tedarikciler (
tedarikci_id INTEGER,
tedarikci_name VARCHAR(20),
tedarikci_adresi VARCHAR(200),
ulasim_tarihi DATE
);	

SELECT * FROM tedarikciler;

CREATE TABLE tedarikci_info AS SELECT tedarikci_name, ulasim_tarihi FROM tedarikciler;

CREATE TABLE ogretmenler(kimlik_no VARCHAR(11),
isim VARCHAR(20),
brans VARCHAR(20),
cinsiyet VARCHAR(10)
);

SELECT * FROM ogretmenler;

INSERT INTO ogretmenler (kimlik_no, isim, brans, cinsiyet) VALUES(234431223, 'Ayse Guler', 'Matematik', 'kadin'), (234431224, 'Ali Guler', 'Fizik', 'erkek');

INSERT INTO ogretmenler(kimlik_no, isim) VALUES(567597624, 'Veli Guler');

SELECT * FROM ogretmenler;