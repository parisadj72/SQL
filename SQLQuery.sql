create database Project
---------------------------
use Project
------------------------
create table daneshjo
(
	name nvarchar(50),
	shomareDaneshjoyi int primary key,
	saleVorod date,
	ostadKhososi nvarchar(50)
)
---------------------
create table sabtenam
(
	shomareDaneshjoyi int,
	shomareyeDars int,
	shomareyeOstad int,
	shomareyeClass int,
	shomareyeMonshi int
	constraint pk primary key(shomareDaneshjoyi,shomareyeDars,shomareyeOstad,shomareyeClass,shomareyeMonshi)	
)
---------------------------------------
alter table sabtenam add constraint fk1 foreign key(shomareDaneshjoyi) references daneshjo(shomareDaneshjoyi)
alter table sabtenam add constraint fk2 foreign key(shomareyeDars) references dars(shomareyeDars)
alter table sabtenam add constraint fk3 foreign key(shomareyeOstad) references ostad(shomareyeOstad)
alter table sabtenam add constraint fk4 foreign key(shomareyeClass) references class(shomareyeClass)
alter table sabtenam add constraint fk5 foreign key(shomareyeMonshi) references monshi(shomareyeMonshi)
-----------------------------------
create table ostad
(
	shomareyeOstad int primary key,
	nameOstad nvarchar(50),
	martabeyeOstad nvarchar(50),
	SaleVorod date,
	hoghoogh int,
)
-------------------------
create table class
(
	shomareyeClass int primary key,
	zarfiyat int,
)
--------------------------
create table dars
(
	shomareyeDars int primary key,
	nameDars nvarchar(50),
)
-------------------------
create table ketab
(
	nameKetab nvarchar(50),
	shomareyeDars int constraint fk foreign key(shomareyeDars) references dars(shomareyeDars),
	nevisande nvarchar(50),
	gheymat int,
	constraint pk1 primary key(nameKetab,nevisande)	
)
-------------------------------------
create table monshi
(
	nameMonshi nvarchar(50),
	shomareyeMonshi int primary key,
	saleVorod date,
	hoghoogh int,
	vaziyatTaahol nvarchar(50),
)
--------------------------------------------------
delete sabtenam
delete daneshjo
insert into daneshjo values('parisa','1','1391/7/1','kaedi')
insert into daneshjo values('delaram','2','1391/7/1','kaedi')
insert into daneshjo values('sajedeh','3','1391/7/1','kaedi')
insert into daneshjo values('maedeh','4','1391/7/1','')
insert into daneshjo values('bahareh','5','1392/7/1','')
insert into daneshjo values('mahshid','6','1392/7/1','')
insert into daneshjo values('zahra','7','1392/7/1','mahdavi')
insert into daneshjo values('saba','8','1392/7/1','mahdavi')
insert into daneshjo values('sahar','9','1390/7/1','mala')
insert into daneshjo values('nilofar','10','1390/7/1','mala')
insert into daneshjo values('hajar','11','1390/7/1','mala')
insert into daneshjo values('marziye','12','1390/7/1','mala')
insert into daneshjo values('yeganeh','13','1389/7/1','shahgholi')
insert into daneshjo values('farahnaz','14','1389/7/1','shahgholi')
insert into daneshjo values('ali','15','1389/7/1','shahgholi')
insert into daneshjo values('reza','16','1389/7/1','shahgholi')
insert into daneshjo values('afsaneh','17','1388/7/1','moghim')
insert into daneshjo values('babak','18','1388/7/1','moghim')
insert into daneshjo values('amir','19','1388/7/1','moghim')
insert into daneshjo values('amirAli','20','1388/7/1','moghim')
----------------------------------------------------------------
delete sabtenam
---insert into sabtenam values(1,100,200,300,400)
--insert into sabtenam values(1,101,201,301,401)
--insert into sabtenam values(1,102,202,302,402)
---insert into sabtenam values(1,103,203,303,403)
--insert into sabtenam values(1,104,204,304,404)
---insert into sabtenam values(1,105,205,305,405)
----insert into sabtenam values(1,106,206,306,406)
----insert into sabtenam values(1,107,207,307,407)
---insert into sabtenam values(1,108,208,308,408)
---insert into sabtenam values(1,109,209,309,409)
---insert into sabtenam values(1,110,210,310,410)
--insert into sabtenam values(1,111,211,311,411)
---insert into sabtenam values(1,112,212,312,412)
---insert into sabtenam values(1,113,213,313,413)
--insert into sabtenam values(1,114,214,314,414)
---insert into sabtenam values(1,115,215,315,415)
---insert into sabtenam values(1,116,216,316,416)
----insert into sabtenam values(1,117,217,317,417)
---insert into sabtenam values(1,118,218,318,418)
---insert into sabtenam values(1,119,219,319,419)
insert into sabtenam values(1,100,200,300,400)
insert into sabtenam values(2,100,200,300,400)
insert into sabtenam values(3,100,200,300,400)
insert into sabtenam values(4,100,200,300,400)
insert into sabtenam values(5,100,200,300,400)
insert into sabtenam values(6,100,200,300,400)
insert into sabtenam values(7,100,200,300,400)
insert into sabtenam values(8,100,200,300,400)
insert into sabtenam values(9,100,200,300,400)
insert into sabtenam values(10,100,200,300,400)
insert into sabtenam values(11,100,200,300,400)
insert into sabtenam values(12,100,200,300,400)
insert into sabtenam values(13,100,200,300,400)
insert into sabtenam values(14,100,200,300,400)
insert into sabtenam values(15,100,200,300,400)
insert into sabtenam values(16,100,200,300,400)
insert into sabtenam values(17,100,200,300,400)
insert into sabtenam values(18,100,200,300,400)
insert into sabtenam values(19,100,200,300,400)
insert into sabtenam values(20,100,200,300,400)
insert into sabtenam values(10,102,202,302,402)
insert into sabtenam values(11,102,202,302,402)
insert into sabtenam values(12,102,202,302,402)
insert into sabtenam values(13,103,203,303,402)
insert into sabtenam values(14,103,203,303,403)
insert into sabtenam values(15,103,203,303,403)
insert into sabtenam values(16,103,203,303,403)
insert into sabtenam values(17,104,204,304,404)
insert into sabtenam values(18,104,204,304,404)
insert into sabtenam values(19,104,204,304,404)
insert into sabtenam values(20,104,204,304,404)
-----------------------------------------------------------------------
delete sabtenam
delete ostad
insert into ostad values(200,'ashuri','ostad','1379/7/1',4000000)
insert into ostad values(201,'shahgholi','ostad','1380/7/1',1000000)
insert into ostad values(202,'mala','morabi','1380/7/1',4000000)
insert into ostad values(203,'mahdavi','morabi','1380/7/1',4000000)
insert into ostad values(204,'mahluji','ostad','1387/7/1',4000000)
insert into ostad values(205,'moghim','ostad','1387/7/1',4000000)
insert into ostad values(206,'nasiri','ostad','1387/7/1',4000000)
insert into ostad values(207,'kaedi','ostad','1380/7/1',4000000)
insert into ostad values(208,'sepahi','ostadyar','1380/7/1',3000000)
insert into ostad values(209,'ansari','ostad','1380/7/1',4000000)
insert into ostad values(210,'moshref','ostad','1385/7/1',4000000)
insert into ostad values(211,'sharifi','morabi','1385/7/1',4000000)
insert into ostad values(212,'bahrami','ostadyar','1380/7/1',3000000)
insert into ostad values(213,'nasrollahi','ostadyar','1380/7/1',3000000)
insert into ostad values(214,'rezaee','morabi','1380/7/1',4000000)
insert into ostad values(215,'zaeri','ostadyar','1384/7/1',2000000)
insert into ostad values(216,'akbari','ostadyar','1380/7/1',2000000)
insert into ostad values(217,'kiani','ostadyar','1380/7/1',1000000)
insert into ostad values(218,'ladani','ostadyar','1380/7/1',1000000)
insert into ostad values(219,'mahan','ostadyar','1389/7/1',1000000)
------------------------------------------------------------------------------
delete sabtenam
delete class
insert into class values(300,40)
insert into class values(301,3)
insert into class values(302,3)
insert into class values(303,40)
insert into class values(304,30)
insert into class values(305,30)
insert into class values(306,30)
insert into class values(307,30)
insert into class values(308,50)
insert into class values(309,50)
insert into class values(310,50)
insert into class values(311,50)
insert into class values(312,20)
insert into class values(313,20)
insert into class values(314,20)
insert into class values(315,20)
insert into class values(316,60)
insert into class values(317,60)
insert into class values(318,60)
insert into class values(319,60)
-------------------------------------------------------------------------------
insert into dars values(100,'alghorithm')
insert into dars values(101,'paygah')
insert into dars values(102,'memary')
insert into dars values(103,'nazariye')
insert into dars values(104,'eghtesad')
insert into dars values(105,'pishrafte')
insert into dars values(106,'andishe')
insert into dars values(107,'ensan')
insert into dars values(108,'riyazi1')
insert into dars values(109,'moadelat')
insert into dars values(110,'gosaste')
insert into dars values(111,'madar')
insert into dars values(112,'amar')
insert into dars values(113,'sakhteman')
insert into dars values(114,'mabani')
insert into dars values(115,'fizik')
insert into dars values(116,'tarikh')
insert into dars values(117,'tafsir')
insert into dars values(118,'adabiyat')
insert into dars values(119,'ayin')
------------------------------------------------------------------------------ 
delete ketab
insert into ketab values('tarahiAlghoithm','100','jafarnejad','120000')
insert into ketab values('paygahdade','101','nematbakhsh','50000')
insert into ketab values('memaryComputer','102','murismano','220000')
insert into ketab values('nazariyeMashinha','103','sarafzadeh','12000')
insert into ketab values('eghtesadMohandesi','104','oskueenejad','10000')
insert into ketab values('barnameNevisiPishrafte','105','jafarnejad','12000')
insert into ketab values('andisheEslami','106','jafarnejad','31000')
insert into ketab values('ensanDarEslam','107','mohamadi','2000')
insert into ketab values('riazi1','108','taeri','20000')
insert into ketab values('moadelatDifransiel','109','sadeghi','17000')
insert into ketab values('sakhtemaneGosaste','110','gholzom','33000')
insert into ketab values('madarManteghi','111','murismano','30000')
insert into ketab values('mabaniEhtemal','112','ahmadi','20000')
insert into ketab values('C++','113','jafarnejad','12000')
insert into ketab values('mabaniIt','114','jafarnejad','10000')
insert into ketab values('physic','115','haliday','22000')
insert into ketab values('tarikhEmamaneShie','116','rezaee','2000')
insert into ketab values('tafsireNemune','117','makarem','200000')
insert into ketab values('Farsi','118','hadadiyan','8000')
insert into ketab values('ayineZendegi','119','sharifi','4000')
------------------------------------------------------------------------------------
insert into monshi values('ahmadi','400','1391/7/1','400000','mojarad')
insert into monshi values('mehrabi','401','1391/7/1','400000','mojarad')
insert into monshi values('rahimi','402','1391/7/1','500000','mojarad')
insert into monshi values('kazemi','403','1391/7/1','500000','mojarad')
insert into monshi values('mokhtari','404','1391/7/1','300000','mojarad')
insert into monshi values('karimi','405','1390/7/1','300000','mojarad')
insert into monshi values('javdani','406','1390/7/1','400000','mojarad')
insert into monshi values('najar','407','1390/7/1','400000','mojarad')
insert into monshi values('davoodi','408','1390/7/1','500000','mojarad')
insert into monshi values('bagheri','409','1390/7/1','500000','mojarad')
insert into monshi values('heidari','410','1389/7/1','300000','motoahel')
insert into monshi values('musavi','411','1389/7/1','300000','motoahel')
insert into monshi values('rezaee','412','1389/7/1','400000','motoahel')
insert into monshi values('mahmudi','413','1389/7/1','400000','motoahel')
insert into monshi values('satari','414','1389/7/1','500000','motoahel')
insert into monshi values('tahami','415','1388/7/1','500000','motoahel')
insert into monshi values('tehrani','416','1388/7/1','300000','motoahel')
insert into monshi values('rashidi','417','1388/7/1','300000','motoahel')
insert into monshi values('nasr','418','1388/7/1','400000','motoahel')
insert into monshi values('niku','419','1388/7/1','400000','motoahel')
------------------------------------------------------------------------------------
select * from daneshjo
select * from ostad
select * from dars
select * from class
select * from monshi
select * from sabtenam
select * from ketab
---------------------soal 1-----------------------------------------
select distinct name from (daneshjo inner join  sabtenam on daneshjo.shomareDaneshjoyi=sabtenam.shomareDaneshjoyi) 
inner join ostad on sabtenam.shomareyeOstad=ostad.shomareyeOstad 
where ostad.martabeyeOstad='ostad'
----------------------soal 2--------------------------------------------
select name from daneshjo
where daneshjo.saleVorod = ( select MIN(daneshjo.saleVorod) from daneshjo)
---------------------soal 3------------------------------------------------
select name from (daneshjo inner join sabtenam on daneshjo.shomareDaneshjoyi=sabtenam.shomareDaneshjoyi)
inner join ostad on sabtenam.shomareyeOstad=ostad.shomareyeOstad
where ostad.SaleVorod=(select MIN(ostad.SaleVorod) from ostad)
----------------------soal 4--------------------------------------------------
select * from class
where class.zarfiyat<(select COUNT(sabtenam.shomareDaneshjoyi) from sabtenam
 inner join class on sabtenam.shomareyeClass=class.shomareyeClass)
-----------------------soal 5-------------------------------------------------------
select nameMonshi from monshi 
where monshi.vaziyatTaahol='mojarad' and
monshi.hoghoogh=(select MAX(monshi.hoghoogh) from monshi)
-----------------------soal 6------------------------------------------
(select name from (daneshjo inner join  sabtenam on daneshjo.shomareDaneshjoyi=sabtenam.shomareDaneshjoyi) 
inner join ostad on sabtenam.shomareyeOstad=ostad.shomareyeOstad 
where ostad.martabeyeOstad='ostad')
intersect
(select name from (daneshjo inner join sabtenam on daneshjo.shomareDaneshjoyi=sabtenam.shomareDaneshjoyi)
inner join ostad on sabtenam.shomareyeOstad=ostad.shomareyeOstad
where ostad.SaleVorod=(select MIN(ostad.SaleVorod) from ostad))
-----------------------soal 7-------------------------------------
select distinct dars.* from dars inner join sabtenam on dars.shomareyeDars=sabtenam.shomareyeDars
inner join ostad on sabtenam.shomareyeOstad=ostad.shomareyeOstad
where ostad.hoghoogh>1500000 and ostad.martabeyeOstad='ostad'
-------------------------soal 8-------------------------------------------
select name from daneshjo
where daneshjo.ostadKhososi=''
-------------------------soal 9---------------------------------------------
select distinct name from daneshjo inner join sabtenam on daneshjo.shomareDaneshjoyi=sabtenam.shomareDaneshjoyi
inner join dars on sabtenam.shomareyeDars=dars.shomareyeDars
where (select COUNT(sabtenam.shomareyeDars) from sabtenam where sabtenam.shomareDaneshjoyi=daneshjo.shomareDaneshjoyi)
=(select COUNT(dars.shomareyeDars) from dars)
----------------------------soal 10----------------------------------------------
select distinct ostad.* from ostad inner join sabtenam on ostad.shomareyeOstad=sabtenam.shomareyeOstad
inner join daneshjo on sabtenam.shomareDaneshjoyi=daneshjo.shomareDaneshjoyi
where (select COUNT(sabtenam.shomareDaneshjoyi) from sabtenam where sabtenam.shomareyeOstad=ostad.shomareyeOstad)
=(select COUNT(daneshjo.shomareDaneshjoyi) from daneshjo)
-----------------------------soal 11-------------------------------------
select distinct dars.* from dars inner join sabtenam on dars.shomareyeDars=sabtenam.shomareyeDars
inner join daneshjo on sabtenam.shomareDaneshjoyi=daneshjo.shomareDaneshjoyi
where (select COUNT(sabtenam.shomareDaneshjoyi) from sabtenam where sabtenam.shomareyeDars=dars.shomareyeDars)
=(select COUNT(daneshjo.shomareDaneshjoyi) from daneshjo)
------------------------------soal 12---------------------------------------
select ostad.shomareyeOstad from ostad 
where ostad.shomareyeOstad not in 
(
	select sabtenam.shomareyeOstad from sabtenam
)
------------------------------soal 13--------------------------------------
select dars.nameDars from dars 
where dars.shomareyeDars not in 
(
	select sabtenam.shomareyeDars from sabtenam
)
------------------------------soal 14------------------------------------
select dars.* from dars 
where dars.shomareyeDars in
(
	select sabtenam.shomareyeDars from sabtenam
	where sabtenam.shomareDaneshjoyi in 
	(
		select daneshjo.shomareDaneshjoyi from daneshjo
			where daneshjo.saleVorod=(select MIN(saleVorod) from daneshjo)
	)
	and
	sabtenam.shomareyeOstad in
	(
		select ostad.shomareyeOstad from ostad
		where ostad.hoghoogh>1000000
	)
)
-----------------------------soal 15-------------------------------------------
select daneshjo.* from daneshjo inner join sabtenam on daneshjo.shomareDaneshjoyi=sabtenam.shomareDaneshjoyi
where sabtenam.shomareyeDars not in 
(
	select ketab.shomareyeDars from ketab
	where ketab.gheymat>100000
)
-----------------------------soal 17-----------------------------------
select ostad.* from ostad
where ostad.hoghoogh*0.5>(select MAX(monshi.hoghoogh) from monshi)
------------------------------soal 18--------------------------------
select name from daneshjo
where daneshjo.ostadKhososi in 
(
	select ostad.nameOstad from ostad
	where ostad.martabeyeOstad='ostad'
	and ostad.hoghoogh=(select MIN(hoghoogh) from ostad)
)
------------------------------soal 19------------------------------
select daneshjo.* from daneshjo inner join sabtenam on daneshjo.shomareDaneshjoyi=sabtenam.shomareDaneshjoyi
where sabtenam.shomareyeMonshi in
(
	select monshi.shomareyeMonshi from monshi
	where monshi.hoghoogh>100000
)
and sabtenam.shomareyeClass in
(
	select class.shomareyeClass from class
	where class.zarfiyat>10
)
-------------------------------soal 20---------------------------------------
select ketab.* from ketab
where ketab.nevisande='jafarnejad'
and ketab.shomareyeDars in
(
	select sabtenam.shomareyeDars from sabtenam
	where sabtenam.shomareDaneshjoyi in
	(
		select daneshjo.shomareDaneshjoyi from daneshjo
		where daneshjo.saleVorod=(select MIN(saleVorod) from daneshjo)
	)
)
--------------------------------------------------------------
