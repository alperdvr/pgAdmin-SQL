--aggregate function

CREATE TABLE sirketler(
sirket_id INT PRIMARY KEY,
sirket_ismi VARCHAR(50),
memur_sayisi INT
);


INSERT INTO sirketler(sirket_id,sirket_ismi,memur_sayisi)
VALUES(100,'Nokia',1000),
(101,'Iphone',900),
(102,'Samsung',1200),
(103,'xiaomi',1500);

select * from sirketler;
--soru 1 :en yüksek memurlar sayisi değerini getiriniz
select max(memur_sayisi) as max_memur_sayisi,sirket_ismi from sirketler;

--select max(memur_sayisi)from sirketler;
--select sirket_ismi from sirketler;

--soru 2 : en düşük memurlar sayisi değerinin 1.5 katını getirin
select round(min(memur_sayisi)*1.5) as min_memur_sayisi from sirketler;

--soru 3 : nokia ve xiaomi  memurlar sayisinin toplamını bulunuz
--1.yol
select sum(memur_sayisi) from sirketler where sirket_ismi='Nokia' or sirket_ismi='xiaomi';
--2.yol
select sum(memur_sayisi) as toplam_memur_sayisi from sirketler where sirket_ismi in('Nokia','xiaomi');

--soru 4 :Ortalama memurlar sayisi degerini bulunuz
select round(avg(memur_sayisi)) as ort_memur_sayisi from sirketler ;

--soru 5 :toplam sirket sayisini bulunuz
select count(*) from sirketler;
select count(sirket_id) from sirketler;

insert into sirketler values(104,'Sony');
insert into sirketler values(105,null,1350);

select * from sirketler;

--soru 6 :calisan sayisi bulunan toplam sirket sayisini bulunuz

select count(*) from sirketler where memur_sayisi>0;

select count(*) from sirketler where memur_sayisi is not null;

select count(memur_sayisi) from sirketler;

--soru 4 :Ortalama memurlar sayisi değerinden düşük olan memurlarin
--memur_sayisi değerlerini 400 artırın.

select sirket_ismi ,memur_sayisi from sirketler where memur_sayisi=(select max(memur_sayisi)from sirketler);

